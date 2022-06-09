#!/usr/bin/env bash

prereqs:
  if ! command -v trunk &> /dev/null; then cargo install trunk; fi
  rustup target add wasm32-unknown-unknown
  
serve: prereqs
  trunk serve --open ./frontend/Cargo.toml
