[33mcommit 9f3c7bd90dd0c2dbd4e8cd8a238c6b938771c6a3[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Jesus Parejo <jesus.parejo@segurossura.com.ar>
Date:   Sat May 15 20:44:51 2021 -0300

    initial commit

[1mdiff --git a/.browserslistrc b/.browserslistrc[m
[1mnew file mode 100644[m
[1mindex 0000000..427441d[m
[1m--- /dev/null[m
[1m+++ b/.browserslistrc[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m# This file is used by the build system to adjust CSS and JS output to support the specified browsers below.[m
[32m+[m[32m# For additional information regarding the format and rule options, please see:[m
[32m+[m[32m# https://github.com/browserslist/browserslist#queries[m
[32m+[m
[32m+[m[32m# For the full list of supported browsers by the Angular framework, please see:[m
[32m+[m[32m# https://angular.io/guide/browser-support[m
[32m+[m
[32m+[m[32m# You can see what browsers were selected by your queries by running:[m
[32m+[m[32m#   npx browserslist[m
[32m+[m
[32m+[m[32mlast 1 Chrome version[m
[32m+[m[32mlast 1 Firefox version[m
[32m+[m[32mlast 2 Edge major versions[m
[32m+[m[32mlast 2 Safari major versions[m
[32m+[m[32mlast 2 iOS major versions[m
[32m+[m[32mFirefox ESR[m
[32m+[m[32mnot IE 11 # Angular supports IE 11 only as an opt-in. To opt-in, remove the 'not' prefix on this line.[m
[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..59d9a3a[m
[1m--- /dev/null[m
[1m+++ b/.editorconfig[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m# Editor configuration, see https://editorconfig.org[m
[32m+[m[32mroot = true[m
[32m+[m
[32m+[m[32m[*][m
[32m+[m[32mcharset = utf-8[m
[32m+[m[32mindent_style = space[m
[32m+[m[32mindent_size = 2[m
[32m+[m[32minsert_final_newline = true[m
[32m+[m[32mtrim_trailing_whitespace = true[m
[32m+[m
[32m+[m[32m[*.ts][m
[32m+[m[32mquote_type = single[m
[32m+[m
[32m+[m[32m[*.md][m
[32m+[m[32mmax_line_length = off[m
[32m+[m[32mtrim_trailing_whitespace = false[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..de51f68[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,45 @@[m
[32m+[m[32m# See http://help.github.com/ignore-files/ for more about ignoring files.[m
[32m+[m
[32m+[m[32m# compiled output[m
[32m+[m[32m/dist[m
[32m+[m[32m/tmp[m
[32m+[m[32m/out-tsc[m
[32m+[m[32m# Only exists if Bazel was run[m
[32m+[m[32m/bazel-out[m
[32m+[m
[32m+[m[32m# dependencies[m
[32m+[m[32m/node_modules[m
[32m+[m
[32m+[m[32m# profiling files[m
[32m+[m[32mchrome-profiler-events*.json[m
[32m+[m
[32m+[m[32m# IDEs and editors[m
[32m+[m[32m/.idea[m
[32m+[m[32m.project[m
[32m+[m[32m.classpath[m
[32m+[m[32m.c9/[m
[32m+[m[32m*.launch[m
[32m+[m[32m.settings/[m
[32m+[m[32m*.sublime-workspace[m
[32m+[m
[32m+[m[32m# IDE - VSCode[m
[32m+[m[32m.vscode/*[m
[32m+[m[32m!.vscode/settings.json[m
[32m+[m[32m!.vscode/tasks.json[m
[32m+[m[32m!.vscode/launch.json[m
[32m+[m[32m!.vscode/extensions.json[m
[32m+[m[32m.history/*[m
[32m+[m
[32m+[m[32m# misc[m
[32m+[m[32m/.sass-cache[m
[32m+[m[32m/connect.lock[m
[32m+[m[32m/coverage[m
[32m+[m[32m/libpeerconnection.log[m
[32m+[m[32mnpm-debug.log[m
[32m+[m[32myarn-error.log[m
[32m+[m[32mtestem.log[m
[32m+[m[32m/typings[m
[32m+[m
[32m+[m[32m# System Files[m
[32m+[m[32m.DS_Store[m
[32m+[m[32mThumbs.db[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..d9bd6b6[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,27 @@[m
[32m+[m[32m# ClientesApp[m
[32m+[m
[32m+[m[32mThis project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 12.0.0.[m
[32m+[m
[32m+[m[32m## Development server[m
[32m+[m
[32m+[m[32mRun `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.[m
[32m+[m
[32m+[m[32m## Code scaffolding[m
[32m+[m
[32m+[m[32mRun `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.[m
[32m+[m
[32m+[m[32m## Build[m
[32m+[m
[32m+[m[32mRun `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.[m
[32m+[m
[32m+[m[32m## Running unit tests[m
[32m+[m
[32m+[m[32mRun `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).[m
[32m+[m
[32m+[m[32m## Running end-to-end tests[m
[32m+[m
[32m+[m[32mRun `ng e2e` to execute the end-to-end tests via a platform of your choice.[m
[32m+[m
[32m+[m[32m## Further help[m
[32m+[m
[32m+[m[32mTo get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.[m
[1mdiff --git a/angular.json b/angular.json[m
[1mnew file mode 100644[m
[1mindex 0000000..3cf9dc8[m
[1m--- /dev/null[m
[1m+++ b/angular.json[m
[36m@@ -0,0 +1,106 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "$schema": "./node_modules/@angular/cli/lib/config/schema.json",[m
[32m+[m[32m  "version": 1,[m
[32m+[m[32m  "newProjectRoot": "projects",[m
[32m+[m[32m  "projects": {[m
[32m+[m[32m    "clientes-app": {[m
[32m+[m[32m      "projectType": "application",[m
[32m+[m[32m      "schematics": {[m
[32m+[m[32m        "@schematics/angular:application": {[m
[32m+[m[32m          "strict": true[m
[32m+[m[32m        }[m
[32m+[m[32m      },[m
[32m+[m[32m      "root": "",[m
[32m+[m[32m      "sourceRoot": "src",[m
[32m+[m[32m      "prefix": "app",[m
[32m+[m[32m      "architect": {[m
[32m+[m[32m        "build": {[m
[32m+[m[32m          "builder": "@angular-devkit/build-angular:browser",[m
[32m+[m[32m          "options": {[m
[32m+[m[32m            "outputPath": "dist/clientes-app",[m
[32m+[m[32m            "index": "src/index.html",[m
[32m+[m[32m            "main": "src/main.ts",[m
[32m+[m[32m            "polyfills": "src/polyfills.ts",[m
[32m+[m[32m            "tsConfig": "tsconfig.app.json",[m
[32m+[m[32m            "assets": [[m
[32m+[m[32m              "src/favicon.ico",[m
[32m+[m[32m              "src/assets"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "styles": [[m
[32m+[m[32m              "src/styles.css"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "scripts": [][m
[32m+[m[32m          },[m
[32m+[m[32m          "configurations": {[m
[32m+[m[32m            "production": {[m
[32m+[m[32m              "budgets": [[m
[32m+[m[32m                {[m
[32m+[m[32m                  "type": "initial",[m
[32m+[m[32m                  "maximumWarning": "500kb",[m
[32m+[m[32m                  "maximumError": "1mb"[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                  "type": "anyComponentStyle",[m
[32m+[m[32m                  "maximumWarning": "2kb",[m
[32m+[m[32m                  "maximumError": "4kb"[m
[32m+[m[32m                }[m
[32m+[m[32m              ],[m
[32m+[m[32m              "fileReplacements": [[m
[32m+[m[32m                {[m
[32m+[m[32m                  "replace": "src/environments/environment.ts",[m
[32m+[m[32m                  "with": "src/environments/environment.prod.ts"[m
[32m+[m[32m                }[m
[32m+[m[32m              ],[m
[32m+[m[32m              "outputHashing": "all"[m
[32m+[m[32m            },[m
[32m+[m[32m            "development": {[m
[32m+[m[32m              "buildOptimizer": false,[m
[32m+[m[32m              "optimization": false,[m
[32m+[m[32m              "vendorChunk": true,[m
[32m+[m[32m              "extractLicenses": false,[m
[32m+[m[32m              "sourceMap": true,[m
[32m+[m[32m              "namedChunks": true[m
[32m+[m[32m            }[m
[32m+[m[32m          },[m
[32m+[m[32m          "defaultConfiguration": "production"[m
[32m+[m[32m        },[m
[32m+[m[32m        "serve": {[m
[32m+[m[32m          "builder": "@angular-devkit/build-angular:dev-server",[m
[32m+[m[32m          "configurations": {[m
[32m+[m[32m            "production": {[m
[32m+[m[32m              "browserTarget": "clientes-app:build:production"[m
[32m+[m[32m            },[m
[32m+[m[32m            "development": {[m
[32m+[m[32m              "browserTarget": "clientes-app:build:development"[m
[32m+[m[32m            }[m
[32m+[m[32m          },[m
[32m+[m[32m          "defaultConfiguration": "development"[m
[32m+[m[32m        },[m
[32m+[m[32m        "extract-i18n": {[m
[32m+[m[32m          "builder": "@angular-devkit/build-angular:extract-i18n",[m
[32m+[m[32m          "options": {[m
[32m+[m[32m            "browserTarget": "clientes-app:build"[m
[32m+[m[32m          }[m
[32m+[m[32m        },[m
[32m+[m[32m        "test": {[m
[32m+[m[32m          "builder": "@angular-devkit/build-angular:karma",[m
[32m+[m[32m          "options": {[m
[32m+[m[32m            "main": "src/test.ts",[m
[32m+[m[32m            "polyfills": "src/polyfills.ts",[m
[32m+[m[32m            "tsConfig": "tsconfig.spec.json",[m
[32m+[m[32m            "karmaConfig": "karma.conf.js",[m
[32m+[m[32m            "assets": [[m
[32m+[m[32m              "src/favicon.ico",[m
[32m+[m[32m              "src/assets"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "styles": [[m
[32m+[m[32m              "src/styles.css"[m
[32m+[m[32m            ],[m
[32m+[m[32m            "scripts": [][m
[32m+[m[32m          }[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    }[m
[32m+[m[32m  },[m
[32m+[m[32m  "defaultProject": "clientes-app"[m
[32m+[m[32m}[m
[1mdiff --git a/karma.conf.js b/karma.conf.js[m
[1mnew file mode 100644[m
[1mindex 0000000..4871175[m
[1m--- /dev/null[m
[1m+++ b/karma.conf.js[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m[32m// Karma configuration file, see link for more information[m
[32m+[m[32m// https://karma-runner.github.io/1.0/config/configuration-file.html[m
[32m+[m
[32m+[m[32mmodule.exports = function (config) {[m
[32m+[m[32m  config.set({[m
[32m+[m[32m    basePath: '',[m
[32m+[m[32m    frameworks: ['jasmine', '@angular-devkit/build-angular'],[m
[32m+[m[32m    plugins: [[m
[32m+[m[32m      require('karma-jasmine'),[m
[32m+[m[32m      require('karma-chrome-launcher'),[m
[32m+[m[32m      require('karma-jasmine-html-reporter'),[m
[32m+[m[32m      require('karma-coverage'),[m
[32m+[m[32m      require('@angular-devkit/build-angular/plugins/karma')[m
[32m+[m[32m    ],[m
[32m+[m[32m    client: {[m
[32m+[m[32m      jasmine: {[m
[32m+[m[32m        // you can add configuration options for Jasmine here[m
[32m+[m[32m        // the possible options are listed at https://jasmine.github.io/api/edge/Configuration.html[m
[32m+[m[32m        // for example, you can disable the random execution with `random: false`[m
[32m+[m[32m        // or set a specific seed with `seed: 4321`[m
[32m+[m[32m      },[m
[32m+[m[32m      clearContext: false // leave Jasmine Spec Runner output visible in browser[m
[32m+[m[32m    },[m
[32m+[m[32m    jasmineHtmlReporter: {[m
[32m+[m[32m      suppressAll: true // removes the duplicated traces[m
[32m+[m[32m    },[m
[32m+[m[32m    coverageReporter: {[m
[32m+[m[32m      dir: require('path').join(__dirname, './coverage/clientes-app'),[m
[32m+[m[32m      subdir: '.',[m
[32m+[m[32m      reporters: [[m
[32m+[m[32m        { type: 'html' },[m
[32m+[m[32m        { type: 'text-summary' }[m
[32m+[m[32m      ][m
[32m+[m[32m    },[m
[32m+[m[32m    reporters: ['progress', 'kjhtml'],[m
[32m+[m[32m    port: 9876,[m
[32m+[m[32m    colors: true,[m
[32m+[m[32m    logLevel: config.LOG_INFO,[m
[32m+[m[32m    autoWatch: true,[m
[32m+[m[32m    browsers: ['Chrome'],[m
[32m+[m[32m    singleRun: false,[m
[32m+[m[32m    restartOnFileChange: true[m
[32m+[m[32m  });[m
[32m+[m[32m};[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mnew file mode 100644[m
[1mindex 0000000..5c39ba0[m
[1m--- /dev/null[m
[1m+++ b/package-lock.json[m
[36m@@ -0,0 +1,12097 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "clientes-app",[m
[32m+[m[32m  "version": "0.0.0",[m
[32m+[m[32m  "lockfileVersion": 1,[m
[32m+[m[32m  "requires": true,[m
[32m+[m[32m  "dependencies": {[m
[32m+[m[32m    "@angular-devkit/architect": {[m
[32m+[m[32m      "version": "0.1200.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular-devkit/architect/-/architect-0.1200.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-6E42oQ8e3zbeUE5O5YXc+q/vTBHyFn6YSsZEn0kb/3r48zl+9MBb4np1Q8077/GxQtD4G/TN/DhgCa9muLSgzA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@angular-devkit/core": "12.0.0",[m
[32m+[m[32m        "rxjs": "6.6.7"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular-devkit/build-angular": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular-devkit/build-angular/-/build-angular-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-+hljBhcT0NHjbbLMiUmPxMQf1/Fuo6F/O89gcRNZ1RyNMNQO6XqysqsXL1z/eofHcMs3T+Erv4JfdQ9Gn4Thkw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@angular-devkit/architect": "0.1200.0",[m
[32m+[m[32m        "@angular-devkit/build-optimizer": "0.1200.0",[m
[32m+[m[32m        "@angular-devkit/build-webpack": "0.1200.0",[m
[32m+[m[32m        "@angular-devkit/core": "12.0.0",[m
[32m+[m[32m        "@babel/core": "7.14.0",[m
[32m+[m[32m        "@babel/generator": "7.14.1",[m
[32m+[m[32m        "@babel/plugin-transform-async-to-generator": "7.13.0",[m
[32m+[m[32m        "@babel/plugin-transform-runtime": "7.13.15",[m
[32m+[m[32m        "@babel/preset-env": "7.14.1",[m
[32m+[m[32m        "@babel/runtime": "7.14.0",[m
[32m+[m[32m        "@babel/template": "7.12.13",[m
[32m+[m[32m        "@discoveryjs/json-ext": "0.5.2",[m
[32m+[m[32m        "@jsdevtools/coverage-istanbul-loader": "3.0.5",[m
[32m+[m[32m        "@ngtools/webpack": "12.0.0",[m
[32m+[m[32m        "ansi-colors": "4.1.1",[m
[32m+[m[32m        "babel-loader": "8.2.2",[m
[32m+[m[32m        "browserslist": "^4.9.1",[m
[32m+[m[32m        "cacache": "15.0.6",[m
[32m+[m[32m        "caniuse-lite": "^1.0.30001032",[m
[32m+[m[32m        "circular-dependency-plugin": "5.2.2",[m
[32m+[m[32m        "copy-webpack-plugin": "8.1.1",[m
[32m+[m[32m        "core-js": "3.12.0",[m
[32m+[m[32m        "critters": "0.0.10",[m
[32m+[m[32m        "css-loader": "5.2.4",[m
[32m+[m[32m        "cssnano": "5.0.2",[m
[32m+[m[32m        "find-cache-dir": "3.3.1",[m
[32m+[m[32m        "glob": "7.1.7",[m
[32m+[m[32m        "https-proxy-agent": "5.0.0",[m
[32m+[m[32m        "inquirer": "8.0.0",[m
[32m+[m[32m        "jest-worker": "26.6.2",[m
[32m+[m[32m        "karma-source-map-support": "1.4.0",[m
[32m+[m[32m        "less": "4.1.1",[m
[32m+[m[32m        "less-loader": "8.1.1",[m
[32m+[m[32m        "license-webpack-plugin": "2.3.17",[m
[32m+[m[32m        "loader-utils": "2.0.0",[m
[32m+[m[32m        "mini-css-extract-plugin": "1.5.1",[m
[32m+[m[32m        "minimatch": "3.0.4",[m
[32m+[m[32m        "open": "8.0.7",[m
[32m+[m[32m        "ora": "5.4.0",[m
[32m+[m[32m        "parse5-html-rewriting-stream": "6.0.1",[m
[32m+[m[32m        "postcss": "8.2.14",[m
[32m+[m[32m        "postcss-import": "14.0.1",[m
[32m+[m[32m        "postcss-loader": "5.2.0",[m
[32m+[m[32m        "postcss-preset-env": "6.7.0",[m
[32m+[m[32m        "raw-loader": "4.0.2",[m
[32m+[m[32m        "regenerator-runtime": "0.13.7",[m
[32m+[m[32m        "resolve-url-loader": "4.0.0",[m
[32m+[m[32m        "rimraf": "3.0.2",[m
[32m+[m[32m        "rxjs": "6.6.7",[m
[32m+[m[32m        "sass": "1.32.12",[m
[32m+[m[32m        "sass-loader": "11.0.1",[m
[32m+[m[32m        "semver": "7.3.5",[m
[32m+[m[32m        "source-map": "0.7.3",[m
[32m+[m[32m        "source-map-loader": "2.0.1",[m
[32m+[m[32m        "source-map-support": "0.5.19",[m
[32m+[m[32m        "style-loader": "2.0.0",[m
[32m+[m[32m        "stylus": "0.54.8",[m
[32m+[m[32m        "stylus-loader": "5.0.0",[m
[32m+[m[32m        "terser": "5.7.0",[m
[32m+[m[32m        "terser-webpack-plugin": "4.2.3",[m
[32m+[m[32m        "text-table": "0.2.0",[m
[32m+[m[32m        "tree-kill": "1.2.2",[m
[32m+[m[32m        "webpack": "5.36.2",[m
[32m+[m[32m        "webpack-dev-middleware": "4.1.0",[m
[32m+[m[32m        "webpack-dev-server": "3.11.2",[m
[32m+[m[32m        "webpack-merge": "5.7.3",[m
[32m+[m[32m        "webpack-subresource-integrity": "1.5.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular-devkit/build-optimizer": {[m
[32m+[m[32m      "version": "0.1200.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular-devkit/build-optimizer/-/build-optimizer-0.1200.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-0ZkQX6FXfV2Q56BE6HeNLieG5S5V9cTzb2Mlr26oxPSHeEMoxoCO/fej4cj0cuJRLlmtu/ZFQUrlMLqWPteRxg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "source-map": "0.7.3",[m
[32m+[m[32m        "tslib": "2.2.0",[m
[32m+[m[32m        "typescript": "4.2.4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular-devkit/build-webpack": {[m
[32m+[m[32m      "version": "0.1200.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular-devkit/build-webpack/-/build-webpack-0.1200.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-4NXJUbDkIbwjXiUe5ANRXfr+65EHnEQgdkZxSppyXLIfJJAgAQ7oUPI5FtzpASkuGWIPoWaxqVZOLj901I4tbg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@angular-devkit/architect": "0.1200.0",[m
[32m+[m[32m        "rxjs": "6.6.7"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular-devkit/core": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular-devkit/core/-/core-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-4Cys++a684hCDTL/1X6j9izsjsqvYs3m6LF58zvKZHeG/Yhdofv1rV+3YGVYAorOx9w4spAgYTmr99TYnBGQWQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "ajv": "8.2.0",[m
[32m+[m[32m        "ajv-formats": "2.0.2",[m
[32m+[m[32m        "fast-json-stable-stringify": "2.1.0",[m
[32m+[m[32m        "magic-string": "0.25.7",[m
[32m+[m[32m        "rxjs": "6.6.7",[m
[32m+[m[32m        "source-map": "0.7.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular-devkit/schematics": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular-devkit/schematics/-/schematics-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-xp6b8QF+MYT3kXEDo6MFRQRDGkFxAHBdBCo2wdo8qvoNHIr+8XYZwDEb8z0SbzzJmXFbDXk1vmavcNSd6+uLXg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@angular-devkit/core": "12.0.0",[m
[32m+[m[32m        "ora": "5.4.0",[m
[32m+[m[32m        "rxjs": "6.6.7"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/animations": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/animations/-/animations-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-BG/Ksk3863I7GKUem73Kty4UeU289oN+iPo/0O0x2dJCzNcpafML0GJpz4lg/RT9l6UddFviI4q9NiopR+eJfw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/cli": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/cli/-/cli-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-A8vGhLKTQI/1P2Ia3Wv3/SfUBJGcy7B/MS3Dp+ueEs2purMG23z4UDmAp2EcxCJKKx0fKM++XKpbHIanELfOeA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@angular-devkit/architect": "0.1200.0",[m
[32m+[m[32m        "@angular-devkit/core": "12.0.0",[m
[32m+[m[32m        "@angular-devkit/schematics": "12.0.0",[m
[32m+[m[32m        "@schematics/angular": "12.0.0",[m
[32m+[m[32m        "@yarnpkg/lockfile": "1.1.0",[m
[32m+[m[32m        "ansi-colors": "4.1.1",[m
[32m+[m[32m        "debug": "4.3.1",[m
[32m+[m[32m        "ini": "2.0.0",[m
[32m+[m[32m        "inquirer": "8.0.0",[m
[32m+[m[32m        "jsonc-parser": "3.0.0",[m
[32m+[m[32m        "npm-package-arg": "8.1.2",[m
[32m+[m[32m        "npm-pick-manifest": "6.1.1",[m
[32m+[m[32m        "open": "8.0.7",[m
[32m+[m[32m        "ora": "5.4.0",[m
[32m+[m[32m        "pacote": "11.3.2",[m
[32m+[m[32m        "resolve": "1.20.0",[m
[32m+[m[32m        "rimraf": "3.0.2",[m
[32m+[m[32m        "semver": "7.3.5",[m
[32m+[m[32m        "symbol-observable": "4.0.0",[m
[32m+[m[32m        "uuid": "8.3.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "uuid": {[m
[32m+[m[32m          "version": "8.3.2",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/uuid/-/uuid-8.3.2.tgz",[m
[32m+[m[32m          "integrity": "sha512-+NYs2QeMWy+GWFOEm9xnn6HCDp0l7QBD7ml8zLUmJ+93Q5NF0NocErnwkTkXVFNiX3/fpC6afS8Dhb/gz7R7eg==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/common": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/common/-/common-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-d6+WSnCFcxAHBsbCvBC3Rutmk+tB5CEdKhkTBY/vGe0A/MjbayzHR4IDv2i0+UZDLSgMJubqh3iCPUcSglXSEg==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/compiler": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/compiler/-/compiler-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-7NdZNyxm9KLlRMmmtId6RfV6VbQIUMDxN44R+ax66BoWsuhdYXUDsDO554LwYwrjnnXXGkurDJhv7umeRwaZGw==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/compiler-cli": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/compiler-cli/-/compiler-cli-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-6cBocQd/Umi8gVI6Jo8VsyvHuRjDO4TrFFUkbVwNAG9FacXEFP0zYABT5ywe2lVkUxs5e8WyDqvDf7fxr7CI4Q==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/core": "^7.8.6",[m
[32m+[m[32m        "@babel/types": "^7.8.6",[m
[32m+[m[32m        "canonical-path": "1.0.0",[m
[32m+[m[32m        "chokidar": "^3.0.0",[m
[32m+[m[32m        "convert-source-map": "^1.5.1",[m
[32m+[m[32m        "dependency-graph": "^0.11.0",[m
[32m+[m[32m        "magic-string": "^0.25.0",[m
[32m+[m[32m        "minimist": "^1.2.0",[m
[32m+[m[32m        "reflect-metadata": "^0.1.2",[m
[32m+[m[32m        "semver": "^7.0.0",[m
[32m+[m[32m        "source-map": "^0.6.1",[m
[32m+[m[32m        "sourcemap-codec": "^1.4.8",[m
[32m+[m[32m        "tslib": "^2.1.0",[m
[32m+[m[32m        "yargs": "^16.2.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "ansi-styles": {[m
[32m+[m[32m          "version": "4.3.0",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz",[m
[32m+[m[32m          "integrity": "sha512-zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==",[m
[32m+[m[32m          "dev": true,[m
[32m+[m[32m          "requires": {[m
[32m+[m[32m            "color-convert": "^2.0.1"[m
[32m+[m[32m          }[m
[32m+[m[32m        },[m
[32m+[m[32m        "cliui": {[m
[32m+[m[32m          "version": "7.0.4",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/cliui/-/cliui-7.0.4.tgz",[m
[32m+[m[32m          "integrity": "sha512-OcRE68cOsVMXp1Yvonl/fzkQOyjLSu/8bhPDfQt0e0/Eb283TKP20Fs2MqoPsr9SwA595rRCA+QMzYc9nBP+JQ==",[m
[32m+[m[32m          "dev": true,[m
[32m+[m[32m          "requires": {[m
[32m+[m[32m            "string-width": "^4.2.0",[m
[32m+[m[32m            "strip-ansi": "^6.0.0",[m
[32m+[m[32m            "wrap-ansi": "^7.0.0"[m
[32m+[m[32m          }[m
[32m+[m[32m        },[m
[32m+[m[32m        "color-convert": {[m
[32m+[m[32m          "version": "2.0.1",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz",[m
[32m+[m[32m          "integrity": "sha512-RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==",[m
[32m+[m[32m          "dev": true,[m
[32m+[m[32m          "requires": {[m
[32m+[m[32m            "color-name": "~1.1.4"[m
[32m+[m[32m          }[m
[32m+[m[32m        },[m
[32m+[m[32m        "color-name": {[m
[32m+[m[32m          "version": "1.1.4",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz",[m
[32m+[m[32m          "integrity": "sha512-dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        },[m
[32m+[m[32m        "source-map": {[m
[32m+[m[32m          "version": "0.6.1",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",[m
[32m+[m[32m          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        },[m
[32m+[m[32m        "wrap-ansi": {[m
[32m+[m[32m          "version": "7.0.0",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-7.0.0.tgz",[m
[32m+[m[32m          "integrity": "sha512-YVGIj2kamLSTxw6NsZjoBxfSwsn0ycdesmc4p+Q21c5zPuZ1pl+NfxVdxPtdHvmNVOQ6XSYG4AUtyt/Fi7D16Q==",[m
[32m+[m[32m          "dev": true,[m
[32m+[m[32m          "requires": {[m
[32m+[m[32m            "ansi-styles": "^4.0.0",[m
[32m+[m[32m            "string-width": "^4.1.0",[m
[32m+[m[32m            "strip-ansi": "^6.0.0"[m
[32m+[m[32m          }[m
[32m+[m[32m        },[m
[32m+[m[32m        "y18n": {[m
[32m+[m[32m          "version": "5.0.8",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/y18n/-/y18n-5.0.8.tgz",[m
[32m+[m[32m          "integrity": "sha512-0pfFzegeDWJHJIAmTLRP2DwHjdF5s7jo9tuztdQxAhINCdvS+3nGINqPd00AphqJR/0LhANUS6/+7SCb98YOfA==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        },[m
[32m+[m[32m        "yargs": {[m
[32m+[m[32m          "version": "16.2.0",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/yargs/-/yargs-16.2.0.tgz",[m
[32m+[m[32m          "integrity": "sha512-D1mvvtDG0L5ft/jGWkLpG1+m0eQxOfaBvTNELraWj22wSVUMWxZUvYgJYcKh6jGGIkJFhH4IZPQhR4TKpc8mBw==",[m
[32m+[m[32m          "dev": true,[m
[32m+[m[32m          "requires": {[m
[32m+[m[32m            "cliui": "^7.0.2",[m
[32m+[m[32m            "escalade": "^3.1.1",[m
[32m+[m[32m            "get-caller-file": "^2.0.5",[m
[32m+[m[32m            "require-directory": "^2.1.1",[m
[32m+[m[32m            "string-width": "^4.2.0",[m
[32m+[m[32m            "y18n": "^5.0.5",[m
[32m+[m[32m            "yargs-parser": "^20.2.2"[m
[32m+[m[32m          }[m
[32m+[m[32m        },[m
[32m+[m[32m        "yargs-parser": {[m
[32m+[m[32m          "version": "20.2.7",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-20.2.7.tgz",[m
[32m+[m[32m          "integrity": "sha512-FiNkvbeHzB/syOjIUxFDCnhSfzAL8R5vs40MgLFBorXACCOAEaWu0gRZl14vG8MR9AOJIZbmkjhusqBYZ3HTHw==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/core": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/core/-/core-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-fwXtF6qP8pr07+El/dg67RmgsI4Ubfi+E5YLjYKQ62gM8MzYyYGmLPakFzFnbzYrOr05zdprrbcVgGtMRHapMA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/forms": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/forms/-/forms-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-/Z2AWd2k/9cs+WwXBlZ8yUqgGsHYcp8g6PUCehZQk1gd/4n4FOKvTIGiypajGUPwO4GOHJDzibfCsGw8MenCpQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/platform-browser": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/platform-browser/-/platform-browser-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-h+uMMluRh4dqJIor7EpvwNKRjv4xCxpttizJlqbo3vfcoOoLDoc9SvEFiXxd+UVh3S0re8zBsyBIJl+gTVFKWQ==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/platform-browser-dynamic": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/platform-browser-dynamic/-/platform-browser-dynamic-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Rkxr/KVOZGuGSuIYo2XZYbOpyS2t2jpLPS65KUUcOEwktj4hSv5VZ2soZF18tG5ZNbx06C1QDW/j9HwmZjEh5g==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@angular/router": {[m
[32m+[m[32m      "version": "12.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@angular/router/-/router-12.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-n5YHa24NgiRttAfMOzSa/H+nbx8j8c+2f1HgyrOftxoExH1FPTRnKd/mJ32A6iies8glOj9ImQBO/91C0yaQeA==",[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "tslib": "^2.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/code-frame": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-HV1Cm0Q3ZrpCR93tkWOYiuYIgLxZXZFVG2VgK+MBWjUqZTundupbfx2aXarXuw5Ko5aMcjtJgbSs4vUGBS5v6g==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/highlight": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/compat-data": {[m
[32m+[m[32m      "version": "7.14.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/compat-data/-/compat-data-7.14.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-vu9V3uMM/1o5Hl5OekMUowo3FqXLJSw+s+66nt0fSWVWTtmosdzn45JHOB3cPtZoe6CTBDzvSw0RdOY85Q37+Q==",[m
[32m+[m[32m      "dev": true[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/core": {[m
[32m+[m[32m      "version": "7.14.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/core/-/core-7.14.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-8YqpRig5NmIHlMLw09zMlPTvUVMILjqCOtVgu+TVNWEBvy9b5I3RRyhqnrV4hjgEK7n8P9OqvkWJAFmEL6Wwfw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/code-frame": "^7.12.13",[m
[32m+[m[32m        "@babel/generator": "^7.14.0",[m
[32m+[m[32m        "@babel/helper-compilation-targets": "^7.13.16",[m
[32m+[m[32m        "@babel/helper-module-transforms": "^7.14.0",[m
[32m+[m[32m        "@babel/helpers": "^7.14.0",[m
[32m+[m[32m        "@babel/parser": "^7.14.0",[m
[32m+[m[32m        "@babel/template": "^7.12.13",[m
[32m+[m[32m        "@babel/traverse": "^7.14.0",[m
[32m+[m[32m        "@babel/types": "^7.14.0",[m
[32m+[m[32m        "convert-source-map": "^1.7.0",[m
[32m+[m[32m        "debug": "^4.1.0",[m
[32m+[m[32m        "gensync": "^1.0.0-beta.2",[m
[32m+[m[32m        "json5": "^2.1.2",[m
[32m+[m[32m        "semver": "^6.3.0",[m
[32m+[m[32m        "source-map": "^0.5.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": {[m
[32m+[m[32m          "version": "6.3.0",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/semver/-/semver-6.3.0.tgz",[m
[32m+[m[32m          "integrity": "sha512-b39TBaTSfV6yBrapU89p5fKekE2m/NwnDocOVruQFS1/veMgdzuPcnOM34M6CwxW8jH/lxEa5rBoDeUwu5HHTw==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        },[m
[32m+[m[32m        "source-map": {[m
[32m+[m[32m          "version": "0.5.7",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.5.7.tgz",[m
[32m+[m[32m          "integrity": "sha1-igOdLRAh0i0eoUyA2OpGi6LvP8w=",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/generator": {[m
[32m+[m[32m      "version": "7.14.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/generator/-/generator-7.14.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-TMGhsXMXCP/O1WtQmZjpEYDhCYC9vFhayWZPJSZCGkPJgUqX0rF0wwtrYvnzVxIjcF80tkUertXVk5cwqi5cAQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.14.1",[m
[32m+[m[32m        "jsesc": "^2.5.1",[m
[32m+[m[32m        "source-map": "^0.5.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "source-map": {[m
[32m+[m[32m          "version": "0.5.7",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.5.7.tgz",[m
[32m+[m[32m          "integrity": "sha1-igOdLRAh0i0eoUyA2OpGi6LvP8w=",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-annotate-as-pure": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-annotate-as-pure/-/helper-annotate-as-pure-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-7YXfX5wQ5aYM/BOlbSccHDbuXXFPxeoUmfWtz8le2yTkTZc+BxsiEnENFoi2SlmA8ewDkG2LgIMIVzzn2h8kfw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-builder-binary-assignment-operator-visitor": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-builder-binary-assignment-operator-visitor/-/helper-builder-binary-assignment-operator-visitor-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-CZOv9tGphhDRlVjVkAgm8Nhklm9RzSmWpX2my+t7Ua/KT616pEzXsQCjinzvkRvHWJ9itO4f296efroX23XCMA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-explode-assignable-expression": "^7.12.13",[m
[32m+[m[32m        "@babel/types": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-compilation-targets": {[m
[32m+[m[32m      "version": "7.13.16",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-compilation-targets/-/helper-compilation-targets-7.13.16.tgz",[m
[32m+[m[32m      "integrity": "sha512-3gmkYIrpqsLlieFwjkGgLaSHmhnvlAYzZLlYVjlW+QwI+1zE17kGxuJGmIqDQdYp56XdmGeD+Bswx0UTyG18xA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/compat-data": "^7.13.15",[m
[32m+[m[32m        "@babel/helper-validator-option": "^7.12.17",[m
[32m+[m[32m        "browserslist": "^4.14.5",[m
[32m+[m[32m        "semver": "^6.3.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": {[m
[32m+[m[32m          "version": "6.3.0",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/semver/-/semver-6.3.0.tgz",[m
[32m+[m[32m          "integrity": "sha512-b39TBaTSfV6yBrapU89p5fKekE2m/NwnDocOVruQFS1/veMgdzuPcnOM34M6CwxW8jH/lxEa5rBoDeUwu5HHTw==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-create-class-features-plugin": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-create-class-features-plugin/-/helper-create-class-features-plugin-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-6YctwVsmlkchxfGUogvVrrhzyD3grFJyluj5JgDlQrwfMLJSt5tdAzFZfPf4H2Xoi5YLcQ6BxfJlaOBHuctyIw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.12.13",[m
[32m+[m[32m        "@babel/helper-function-name": "^7.14.2",[m
[32m+[m[32m        "@babel/helper-member-expression-to-functions": "^7.13.12",[m
[32m+[m[32m        "@babel/helper-optimise-call-expression": "^7.12.13",[m
[32m+[m[32m        "@babel/helper-replace-supers": "^7.13.12",[m
[32m+[m[32m        "@babel/helper-split-export-declaration": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-create-regexp-features-plugin": {[m
[32m+[m[32m      "version": "7.12.17",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-create-regexp-features-plugin/-/helper-create-regexp-features-plugin-7.12.17.tgz",[m
[32m+[m[32m      "integrity": "sha512-p2VGmBu9oefLZ2nQpgnEnG0ZlRPvL8gAGvPUMQwUdaE8k49rOMuZpOwdQoy5qJf6K8jL3bcAMhVUlHAjIgJHUg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.12.13",[m
[32m+[m[32m        "regexpu-core": "^4.7.1"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-define-polyfill-provider": {[m
[32m+[m[32m      "version": "0.2.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-define-polyfill-provider/-/helper-define-polyfill-provider-0.2.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-JT8tHuFjKBo8NnaUbblz7mIu1nnvUDiHVjXXkulZULyidvo/7P6TY7+YqpV37IfF+KUFxmlK04elKtGKXaiVgw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-compilation-targets": "^7.13.0",[m
[32m+[m[32m        "@babel/helper-module-imports": "^7.12.13",[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/traverse": "^7.13.0",[m
[32m+[m[32m        "debug": "^4.1.1",[m
[32m+[m[32m        "lodash.debounce": "^4.0.8",[m
[32m+[m[32m        "resolve": "^1.14.2",[m
[32m+[m[32m        "semver": "^6.1.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": {[m
[32m+[m[32m          "version": "6.3.0",[m
[32m+[m[32m          "resolved": "https://registry.npmjs.org/semver/-/semver-6.3.0.tgz",[m
[32m+[m[32m          "integrity": "sha512-b39TBaTSfV6yBrapU89p5fKekE2m/NwnDocOVruQFS1/veMgdzuPcnOM34M6CwxW8jH/lxEa5rBoDeUwu5HHTw==",[m
[32m+[m[32m          "dev": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-explode-assignable-expression": {[m
[32m+[m[32m      "version": "7.13.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-explode-assignable-expression/-/helper-explode-assignable-expression-7.13.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-qS0peLTDP8kOisG1blKbaoBg/o9OSa1qoumMjTK5pM+KDTtpxpsiubnCGP34vK8BXGcb2M9eigwgvoJryrzwWA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.13.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-function-name": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-function-name/-/helper-function-name-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-NYZlkZRydxw+YT56IlhIcS8PAhb+FEUiOzuhFTfqDyPmzAhRge6ua0dQYT/Uh0t/EDHq05/i+e5M2d4XvjgarQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-get-function-arity": "^7.12.13",[m
[32m+[m[32m        "@babel/template": "^7.12.13",[m
[32m+[m[32m        "@babel/types": "^7.14.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-get-function-arity": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-get-function-arity/-/helper-get-function-arity-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-DjEVzQNz5LICkzN0REdpD5prGoidvbdYk1BVgRUOINaWJP2t6avB27X1guXK1kXNrX0WMfsrm1A/ZBthYuIMQg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-hoist-variables": {[m
[32m+[m[32m      "version": "7.13.16",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-hoist-variables/-/helper-hoist-variables-7.13.16.tgz",[m
[32m+[m[32m      "integrity": "sha512-1eMtTrXtrwscjcAeO4BVK+vvkxaLJSPFz1w1KLawz6HLNi9bPFGBNwwDyVfiu1Tv/vRRFYfoGaKhmAQPGPn5Wg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/traverse": "^7.13.15",[m
[32m+[m[32m        "@babel/types": "^7.13.16"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-member-expression-to-functions": {[m
[32m+[m[32m      "version": "7.13.12",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-member-expression-to-functions/-/helper-member-expression-to-functions-7.13.12.tgz",[m
[32m+[m[32m      "integrity": "sha512-48ql1CLL59aKbU94Y88Xgb2VFy7a95ykGRbJJaaVv+LX5U8wFpLfiGXJJGUozsmA1oEh/o5Bp60Voq7ACyA/Sw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.13.12"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-module-imports": {[m
[32m+[m[32m      "version": "7.13.12",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-module-imports/-/helper-module-imports-7.13.12.tgz",[m
[32m+[m[32m      "integrity": "sha512-4cVvR2/1B693IuOvSI20xqqa/+bl7lqAMR59R4iu39R9aOX8/JoYY1sFaNvUMyMBGnHdwvJgUrzNLoUZxXypxA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.13.12"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-module-transforms": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-module-transforms/-/helper-module-transforms-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-OznJUda/soKXv0XhpvzGWDnml4Qnwp16GN+D/kZIdLsWoHj05kyu8Rm5kXmMef+rVJZ0+4pSGLkeixdqNUATDA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-module-imports": "^7.13.12",[m
[32m+[m[32m        "@babel/helper-replace-supers": "^7.13.12",[m
[32m+[m[32m        "@babel/helper-simple-access": "^7.13.12",[m
[32m+[m[32m        "@babel/helper-split-export-declaration": "^7.12.13",[m
[32m+[m[32m        "@babel/helper-validator-identifier": "^7.14.0",[m
[32m+[m[32m        "@babel/template": "^7.12.13",[m
[32m+[m[32m        "@babel/traverse": "^7.14.2",[m
[32m+[m[32m        "@babel/types": "^7.14.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-optimise-call-expression": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-optimise-call-expression/-/helper-optimise-call-expression-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-BdWQhoVJkp6nVjB7nkFWcn43dkprYauqtk++Py2eaf/GRDFm5BxRqEIZCiHlZUGAVmtwKcsVL1dC68WmzeFmiA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-plugin-utils": {[m
[32m+[m[32m      "version": "7.13.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-plugin-utils/-/helper-plugin-utils-7.13.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-ZPafIPSwzUlAoWT8DKs1W2VyF2gOWthGd5NGFMsBcMMol+ZhK+EQY/e6V96poa6PA/Bh+C9plWN0hXO1uB8AfQ==",[m
[32m+[m[32m      "dev": true[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-remap-async-to-generator": {[m
[32m+[m[32m      "version": "7.13.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-remap-async-to-generator/-/helper-remap-async-to-generator-7.13.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-pUQpFBE9JvC9lrQbpX0TmeNIy5s7GnZjna2lhhcHC7DzgBs6fWn722Y5cfwgrtrqc7NAJwMvOa0mKhq6XaE4jg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.12.13",[m
[32m+[m[32m        "@babel/helper-wrap-function": "^7.13.0",[m
[32m+[m[32m        "@babel/types": "^7.13.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-replace-supers": {[m
[32m+[m[32m      "version": "7.13.12",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-replace-supers/-/helper-replace-supers-7.13.12.tgz",[m
[32m+[m[32m      "integrity": "sha512-Gz1eiX+4yDO8mT+heB94aLVNCL+rbuT2xy4YfyNqu8F+OI6vMvJK891qGBTqL9Uc8wxEvRW92Id6G7sDen3fFw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-member-expression-to-functions": "^7.13.12",[m
[32m+[m[32m        "@babel/helper-optimise-call-expression": "^7.12.13",[m
[32m+[m[32m        "@babel/traverse": "^7.13.0",[m
[32m+[m[32m        "@babel/types": "^7.13.12"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-simple-access": {[m
[32m+[m[32m      "version": "7.13.12",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-simple-access/-/helper-simple-access-7.13.12.tgz",[m
[32m+[m[32m      "integrity": "sha512-7FEjbrx5SL9cWvXioDbnlYTppcZGuCY6ow3/D5vMggb2Ywgu4dMrpTJX0JdQAIcRRUElOIxF3yEooa9gUb9ZbA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.13.12"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-skip-transparent-expression-wrappers": {[m
[32m+[m[32m      "version": "7.12.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-skip-transparent-expression-wrappers/-/helper-skip-transparent-expression-wrappers-7.12.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-Mf5AUuhG1/OCChOJ/HcADmvcHM42WJockombn8ATJG3OnyiSxBK/Mm5x78BQWvmtXZKHgbjdGL2kin/HOLlZGA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.12.1"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-split-export-declaration": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-split-export-declaration/-/helper-split-export-declaration-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-tCJDltF83htUtXx5NLcaDqRmknv652ZWCHyoTETf1CXYJdPC7nohZohjUgieXhv0hTJdRf2FjDueFehdNucpzg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/types": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-validator-identifier": {[m
[32m+[m[32m      "version": "7.14.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.14.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-V3ts7zMSu5lfiwWDVWzRDGIN+lnCEUdaXgtVHJgLb1rGaA6jMrtB9EmE7L18foXJIE8Un/A/h6NJfGQp/e1J4A==",[m
[32m+[m[32m      "dev": true[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-validator-option": {[m
[32m+[m[32m      "version": "7.12.17",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-validator-option/-/helper-validator-option-7.12.17.tgz",[m
[32m+[m[32m      "integrity": "sha512-TopkMDmLzq8ngChwRlyjR6raKD6gMSae4JdYDB8bByKreQgG0RBTuKe9LRxW3wFtUnjxOPRKBDwEH6Mg5KeDfw==",[m
[32m+[m[32m      "dev": true[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helper-wrap-function": {[m
[32m+[m[32m      "version": "7.13.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helper-wrap-function/-/helper-wrap-function-7.13.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-1UX9F7K3BS42fI6qd2A4BjKzgGjToscyZTdp1DjknHLCIvpgne6918io+aL5LXFcER/8QWiwpoY902pVEqgTXA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-function-name": "^7.12.13",[m
[32m+[m[32m        "@babel/template": "^7.12.13",[m
[32m+[m[32m        "@babel/traverse": "^7.13.0",[m
[32m+[m[32m        "@babel/types": "^7.13.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/helpers": {[m
[32m+[m[32m      "version": "7.14.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/helpers/-/helpers-7.14.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-+ufuXprtQ1D1iZTO/K9+EBRn+qPWMJjZSw/S0KlFrxCw4tkrzv9grgpDHkY9MeQTjTY8i2sp7Jep8DfU6tN9Mg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/template": "^7.12.13",[m
[32m+[m[32m        "@babel/traverse": "^7.14.0",[m
[32m+[m[32m        "@babel/types": "^7.14.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/highlight": {[m
[32m+[m[32m      "version": "7.14.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/highlight/-/highlight-7.14.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-YSCOwxvTYEIMSGaBQb5kDDsCopDdiUGsqpatp3fOlI4+2HQSkTmEVWnVuySdAC5EWCqSWWTv0ib63RjR7dTBdg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-validator-identifier": "^7.14.0",[m
[32m+[m[32m        "chalk": "^2.0.0",[m
[32m+[m[32m        "js-tokens": "^4.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/parser": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/parser/-/parser-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-IoVDIHpsgE/fu7eXBeRWt8zLbDrSvD7H1gpomOkPpBoEN8KCruCqSDdqo8dddwQQrui30KSvQBaMUOJiuFu6QQ==",[m
[32m+[m[32m      "dev": true[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-bugfix-v8-spread-parameters-in-optional-chaining": {[m
[32m+[m[32m      "version": "7.13.12",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-bugfix-v8-spread-parameters-in-optional-chaining/-/plugin-bugfix-v8-spread-parameters-in-optional-chaining-7.13.12.tgz",[m
[32m+[m[32m      "integrity": "sha512-d0u3zWKcoZf379fOeJdr1a5WPDny4aOFZ6hlfKivgK0LY7ZxNfoaHL2fWwdGtHyVvra38FC+HVYkO+byfSA8AQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/helper-skip-transparent-expression-wrappers": "^7.12.1",[m
[32m+[m[32m        "@babel/plugin-proposal-optional-chaining": "^7.13.12"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-async-generator-functions": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-async-generator-functions/-/plugin-proposal-async-generator-functions-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-b1AM4F6fwck4N8ItZ/AtC4FP/cqZqmKRQ4FaTDutwSYyjuhtvsGEMLK4N/ztV/ImP40BjIDyMgBQAeAMsQYVFQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/helper-remap-async-to-generator": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-async-generators": "^7.8.4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-class-properties": {[m
[32m+[m[32m      "version": "7.13.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-class-properties/-/plugin-proposal-class-properties-7.13.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-KnTDjFNC1g+45ka0myZNvSBFLhNCLN+GeGYLDEA8Oq7MZ6yMgfLoIRh86GRT0FjtJhZw8JyUskP9uvj5pHM9Zg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-create-class-features-plugin": "^7.13.0",[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-class-static-block": {[m
[32m+[m[32m      "version": "7.13.11",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-class-static-block/-/plugin-proposal-class-static-block-7.13.11.tgz",[m
[32m+[m[32m      "integrity": "sha512-fJTdFI4bfnMjvxJyNuaf8i9mVcZ0UhetaGEUHaHV9KEnibLugJkZAtXikR8KcYj+NYmI4DZMS8yQAyg+hvfSqg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-class-static-block": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-dynamic-import": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-dynamic-import/-/plugin-proposal-dynamic-import-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-oxVQZIWFh91vuNEMKltqNsKLFWkOIyJc95k2Gv9lWVyDfPUQGSSlbDEgWuJUU1afGE9WwlzpucMZ3yDRHIItkA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-dynamic-import": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-export-namespace-from": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-export-namespace-from/-/plugin-proposal-export-namespace-from-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-sRxW3z3Zp3pFfLAgVEvzTFutTXax837oOatUIvSG9o5gRj9mKwm3br1Se5f4QalTQs9x4AzlA/HrCWbQIHASUQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-export-namespace-from": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-json-strings": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-json-strings/-/plugin-proposal-json-strings-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-w2DtsfXBBJddJacXMBhElGEYqCZQqN99Se1qeYn8DVLB33owlrlLftIbMzn5nz1OITfDVknXF433tBrLEAOEjA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-json-strings": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-logical-assignment-operators": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-logical-assignment-operators/-/plugin-proposal-logical-assignment-operators-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-1JAZtUrqYyGsS7IDmFeaem+/LJqujfLZ2weLR9ugB0ufUPjzf8cguyVT1g5im7f7RXxuLq1xUxEzvm68uYRtGg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-logical-assignment-operators": "^7.10.4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-nullish-coalescing-operator": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-nullish-coalescing-operator/-/plugin-proposal-nullish-coalescing-operator-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-ebR0zU9OvI2N4qiAC38KIAK75KItpIPTpAtd2r4OZmMFeKbKJpUFLYP2EuDut82+BmYi8sz42B+TfTptJ9iG5Q==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-nullish-coalescing-operator": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-numeric-separator": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-numeric-separator/-/plugin-proposal-numeric-separator-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-DcTQY9syxu9BpU3Uo94fjCB3LN9/hgPS8oUL7KrSW3bA2ePrKZZPJcc5y0hoJAM9dft3pGfErtEUvxXQcfLxUg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-numeric-separator": "^7.10.4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-object-rest-spread": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-object-rest-spread/-/plugin-proposal-object-rest-spread-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-hBIQFxwZi8GIp934+nj5uV31mqclC1aYDhctDu5khTi9PCCUOczyy0b34W0oE9U/eJXiqQaKyVsmjeagOaSlbw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/compat-data": "^7.14.0",[m
[32m+[m[32m        "@babel/helper-compilation-targets": "^7.13.16",[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-object-rest-spread": "^7.8.3",[m
[32m+[m[32m        "@babel/plugin-transform-parameters": "^7.14.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-optional-catch-binding": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-optional-catch-binding/-/plugin-proposal-optional-catch-binding-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-XtkJsmJtBaUbOxZsNk0Fvrv8eiqgneug0A6aqLFZ4TSkar2L5dSXWcnUKHgmjJt49pyB/6ZHvkr3dPgl9MOWRQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-optional-catch-binding": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-optional-chaining": {[m
[32m+[m[32m      "version": "7.14.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-optional-chaining/-/plugin-proposal-optional-chaining-7.14.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-qQByMRPwMZJainfig10BoaDldx/+VDtNcrA7qdNaEOAj6VXud+gfrkA8j4CRAU5HjnWREXqIpSpH30qZX1xivA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/helper-skip-transparent-expression-wrappers": "^7.12.1",[m
[32m+[m[32m        "@babel/plugin-syntax-optional-chaining": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-private-methods": {[m
[32m+[m[32m      "version": "7.13.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-private-methods/-/plugin-proposal-private-methods-7.13.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-MXyyKQd9inhx1kDYPkFRVOBXQ20ES8Pto3T7UZ92xj2mY0EVD8oAVzeyYuVfy/mxAdTSIayOvg+aVzcHV2bn6Q==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-create-class-features-plugin": "^7.13.0",[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-private-property-in-object": {[m
[32m+[m[32m      "version": "7.14.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-private-property-in-object/-/plugin-proposal-private-property-in-object-7.14.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-59ANdmEwwRUkLjB7CRtwJxxwtjESw+X2IePItA+RGQh+oy5RmpCh/EvVVvh5XQc3yxsm5gtv0+i9oBZhaDNVTg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-annotate-as-pure": "^7.12.13",[m
[32m+[m[32m        "@babel/helper-create-class-features-plugin": "^7.14.0",[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.13.0",[m
[32m+[m[32m        "@babel/plugin-syntax-private-property-in-object": "^7.14.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-proposal-unicode-property-regex": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-proposal-unicode-property-regex/-/plugin-proposal-unicode-property-regex-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-XyJmZidNfofEkqFV5VC/bLabGmO5QzenPO/YOfGuEbgU+2sSwMmio3YLb4WtBgcmmdwZHyVyv8on77IUjQ5Gvg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-create-regexp-features-plugin": "^7.12.13",[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-async-generators": {[m
[32m+[m[32m      "version": "7.8.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-async-generators/-/plugin-syntax-async-generators-7.8.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-tycmZxkGfZaxhMRbXlPXuVFpdWlXpir2W4AMhSJgRKzk/eDlIXOhb2LHWoLpDF7TEHylV5zNhykX6KAgHJmTNw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.8.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-class-properties": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-class-properties/-/plugin-syntax-class-properties-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-fm4idjKla0YahUNgFNLCB0qySdsoPiZP3iQE3rky0mBUtMZ23yDJ9SJdg6dXTSDnulOVqiF3Hgr9nbXvXTQZYA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-class-static-block": {[m
[32m+[m[32m      "version": "7.12.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-class-static-block/-/plugin-syntax-class-static-block-7.12.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-ZmKQ0ZXR0nYpHZIIuj9zE7oIqCx2hw9TKi+lIo73NNrMPAZGHfS92/VRV0ZmPj6H2ffBgyFHXvJ5NYsNeEaP2A==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.12.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-dynamic-import": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-dynamic-import/-/plugin-syntax-dynamic-import-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-5gdGbFon+PszYzqs83S3E5mpi7/y/8M9eC90MRTZfduQOYW76ig6SOSPNe41IG5LoP3FGBn2N0RjVDSQiS94kQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.8.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-export-namespace-from": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-export-namespace-from/-/plugin-syntax-export-namespace-from-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-MXf5laXo6c1IbEbegDmzGPwGNTsHZmEy6QGznu5Sh2UCWvueywb2ee+CCE4zQiZstxU9BMoQO9i6zUFSY0Kj0Q==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.8.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-json-strings": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-json-strings/-/plugin-syntax-json-strings-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-lY6kdGpWHvjoe2vk4WrAapEuBR69EMxZl+RoGRhrFGNYVK8mOPAW8VfbT/ZgrFbXlDNiiaxQnAtgVCZ6jv30EA==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.8.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-logical-assignment-operators": {[m
[32m+[m[32m      "version": "7.10.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-logical-assignment-operators/-/plugin-syntax-logical-assignment-operators-7.10.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-d8waShlpFDinQ5MtvGU9xDAOzKH47+FFoney2baFIoMr952hKOLp1HR7VszoZvOsV/4+RRszNY7D17ba0te0ig==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.10.4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-nullish-coalescing-operator": {[m
[32m+[m[32m      "version": "7.8.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-nullish-coalescing-operator/-/plugin-syntax-nullish-coalescing-operator-7.8.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-aSff4zPII1u2QD7y+F8oDsz19ew4IGEJg9SVW+bqwpwtfFleiQDMdzA/R+UlWDzfnHFCxxleFT0PMIrR36XLNQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.8.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "@babel/plugin-syntax-numeric-separator": {[m
[32m+[m[32m      "version": "7.10.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/plugin-syntax-numeric-separator/-/plugin-syntax-numeric-separator-7.10.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-9H6YdfkcK/uOnY/K7/aA2xpzaAgkQn37yzWUMRK7OaPOqOpGS1+n0H5hxT9AUw9EsSjPW8SVyMJwYRtWs3X3ug==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "requires": {[m
[32m+[m[32m        "@babel/helper-plugin-utils": "^7.10.4"[m
[32m+[m[32m      }[m
[32m+[m[