.class public Lcom/airbnb/lottie/model/content/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[F

.field private final b:[I


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 7
    .line 8
    return-void
.end method

.method private b(F)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 10
    .line 11
    aget p1, p1, v0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    neg-int v0, v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    aget p1, p1, v0

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    if-ne v0, v2, :cond_2

    .line 31
    .line 32
    array-length p1, v1

    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    aget p1, v1, p1

    .line 36
    .line 37
    return p1

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 39
    .line 40
    add-int/lit8 v3, v0, -0x1

    .line 41
    .line 42
    aget v4, v2, v3

    .line 43
    .line 44
    aget v2, v2, v0

    .line 45
    .line 46
    aget v3, v1, v3

    .line 47
    .line 48
    aget v0, v1, v0

    .line 49
    .line 50
    sub-float/2addr p1, v4

    .line 51
    sub-float/2addr v2, v4

    .line 52
    div-float/2addr p1, v2

    .line 53
    invoke-static {p1, v3, v0}, Lcom/airbnb/lottie/utils/d;->c(FII)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method


# virtual methods
.method public a([F)Lcom/airbnb/lottie/model/content/d;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget v2, p1, v1

    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/content/d;->b(F)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    aput v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/content/d;

    .line 20
    .line 21
    invoke-direct {v1, p1, v0}, Lcom/airbnb/lottie/model/content/d;-><init>([F[I)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public c()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public d()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public f(Lcom/airbnb/lottie/model/content/d;Lcom/airbnb/lottie/model/content/d;F)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p2, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 16
    .line 17
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 18
    .line 19
    aget v2, v2, v0

    .line 20
    .line 21
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 22
    .line 23
    aget v3, v3, v0

    .line 24
    .line 25
    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/utils/k;->k(FFF)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aput v2, v1, v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 32
    .line 33
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 34
    .line 35
    aget v2, v2, v0

    .line 36
    .line 37
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 38
    .line 39
    aget v3, v3, v0

    .line 40
    .line 41
    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/utils/d;->c(FII)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aput v2, v1, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    array-length p2, v1

    .line 51
    :goto_1
    iget-object p3, p0, Lcom/airbnb/lottie/model/content/d;->a:[F

    .line 52
    .line 53
    array-length v0, p3

    .line 54
    if-ge p2, v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p1, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 57
    .line 58
    array-length v1, v0

    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    aget v1, p3, v1

    .line 62
    .line 63
    aput v1, p3, p2

    .line 64
    .line 65
    iget-object p3, p0, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 66
    .line 67
    array-length v0, v0

    .line 68
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    aget v0, p3, v0

    .line 71
    .line 72
    aput v0, p3, p2

    .line 73
    .line 74
    add-int/lit8 p2, p2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    return-void

    .line 78
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "Cannot interpolate between gradients. Lengths vary ("

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 91
    .line 92
    array-length p1, p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " vs "

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object p1, p2, Lcom/airbnb/lottie/model/content/d;->b:[I

    .line 102
    .line 103
    array-length p1, p1

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, ")"

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p3
.end method
