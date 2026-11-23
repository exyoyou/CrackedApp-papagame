.class public final Lcom/google/zxing/pdf417/encoder/PDF417Writer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Writer;


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

.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-le p3, p2, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_0
    aget-object v4, p1, v2

    .line 23
    .line 24
    array-length v4, v4

    .line 25
    array-length v5, p1

    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v4, 0x0

    .line 31
    :goto_1
    xor-int/2addr v3, v4

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->rotateArray([[B)[[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v3, 0x0

    .line 41
    :goto_2
    aget-object v2, p1, v2

    .line 42
    .line 43
    array-length v2, v2

    .line 44
    div-int/2addr p2, v2

    .line 45
    array-length v2, p1

    .line 46
    div-int/2addr p3, v2

    .line 47
    if-ge p2, p3, :cond_3

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move p2, p3

    .line 51
    :goto_3
    if-le p2, v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    mul-int/lit8 p1, p2, 0x2

    .line 58
    .line 59
    mul-int/lit8 p2, p2, 0x4

    .line 60
    .line 61
    mul-int/lit8 p2, p2, 0x2

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->rotateArray([[B)[[B

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :cond_4
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_5
    invoke-static {p1}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method private static bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    add-int/lit8 v1, v1, 0x3c

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aget-object v3, p0, v2

    .line 8
    .line 9
    array-length v3, v3

    .line 10
    add-int/lit8 v3, v3, 0x3c

    .line 11
    .line 12
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v3, p0

    .line 20
    if-ge v1, v3, :cond_2

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_1
    aget-object v4, p0, v2

    .line 24
    .line 25
    array-length v4, v4

    .line 26
    if-ge v3, v4, :cond_1

    .line 27
    .line 28
    aget-object v4, p0, v1

    .line 29
    .line 30
    aget-byte v4, v4, v3

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v4, v5, :cond_0

    .line 34
    .line 35
    add-int/lit8 v4, v1, 0x1e

    .line 36
    .line 37
    add-int/lit8 v5, v3, 0x1e

    .line 38
    .line 39
    invoke-virtual {v0, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-object v0
.end method

.method private static initializeEncoder(Lcom/google/zxing/BarcodeFormat;Z)Lcom/google/zxing/pdf417/encoder/PDF417;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lcom/google/zxing/pdf417/encoder/PDF417;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Can only encode PDF_417, but got "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method private static rotateArray([[B)[[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    array-length v2, p0

    .line 6
    filled-new-array {v1, v2}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, [[B

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    array-length v3, p0

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    array-length v3, p0

    .line 23
    sub-int/2addr v3, v2

    .line 24
    add-int/lit8 v3, v3, -0x1

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_1
    aget-object v5, p0, v0

    .line 28
    .line 29
    array-length v5, v5

    .line 30
    if-ge v4, v5, :cond_0

    .line 31
    .line 32
    aget-object v5, v1, v4

    .line 33
    .line 34
    aget-object v6, p0, v2

    .line 35
    .line 36
    aget-byte v6, v6, v4

    .line 37
    .line 38
    aput-byte v6, v5, v3

    .line 39
    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->initializeEncoder(Lcom/google/zxing/BarcodeFormat;Z)Lcom/google/zxing/pdf417/encoder/PDF417;

    move-result-object p2

    .line 3
    invoke-static {p2, p1, p3, p4}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;ZIIIIIILcom/google/zxing/pdf417/encoder/Compaction;)Lcom/google/zxing/common/BitMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 4
    invoke-static {p2, p3}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->initializeEncoder(Lcom/google/zxing/BarcodeFormat;Z)Lcom/google/zxing/pdf417/encoder/PDF417;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p7, p6, p9, p8}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V

    .line 6
    invoke-virtual {p2, p10}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    .line 7
    invoke-static {p2, p1, p4, p5}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method
