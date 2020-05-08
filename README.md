# Easy `php bin/magento` for Magento2

It's simple tool for save your development time.

During the day, you should write typical commands in command line, like this `php bin/magento cache:flush`. 
It's really boring.

:zap: Optimise your `php bin/magento` to `m2` :zap:

## Compatibility
-   \>= 2.0.2 Magento (Open Source/Commerce)

## Installation

### Download script to the root of you project

```sh
wget https://raw.githubusercontent.com/bbakalov/easy_bin_magento/master/m2
```

or if you prefer to use Curl:

```sh
curl -O https://raw.githubusercontent.com/bbakalov/easy_bin_magento/master/m2
```

### Make the file executable:

```sh
chmod +x ./m2
```

:tada::confetti_ball::tada: Done! Tool is ready to help.

## Usage / Commands

- Go to root of your Magento2 project
- Type `m2 1` or `m2 module:status` in command line

| Command        | Description                                 |
| ---------------|---------------------------------------------|
| m2 1           | php bin/magento cache:flush                 |
| m2 2           | php bin/magento setup:di:compile            |
| m2 3           | php bin/magento setup:upgrade               |
| m2 4           | php bin/magento setup:static-content:deploy |
| m2 -h          | show all available shortcuts                |
| m2 any:command | write any other command what you need       |


If you want to use this tool in different projects, just add it to `/usr/local/bin` folder.
```sh
sudo cp ./m2 /usr/local/bin/
```

## Customisation

You can easily customise this tool, by changing file `m2`. 

For example, you want to add shortcut `m2 5` that will execute command `php bin/magento module:status`

Steps:
- Open file `m2`
- add new statement to the end of last `ELIF` structure

```sh
...
elif [ "$1" == "4" ]; then
    php bin/magento setup:static-content:deploy
# !!! here your customisation start !!!
elif [ "$1" == "5" ]; then  
    php bin/magento module:status
# !!! here your customisation finished !!!    
else
    php bin/magento $@
fi
...
```

If you have any qustions, just write me [here](https://www.linkedin.com/in/bbakalov/) or [create an issue](https://github.com/bbakalov/easy_bin_magento/issues)
