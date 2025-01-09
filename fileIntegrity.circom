pragma circom 2.0.0;

template FileIntegrity() {
    signal input fileHash;    // 用户提交的文件哈希值
    signal input storedHash;  // 可信的预存文件哈希值

    signal output isValid;    // 验证结果：1 表示匹配，0 表示不匹配

    signal diff;              // 计算 fileHash 和 storedHash 的差值

    // 计算差值
    diff <== fileHash - storedHash;

    // 如果 diff 为 0，则 isValid 为 1，否则为 0
    isValid <== 1 - (diff * diff);
}

component main = FileIntegrity();
