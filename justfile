#!/usr/bin/env bash

prereqs:
  if ! command -v trunk &> /dev/null; then cargo install trunk; fi
  rustup target add wasm32-unknown-unknown
  
serve: prereqs
  # Here we leverage trunk's proxy config to allow a CORs request to yew.rs/tutorial/data.json
  trunk serve --open ./frontend/Cargo.toml --proxy-backend=https://yew.rs/tutorial
