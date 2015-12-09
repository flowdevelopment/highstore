# Vagrant PHP Server

Vagrantfile pré-configurado + php.ini + httpd.conf + um arquivo .sh para provisionamento
de um ambiente em PHP 5.6 e Apache em um CentOS 6.5 com zero-dor-de-cabeça.

## Iniciando a maquina virtual

```
$ git clone https://github.com/armand1m/vagrant-php-server.git
$ cd vagrant-php-server
$ vagrant plugin install vagrant-vbguest //para sincronizar a pasta 'www' no host com a vm.
$ vagrant up
```

Nesse momento, ele deve estar baixando a .box do CentOS, iniciando ela, e executando os scripts de provisionamento.

## Acessando a maquina virtual

`$ vagrant ssh`.

## Iniciando o Apache

Depois de acessar, inicie o apache executando o comando:
`$ service httpd start`

## Usando o servidor

Agora você pode escrever seus arquivos dentro da pasta `vagrant-php-server/www` no seu host padrão e acessar o servidor pela url http://localhost:8090
