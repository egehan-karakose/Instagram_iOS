//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Egehan Karaköse on 8.12.2020.
//

import FirebaseDatabase


public class DatabaseManager{
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
   
    
    //MARK: - Public
    
    /// Check if username and email is available
    /// - Parameters
    ///     - email: String represting email
    ///     - username: String represting username
    
    
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void){
        completion(true)
    }
    
    
    /// Insert New User data to database
    /// - Parameters
    ///     - email: String represting email
    ///     - username: String represting username
    ///     - completion: Async callback result if database entry succeded
    
    public func insertNewUser(with email: String, username: String, completion : @escaping (Bool) -> Void){
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { (error, _) in
            if error == nil {
//                succeeded
                completion(true)
                return
            } else {
//                failed
                completion(false)
                return
                
            }
            
        }
    }
    
    
    //MARK: - Private
    
  

}
