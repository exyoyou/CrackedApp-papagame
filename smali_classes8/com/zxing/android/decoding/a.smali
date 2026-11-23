.class public Lcom/zxing/android/decoding/a;
.super Lcom/google/zxing/LuminanceSource;
.source "SourceFile"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    mul-int v0, v0, v1

    .line 21
    .line 22
    new-array v9, v0, [I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    mul-int v1, v1, v2

    .line 33
    .line 34
    new-array v1, v1, [B

    .line 35
    .line 36
    iput-object v1, p0, Lcom/zxing/android/decoding/a;->a:[B

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    move-object v1, p1

    .line 54
    move-object v2, v9

    .line 55
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    :goto_0
    if-ge p1, v0, :cond_0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/zxing/android/decoding/a;->a:[B

    .line 62
    .line 63
    aget v2, v9, p1

    .line 64
    .line 65
    int-to-byte v2, v2

    .line 66
    aput-byte v2, v1, p1

    .line 67
    .line 68
    add-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/decoding/a;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getRow(I[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "row"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zxing/android/decoding/a;->a:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int p1, p1, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v0, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    return-object p2
.end method
