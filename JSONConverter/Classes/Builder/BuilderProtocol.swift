//
//  BuilderProtocol.swift
//  JSONConverter
//
//  Created by Yao on 2021/12/8.
//  Copyright © 2021 Yao. All rights reserved.
//

import Cocoa

protocol BuilderProtocol {
    func isMatchLang(_ lang: LangType) -> Bool
    
    func propertyText(_ type: PropertyType, keyName: String, strategy: PropertyStrategy, maxKeyNameLength: Int, typeName: String?) -> String
    func initPropertyText(_ type: PropertyType, keyName: String, strategy: PropertyStrategy, maxKeyNameLength: Int, typeName: String?) -> String
    func propertyGetterText(_ type: PropertyType, keyName: String, strategy: PropertyStrategy, typeName: String?) -> String
    func propertySetterText(_ type: PropertyType, keyName: String, strategy: PropertyStrategy, typeName: String?) -> String
    
    func contentParentClassText(_ clsText: String?) -> String
    func contentText(_ structType: StructType, clsName: String, parentClsName: String, propertiesText: inout String, propertiesInitText: inout String?, propertiesGetterSetterText: inout String?) -> String

    func fileExtension() -> String
    func fileImplExtension() -> String
    func fileImportText(_ rootName: String, contents: [Content], strategy: PropertyStrategy, prefix: String?) -> String
}

extension BuilderProtocol {
    func initPropertyText(_ type: PropertyType, keyName: String, strategy: PropertyStrategy, maxKeyNameLength: Int, typeName: String?) -> String {
        return ""
    }

    func propertyGetterText(_ type: PropertyType, keyName: String, strategy: PropertyStrategy, typeName: String?) -> String {
        return ""
    }

    func propertySetterText(_ type: PropertyType, keyName: String, strategy: PropertyStrategy, typeName: String?) -> String {        return ""
    }
    
    func fileImplExtension() -> String {
        return ""
    }
}
