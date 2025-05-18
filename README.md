# Demucs Apple Silicon 1-click Setup Script

Apple Silicon (M1/M2/M3) Macユーザー向け  
AI音源分離ツール[Demucs](https://github.com/facebookresearch/demucs)の環境を、  
iTerm2上でワンクリックで構築するコマンドスクリプトです。

## サポート環境
- macOS (Apple Silicon/M1/M2/M3)
- Homebrew
- iTerm2

## 使い方
1. `demucs_setup.command` をダウンロード
2. 実行権限を付与：  
   ```bash
   chmod +x demucs_setup.command
3.Finderからダブルクリックで実行
→ iTerm2が開き、自動で仮想環境構築＆必要なパッケージ導入

4.よく使うコマンド
## Demucs仮想環境で使える主なコマンド

> 仮想環境を有効化した状態で、下記コマンドを使ってください。

### 仮想環境の有効化

```sh
source ~/demucs_venv310/bin/activate
```

### 音源分離-4ステム(ボーカル+伴奏)
```
demucs ファイル名.拡張子
```

### 音源分離-2ステム(ボーカル+伴奏)
```
demucs --two-stems=vocals ファイル名.拡張子
```

### 分離したファイルの保存先を指定したい場合
```
demucs -o /任意の/出力フォルダ/ ファイル名.拡張子
```

### モデルを指定したい場合（デフォルト以外のモデル）
```
demucs -n mdx_extra_q ファイル名.wav
```

### 複数ファイルをまとめて音源分離
```
demucs *.wav
```

### バージョン情報の確認
```
demucs --version
```

注意点
NumPy 1.x系で固定してインストールします（2024年5月時点の互換性問題回避のため）

Demucs本体のライセンスはMITです

5ステム分離は公式モデル非対応です（詳細は公式README参照）

本スクリプトはDemucs本体を改変しません。セットアップのみ行います

参考・公式リンク
Demucs: https://github.com/facebookresearch/demucs

Demucs公式ライセンス: MIT License

