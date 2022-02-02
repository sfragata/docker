# Heif-convert

## Usage

### script to convert a folder with *.heic *.HEIC images to jpg

Note: this script will `delete` the heic files after convertion
```
docker run -it --rm  -v ${PWD}:/home/heif-convert sfragata/heif-convert convert-heif
```
### script to list all heic or HEIC images into a folder

```
docker run -it --rm  -v ${PWD}:/home/heif-convert sfragata/heif-convert list-heif
```

### call heif-convert
```
docker run -it --rm  -v ${PWD}:/home/heif-convert sfragata/heif-convert heif-convert
```
### call heif-info
```
docker run -it --rm  -v ${PWD}:/home/heif-convert sfragata/heif-convert heif-info
```