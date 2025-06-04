//
//  networkBootcamps.swift
//  kcHerosClase
//
//  Created by JOSE LUIS BUSTOS ESTEBAN on 3/6/25.
//

import Foundation

protocol NetworkBootcampsProtocol{
    func getBootcamps() async -> [BootcampModel]
}

final class NetworkBootcamps: NetworkBootcampsProtocol {
    func getBootcamps() async -> [BootcampModel] {
        var modelReturn = [BootcampModel]()
        
        let urlCad = "\(ConstantsApp.CONST_API_URL)\(Endpoints.bootcamps.rawValue)"
        
        var request = URLRequest(url: URL(string: urlCad)!)
        request.httpMethod = HttpMethods.get
        request.addValue(HttpMethods.content, forHTTPHeaderField: "Content-type")
        
        do{
            let (data, response) = try await URLSession.shared.data(for: request)
            
            if let resp = response as? HTTPURLResponse {
                if resp.statusCode == HttpResponseCodes.SUCCESS {
                    modelReturn = try! JSONDecoder().decode([BootcampModel].self, from: data)
                }
            }
        }catch{
            NSLog("Error bootcamps \(error.localizedDescription)")
        }
        
        return modelReturn
    }
}


//mock
final class NetworkBootcampsMock: NetworkBootcampsProtocol{
    func getBootcamps() async -> [BootcampModel] {
        //buscamos el archivo JSON
        guard let url = Bundle.main.url(forResource: "bootcamps", withExtension: "json") else {
            return [BootcampModel]() //en caso de error
        }
        
        do{
            let data = try Data(contentsOf: url)
            let bootcamps = try JSONDecoder().decode([BootcampModel].self, from: data)
            return bootcamps
        } catch{
            return [BootcampModel]()
        }
    }
    
}
