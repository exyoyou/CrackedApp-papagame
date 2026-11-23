.class public Lcom/join/android/app/common/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    div-int/lit8 v1, v0, 0x2

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    int-to-float v3, v0

    .line 16
    move v5, v3

    .line 17
    const/4 v4, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    div-int/lit8 v3, v1, 0x2

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    sub-int v4, v0, v1

    .line 23
    .line 24
    div-int/lit8 v4, v4, 0x2

    .line 25
    .line 26
    int-to-float v4, v4

    .line 27
    int-to-float v0, v0

    .line 28
    sub-float/2addr v0, v4

    .line 29
    int-to-float v5, v1

    .line 30
    move v11, v3

    .line 31
    move v3, v0

    .line 32
    move v0, v1

    .line 33
    move v1, v11

    .line 34
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 35
    .line 36
    invoke-static {v0, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v6, Landroid/graphics/Canvas;

    .line 41
    .line 42
    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v8, Landroid/graphics/Rect;

    .line 51
    .line 52
    float-to-int v4, v4

    .line 53
    float-to-int v9, v2

    .line 54
    float-to-int v3, v3

    .line 55
    float-to-int v10, v5

    .line 56
    invoke-direct {v8, v4, v9, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Landroid/graphics/Rect;

    .line 60
    .line 61
    float-to-int v4, v2

    .line 62
    float-to-int v2, v2

    .line 63
    float-to-int v9, v5

    .line 64
    float-to-int v5, v5

    .line 65
    invoke-direct {v3, v4, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Landroid/graphics/RectF;

    .line 69
    .line 70
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 79
    .line 80
    .line 81
    const v4, -0xbdbdbe

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v2, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 91
    .line 92
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 93
    .line 94
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, p0, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method

.method public static b(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIcon",
            "drawable"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    div-int/lit8 v1, v0, 0x2

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    int-to-float v3, v0

    .line 22
    move v5, v3

    .line 23
    const/4 v4, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    div-int/lit8 v3, v1, 0x2

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    sub-int v4, v0, v1

    .line 29
    .line 30
    div-int/lit8 v4, v4, 0x2

    .line 31
    .line 32
    int-to-float v4, v4

    .line 33
    int-to-float v0, v0

    .line 34
    sub-float/2addr v0, v4

    .line 35
    int-to-float v5, v1

    .line 36
    move v11, v3

    .line 37
    move v3, v0

    .line 38
    move v0, v1

    .line 39
    move v1, v11

    .line 40
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 41
    .line 42
    invoke-static {v0, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v6, Landroid/graphics/Canvas;

    .line 47
    .line 48
    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    new-instance v7, Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v8, Landroid/graphics/Rect;

    .line 57
    .line 58
    float-to-int v4, v4

    .line 59
    float-to-int v9, v2

    .line 60
    float-to-int v3, v3

    .line 61
    float-to-int v10, v5

    .line 62
    invoke-direct {v8, v4, v9, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Landroid/graphics/Rect;

    .line 66
    .line 67
    float-to-int v4, v2

    .line 68
    float-to-int v2, v2

    .line 69
    float-to-int v9, v5

    .line 70
    float-to-int v5, v5

    .line 71
    invoke-direct {v3, v4, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroid/graphics/RectF;

    .line 75
    .line 76
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 85
    .line 86
    .line 87
    const v4, -0xbdbdbe

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v2, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 97
    .line 98
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, p1, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
