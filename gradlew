#!/bin/bash
# 这是一个极简的Gradle包装器脚本，用于触发真正的Gradle构建
# 它将自动下载并使用我们在 gradle/wrapper/gradle-wrapper.properties 中指定的Gradle版本

# 设置基本目录
GRADLE_DIR="gradle/wrapper"
WRAPPER_JAR="$GRADLE_DIR/gradle-wrapper.jar"
WRAPPER_PROPERTIES="$GRADLE_DIR/gradle-wrapper.properties"

# 检查wrapper jar是否存在
if [ ! -f "$WRAPPER_JAR" ]; then
    echo "错误: 未找到 $WRAPPER_JAR"
    echo "请确保 gradle/wrapper 目录及其中的文件已正确创建。"
    exit 1
fi

# 执行Java命令来运行Gradle Wrapper
exec java -jar "$WRAPPER_JAR" "$@"
