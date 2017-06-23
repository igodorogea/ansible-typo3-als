# Amazon Lightsail ansible provision for TYPO3 CMS projects

## What does it do?
### TL DR
Installs LEMP stack on Ubuntu/Amazon Linux system on AWS, and bootstraps your(or a new) TYPO3 CMS site.

### Long story
1. Upgrades the system
1. Installs common packages (curl, git, mc)
1. Installs and configures:
    1. MariaDB
    1. PHP-FPM(Composer, ImageMagick)
    1. Nginx
1. Bootstraps your(or a new) TYPO3 CMS site
    1. Bootstrap a new TYPO3 distribution
        1. Create nginx vhost
        1. Create db
        1. Copy distribution files
        1. Run `composer install`
        1. Run `vendor/bin/typo3cms install:setup`
        1. Restart nginx
    1. Bootstrap an existing TYPO3 site
        1. Create nginx vhost
        1. Import db
        1. Copy site files
        1. Run `composer install`
        1. Restart nginx

## Usage

