import Foundation
// Unityで扱う場合はNSObjectを継承する必要がある
public class TestSwift : NSObject
{
  public func CallSwift()->String
  {
    return "HelloWorld"
  }
}
