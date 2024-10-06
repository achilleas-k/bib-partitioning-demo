# Demo: Disk partitioning with bootc-image-builder

> 2024-10-07

We're working on adding advanced partitioning customizations to bootc-image-builder.  This demo is a preview of the new features.

**NOTE**: The customization format has not been finalised.  The exact names and structure of the configuration may change, but the functionality shown will be supported.

## Part 0: bootc-image-builder

Since this is a preview, I'll be using a bootc-image-builder image that I built myself to include the new features:
```
quay.io/achilleas/bootc-image-builder:demo
```

This feature should be available in the upstream (`centos-bootc`) image soon.

Mountpoints for partitions and logical volumes should be created in the base container image used to build the disk.  This is particularly important for top-level mountpoints, such as the `/app` mountpoint we will use in this demo.  In the final version of this feature, bootc-image-builder will validate the configuration against the bootc container before building, in order to avoid creating unbootable images.

## Part 1: Plain partitioning

Source: [`01-plain`](01-plain)

Plain partitioning (i.e. non-LVM) example.  Adds a data partition, mounted at `/var/data`, an app partition mounted at `/app`, and sets the size for the root partition to 3 GiB.

## Part 2: LVM partitioning

Source [`02-lvm`](02-lvm)

LVM partitioning example.  Creates a 10 GiB Volume Group named `centosvg` and creates three Logical Volumes, one for root, one for `/var/data`, and another for `/app`.
