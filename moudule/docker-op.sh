#!/bin/bash
#docker 维护相关

#阿里云docker-ce apt源添加
#阿里云docker-ce 安装
#阿里云docker镜像仓

#docker-ce 安装
docker-op_fun_install(){
	# step 1: 安装必要的一些系统工具
	sudo apt-get update
	sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
	# step 2: 安装GPG证书
	curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
	# Step 3: 写入软件源信息
	sudo add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
	# Step 4: 更新并安装 Docker-CE
	sudo apt-get -y update
	sudo apt-get -y install docker-ce
	docker version
}

#设置docker 镜像仓库的位置
docker-op_fun_set-registry-mirrors(){
	read -p "input your registry-mirrors address(start with http)" mirrorsAddress
	sudo mkdir -p /etc/docker
	sudo tee /etc/docker/daemon.json <<-'EOF'
	{
	  "registry-mirrors": ["$mirrorsAddress"]
	}
	EOF
	sudo systemctl daemon-reload
	sudo systemctl restart docker
}

#docker 默认网关修改
docker-op_fund_reset-docker-gateway(){

}
