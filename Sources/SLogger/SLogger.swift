// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

// add core function
// add configuration builder
// add logs saving into a file

enum SLogger {
    
    enum LogLevels {
        
        case verbose
        case info
        case debug
        case warning
        case error
        
        fileprivate var prefix: String {
            switch self {
            case .verbose:  return "VERBOSE 👀"
            case .info:     return "INFO ℹ️"
            case .debug:    return "DEBUG 🍀"
            case .warning:  return "WARN ⚠️"
            case .error:    return "ERROR 🚨"
            }
        }
    }
    
    struct Context {
        let file: String
        let function: String
        let line: Int
        var description: String {
            return "\((file as NSString).lastPathComponent):\(line) \(function)"
        }
    }
    
    static func verbose(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        SLogger.doLog(level: .verbose, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
   
    static func info(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        SLogger.doLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func debug(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        SLogger.doLog(level: .debug, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func warning(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        SLogger.doLog(level: .warning, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func error(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        SLogger.doLog(level: .error, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }

    fileprivate static func doLog(level: LogLevels, str: String, shouldLogContext: Bool, context: Context) {
        let logComponents = ["[\(level.prefix)]", str]
        
        var fullString = logComponents.joined(separator: " ")
        if shouldLogContext {
            fullString += " ➜ \(context.description)"
        }
        
        #if DEBUG
        print(fullString)
        #endif
    }

}
