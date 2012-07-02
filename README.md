# Getting started #

You should already have installed and configured ruby, chef, vagrant, etc. 

### Install librarian

Using rubygems with:

```
gem install librarian
```

### Clone and initialize the repo

```
git clone https://github.com/promet/drupal-stack.git
cd drupal-stack
librarian-chef init
```

### Test it locally with Vagrant

I've included a basic Vagrantfile that will allow to test locally using vagrant the full drupal stack:

```
vagrant up
```

### Using a chef server

To upload all the cookbooks and roles to a chef-server just run:

```
knife cookbook upload -V --all
for f in roles/*.rb; do knife role from file `basename $f`; done
```

