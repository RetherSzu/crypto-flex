# CryptoFlex

CryptoFlex is a web application designed to provide a comprehensive suite of tools for encoding and decoding various
types of data. From simple Base64 encoding to more complex AES encryption, CryptoFlex aims to be a one-stop solution for
all your cryptography needs.

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/en/) - JavaScript runtime environment
- [npm](https://www.npmjs.com/) - Package manager for JavaScript
- [docker](https://www.docker.com/) - Containerization platform
- [composer](https://getcomposer.org/) - Dependency manager for PHP

### Installation

1. Clone the repository

    ```bash
    git clone https://github.com/RetherSzu/crypto-flex.git
    ```
   
2. Build the Docker image

    ```bash
    docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build
    ```
   
3. Open terminal in the container

    ```bash
    docker exec -it crypto-flex-devserver bash
    ```
   
4. Watch for changes

   ```bash
   yarn watch
   ```

## License

This project is licensed under the MIT License

- see the [LICENSE](LICENSE) file for details.
