const js = import("../pkg/rust_wasm.js");
js.then(js => {
  js.greet("WebAssembly");
});
