# VideoApp
## 概要
動画をアップロードし、アップロードした動画を閲覧することができる。
動画の保存先はAWSのS2。
## 言語とライブラリ
```
ruby (2.5.0)
rails (5.1.7)

'devise' # ログイン機能
'carrierwave' # 動画アップロード機能
'streamio-ffmpeg' # 動画のスクリーンショット作成機能
'rails_admin' # 管理者画面
'cancancan' # 管理者権限
'fog' # S3連携
'dotenv-rails' # 環境変数管理
```
