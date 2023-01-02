::echo off
"%grpc64%\bin\protoc.exe" -I=protos --cpp_out=protos helloworld.proto
"%grpc64%\bin\protoc.exe" -I=protos --grpc_out=protos --plugin=protoc-gen-grpc="%grpc64%\bin\grpc_cpp_plugin.exe" helloworld.proto

REM set pervous_dir = C:\Users\Milad\source\repos\gg\gRPC
REM cd "C:\Program Files\grpc\lib"
REM echo %pervous_dir%
REM dir *.lib /b > "%pervous_dir%\out.txt"
REM cd %pervous_dir%
