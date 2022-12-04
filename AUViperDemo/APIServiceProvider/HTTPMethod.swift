//
//  HTTPMethod.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//
import Foundation

struct HTTPMethod: RawRepresentable, Equatable, Hashable {
  
   /// `GET` method.
   public static let get = HTTPMethod(rawValue: "GET")
   /// `POST` method.
   public static let post = HTTPMethod(rawValue: "POST")
  
   public let rawValue: String
   public init(rawValue: String) {
       self.rawValue = rawValue
   }
}
