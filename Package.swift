// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "llama.cpp",
    products: [
        .library(
            name: "llama",
            targets: ["llama"]),
    ],
    targets: [
        .target(
            name: "llama",
            path: "src",
            publicHeadersPath: "../include",
            exclude: [
                "tests", "examples", "docs", "media", "models", "vendor", "gguf-py", "requirements.txt", "pyproject.toml", "poetry.lock", "mypy.ini", "pyrightconfig.json", "CMakeLists.txt", "CMakePresets.json", "Makefile", "build-xcframework.sh", "convert_hf_to_gguf.py", "convert_hf_to_gguf_update.py", "convert_llama_ggml_to_gguf.py", "convert_lora_to_gguf.py", "flake.lock", "flake.nix", "CODEOWNERS", "CONTRIBUTING.md", "SECURITY.md", "LICENSE", "AUTHORS", "licenses",
                "tools/server/webui/src/main.tsx", "tools/main/main.cpp", "examples/batched.swift/Sources/main.swift"
            ],
            sources: ["src", "common", "include", "ggml"]
        )
    ]
) 