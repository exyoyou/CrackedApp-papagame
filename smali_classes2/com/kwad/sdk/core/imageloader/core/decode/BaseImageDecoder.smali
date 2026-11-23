.class public Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;,
        Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;
    }
.end annotation


# static fields
.field protected static final ERROR_CANT_DECODE_IMAGE:Ljava/lang/String; = "Image can\'t be decoded [%s]"

.field protected static final ERROR_NO_IMAGE_STREAM:Ljava/lang/String; = "No stream for image [%s]"

.field protected static final LOG_FLIP_IMAGE:Ljava/lang/String; = "Flip image horizontally [%s]"

.field protected static final LOG_ROTATE_IMAGE:Ljava/lang/String; = "Rotate image on %1$d\u00b0 [%2$s]"

.field protected static final LOG_SCALE_IMAGE:Ljava/lang/String; = "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

.field protected static final LOG_SUBSAMPLE_IMAGE:Ljava/lang/String; = "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"


# instance fields
.field protected final loggingEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    .line 5
    .line 6
    return-void
.end method

.method private canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "image/jpeg"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method


# virtual methods
.method protected considerExactScaleAndOrientatiton(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    :cond_0
    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-direct {v1, v7, v8, p3}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(III)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    sget-object v9, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 45
    .line 46
    if-ne v0, v9, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-static {v1, v7, v8, v0}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->computeImageScale(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Z)F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 62
    .line 63
    .line 64
    iget-boolean v7, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    .line 65
    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    const/4 v7, 0x4

    .line 69
    new-array v7, v7, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object v1, v7, v6

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->scale(F)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    aput-object v1, v7, v4

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    aput-object v0, v7, v2

    .line 84
    .line 85
    const/4 v0, 0x3

    .line 86
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    aput-object v1, v7, v0

    .line 91
    .line 92
    const-string v0, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    .line 93
    .line 94
    invoke-static {v0, v7}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    if-eqz p4, :cond_3

    .line 98
    .line 99
    const/high16 p4, -0x40800000    # -1.0f

    .line 100
    .line 101
    invoke-virtual {v5, p4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 102
    .line 103
    .line 104
    iget-boolean p4, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    .line 105
    .line 106
    if-eqz p4, :cond_3

    .line 107
    .line 108
    new-array p4, v4, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    aput-object v0, p4, v6

    .line 115
    .line 116
    const-string v0, "Flip image horizontally [%s]"

    .line 117
    .line 118
    invoke-static {v0, p4}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    if-eqz p3, :cond_4

    .line 122
    .line 123
    int-to-float p4, p3

    .line 124
    invoke-virtual {v5, p4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 125
    .line 126
    .line 127
    iget-boolean p4, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    .line 128
    .line 129
    if-eqz p4, :cond_4

    .line 130
    .line 131
    new-array p4, v2, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    aput-object p3, p4, v6

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    aput-object p2, p4, v4

    .line 144
    .line 145
    const-string p2, "Rotate image on %1$d\u00b0 [%2$s]"

    .line 146
    .line 147
    invoke-static {p2, p4}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    const/4 v1, 0x0

    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const/4 v6, 0x1

    .line 161
    move-object v0, p1

    .line 162
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-eq p2, p1, :cond_5

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    .line 170
    .line 171
    :cond_5
    return-object p2
.end method

.method public decode(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .locals 7

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-array v0, v4, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    aput-object p1, v0, v3

    .line 22
    .line 23
    const-string p1, "No stream for image [%s]"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getLoadListener()Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getLoadListener()Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-interface {v5, v6, v1, v0}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onDecode(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z

    .line 44
    .line 45
    .line 46
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->resetStream(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v6, v5, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 62
    .line 63
    invoke-virtual {p0, v6, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->prepareDecodingOptions(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v1, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    iget-object v2, v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mFrameSequence:Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    .line 81
    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    new-array v1, v4, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    aput-object p1, v1, v3

    .line 91
    .line 92
    const-string p1, "Image can\'t be decoded [%s]"

    .line 93
    .line 94
    invoke-static {p1, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, v5, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 99
    .line 100
    iget v3, v2, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 101
    .line 102
    iget-boolean v2, v2, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    .line 103
    .line 104
    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->considerExactScaleAndOrientatiton(Landroid/graphics/Bitmap;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    :goto_0
    return-object v0

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method

.method protected defineExifOrientation(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    .line 4
    .line 5
    sget-object v3, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    .line 6
    .line 7
    invoke-virtual {v3, p1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v3, "Orientation"

    .line 15
    .line 16
    invoke-virtual {v2, v3, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :pswitch_0
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    const/4 v0, 0x0

    .line 27
    :pswitch_2
    const/16 v1, 0x5a

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_0
    :pswitch_3
    const/16 p1, 0x10e

    .line 31
    .line 32
    const/16 v1, 0x10e

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :pswitch_4
    const/4 v0, 0x0

    .line 36
    :pswitch_5
    const/16 v1, 0xb4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    .line 41
    aput-object p1, v0, v1

    .line 42
    .line 43
    const-string p1, "Can\'t read EXIF tags from file [%s]"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    :pswitch_6
    const/4 v0, 0x0

    .line 49
    :goto_2
    :pswitch_7
    new-instance p1, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 50
    .line 51
    invoke-direct {p1, v1, v0}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(IZ)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->shouldConsiderExifParams()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    .line 39
    .line 40
    .line 41
    :goto_0
    new-instance p2, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    .line 42
    .line 43
    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 44
    .line 45
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 46
    .line 47
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 48
    .line 49
    iget v3, p1, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 50
    .line 51
    invoke-direct {v1, v2, v0, v3}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;-><init>(III)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, v1, p1}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    .line 55
    .line 56
    .line 57
    return-object p2
.end method

.method public getImageStream(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getDownloader()Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method protected prepareDecodingOptions(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->NONE_SAFE:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->computeMinImageSampleSize(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v4, Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/kwad/sdk/core/imageloader/core/assist/ImageScaleType;

    .line 27
    .line 28
    if-ne v0, v4, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {p1, v1, v4, v0}, Lcom/kwad/sdk/core/imageloader/utils/ImageSizeUtils;->computeImageSampleSize(Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;Z)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_1
    if-le v0, v3, :cond_3

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p1, v1, v2

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;->scaleDown(I)Lcom/kwad/sdk/core/imageloader/core/assist/ImageSize;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    aput-object p1, v1, v3

    .line 57
    .line 58
    const/4 p1, 0x2

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    aput-object v2, v1, p1

    .line 64
    .line 65
    const/4 p1, 0x3

    .line 66
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    aput-object v2, v1, p1

    .line 71
    .line 72
    const-string p1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    .line 73
    .line 74
    invoke-static {p1, v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p2}, Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 82
    .line 83
    return-object p1
.end method

.method protected resetStream(Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :catch_0
    :cond_0
    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/imageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/kwad/sdk/core/imageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
