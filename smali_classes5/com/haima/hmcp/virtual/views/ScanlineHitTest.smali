.class public Lcom/haima/hmcp/virtual/views/ScanlineHitTest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanlineHitTest"


# instance fields
.field private imageHeight:I

.field private imageWidth:I

.field private isCalculated:Z

.field private scanlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isCalculated:Z

    .line 6
    .line 7
    return-void
.end method

.method private isPixelNonTransparent(Landroid/graphics/Bitmap;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p2, :cond_2

    .line 3
    .line 4
    iget v1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 5
    .line 6
    if-ge p2, v1, :cond_2

    .line 7
    .line 8
    if-ltz p3, :cond_2

    .line 9
    .line 10
    iget v1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 11
    .line 12
    if-lt p3, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    shr-int/lit8 p1, p1, 0x18

    .line 20
    .line 21
    and-int/lit16 p1, p1, 0xff

    .line 22
    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_1
    return v0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string p3, "isPixelNonTransparent error: "

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "ScanlineHitTest"

    .line 50
    .line 51
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return v0
.end method

.method private scanLine(Landroid/graphics/Bitmap;II)[F
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, p1, v1, p2}, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isPixelNonTransparent(Landroid/graphics/Bitmap;II)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/2addr v1, p3

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, -0x1

    .line 18
    :goto_1
    const/4 v2, 0x1

    .line 19
    if-ltz v1, :cond_3

    .line 20
    .line 21
    iget v4, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 22
    .line 23
    sub-int/2addr v4, v2

    .line 24
    :goto_2
    if-lt v4, v1, :cond_3

    .line 25
    .line 26
    invoke-direct {p0, p1, v4, p2}, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isPixelNonTransparent(Landroid/graphics/Bitmap;II)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    move v3, v4

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    sub-int/2addr v4, p3

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    :goto_3
    const/4 p1, 0x2

    .line 37
    if-ltz v1, :cond_4

    .line 38
    .line 39
    if-ltz v3, :cond_4

    .line 40
    .line 41
    new-array p1, p1, [F

    .line 42
    .line 43
    int-to-float p2, v1

    .line 44
    iget p3, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 45
    .line 46
    int-to-float v1, p3

    .line 47
    div-float/2addr p2, v1

    .line 48
    aput p2, p1, v0

    .line 49
    .line 50
    int-to-float p2, v3

    .line 51
    int-to-float p3, p3

    .line 52
    div-float/2addr p2, p3

    .line 53
    aput p2, p1, v2

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_4
    new-array p1, p1, [F

    .line 57
    .line 58
    fill-array-data p1, :array_0

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public calculateScanlines(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    const-string v0, "ScanlineHitTest"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 25
    .line 26
    iget v3, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 27
    .line 28
    if-lez v3, :cond_6

    .line 29
    .line 30
    if-gtz v2, :cond_1

    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    iget v3, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 41
    .line 42
    iget v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 43
    .line 44
    const/16 v3, 0xc8

    .line 45
    .line 46
    if-gt v2, v3, :cond_3

    .line 47
    .line 48
    iget v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 49
    .line 50
    if-le v2, v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    const/4 v2, 0x2

    .line 56
    :goto_1
    const/4 v3, 0x0

    .line 57
    :goto_2
    iget v4, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 58
    .line 59
    if-ge v3, v4, :cond_5

    .line 60
    .line 61
    invoke-direct {p0, p1, v3, v2}, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanLine(Landroid/graphics/Bitmap;II)[F

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    if-le v2, v1, :cond_4

    .line 71
    .line 72
    add-int v5, v3, v2

    .line 73
    .line 74
    iget v6, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 75
    .line 76
    if-ge v5, v6, :cond_4

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    :goto_3
    if-ge v5, v2, :cond_4

    .line 80
    .line 81
    iget-object v6, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    add-int/2addr v3, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isCalculated:Z

    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v1, "calculateScanlines: completed, width="

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget v1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", height="

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", step="

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    :goto_4
    const-string p1, "calculateScanlines: invalid bitmap size"

    .line 135
    .line 136
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 145
    .line 146
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isCalculated:Z

    .line 147
    .line 148
    return-void

    .line 149
    :cond_7
    :goto_5
    const-string p1, "calculateScanlines: bitmap is null or recycled"

    .line 150
    .line 151
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 160
    .line 161
    iput-boolean v1, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isCalculated:Z

    .line 162
    .line 163
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isCalculated:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageWidth:I

    .line 8
    .line 9
    iput v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 10
    .line 11
    return-void
.end method

.method public hitTest(FF)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isCalculated:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    cmpg-float v2, p1, v0

    .line 19
    .line 20
    if-ltz v2, :cond_4

    .line 21
    .line 22
    const/high16 v2, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float v3, p1, v2

    .line 25
    .line 26
    if-gtz v3, :cond_4

    .line 27
    .line 28
    cmpg-float v3, p2, v0

    .line 29
    .line 30
    if-ltz v3, :cond_4

    .line 31
    .line 32
    cmpl-float v2, p2, v2

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->imageHeight:I

    .line 38
    .line 39
    int-to-float v2, v2

    .line 40
    mul-float p2, p2, v2

    .line 41
    .line 42
    float-to-int p2, p2

    .line 43
    if-ltz p2, :cond_4

    .line 44
    .line 45
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-lt p2, v2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->scanlines:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, [F

    .line 61
    .line 62
    aget v2, p2, v1

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    aget p2, p2, v3

    .line 66
    .line 67
    cmpg-float v4, v2, v0

    .line 68
    .line 69
    if-ltz v4, :cond_4

    .line 70
    .line 71
    cmpg-float v0, p2, v0

    .line 72
    .line 73
    if-gez v0, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "hitTest: normalizedX:"

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, " -> firstX,lastX"

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, ", "

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v4, "ScanlineHitTest"

    .line 110
    .line 111
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    cmpl-float v0, p1, v2

    .line 115
    .line 116
    if-ltz v0, :cond_4

    .line 117
    .line 118
    cmpg-float p1, p1, p2

    .line 119
    .line 120
    if-gtz p1, :cond_4

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    :cond_4
    :goto_0
    return v1
.end method

.method public isCalculated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/virtual/views/ScanlineHitTest;->isCalculated:Z

    .line 2
    .line 3
    return v0
.end method
