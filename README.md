TWRP Recovery Tree for Xiaomi Redmi Note 14 4G (Tanzanite)
===========================================

The Xiaomi Redmi Note 14 4G is a budget range smartphone from Xiaomi, announced in January 2025.

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
OS	| Android 14, HyperOS
CPU     | Octa-core (2x2.2 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)
Chipset | Mediatek Helio G99 Ultra (6 nm)
GPU     | Mali-G57 MC2
Memory  | 6GB/8GB RAM
Storage | 128GB/128GB/256GB	UFS 2.2
MicroSD | microSDXC (uses shared SIM slot)
Display | AMOLED, 120Hz, 1200 nits (HBM), 1800 nits (peak)
Battery | 5500 mAh
Resolution | 1080 x 2400 pixels, 20:9 ratio (~395 ppi density)
Camera (Rear)  | 108 MP, f/1.7, (wide), 1/1.67", 0.64µm, PDAF, 2 MP, f/2.4, (macro),2 MP, f/2.4, (depth)
Rear Camera Features | LED flash, HDR, panorama
Video	| 1080p@30/60fps
Camera (Front)  | 20 MP, f/2.2, (wide), 1/4.0", 0.7µm
Video | 1080p@30fps
Features| Fingerprint (under display, optical), accelerometer, gyro, compass, proximity

## Device picture

![Xiaomi Redmi Note 14 4G](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjd6l2KiVCJLjRoZI9JKGk31R8dDTKL80_ycP1tkACyUhCGqZ7I-XJag3p&s=10 "Xiaomi Redmi Note 14 4G")
## Features

Works:

- [X] ADB
- [X] Decryption
- [X] Display
- [X] Fasbootd
- [X] Flashing
- [X] MTP
- [X] Sideload
- [X] USB OTG
- [X] SD Card
- [X] Touch
- [ ] Flashlight
- [X] Vibrator

# Building
```bash
source build/envsetup.sh
lunch twrp_tanzanite-eng
mka vendorbootimage
```

## To use it:

```
fastboot flash vendor_boot out/target/product/tanzanite/vendor_boot.img
```
