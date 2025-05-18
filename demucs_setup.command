#!/bin/bash

SETUP_SCRIPT="$HOME/demucs_setup_tmp.sh"

cat << 'EOS' > "$SETUP_SCRIPT"
#!/bin/bash
set -e

echo ">>> Homebrew経由で python@3.10 をインストール"
brew install python@3.10

VENV_DIR="$HOME/demucs_venv310"
PYTHON310_BIN="/opt/homebrew/bin/python3.10"
if [ ! -x "$PYTHON310_BIN" ]; then
    echo "python3.10が見つかりません。Homebrewのインストールパスをご確認ください。"
    exit 1
fi

echo ">>> 仮想環境を作成: $VENV_DIR"
$PYTHON310_BIN -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

echo ">>> pipアップグレード"
pip install --upgrade pip

echo ">>> torch/torchaudio/torchvision インストール"
pip install torch==2.1.2 torchaudio==2.1.2 torchvision==0.16.2

echo ">>> demucsインストール"
pip install demucs

echo ">>> numpyダウングレード（NumPy 2.x問題対策）"
pip install 'numpy<2'

echo ""
echo "======================"
echo "🍏 Demucs環境セットアップ完了！"
echo "【今後の使い方】"
echo "1. 仮想環境を有効化:"
echo "   source \$VENV_DIR/bin/activate"
echo ""
echo "2. 音源分離（4ステム分離・標準）:"
echo "   demucs パス/ファイル名.mp3"
echo ""
echo "3. ボーカル＋伴奏の2ステム分離:"
echo "   demucs --two-stems=vocals パス/ファイル名.mp3"
echo ""
echo "5ステム分離は公式モデル非対応です。カスタムモデル利用時のみサポートです。"
echo "======================"
read -p "Press [Enter] to close this window..."
EOS

chmod +x "$SETUP_SCRIPT"

# iTerm2でAppleScript経由で実行
osascript <<EOF
tell application "iTerm"
    activate
    set newWindow to (create window with default profile)
    tell current session of newWindow
        write text "bash '$SETUP_SCRIPT'"
    end tell
end tell
EOF

exit 0
