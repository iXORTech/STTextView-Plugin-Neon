//import Cocoa
import UIKit

public struct Theme {
    
    // MARK: - Props
    public let colors: Colors
    public let fonts: Fonts

    // MARK: - Lifecycle
    public init(colors: Colors, fonts: Fonts) {
        self.colors = colors
        self.fonts = fonts
    }
    
//    public func color(forToken tokenName: TokenName) -> NSColor? {
    public func color(forToken tokenName: TokenName) -> UIColor? {
        colors.color(forToken: tokenName)
    }
    
//    public func font(forToken tokenName: TokenName) -> NSFont? {
        public func font(forToken tokenName: TokenName) -> UIFont? {
        fonts.font(forToken: tokenName)
    }

    public struct Colors {
        
//        public let colors: [TokenName: NSColor]
        public let colors: [TokenName: UIColor]

//        public init(colors: [String: NSColor]) {
        public init(colors: [String: UIColor]) {
            self.colors = Dictionary(uniqueKeysWithValues: colors.map { key, value in (TokenName(key), value) })
        }

        public init(bundle: Bundle, name: String) {
//            colors = [
//                "plain": NSColor(named: "\(name)/plain")!,
//                "boolean": NSColor(named: "\(name)/boolean")!,
//                "comment": NSColor(named: "\(name)/comment")!,
//                "constructor": NSColor(named: "\(name)/constructor")!,
//                "function.call": NSColor(named: "\(name)/function.call")!,
//                "include": NSColor(named: "\(name)/include")!,
//                "keyword": NSColor(named: "\(name)/keyword")!,
//                "keyword.function": NSColor(named: "\(name)/keyword.function")!,
//                "keyword.return": NSColor(named: "\(name)/keyword.return")!,
//                "method": NSColor(named: "\(name)/method")!,
//                "number": NSColor(named: "\(name)/number")!,
//                "operator": NSColor(named: "\(name)/operator")!,
//                "parameter": NSColor(named: "\(name)/parameter")!,
//                "punctuation.special": NSColor(named: "\(name)/punctuation.special")!,
//                "string": NSColor(named: "\(name)/string")!,
//                "text.literal": NSColor(named: "\(name)/text.literal")!,
//                "text.title": NSColor(named: "\(name)/text.title")!,
//                "type": NSColor(named: "\(name)/type")!,
//                "variable.builtin": NSColor(named: "\(name)/variable.builtin")!,
//                "variable": NSColor(named: "\(name)/variable")!
//            ]
            colors = [
                "plain": UIColor(named: "\(name)/plain")!,
                "boolean": UIColor(named: "\(name)/boolean")!,
                "comment": UIColor(named: "\(name)/comment")!,
                "constructor": UIColor(named: "\(name)/constructor")!,
                "function.call": UIColor(named: "\(name)/function.call")!,
                "include": UIColor(named: "\(name)/include")!,
                "keyword": UIColor(named: "\(name)/keyword")!,
                "keyword.function": UIColor(named: "\(name)/keyword.function")!,
                "keyword.return": UIColor(named: "\(name)/keyword.return")!,
                "method": UIColor(named: "\(name)/method")!,
                "number": UIColor(named: "\(name)/number")!,
                "operator": UIColor(named: "\(name)/operator")!,
                "parameter": UIColor(named: "\(name)/parameter")!,
                "punctuation.special": UIColor(named: "\(name)/punctuation.special")!,
                "string": UIColor(named: "\(name)/string")!,
                "text.literal": UIColor(named: "\(name)/text.literal")!,
                "text.title": UIColor(named: "\(name)/text.title")!,
                "type": UIColor(named: "\(name)/type")!,
                "variable.builtin": UIColor(named: "\(name)/variable.builtin")!,
                "variable": UIColor(named: "\(name)/variable")!
            ]
        }
        
//        public func color(forToken tokenName: TokenName) -> NSColor? {
        public func color(forToken tokenName: TokenName) -> UIColor? {
            colors[tokenName]
        }
    }

    public struct Fonts {

//        public let fonts: [TokenName: NSFont]
        public let fonts: [TokenName: UIFont]

//        public init(fonts: [String: NSFont]) {
        public init(fonts: [String: UIFont]) {
            self.fonts = Dictionary(uniqueKeysWithValues: fonts.map { key, value in (TokenName(key), value) })
        }

        public init(bundle: Bundle, name: String) {
//            fonts = [
//                "plain": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "boolean": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "comment": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "constructor": NSFont.monospacedSystemFont(ofSize: 0, weight: .medium),
//                "function.call": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "include": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "keyword": NSFont.monospacedSystemFont(ofSize: 0, weight: .medium),
//                "keyword.function": NSFont.monospacedSystemFont(ofSize: 0, weight: .medium),
//                "keyword.return": NSFont.monospacedSystemFont(ofSize: 0, weight: .medium),
//                "method": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "number": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "operator": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "parameter": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "punctuation.special": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "string": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "text.literal": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "text.title": NSFont.monospacedSystemFont(ofSize: 0, weight: .medium),
//                "type": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "variable.builtin": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular),
//                "variable": NSFont.monospacedSystemFont(ofSize: 0, weight: .regular)
//            ]
            fonts = [
                "plain": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "boolean": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "comment": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "constructor": UIFont.monospacedSystemFont(ofSize: 0, weight: .medium),
                "function.call": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "include": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "keyword": UIFont.monospacedSystemFont(ofSize: 0, weight: .medium),
                "keyword.function": UIFont.monospacedSystemFont(ofSize: 0, weight: .medium),
                "keyword.return": UIFont.monospacedSystemFont(ofSize: 0, weight: .medium),
                "method": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "number": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "operator": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "parameter": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "punctuation.special": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "string": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "text.literal": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "text.title": UIFont.monospacedSystemFont(ofSize: 0, weight: .medium),
                "type": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "variable.builtin": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular),
                "variable": UIFont.monospacedSystemFont(ofSize: 0, weight: .regular)
            ]
        }

        public func font(forToken tokenName: TokenName) -> UIFont? {
            fonts[tokenName]
        }
    }
}
