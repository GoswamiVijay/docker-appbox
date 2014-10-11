# Docker appbox with Ruby, Node.js, MongoDB and Nginx

A container based on [walm/node-ruby](https://github.com/walm/docker-node)

## Includes

  * Mongodb 2.6.5 (from 10gen)
  * Nginx 1.4.6 (from ppa:nginx)
  * And all from [walm/node-ruby](https://github.com/walm/docker-node)

## Usage

To run the container, do the following:

    docker run -d walm/appbox

## Building

To build the image, simply invoke

    docker build github.com/walm/docker-appbox

A prebuilt container is also available in the docker index

    docker pull walm/appbox

## Author

  * Andreas Wålm (<andreas@walm.net>)

## LICENSE

Copyright (c) 2014 Andreas Wålm

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
