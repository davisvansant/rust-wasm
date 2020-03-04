### Rust wasm

 - https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_wasm

Learning Rust and wasm - WIP

```
> drone exec ./.drone.yml
.....
.....
.....
[wasm-build:407] test result: ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out
[wasm-build:408]
[wasm-build:409] + wasm-pack build --scope mynpmusername
[wasm-build:410] [INFO]: Checking for the Wasm target...
[wasm-build:411] info: downloading component 'rust-std' for 'wasm32-unknown-unknown'
[wasm-build:412] info: installing component 'rust-std' for 'wasm32-unknown-unknown'
[wasm-build:413] [INFO]: Compiling to Wasm...
[wasm-build:414]     Finished release [optimized] target(s) in 0.20s
[wasm-build:415] :-) [WARN]: origin crate has no README
[wasm-build:416] [INFO]: Installing wasm-bindgen...
[wasm-build:417] [INFO]: Optimizing wasm binaries with `wasm-opt`...
[wasm-build:418] [INFO]: Optional fields missing from Cargo.toml: 'description', 'repository', and 'license'. These are not necessary, but recommended
[wasm-build:419] [INFO]: :-) Done in 7.57s
[wasm-build:420] [INFO]: :-) Your wasm pkg is ready to publish at /drone/src/pkg.

```

Once everything is built

```
> cd site                                                                                                        ~/github.com/davisvansant/rust-wasm(master✗)@thelostwayfarer.local
> npm run serve                                                                                             ~/github.com/davisvansant/rust-wasm/site(master✗)@thelostwayfarer.local

> @ serve /Users/davisvansant/github.com/davisvansant/rust-wasm/site
> webpack-dev-server

ℹ ｢wds｣: Project is running at http://0.0.0.0:8080/
ℹ ｢wds｣: webpack output is served from /
ℹ ｢wds｣: Content not from webpack is served from /Users/davisvansant/github.com/davisvansant/rust-wasm/site
ℹ ｢wdm｣: Hash: e3ffb4ea96ff2cb49c58
Version: webpack 4.41.2
Time: 362ms
Built at: 02/10/2020 5:42:00 PM
                           Asset      Size  Chunks                         Chunk Names
                      0.index.js  27.9 KiB       0  [emitted]              
                      1.index.js  4.09 KiB       1  [emitted]              
48a892b16aa296f3c2d1.module.wasm  13.7 KiB       1  [emitted] [immutable]  
                        index.js   368 KiB    main  [emitted]              main
Entrypoint main = index.js
[0] multi (webpack)-dev-server/client?http://0.0.0.0:8080 ./index.js 40 bytes {main} [built]
[../pkg/rust_wasm.js] 2.04 KiB {1} [built]
[../pkg/rust_wasm_bg.wasm] 13.7 KiB {1} [built]
[./index.js] 89 bytes {main} [built]
[./node_modules/ansi-html/index.js] 4.16 KiB {main} [built]
[./node_modules/html-entities/index.js] 231 bytes {main} [built]
[./node_modules/webpack-dev-server/client/index.js?http://0.0.0.0:8080] (webpack)-dev-server/client?http://0.0.0.0:8080 4.29 KiB {main} [built]
[./node_modules/webpack-dev-server/client/overlay.js] (webpack)-dev-server/client/overlay.js 3.51 KiB {main} [built]
[./node_modules/webpack-dev-server/client/socket.js] (webpack)-dev-server/client/socket.js 1.53 KiB {main} [built]
[./node_modules/webpack-dev-server/client/utils/createSocketUrl.js] (webpack)-dev-server/client/utils/createSocketUrl.js 2.89 KiB {main} [built]
[./node_modules/webpack-dev-server/client/utils/log.js] (webpack)-dev-server/client/utils/log.js 964 bytes {main} [built]
[./node_modules/webpack-dev-server/client/utils/reloadApp.js] (webpack)-dev-server/client/utils/reloadApp.js 1.59 KiB {main} [built]
[./node_modules/webpack-dev-server/client/utils/sendMessage.js] (webpack)-dev-server/client/utils/sendMessage.js 402 bytes {main} [built]
[./node_modules/webpack-dev-server/node_modules/strip-ansi/index.js] (webpack)-dev-server/node_modules/strip-ansi/index.js 161 bytes {main} [built]
[./node_modules/webpack/hot sync ^\.\/log$] (webpack)/hot sync nonrecursive ^\.\/log$ 170 bytes {main} [built]
    + 24 hidden modules
ℹ ｢wdm｣: Compiled successfully.
```

From there, the site is available and running as expected!
