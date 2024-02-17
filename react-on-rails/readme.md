# React on Rails

```shell
curl -fsSL https://desm.github.io/rsg/react_on_rails | bash -s /path/to/project
```

http://localhost:8000 - default Ruby on Rails page

http://localhost:8000/hello_world - working example of React on Rails

## Requirements

Known to work with:

- Ubuntu 22.04 with Docker 24.0.5 and Docker Compose 1.27.4
- macOS 10.15 with Docker 20.10 and Docker Compose 2.13

Didn't work with:

- Windows 10 Home WSL 2 Ubuntu 22.04 with Docker Desktop 4.27 (Docker 25.0 and Docker Compose 2.24). The "docker run ... tar | tar ..." step (see index.sh) was super slow and didn't complete. If someone knows how to fix this, please let me know.

### Documentation

- [Ruby](https://www.ruby-lang.org/)
- [Ruby on Rails](https://rubyonrails.org/)
- [React](https://react.dev/)
- [React on Rails](https://www.shakacode.com/react-on-rails/docs/)
