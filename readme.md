# one

一个脚本集合，每个脚本只关注一件小事儿。

# install

```bash
$ git clone https://github.com/youguanxinqing/one.git ~/.one
$ echo "export PATH=\$PATH:~/.one" >> ~/.bashrc
$ source ~/.bashrc
```

# usage

cpp file:
```cpp
#include <iostream>
#include <thread>

using namespace std;

int main() {
    thread t([](){
        cout << this_thread::get_id() << ":" << 2 << endl;
    }); 

    cout << this_thread::get_id() << ":" << 1 << endl;
    t.join();
}
```

run:
```bash
$ one run++ main.cpp -pthread
cmd: g++ main.cpp -o main -pthread -std=c++14

139708932097856:1
139708913420032:2
```

[详情](https://github.com/youguanxinqing/one/blob/main/doc/doc.md)
