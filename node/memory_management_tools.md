## Memory Management Tools
- 
1. https://www.youtube.com/watch?v=bLWvIqurye4

- node -e 'console.log(v8.getHeapStatistics().total_available_size)'
- node -e 'console.log((v8.getHeapStatistics().total_available_size/1024/1024/1024).toFixed(2))'
- node -e 'console.log(v8.getHeapStatistics().heap_size_limit/(1024*1024))'
- node -e 'console.log(v8.getHeapStatistics())
- This is basically stay in our engine v8. below code helps you to understand the Heap Size of your local node v8 engine.

const v8 = require('v8');
const totalHeapSize = v8.getHeapStatistics().total_available_size;
const totalHeapSizeGb = (totalHeapSize / 1024 / 1024 / 1024).toFixed(2);
console.log('totalHeapSizeGb: ', totalHeapSizeGb);

### Node.js heap out of memory
- https://geekflare.com/fix-javascript-heap-out-of-memory-error/
- https://sebhastian.com/javascript-heap-out-of-memory/
2. Heap limit Allocation failed - JavaScript heap out of memory:
- solve:
- For instance, if you want to allocate 8GB as the virtual memory, you can run this command: `export NODE_OPTIONS=--max-old-space-size=8192`
- Export an environment variable specifying virtual memory you have allocated to Node.js. Use this command: `export NODE_OPTIONS=--max-old-space-size=4096`