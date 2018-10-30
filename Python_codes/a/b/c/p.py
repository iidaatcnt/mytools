# test.py
from pathlib import Path

path = Path(__file__).parent   # test.pyのあるディレクトリ
path /= '../../img_folder'     # ディレクトリ移動

print(path.resolve())          # 絶対パスを表示 (デバッグ用)

for file_name in path.iterdir():
    print(file_name)

