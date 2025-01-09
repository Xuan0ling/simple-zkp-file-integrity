import hashlib

def calculate_file_hash(file_path):
    with open(file_path, "rb") as f:
        file_data = f.read()
    return hashlib.sha256(file_data).hexdigest()

file_path = "./test.txt"  # 替换为你的文件路径
file_hash = calculate_file_hash(file_path)
print(f"File Hash: {file_hash}")
