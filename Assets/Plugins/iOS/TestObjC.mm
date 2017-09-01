#import <Foundation/Foundation.h>
// ここのimport名は`プロジェクト名-swift.h`
// BuildSettings -> Swift Compiler-General -> Objective-C Bridging Headerで確認可能
// Unityでビルドした場合、BundleIdentifierのトッドで区切った最後の要素名になる
// info.shibuya24.nativePluginであれば`nativePlugin`となる
// この名前に`-Swift.h`を加えた名前がimport名
#import "nativePlugin-Swift.h"

extern "C"
{
  void CallSwift_()
  {
    // swiftを実行
    // ※Objective-Cの書式で呼び出す必要あり
    TestSwift *sw = [[TestSwift alloc] init];
    NSLog([sw CallSwift]);
  }
}
