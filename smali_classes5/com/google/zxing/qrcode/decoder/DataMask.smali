.class abstract Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;,
        Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;
    }
.end annotation


# static fields
.field private static final DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 4
    .line 5
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask000;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v1, v0, v3

    .line 13
    .line 14
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask001;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v1, v0, v3

    .line 21
    .line 22
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask010;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    aput-object v1, v0, v3

    .line 29
    .line 30
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    aput-object v1, v0, v3

    .line 37
    .line 38
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask100;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    aput-object v1, v0, v3

    .line 45
    .line 46
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x5

    .line 52
    aput-object v1, v0, v3

    .line 53
    .line 54
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;

    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask110;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x6

    .line 60
    aput-object v1, v0, v3

    .line 61
    .line 62
    new-instance v1, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;

    .line 63
    .line 64
    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask111;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x7

    .line 68
    aput-object v1, v0, v2

    .line 69
    .line 70
    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 71
    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>()V

    return-void
.end method

.method static forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->DATA_MASKS:[Lcom/google/zxing/qrcode/decoder/DataMask;

    .line 7
    .line 8
    aget-object p0, v0, p0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p2, :cond_2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_1
    if-ge v2, p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask;->isMasked(II)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    return-void
.end method
