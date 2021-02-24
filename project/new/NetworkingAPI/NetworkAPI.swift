//
//  NetworkAPI.swift
//  new
//
//  Created by Jackson on 25/2/2021.
//



import Foundation
class NetworkAPI{
//    static func UserLogin(handler:@escaping (Result<userinfo,Error>)->Void){
//
//        NetWorkManger.share.request_post_method(URLPath: "login", parameters: nil){ res in
//            switch res{
//            case .success(let data):
//                let result: Result<userinfo,Error> = ParseJSON(data)
//                handler(result)
//            case .failure(let error):
//                handler(.failure(error))
//            }
//        }
//    }
    
    private static func EncodeJSON<T:Codable>(_ Data:T) -> Data{
        guard let JSON = try? JSONEncoder().encode(Data) else{
            fatalError("JSON ENCODE ERROR")
        }
        return JSON
    }
    
    private static func ParseJSON<T:Decodable>(_ data:Data)->Result<T,Error>{
        guard let JSONData = try? JSONDecoder().decode(T.self, from: data) else{
            let Error = NSError(domain: "NetworkAPI", code: 0, userInfo: [NSLocalizedDescriptionKey:"Can't parse JSON DATA"])
            return .failure(Error)
        }
        return .success(JSONData)
        
    }
}
