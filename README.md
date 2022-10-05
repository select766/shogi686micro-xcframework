# shogi686micro-xcframework

ソースファイル1個の将棋エンジン[shogi686micro](https://github.com/merom686/shogi686micro)をiOS向けにビルドする。xcframework形式の出力が得られる。

ビルド方法の参考: https://zenn.dev/nnabeyang/articles/3c296e3d38b2f016e0f2

# ビルド

```
cd build
./build.bash
```

`build/libshogi686micro.xcframework`が成果物。ソースを変更してビルドする際はこのディレクトリを一度削除する必要がある。

# ライセンス
MIT

ただし、 `build/ios.toolchain.cmake`([取得元](https://raw.githubusercontent.com/leetal/ios-cmake/master/ios.toolchain.cmake)) は修正BSDライセンス。
