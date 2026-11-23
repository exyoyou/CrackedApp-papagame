.class public final Lcom/google/zxing/common/reedsolomon/GenericGF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field private static final INITIALIZATION_THRESHOLD:I

.field public static final MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;


# instance fields
.field private expTable:[I

.field private initialized:Z

.field private logTable:[I

.field private one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

.field private final primitive:I

.field private final size:I

.field private zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 2
    .line 3
    const/16 v1, 0x1069

    .line 4
    .line 5
    const/16 v2, 0x1000

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 11
    .line 12
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 13
    .line 14
    const/16 v1, 0x409

    .line 15
    .line 16
    const/16 v2, 0x400

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 22
    .line 23
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 24
    .line 25
    const/16 v1, 0x43

    .line 26
    .line 27
    const/16 v2, 0x40

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 33
    .line 34
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 35
    .line 36
    const/16 v2, 0x13

    .line 37
    .line 38
    const/16 v3, 0x10

    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 44
    .line 45
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 46
    .line 47
    const/16 v2, 0x11d

    .line 48
    .line 49
    const/16 v3, 0x100

    .line 50
    .line 51
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 55
    .line 56
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 57
    .line 58
    const/16 v2, 0x12d

    .line 59
    .line 60
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(II)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 64
    .line 65
    sput-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 66
    .line 67
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 8
    .line 9
    iput p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 10
    .line 11
    if-gtz p2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method static addOrSubtract(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method

.method private checkInit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    :goto_0
    iget v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 16
    .line 17
    if-ge v2, v4, :cond_1

    .line 18
    .line 19
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 20
    .line 21
    aput v3, v5, v2

    .line 22
    .line 23
    shl-int/2addr v3, v0

    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    iget v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 27
    .line 28
    xor-int/2addr v3, v5

    .line 29
    add-int/lit8 v4, v4, -0x1

    .line 30
    .line 31
    and-int/2addr v3, v4

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 36
    :goto_1
    iget v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 37
    .line 38
    sub-int/2addr v3, v0

    .line 39
    if-ge v2, v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 42
    .line 43
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 44
    .line 45
    aget v4, v4, v2

    .line 46
    .line 47
    aput v2, v3, v4

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 53
    .line 54
    filled-new-array {v1}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v2, p0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 62
    .line 63
    new-instance v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 64
    .line 65
    filled-new-array {v0}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v1, p0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    new-array p1, p1, [I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aput p2, p1, v0

    .line 17
    .line 18
    new-instance p2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 19
    .line 20
    invoke-direct {p2, p0, p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method exp(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 5
    .line 6
    aget p1, v0, p1

    .line 7
    .line 8
    return p1
.end method

.method getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 5
    .line 6
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 2
    .line 3
    return v0
.end method

.method getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 5
    .line 6
    return-object v0
.end method

.method inverse(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 7
    .line 8
    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 11
    .line 12
    aget p1, v2, p1

    .line 13
    .line 14
    sub-int/2addr v1, p1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    aget p1, v0, v1

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method log(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method multiply(II)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ltz p1, :cond_1

    .line 10
    .line 11
    if-ltz p2, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    if-lt p2, v0, :cond_2

    .line 18
    .line 19
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 22
    .line 23
    aget p1, v0, p1

    .line 24
    .line 25
    aget p2, v0, p2

    .line 26
    .line 27
    add-int/2addr p1, p2

    .line 28
    iget-object p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 29
    .line 30
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 31
    .line 32
    rem-int v1, p1, v0

    .line 33
    .line 34
    div-int/2addr p1, v0

    .line 35
    add-int/2addr v1, p1

    .line 36
    aget p1, p2, v1

    .line 37
    .line 38
    return p1

    .line 39
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method
