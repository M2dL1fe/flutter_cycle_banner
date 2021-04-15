# cycle_banner

Flutter Banner  轮播图 支持无限循环，支持自动滚动，支持手势拖拽，指示器显示

A flutter CycleBanner package project.



![](https://raw.githubusercontent.com/M2dL1fe/PicturesWarehouse/main/CycleBannerGif.gif)

## Getting Started

add in pubspec.yaml

```
cycle_banner: ^0.0.2
```

## Usage

```
CycleBanner(
        images,
        (BuildContext context, int index) {
          return Image.network(images[index % images.length], width: double.maxFinite, fit: BoxFit.cover);
        },
      )
```
|Name|Type|description|
|-|-|-|
|bannerHeight|double|banner的高度|
|normalColor|Color|普通颜色|
|currentColor|Color|指示器选中颜色|
|indicatorSize|double|指示器大小|
|separatorSize|double|指示器之间的间隔|
|indicatorMargin|EdgeInsetsGeometry |指示器间隔|
|indicatorAlignment|AlignmentDirectional |指示器位置|
|isAutoRolling|bool|是否自动滚动|
|isCycleRolling|bool|是否无限滚动|
|intervalDuration|Duration|滚动间隔|
|animationDuration|Duration|动画时间|
