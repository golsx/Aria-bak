@echo off
echo 开始执行构建任务...

:: 执行构建命令
call gradlew :PublicComponent:assembleRelease :HttpComponent:assembleRelease :M3U8Component:assembleRelease :AriaAnnotations:jar :AriaCompiler:jar :Aria:assembleRelease

:: 检查执行结果
if %errorlevel% equ 0 (
    echo.
    echo ==========================================
    echo 构建全部成功完成！
    echo ==========================================
) else (
    echo.
    echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    echo 构建过程中出现错误，请检查上述日志。
    echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
)

pause