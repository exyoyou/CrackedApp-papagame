.class public Lcom/papa/gsyvideoplayer/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Ljava/io/OutputStream;

.field protected k:Landroid/graphics/Bitmap;

.field protected l:[B

.field protected m:[B

.field protected n:I

.field protected o:[B

.field protected p:[Z

.field protected q:I

.field protected r:I

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->d:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->e:I

    .line 11
    .line 12
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->g:I

    .line 13
    .line 14
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->h:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->i:Z

    .line 17
    .line 18
    const/16 v2, 0x100

    .line 19
    .line 20
    new-array v2, v2, [Z

    .line 21
    .line 22
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->p:[Z

    .line 23
    .line 24
    const/4 v2, 0x7

    .line 25
    iput v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->q:I

    .line 26
    .line 27
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->r:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->s:Z

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->t:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->u:Z

    .line 35
    .line 36
    const/16 v0, 0xa

    .line 37
    .line 38
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->v:I

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->i:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->u:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/a;->m(II)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->k:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->f()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->b()V

    .line 30
    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->t:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->r()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->t()V

    .line 40
    .line 41
    .line 42
    iget p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->g:I

    .line 43
    .line 44
    if-ltz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->s()V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->p()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->q()V

    .line 53
    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->t:Z

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->t()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/a;->u()V

    .line 63
    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->t:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method protected b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->l:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v2, v1, 0x3

    .line 5
    .line 6
    new-array v3, v2, [B

    .line 7
    .line 8
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/utils/a;->m:[B

    .line 9
    .line 10
    new-instance v3, Lcom/papa/gsyvideoplayer/utils/l;

    .line 11
    .line 12
    iget v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->v:I

    .line 13
    .line 14
    invoke-direct {v3, v0, v1, v4}, Lcom/papa/gsyvideoplayer/utils/l;-><init>([BII)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/utils/l;->h()[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->o:[B

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->o:[B

    .line 26
    .line 27
    array-length v5, v4

    .line 28
    if-ge v1, v5, :cond_0

    .line 29
    .line 30
    aget-byte v5, v4, v1

    .line 31
    .line 32
    add-int/lit8 v6, v1, 0x2

    .line 33
    .line 34
    aget-byte v7, v4, v6

    .line 35
    .line 36
    aput-byte v7, v4, v1

    .line 37
    .line 38
    aput-byte v5, v4, v6

    .line 39
    .line 40
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->p:[Z

    .line 41
    .line 42
    div-int/lit8 v5, v1, 0x3

    .line 43
    .line 44
    aput-boolean v0, v4, v5

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_1
    if-ge v0, v2, :cond_1

    .line 51
    .line 52
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->l:[B

    .line 53
    .line 54
    add-int/lit8 v5, v1, 0x1

    .line 55
    .line 56
    aget-byte v1, v4, v1

    .line 57
    .line 58
    and-int/lit16 v1, v1, 0xff

    .line 59
    .line 60
    add-int/lit8 v6, v5, 0x1

    .line 61
    .line 62
    aget-byte v5, v4, v5

    .line 63
    .line 64
    and-int/lit16 v5, v5, 0xff

    .line 65
    .line 66
    add-int/lit8 v7, v6, 0x1

    .line 67
    .line 68
    aget-byte v4, v4, v6

    .line 69
    .line 70
    and-int/lit16 v4, v4, 0xff

    .line 71
    .line 72
    invoke-virtual {v3, v1, v5, v4}, Lcom/papa/gsyvideoplayer/utils/l;->g(III)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->p:[Z

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    aput-boolean v5, v4, v1

    .line 80
    .line 81
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->m:[B

    .line 82
    .line 83
    int-to-byte v1, v1

    .line 84
    aput-byte v1, v4, v0

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    move v1, v7

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->l:[B

    .line 92
    .line 93
    const/16 v0, 0x8

    .line 94
    .line 95
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->n:I

    .line 96
    .line 97
    const/4 v0, 0x7

    .line 98
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->q:I

    .line 99
    .line 100
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->e:I

    .line 101
    .line 102
    const/4 v1, -0x1

    .line 103
    if-eq v0, v1, :cond_2

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->c(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->f:I

    .line 110
    .line 111
    :cond_2
    return-void
.end method

.method protected c(I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->o:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    shr-int/lit8 v1, p1, 0x10

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shr-int/lit8 v2, p1, 0x8

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    shr-int/2addr p1, v3

    .line 17
    and-int/lit16 p1, p1, 0xff

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    const/high16 v4, 0x1000000

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/high16 v5, 0x1000000

    .line 24
    .line 25
    :goto_0
    if-ge v3, v0, :cond_2

    .line 26
    .line 27
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/utils/a;->o:[B

    .line 28
    .line 29
    add-int/lit8 v7, v3, 0x1

    .line 30
    .line 31
    aget-byte v3, v6, v3

    .line 32
    .line 33
    and-int/lit16 v3, v3, 0xff

    .line 34
    .line 35
    sub-int v3, v1, v3

    .line 36
    .line 37
    add-int/lit8 v8, v7, 0x1

    .line 38
    .line 39
    aget-byte v7, v6, v7

    .line 40
    .line 41
    and-int/lit16 v7, v7, 0xff

    .line 42
    .line 43
    sub-int v7, v2, v7

    .line 44
    .line 45
    aget-byte v6, v6, v8

    .line 46
    .line 47
    and-int/lit16 v6, v6, 0xff

    .line 48
    .line 49
    sub-int v6, p1, v6

    .line 50
    .line 51
    mul-int v3, v3, v3

    .line 52
    .line 53
    mul-int v7, v7, v7

    .line 54
    .line 55
    add-int/2addr v3, v7

    .line 56
    mul-int v6, v6, v6

    .line 57
    .line 58
    add-int/2addr v3, v6

    .line 59
    div-int/lit8 v6, v8, 0x3

    .line 60
    .line 61
    iget-object v7, p0, Lcom/papa/gsyvideoplayer/utils/a;->p:[Z

    .line 62
    .line 63
    aget-boolean v7, v7, v6

    .line 64
    .line 65
    if-eqz v7, :cond_1

    .line 66
    .line 67
    if-ge v3, v5, :cond_1

    .line 68
    .line 69
    move v5, v3

    .line 70
    move v4, v6

    .line 71
    :cond_1
    add-int/lit8 v3, v8, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return v4
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->i:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 11
    .line 12
    const/16 v3, 0x3b

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->s:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->f:I

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 38
    .line 39
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/utils/a;->k:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/utils/a;->l:[B

    .line 42
    .line 43
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/utils/a;->m:[B

    .line 44
    .line 45
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/utils/a;->o:[B

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->s:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->t:Z

    .line 50
    .line 51
    return v2
.end method

.method protected e(Landroid/graphics/Bitmap;)[I
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    mul-int v0, v6, v7

    .line 10
    .line 11
    new-array v8, v0, [I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, v8

    .line 18
    move v3, v6

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 20
    .line 21
    .line 22
    return-object v8
.end method

.method protected f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->k:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->k:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->a:I

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->b:I

    .line 18
    .line 19
    if-eq v1, v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->b:I

    .line 22
    .line 23
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroid/graphics/Canvas;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->k:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    new-instance v3, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->k:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->k:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->e(Landroid/graphics/Bitmap;)[I

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    array-length v1, v0

    .line 54
    mul-int/lit8 v1, v1, 0x3

    .line 55
    .line 56
    new-array v1, v1, [B

    .line 57
    .line 58
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->l:[B

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    :goto_0
    array-length v2, v0

    .line 62
    if-ge v1, v2, :cond_2

    .line 63
    .line 64
    aget v2, v0, v1

    .line 65
    .line 66
    mul-int/lit8 v3, v1, 0x3

    .line 67
    .line 68
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->l:[B

    .line 69
    .line 70
    add-int/lit8 v5, v3, 0x1

    .line 71
    .line 72
    shr-int/lit8 v6, v2, 0x0

    .line 73
    .line 74
    and-int/lit16 v6, v6, 0xff

    .line 75
    .line 76
    int-to-byte v6, v6

    .line 77
    aput-byte v6, v4, v3

    .line 78
    .line 79
    add-int/lit8 v3, v5, 0x1

    .line 80
    .line 81
    shr-int/lit8 v6, v2, 0x8

    .line 82
    .line 83
    and-int/lit16 v6, v6, 0xff

    .line 84
    .line 85
    int-to-byte v6, v6

    .line 86
    aput-byte v6, v4, v5

    .line 87
    .line 88
    shr-int/lit8 v2, v2, 0x10

    .line 89
    .line 90
    and-int/lit16 v2, v2, 0xff

    .line 91
    .line 92
    int-to-byte v2, v2

    .line 93
    aput-byte v2, v4, v3

    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0xa

    .line 2
    .line 3
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->h:I

    .line 4
    .line 5
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->r:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public i(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x42c80000    # 100.0f

    .line 7
    .line 8
    div-float/2addr v0, p1

    .line 9
    float-to-int p1, v0

    .line 10
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->h:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public j(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->c:I

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/gsyvideoplayer/utils/a;->d:I

    .line 4
    .line 5
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    :cond_0
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->v:I

    .line 6
    .line 7
    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->g:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public m(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->a:I

    .line 2
    .line 3
    iput p2, p0, Lcom/papa/gsyvideoplayer/utils/a;->b:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x140

    .line 9
    .line 10
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->a:I

    .line 11
    .line 12
    :cond_0
    if-ge p2, v0, :cond_1

    .line 13
    .line 14
    const/16 p1, 0xf0

    .line 15
    .line 16
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->b:I

    .line 17
    .line 18
    :cond_1
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->u:Z

    .line 19
    .line 20
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public o(Ljava/io/OutputStream;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->s:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 8
    .line 9
    :try_start_0
    const-string p1, "GIF89a"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/utils/a;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :catch_0
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->i:Z

    .line 16
    .line 17
    return v0
.end method

.method protected p()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 9
    .line 10
    const/16 v1, 0xf9

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->e:I

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    const/4 v1, 0x2

    .line 33
    :goto_0
    iget v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->r:I

    .line 34
    .line 35
    if-ltz v4, :cond_1

    .line 36
    .line 37
    and-int/lit8 v1, v4, 0x7

    .line 38
    .line 39
    :cond_1
    shl-int/2addr v1, v2

    .line 40
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 41
    .line 42
    or-int/2addr v1, v3

    .line 43
    or-int/2addr v1, v3

    .line 44
    or-int/2addr v0, v1

    .line 45
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->h:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 54
    .line 55
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->f:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected q()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->c:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->d:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->a:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->b:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->t:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 40
    .line 41
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->q:I

    .line 42
    .line 43
    or-int/lit16 v1, v1, 0x80

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method protected r()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->a:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->b:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 12
    .line 13
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->q:I

    .line 14
    .line 15
    or-int/lit16 v1, v1, 0xf0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected s()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 9
    .line 10
    const/16 v1, 0xff

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 16
    .line 17
    const/16 v1, 0xb

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "NETSCAPE2.0"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->w(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->g:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/utils/a;->v(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method protected t()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->o:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->o:[B

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    rsub-int v0, v0, 0x300

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method protected u()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/h;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->a:I

    .line 4
    .line 5
    iget v2, p0, Lcom/papa/gsyvideoplayer/utils/a;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/a;->m:[B

    .line 8
    .line 9
    iget v4, p0, Lcom/papa/gsyvideoplayer/utils/a;->n:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/papa/gsyvideoplayer/utils/h;-><init>(II[BI)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/h;->f(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected v(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 2
    .line 3
    and-int/lit16 v1, p1, 0xff

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 9
    .line 10
    shr-int/lit8 p1, p1, 0x8

    .line 11
    .line 12
    and-int/lit16 p1, p1, 0xff

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected w(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/a;->j:Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-byte v2, v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
