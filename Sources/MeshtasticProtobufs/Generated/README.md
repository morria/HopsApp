# Generating Swift Protobufs

The swift code herein is generated via `protoc`. The protobufs are defined in `protobufs` in the root of this project. That directory is a git submodule which can be updated via

```sh
git submodule update --init --recursive
```

You'll need `protoc` to be installed on your system as well as the `swift-protobuf` plugin. If you are using homebrew, you can install them with the following command.

```sh
brew install swift-protobuf
```

Once the submodule is updated, you can generate the swift code from the protobufs by running the following command in the root of this project.

```sh
./generate_protobufs
```

That will populate this directory, `./Sources/Protobufs/Generated`, with the generated swift code.