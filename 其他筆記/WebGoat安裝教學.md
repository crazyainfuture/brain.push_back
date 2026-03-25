# webgoat 安裝
## 裝虛擬機 (以vm 做示範)
網路上找vmware
基本上不用改東西就一直下一步
## ubuntu 最新版本下載
https://ubuntu.com/download/desktop
## 把ubuntu 放在vm中，並啟動
workstation中 左上角file->new virtual machine->應該可以選剛剛載好的ubuntu iso 檔(?
## 在vm裝git bash+ clone webgoat 下來
  ```bash
  sudo apt update
  sudo apt install git
  git --version //檢查版本
  git clone https://github.com/WebGoat/WebGoat.git
  ls //看是否有WebGoat 資料夾
  cd WebGoat //切到WebGoat資料夾下
  ls //看是否跟github 上的內容一樣
  ```
:::warning
確認有dockerfile
:::
## 裝 docker
`sudo apt install docker.io`
確保有下載docker
```
docker --version
```
## 啟動
1. 先切回WebGoat 
```
cd WebGoat
```
2. 
```bash
docker run -it -p 127.0.0.1:8080:8080 -p 127.0.0.1:9090:9090 webgoat/webgoat
```
## 到瀏覽器開
```
http://localhost:8080/WebGoat
```
完成!!
---

### 其他疑難雜症
網路連不到先下`ping 8.8.8.8 `
連不通到virtual network editor->change setting->restore default