cargo asm --build-type debug --no-color > out.asm
cargo asm rust::main --build-type debug --no-color >> out.asm
cargo asm rust::comp::hc_enc --build-type debug --no-color >> out.asm

cargo asm --no-color > out_release.asm
cargo asm rust::main --no-color >> out_release.asm
