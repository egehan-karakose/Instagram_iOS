//
//  Models.swift
//  Instagram
//
//  Created by Egehan Karaköse on 10.12.2020.
//

import Foundation

struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let profilePhoto : URL
    let birthdate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}


struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}

enum Gender{
    case male, female, other
}


public enum UserPostType: String{
    case photo = "Photo"
    case video = "Video"
    
}


/// Respresents a user post

public struct UserPost {
    
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL  //either video url or full resolution photo
    let caption: String?
    let likeCount: [PostLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [User]
    let owner: User
    
}

struct PostLike {
    let username: String
    let postIdentifier: String
}

struct CommentLike {
    let username: String
    let commentIdentifier: String
}



struct PostComment {
    let identifier: String
    let username: String
    let text: String
    let createdDate : Date
    let likes: [CommentLike]
    
}
