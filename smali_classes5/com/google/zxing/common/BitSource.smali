.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    mul-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public getByteOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public readBits(I)I
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_5

    .line 3
    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    if-gt p1, v1, :cond_5

    .line 7
    .line 8
    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0xff

    .line 12
    .line 13
    const/16 v4, 0x8

    .line 14
    .line 15
    if-lez v1, :cond_2

    .line 16
    .line 17
    rsub-int/lit8 v5, v1, 0x8

    .line 18
    .line 19
    if-ge p1, v5, :cond_0

    .line 20
    .line 21
    move v6, p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v6, v5

    .line 24
    :goto_0
    sub-int/2addr v5, v6

    .line 25
    rsub-int/lit8 v7, v6, 0x8

    .line 26
    .line 27
    shr-int v7, v3, v7

    .line 28
    .line 29
    shl-int/2addr v7, v5

    .line 30
    iget-object v8, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 31
    .line 32
    iget v9, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 33
    .line 34
    aget-byte v8, v8, v9

    .line 35
    .line 36
    and-int/2addr v7, v8

    .line 37
    shr-int v5, v7, v5

    .line 38
    .line 39
    sub-int/2addr p1, v6

    .line 40
    add-int/2addr v1, v6

    .line 41
    iput v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 42
    .line 43
    if-ne v1, v4, :cond_1

    .line 44
    .line 45
    iput v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 46
    .line 47
    add-int/2addr v9, v0

    .line 48
    iput v9, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 49
    .line 50
    :cond_1
    move v2, v5

    .line 51
    :cond_2
    if-lez p1, :cond_4

    .line 52
    .line 53
    :goto_1
    if-lt p1, v4, :cond_3

    .line 54
    .line 55
    shl-int/lit8 v1, v2, 0x8

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 58
    .line 59
    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 60
    .line 61
    aget-byte v2, v2, v5

    .line 62
    .line 63
    and-int/2addr v2, v3

    .line 64
    or-int/2addr v2, v1

    .line 65
    add-int/2addr v5, v0

    .line 66
    iput v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 67
    .line 68
    add-int/lit8 p1, p1, -0x8

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-lez p1, :cond_4

    .line 72
    .line 73
    rsub-int/lit8 v0, p1, 0x8

    .line 74
    .line 75
    shr-int v1, v3, v0

    .line 76
    .line 77
    shl-int/2addr v1, v0

    .line 78
    shl-int/2addr v2, p1

    .line 79
    iget-object v3, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 80
    .line 81
    iget v4, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 82
    .line 83
    aget-byte v3, v3, v4

    .line 84
    .line 85
    and-int/2addr v1, v3

    .line 86
    shr-int v0, v1, v0

    .line 87
    .line 88
    or-int/2addr v2, v0

    .line 89
    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 90
    .line 91
    add-int/2addr v0, p1

    .line 92
    iput v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 93
    .line 94
    :cond_4
    return v2

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
