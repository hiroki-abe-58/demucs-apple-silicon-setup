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

注意点
NumPy 1.x系で固定してインストールします（2024年5月時点の互換性問題回避のため）

Demucs本体のライセンスはMITです

5ステム分離は公式モデル非対応です（詳細は公式README参照）

本スクリプトはDemucs本体を改変しません。セットアップのみ行います

参考・公式リンク
Demucs: https://github.com/facebookresearch/demucs

Demucs公式ライセンス: MIT License

