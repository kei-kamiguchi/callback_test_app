## callback検証用ブログアプリケーション
Blogモデルにコールバックを定義している。
コールバックを以下の処理を実行した際にコールされるタイミングを確認できる。
- ブログを登録
- ブログを更新
- ブログを削除
[登録例]
<img width="905" alt="スクリーンショット 2021-08-24 1 16 09" src="https://user-images.githubusercontent.com/56471454/130481744-29900431-33d7-4601-adfc-8530600400c2.png">

## コールバックの中止
[例]
```rb
def callback_method
  throw :abort if 条件
end
```
## 条件付きコールバック
[例]
```rb
  before_save :callback_method, if: :sample_method?
  
  def sample_method?
    # 処理
  end
  
  def callback_method
    # 処理
  end
```
## 特定のアクションでコールバックを実行
[例]
```rb
  before_save :callback_method, on: [:destroy]
```
