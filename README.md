# Delete Branches

A simple script to delete branches from your local git repository.

## Requirements

* git
* Ruby 3.x.

## Install

```
  bundle install

  # To install symlink to /usr/local/bin
  make install
```

## Uninstall symlink

```
  make uninstall
```

## Usage

If you installed the symlink, you can run the script directly.

```
  delete_branch
```

If you didn't install the symlink, you can run the script with `ruby`.

```
  ./delete_branch.rb
```

When in another directory, you can run the script with the full path.

```
  /path/to/delete_branch.rb
```
