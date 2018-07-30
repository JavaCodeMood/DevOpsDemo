1 centos 出现 git clone 失败的处理办法 : https://blog.csdn.net/shida_csdn/article/details/79442232
>> yum update -y nss curl libcurl <br>

2 一般手动的部署方案 <br>
1) 把代码编译，利用git push提交到github上<br>
2）在云服务器上执行github clone代码进行代码部署<br>
3）运行代码<br>

3 自动化部署代码<br>
 1)编写部署文件 deployserver.go，里面会执行deploy.sh文件<br>
 	该部署文件执行的访问接口是http://106.12.13.238:5000/，第一次需要手动部署，把deployserver运行起来<br>
 2)把访问接口填入到github的Settings->Webhooks中，并选中Just the push event.<br>
 3）完成上面操作后，以后就只要提交项目，git会自动调用部署文件的接口去执行代码的拉取和运行
 4）
