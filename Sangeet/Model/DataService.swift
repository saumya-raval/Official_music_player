//
//  DataService.swift
//  Sangeet
//
//  Created by Saumya Raval on 7/13/17.
//  Copyright © 2017 Aashal Saumya. All rights reserved.
//

import Foundation
import Firebase

let STORAGE_REF = Storage.storage().reference()
let DB_BASE = Database.database().reference()

class DataService {
    static let ds = DataService()
    
    // DB reference
    private var _REF_DB = DB_BASE
    private var _REF_USERS = DB_BASE.child("Users")
    
    //Storage Ref
    private var _REF_TOP_40 = STORAGE_REF.child("Top_40")
    
    var REF_DB: DatabaseReference {
        return _REF_DB
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_TOP_40: StorageReference {
        return _REF_TOP_40
    }
    
}

//  https://firebasestorage.googleapis.com/v0/b/fir-sociallogin-ae127.appspot.com/o/05%20Cutiepie%20(Ae%20Dil%20Hai%20Mushkil).mp3?alt=media&token=1cac8470-08d4-4482-9cf5-91de3569dde7
//  gs://official-music-player-app.appspot.com/
