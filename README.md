## ⚙️ Tech Stack & Dependencies

This Laravel backend project includes a number of packages for common backend tasks like routing, auth, testing, and HTTP handling.

### 🧱 Framework & Core Tools
- **Laravel Framework** – 12.19.3 (main PHP framework)
- **Laravel Sanctum** – 4.1.1 (SPA & API token auth)
- **Laravel Tinker** – 2.10.1 (REPL shell for debugging)
- **Laravel Pint** – 1.22.1 (opinionated code formatter)
- **Laravel Sail** – 1.43.1 (Docker dev environment)

### 🗂 Environment & Config
- **vlucas/phpdotenv** – 5.6.2 (loads `.env` variables)
- **symfony/config, symfony/yaml, symfony/var-dumper** – config and debugging
- **nunomaduro/collision** – pretty error reporting in console

### 📆 Dates & Math
- **nesbot/carbon** – 3.10.0 (awesome DateTime handling)
- **brick/math** – 0.13.1 (arbitrary-precision math for calculations)

### 🔐 Security & Validation
- **egulias/email-validator** – email validation
- **psr/log**, **monolog/monolog** – logging and error tracking
- **webmozart/assert** – input validation assertions

### 📡 HTTP & API Clients
- **guzzlehttp/guzzle** – 7.9.3 (robust HTTP client)
- **fruitcake/php-cors** – Cross-Origin Resource Sharing middleware
- **psr/http-* packages** – PSR-7, PSR-17 standards for HTTP messaging

### 📁 File & Storage Handling
- **league/flysystem** – File system abstraction layer
- **league/flysystem-local** – Local storage driver
- **league/mime-type-detection** – For guessing MIME types

### 🧪 Testing & Mocking
- **phpunit/phpunit** – 11.5.24 (unit testing)
- **mockery/mockery** – test doubles and mocks
- **sebastian/* packages** – PHPUnit internals
- **fakerphp/faker** – fake data generator for seeds

### 📖 Misc Utilities
- **doctrine/inflector** – transforms class names into plural/singular forms
- **doctrine/lexer** – basic PHP lexer used internally
- **symfony/string** – UTF-8-safe string handling
- **hamcrest/hamcrest-php** – matchers for assertions
- **dragonmantank/cron-expression** – CRON job calculation

---

> **Note:** This is a curated list. For full dependency list, see `composer.lock` or run `composer show`.
