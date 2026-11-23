.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0x1e


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 4
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    add-int/lit8 v1, p1, -0x1e

    shr-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/lit8 v2, p1, 0x1e

    shr-int/lit8 v2, v2, 0x1

    .line 6
    iput v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    add-int/lit8 v3, v0, -0x1e

    shr-int/lit8 v3, v3, 0x1

    .line 7
    iput v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/lit8 v4, v0, 0x1e

    shr-int/lit8 v4, v4, 0x1

    .line 8
    iput v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    if-ltz v3, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v0, :cond_0

    if-ge v2, p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 12
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 13
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    shr-int/lit8 p2, p2, 0x1

    sub-int v1, p3, p2

    .line 14
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/2addr p3, p2

    .line 15
    iput p3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v2, p4, p2

    .line 16
    iput v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr p4, p2

    .line 17
    iput p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-ge p4, v0, :cond_0

    if-ge p3, p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    div-int/2addr v4, v5

    .line 37
    int-to-float v4, v4

    .line 38
    const/4 v6, 0x3

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x4

    .line 42
    const/high16 v10, 0x3f800000    # 1.0f

    .line 43
    .line 44
    cmpg-float v4, v0, v4

    .line 45
    .line 46
    if-gez v4, :cond_0

    .line 47
    .line 48
    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    .line 49
    .line 50
    new-instance v9, Lcom/google/zxing/ResultPoint;

    .line 51
    .line 52
    sub-float/2addr v3, v10

    .line 53
    add-float/2addr p4, v10

    .line 54
    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 55
    .line 56
    .line 57
    aput-object v9, v4, v8

    .line 58
    .line 59
    new-instance p4, Lcom/google/zxing/ResultPoint;

    .line 60
    .line 61
    add-float/2addr v1, v10

    .line 62
    add-float/2addr p2, v10

    .line 63
    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 64
    .line 65
    .line 66
    aput-object p4, v4, v7

    .line 67
    .line 68
    new-instance p2, Lcom/google/zxing/ResultPoint;

    .line 69
    .line 70
    sub-float/2addr v2, v10

    .line 71
    sub-float/2addr p3, v10

    .line 72
    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 73
    .line 74
    .line 75
    aput-object p2, v4, v5

    .line 76
    .line 77
    new-instance p2, Lcom/google/zxing/ResultPoint;

    .line 78
    .line 79
    add-float/2addr v0, v10

    .line 80
    sub-float/2addr p1, v10

    .line 81
    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 82
    .line 83
    .line 84
    aput-object p2, v4, v6

    .line 85
    .line 86
    return-object v4

    .line 87
    :cond_0
    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    .line 88
    .line 89
    new-instance v9, Lcom/google/zxing/ResultPoint;

    .line 90
    .line 91
    add-float/2addr v3, v10

    .line 92
    add-float/2addr p4, v10

    .line 93
    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 94
    .line 95
    .line 96
    aput-object v9, v4, v8

    .line 97
    .line 98
    new-instance p4, Lcom/google/zxing/ResultPoint;

    .line 99
    .line 100
    add-float/2addr v1, v10

    .line 101
    sub-float/2addr p2, v10

    .line 102
    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 103
    .line 104
    .line 105
    aput-object p4, v4, v7

    .line 106
    .line 107
    new-instance p2, Lcom/google/zxing/ResultPoint;

    .line 108
    .line 109
    sub-float/2addr v2, v10

    .line 110
    add-float/2addr p3, v10

    .line 111
    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 112
    .line 113
    .line 114
    aput-object p2, v4, v5

    .line 115
    .line 116
    new-instance p2, Lcom/google/zxing/ResultPoint;

    .line 117
    .line 118
    sub-float/2addr v0, v10

    .line 119
    sub-float/2addr p1, v10

    .line 120
    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 121
    .line 122
    .line 123
    aput-object p2, v4, v6

    .line 124
    .line 125
    return-object v4
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    :goto_0
    if-gt p1, p2, :cond_3

    .line 5
    .line 6
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 7
    .line 8
    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 19
    .line 20
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 21
    .line 22
    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    if-eqz p4, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method private static distanceL2(FFFF)I
    .locals 0

    .line 1
    sub-float/2addr p0, p2

    .line 2
    sub-float/2addr p1, p3

    .line 3
    mul-float p0, p0, p0

    .line 4
    .line 5
    mul-float p1, p1, p1

    .line 6
    .line 7
    add-float/2addr p0, p1

    .line 8
    float-to-double p0, p0

    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    double-to-float p0, p0

    .line 14
    invoke-static {p0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->distanceL2(FFFF)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float/2addr p3, p1

    .line 6
    int-to-float v1, v0

    .line 7
    div-float/2addr p3, v1

    .line 8
    sub-float/2addr p4, p2

    .line 9
    div-float/2addr p4, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    int-to-float v2, v1

    .line 14
    mul-float v3, v2, p3

    .line 15
    .line 16
    add-float/2addr v3, p1

    .line 17
    invoke-static {v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    mul-float v2, v2, p4

    .line 22
    .line 23
    add-float/2addr v2, p2

    .line 24
    invoke-static {v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 29
    .line 30
    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    new-instance p1, Lcom/google/zxing/ResultPoint;

    .line 37
    .line 38
    int-to-float p2, v3

    .line 39
    int-to-float p3, v2

    .line 40
    invoke-direct {p1, p2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    :cond_0
    :goto_0
    if-eqz v6, :cond_d

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 18
    .line 19
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 20
    .line 21
    if-ge v1, v6, :cond_2

    .line 22
    .line 23
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 34
    .line 35
    if-lt v1, v6, :cond_3

    .line 36
    .line 37
    :goto_2
    const/4 v4, 0x1

    .line 38
    goto :goto_6

    .line 39
    :cond_3
    const/4 v6, 0x1

    .line 40
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 41
    .line 42
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 43
    .line 44
    if-ge v3, v6, :cond_5

    .line 45
    .line 46
    invoke-direct {p0, v0, v1, v3, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_4

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    const/4 v8, 0x1

    .line 55
    goto :goto_3

    .line 56
    :cond_5
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 57
    .line 58
    if-lt v3, v6, :cond_6

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_6
    const/4 v6, 0x1

    .line 62
    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 63
    .line 64
    if-ltz v0, :cond_8

    .line 65
    .line 66
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_7

    .line 71
    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    goto :goto_4

    .line 76
    :cond_8
    if-gez v0, :cond_9

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_9
    move v6, v8

    .line 80
    const/4 v8, 0x1

    .line 81
    :cond_a
    :goto_5
    if-eqz v8, :cond_b

    .line 82
    .line 83
    if-ltz v2, :cond_b

    .line 84
    .line 85
    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_a

    .line 90
    .line 91
    add-int/lit8 v2, v2, -0x1

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    goto :goto_5

    .line 95
    :cond_b
    if-gez v2, :cond_c

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_c
    if-eqz v6, :cond_0

    .line 99
    .line 100
    const/4 v7, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_d
    :goto_6
    if-nez v4, :cond_1a

    .line 103
    .line 104
    if-eqz v7, :cond_1a

    .line 105
    .line 106
    sub-int v4, v1, v0

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    move-object v8, v6

    .line 110
    const/4 v7, 0x1

    .line 111
    :goto_7
    if-ge v7, v4, :cond_f

    .line 112
    .line 113
    int-to-float v8, v0

    .line 114
    sub-int v9, v3, v7

    .line 115
    .line 116
    int-to-float v9, v9

    .line 117
    add-int v10, v0, v7

    .line 118
    .line 119
    int-to-float v10, v10

    .line 120
    int-to-float v11, v3

    .line 121
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    if-eqz v8, :cond_e

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_f
    :goto_8
    if-eqz v8, :cond_19

    .line 132
    .line 133
    move-object v9, v6

    .line 134
    const/4 v7, 0x1

    .line 135
    :goto_9
    if-ge v7, v4, :cond_11

    .line 136
    .line 137
    int-to-float v9, v0

    .line 138
    add-int v10, v2, v7

    .line 139
    .line 140
    int-to-float v10, v10

    .line 141
    add-int v11, v0, v7

    .line 142
    .line 143
    int-to-float v11, v11

    .line 144
    int-to-float v12, v2

    .line 145
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    if-eqz v9, :cond_10

    .line 150
    .line 151
    goto :goto_a

    .line 152
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_11
    :goto_a
    if-eqz v9, :cond_18

    .line 156
    .line 157
    move-object v7, v6

    .line 158
    const/4 v0, 0x1

    .line 159
    :goto_b
    if-ge v0, v4, :cond_13

    .line 160
    .line 161
    int-to-float v7, v1

    .line 162
    add-int v10, v2, v0

    .line 163
    .line 164
    int-to-float v10, v10

    .line 165
    sub-int v11, v1, v0

    .line 166
    .line 167
    int-to-float v11, v11

    .line 168
    int-to-float v12, v2

    .line 169
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    if-eqz v7, :cond_12

    .line 174
    .line 175
    goto :goto_c

    .line 176
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_13
    :goto_c
    if-eqz v7, :cond_17

    .line 180
    .line 181
    :goto_d
    if-ge v5, v4, :cond_15

    .line 182
    .line 183
    int-to-float v0, v1

    .line 184
    sub-int v2, v3, v5

    .line 185
    .line 186
    int-to-float v2, v2

    .line 187
    sub-int v6, v1, v5

    .line 188
    .line 189
    int-to-float v6, v6

    .line 190
    int-to-float v10, v3

    .line 191
    invoke-direct {p0, v0, v2, v6, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    if-eqz v6, :cond_14

    .line 196
    .line 197
    goto :goto_e

    .line 198
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 199
    .line 200
    goto :goto_d

    .line 201
    :cond_15
    :goto_e
    if-eqz v6, :cond_16

    .line 202
    .line 203
    invoke-direct {p0, v6, v8, v7, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0

    .line 208
    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    throw v0

    .line 213
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    throw v0

    .line 218
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    throw v0

    .line 223
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    throw v0

    .line 228
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    throw v0
.end method
