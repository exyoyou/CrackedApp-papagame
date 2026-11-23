.class public Ll4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll4/c;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "SimpleImageTranscoder"


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resizingEnabled",
            "maxBitmapSize"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ll4/g;->a:Z

    .line 5
    .line 6
    iput p2, p0, Ll4/g;->b:I

    .line 7
    .line 8
    return-void
.end method

.method private static d(Lcom/facebook/imageformat/c;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0    # Lcom/facebook/imageformat/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 7
    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    sget-object v0, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    invoke-static {p0}, Lcom/facebook/imageformat/b;->b(Lcom/facebook/imageformat/c;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 30
    .line 31
    return-object p0
.end method

.method private e(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;)I
    .locals 1
    .param p3    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodedImage",
            "rotationOptions",
            "resizeOptions"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ll4/g;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Ll4/g;->b:I

    .line 8
    .line 9
    invoke-static {p2, p3, p1, v0}, Ll4/a;->b(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/image/e;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imageformat/c;Ljava/lang/Integer;)Ll4/b;
    .locals 18
    .param p3    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imageformat/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "outputStream",
            "rotationOptions",
            "resizeOptions",
            "outputFormat",
            "quality"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "Out-Of-Memory during transcode"

    .line 4
    .line 5
    const-string v2, "SimpleImageTranscoder"

    .line 6
    .line 7
    if-nez p6, :cond_0

    .line 8
    .line 9
    const/16 v3, 0x55

    .line 10
    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v3, p6

    .line 17
    .line 18
    :goto_0
    if-nez p3, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->a()Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    move-object/from16 v5, p0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object/from16 v5, p0

    .line 28
    .line 29
    move-object/from16 v4, p3

    .line 30
    .line 31
    :goto_1
    move-object/from16 v6, p4

    .line 32
    .line 33
    invoke-direct {v5, v0, v4, v6}, Ll4/g;->e(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    .line 38
    .line 39
    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    .line 41
    .line 42
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/e;->p()Ljava/io/InputStream;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    const/4 v10, 0x0

    .line 50
    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    .line 52
    .line 53
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    if-nez v7, :cond_2

    .line 55
    .line 56
    const-string v0, "Couldn\'t decode the EncodedImage InputStream ! "

    .line 57
    .line 58
    invoke-static {v2, v0}, Li3/a;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ll4/b;

    .line 62
    .line 63
    invoke-direct {v0, v8}, Ll4/b;-><init>(I)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    invoke-static {v0, v4}, Ll4/e;->g(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/RotationOptions;)Landroid/graphics/Matrix;

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    if-eqz v16, :cond_3

    .line 72
    .line 73
    const/4 v12, 0x0

    .line 74
    const/4 v13, 0x0

    .line 75
    :try_start_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    const/16 v17, 0x0

    .line 84
    .line 85
    move-object v11, v7

    .line 86
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    move-object v4, v0

    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object v4, v7

    .line 94
    goto :goto_4

    .line 95
    :catch_0
    move-exception v0

    .line 96
    move-object v4, v7

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    move-object v4, v7

    .line 99
    :goto_2
    :try_start_2
    invoke-static/range {p5 .. p5}, Ll4/g;->d(Lcom/facebook/imageformat/c;)Landroid/graphics/Bitmap$CompressFormat;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    move-object/from16 v9, p2

    .line 108
    .line 109
    invoke-virtual {v4, v0, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 110
    .line 111
    .line 112
    new-instance v0, Ll4/b;

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    if-le v6, v3, :cond_4

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    :cond_4
    invoke-direct {v0, v3}, Ll4/b;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    goto :goto_4

    .line 130
    :catch_1
    move-exception v0

    .line 131
    :goto_3
    :try_start_3
    invoke-static {v2, v1, v0}, Li3/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Ll4/b;

    .line 135
    .line 136
    invoke-direct {v0, v8}, Ll4/b;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :goto_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :catch_2
    move-exception v0

    .line 154
    invoke-static {v2, v1, v0}, Li3/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Ll4/b;

    .line 158
    .line 159
    invoke-direct {v0, v8}, Ll4/b;-><init>(I)V

    .line 160
    .line 161
    .line 162
    return-object v0
.end method

.method public b(Lcom/facebook/imageformat/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    return p1
.end method

.method public c(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;)Z
    .locals 1
    .param p2    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "rotationOptions",
            "resizeOptions"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->a()Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :cond_0
    iget-boolean v0, p0, Ll4/g;->a:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Ll4/g;->b:I

    .line 12
    .line 13
    invoke-static {p2, p3, p1, v0}, Ll4/a;->b(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/image/e;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x1

    .line 18
    if-le p1, p2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p2, 0x0

    .line 22
    :goto_0
    return p2
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SimpleImageTranscoder"

    return-object v0
.end method
