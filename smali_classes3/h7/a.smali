.class public Lh7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I


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

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v7, Ljava/util/Hashtable;

    .line 10
    .line 11
    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 15
    .line 16
    const-string v2, "utf-8"

    .line 17
    .line 18
    invoke-virtual {v7, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeWriter;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 27
    .line 28
    move-object v3, p0

    .line 29
    move v5, p1

    .line 30
    move v6, p2

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    mul-int v0, p1, p2

    .line 36
    .line 37
    new-array v3, v0, [I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, p2, :cond_3

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_1
    if-ge v4, p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    mul-int v5, v2, p1

    .line 53
    .line 54
    add-int/2addr v5, v4

    .line 55
    const/high16 v6, -0x1000000

    .line 56
    .line 57
    aput v6, v3, v5

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    mul-int v5, v2, p1

    .line 61
    .line 62
    add-int/2addr v5, v4

    .line 63
    const/4 v6, -0x1

    .line 64
    aput v6, v3, v5

    .line 65
    .line 66
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 73
    .line 74
    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x0

    .line 81
    move-object v2, v1

    .line 82
    move v5, p1

    .line 83
    move v8, p1

    .line 84
    move v9, p2

    .line 85
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_3
    return-object v1
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/high16 v0, 0x43480000    # 200.0f

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sput v2, Lh7/a;->a:I

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sput p1, Lh7/a;->b:I

    .line 22
    .line 23
    :try_start_0
    new-instance v7, Ljava/util/Hashtable;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 29
    .line 30
    const-string v0, "utf-8"

    .line 31
    .line 32
    invoke-virtual {v7, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeWriter;

    .line 36
    .line 37
    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 41
    .line 42
    sget v5, Lh7/a;->a:I

    .line 43
    .line 44
    sget v6, Lh7/a;->b:I

    .line 45
    .line 46
    move-object v3, p0

    .line 47
    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget p1, Lh7/a;->a:I

    .line 52
    .line 53
    sget v0, Lh7/a;->b:I

    .line 54
    .line 55
    mul-int p1, p1, v0

    .line 56
    .line 57
    new-array v3, p1, [I

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    const/4 v0, 0x0

    .line 61
    :goto_0
    sget v2, Lh7/a;->b:I

    .line 62
    .line 63
    if-ge v0, v2, :cond_3

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    :goto_1
    sget v4, Lh7/a;->a:I

    .line 67
    .line 68
    if-ge v2, v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    sget v4, Lh7/a;->a:I

    .line 77
    .line 78
    mul-int v4, v4, v0

    .line 79
    .line 80
    add-int/2addr v4, v2

    .line 81
    const/high16 v5, -0x1000000

    .line 82
    .line 83
    aput v5, v3, v4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    sget v4, Lh7/a;->a:I

    .line 87
    .line 88
    mul-int v4, v4, v0

    .line 89
    .line 90
    add-int/2addr v4, v2

    .line 91
    const/4 v5, -0x1

    .line 92
    aput v5, v3, v4

    .line 93
    .line 94
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    sget p0, Lh7/a;->a:I

    .line 101
    .line 102
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    .line 104
    invoke-static {p0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/4 v4, 0x0

    .line 109
    sget v8, Lh7/a;->a:I

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    sget v9, Lh7/a;->b:I

    .line 114
    .line 115
    move-object v2, v1

    .line 116
    move v5, v8

    .line 117
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    :goto_3
    return-object v1
.end method
