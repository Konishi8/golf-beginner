■サービス概要
日々のゴルフ練習を記録することができる
ゴルフ練習を充実させることを目的とした
練習管理ツールです

■ このサービスへの思い・作りたい理由
休日の日課で、ゴルフの練習をするのですが
毎回毎回、気をつけていることを忘れていたりして
途中で思い出したりします。
そこで、練習前と後にポイントを確認したり、
練習メニューを組めるようなツールを作成したいと思いました。

■ ユーザー層について
どういう風に練習したら良いかわからない
何となくの練習をしているゴルフビギナー

■サービスの利用イメージ
練習前に、スマートフォンを見て、目標やポイントを確認してから
練習することで、練習に達成感を持たせることができます。

■ ユーザーの獲得について
・ゴルフ前に目標を立てて、練習後には改善点を記録できる機能
・練習メニューの作成機能
・自分の主軸(スイング時に１番気を付けるポイント)を確認する機能

■ サービスの差別化ポイント・推しポイント
ゴルフのスイング動画を撮影したり、メモするような
アプリがある。
そのアプリの差別化ポイントは、練習前と後に記録したり
自分の主軸ポイントを練習前に確認できたり、練習メニューを決めたり
と、このツールだけで、練習の管理ができること
練習成果をトロフィーや、カレンダー機能で可視化して
モチベーションに繋げること
■ 機能候補
## 実装を予定している機能
### MVP
* ユーザー登録機能
* ユーザープロフィール
* ログイン機能
* パスワード変更機能
* メールアドレス変更機能
* 練習記録作成機能 #目標→記録に変更
* 練習記録編集機能 #目標→記録に変更
* 練習記録削除機能 #目標→記録に変更
* 練習記録へのコメント作成機能 #目標→記録に変更
* 練習記録へのコメント削除機能 #目標→記録に変更
* 練習記録へのコメント編集機能 #目標→記録に変更
* 主軸ポイント作成機能
* 練習メニュー定型作成
* 練習メニュー作成機能
* 練習メニュー削除機能
* 練習メニュー編集機能
* 主軸ポイント作成機能
* 主軸ポイント編集機能
* 主軸ポイント削除機能
* 練習記録機能　カレンダーで今までの練習量を可視化
*
### その後の機能
* 練習何回目等でトロフィー機能
* フレンド作成機能
* フレンド削除機能
* フレンド同士のチャット機能

■ 機能の実装方針予定
会員登録、ログイン　devise
トロフィー機能　Merit
練習記録機能　simple_calendar
