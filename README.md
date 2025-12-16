# Firge Font Nix Packages

[yuru7/Firge: Fira Mono と源真ゴシックを合成したプログラミングフォント Firge (ファージ)](https://github.com/yuru7/Firge)のNixパッケージです。
問題ないことが確認できたらnixpkgs本流にPRを送ってこのリポジトリは放棄する予定です。

## 使い方

`flake.nix`のinputに指定して取り込まれて、
パッケージ指定として利用されることを想定しています。

## バリエーション

Firgeには以下のバリエーションがあります。

- Firge - 通常版 (半角:全角 = 1:2)
- FirgeConsole - コンソール向け(記号が半角優先)
- Firge35 - 英数字が大きめ (半角:全角 = 3:5)
- Firge35Console - 上記の3:5版
- FirgeNerd Console 	Firge Console に Nerd Fonts を追加しているフォントファミリー
- Firge35Nerd Console 	Firge35 Console に Nerd Fonts を追加しているフォントファミリー
