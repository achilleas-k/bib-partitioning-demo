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
