.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "SourceFile"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    filled-new-array {v1, v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, [[I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v6, v1, :cond_8

    .line 23
    .line 24
    shl-int/lit8 v7, v6, 0x3

    .line 25
    .line 26
    add-int/lit8 v8, v7, 0x8

    .line 27
    .line 28
    if-lt v8, v3, :cond_0

    .line 29
    .line 30
    add-int/lit8 v7, v3, -0x8

    .line 31
    .line 32
    :cond_0
    const/4 v8, 0x0

    .line 33
    :goto_1
    if-ge v8, v0, :cond_7

    .line 34
    .line 35
    shl-int/lit8 v9, v8, 0x3

    .line 36
    .line 37
    add-int/lit8 v10, v9, 0x8

    .line 38
    .line 39
    if-lt v10, v2, :cond_1

    .line 40
    .line 41
    add-int/lit8 v9, v2, -0x8

    .line 42
    .line 43
    :cond_1
    mul-int v10, v7, v2

    .line 44
    .line 45
    add-int/2addr v10, v9

    .line 46
    const/16 v9, 0xff

    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    const/16 v14, 0xff

    .line 52
    .line 53
    :goto_2
    const/16 v15, 0x8

    .line 54
    .line 55
    if-ge v11, v15, :cond_5

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    :goto_3
    if-ge v5, v15, :cond_4

    .line 59
    .line 60
    add-int v16, v10, v5

    .line 61
    .line 62
    aget-byte v15, p0, v16

    .line 63
    .line 64
    and-int/2addr v15, v9

    .line 65
    add-int/2addr v12, v15

    .line 66
    if-ge v15, v14, :cond_2

    .line 67
    .line 68
    move v14, v15

    .line 69
    :cond_2
    if-le v15, v13, :cond_3

    .line 70
    .line 71
    move v13, v15

    .line 72
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    const/16 v15, 0x8

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 78
    .line 79
    add-int/2addr v10, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    shr-int/lit8 v5, v12, 0x6

    .line 82
    .line 83
    sub-int/2addr v13, v14

    .line 84
    const/16 v9, 0x18

    .line 85
    .line 86
    if-gt v13, v9, :cond_6

    .line 87
    .line 88
    shr-int/lit8 v5, v14, 0x1

    .line 89
    .line 90
    if-lez v6, :cond_6

    .line 91
    .line 92
    if-lez v8, :cond_6

    .line 93
    .line 94
    add-int/lit8 v9, v6, -0x1

    .line 95
    .line 96
    aget-object v9, v4, v9

    .line 97
    .line 98
    aget v10, v9, v8

    .line 99
    .line 100
    aget-object v11, v4, v6

    .line 101
    .line 102
    add-int/lit8 v12, v8, -0x1

    .line 103
    .line 104
    aget v11, v11, v12

    .line 105
    .line 106
    mul-int/lit8 v11, v11, 0x2

    .line 107
    .line 108
    add-int/2addr v10, v11

    .line 109
    aget v9, v9, v12

    .line 110
    .line 111
    add-int/2addr v10, v9

    .line 112
    shr-int/lit8 v9, v10, 0x2

    .line 113
    .line 114
    if-ge v14, v9, :cond_6

    .line 115
    .line 116
    move v5, v9

    .line 117
    :cond_6
    aget-object v9, v4, v6

    .line 118
    .line 119
    aput v5, v9, v8

    .line 120
    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_8
    return-object v4
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 17

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x0

    .line 11
    :goto_0
    if-ge v11, v1, :cond_8

    .line 12
    .line 13
    shl-int/lit8 v2, v11, 0x3

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x8

    .line 16
    .line 17
    if-lt v3, v9, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v9, -0x8

    .line 20
    .line 21
    :cond_0
    move v12, v2

    .line 22
    const/4 v13, 0x0

    .line 23
    :goto_1
    if-ge v13, v0, :cond_7

    .line 24
    .line 25
    shl-int/lit8 v2, v13, 0x3

    .line 26
    .line 27
    add-int/lit8 v3, v2, 0x8

    .line 28
    .line 29
    if-lt v3, v8, :cond_1

    .line 30
    .line 31
    add-int/lit8 v2, v8, -0x8

    .line 32
    .line 33
    :cond_1
    move v3, v2

    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v4, 0x1

    .line 36
    if-le v13, v4, :cond_2

    .line 37
    .line 38
    move v5, v13

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v5, 0x2

    .line 41
    :goto_2
    add-int/lit8 v6, v0, -0x2

    .line 42
    .line 43
    if-ge v5, v6, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    add-int/lit8 v5, v0, -0x3

    .line 47
    .line 48
    :goto_3
    if-le v11, v4, :cond_4

    .line 49
    .line 50
    move v4, v11

    .line 51
    goto :goto_4

    .line 52
    :cond_4
    const/4 v4, 0x2

    .line 53
    :goto_4
    add-int/lit8 v6, v1, -0x2

    .line 54
    .line 55
    if-ge v4, v6, :cond_5

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_5
    add-int/lit8 v4, v1, -0x3

    .line 59
    .line 60
    :goto_5
    const/4 v6, -0x2

    .line 61
    const/4 v7, 0x0

    .line 62
    :goto_6
    if-gt v6, v2, :cond_6

    .line 63
    .line 64
    add-int v14, v4, v6

    .line 65
    .line 66
    aget-object v14, p5, v14

    .line 67
    .line 68
    add-int/lit8 v15, v5, -0x2

    .line 69
    .line 70
    aget v15, v14, v15

    .line 71
    .line 72
    add-int/lit8 v16, v5, -0x1

    .line 73
    .line 74
    aget v16, v14, v16

    .line 75
    .line 76
    add-int v15, v15, v16

    .line 77
    .line 78
    aget v16, v14, v5

    .line 79
    .line 80
    add-int v15, v15, v16

    .line 81
    .line 82
    add-int/lit8 v16, v5, 0x1

    .line 83
    .line 84
    aget v16, v14, v16

    .line 85
    .line 86
    add-int v15, v15, v16

    .line 87
    .line 88
    add-int/lit8 v16, v5, 0x2

    .line 89
    .line 90
    aget v14, v14, v16

    .line 91
    .line 92
    add-int/2addr v15, v14

    .line 93
    add-int/2addr v7, v15

    .line 94
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_6
    div-int/lit8 v5, v7, 0x19

    .line 98
    .line 99
    move-object/from16 v2, p0

    .line 100
    .line 101
    move v4, v12

    .line 102
    move/from16 v6, p3

    .line 103
    .line 104
    move-object/from16 v7, p6

    .line 105
    .line 106
    invoke-static/range {v2 .. v7}, Lcom/google/zxing/common/HybridBinarizer;->threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v13, v13, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    return-void
.end method

.method private static threshold8x8Block([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 7

    .line 1
    mul-int v0, p2, p4

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/16 v3, 0x8

    .line 7
    .line 8
    if-ge v2, v3, :cond_2

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_1
    if-ge v4, v3, :cond_1

    .line 12
    .line 13
    add-int v5, v0, v4

    .line 14
    .line 15
    aget-byte v5, p0, v5

    .line 16
    .line 17
    and-int/lit16 v5, v5, 0xff

    .line 18
    .line 19
    if-gt v5, p3, :cond_0

    .line 20
    .line 21
    add-int v5, p1, v4

    .line 22
    .line 23
    add-int v6, p2, v2

    .line 24
    .line 25
    invoke-virtual {p5, v5, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    add-int/2addr v0, p4

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x28

    .line 15
    .line 16
    if-lt v1, v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lt v1, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    shr-int/lit8 v0, v6, 0x3

    .line 37
    .line 38
    and-int/lit8 v1, v6, 0x7

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    :cond_1
    move v4, v0

    .line 45
    shr-int/lit8 v0, v7, 0x3

    .line 46
    .line 47
    and-int/lit8 v1, v7, 0x7

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    :cond_2
    move v5, v0

    .line 54
    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    .line 59
    .line 60
    invoke-direct {v0, v6, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 61
    .line 62
    .line 63
    move-object v9, v0

    .line 64
    invoke-static/range {v3 .. v9}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 75
    .line 76
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 77
    .line 78
    return-object v0
.end method
