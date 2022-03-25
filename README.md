# LEMP stack on AWS Ubuntu

## What does it do?
### TL DR
Installs LEMP stack on Ubuntu on AWS.

### Long story
1. Upgrades the system
1. Installs common packages (curl, git, mc)
1. Installs and configures:
    1. MariaDB
    1. PHP-FPM(Composer, ImageMagick)
    1. Nginx


## Use

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/igodorogea/aws-lemp-ubuntu/master/bin/install.sh)"`
