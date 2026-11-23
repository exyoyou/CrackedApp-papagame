.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    .line 8
    .line 9
    const/16 v0, 0x2c

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 17
    .line 18
    const/16 v1, 0x27

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    .line 22
    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 5
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 9
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_c

    .line 13
    .line 14
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x2f

    .line 19
    .line 20
    const/16 v6, 0x25

    .line 21
    .line 22
    const/16 v7, 0x24

    .line 23
    .line 24
    const/16 v8, 0x2b

    .line 25
    .line 26
    if-eq v4, v8, :cond_1

    .line 27
    .line 28
    if-eq v4, v7, :cond_1

    .line 29
    .line 30
    if-eq v4, v6, :cond_1

    .line 31
    .line 32
    if-ne v4, v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    const/16 v10, 0x5a

    .line 46
    .line 47
    const/16 v11, 0x41

    .line 48
    .line 49
    if-eq v4, v7, :cond_a

    .line 50
    .line 51
    if-eq v4, v6, :cond_7

    .line 52
    .line 53
    if-eq v4, v8, :cond_5

    .line 54
    .line 55
    if-eq v4, v5, :cond_2

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    if-lt v9, v11, :cond_3

    .line 60
    .line 61
    const/16 v4, 0x4f

    .line 62
    .line 63
    if-gt v9, v4, :cond_3

    .line 64
    .line 65
    add-int/lit8 v9, v9, -0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    if-ne v9, v10, :cond_4

    .line 69
    .line 70
    const/16 v4, 0x3a

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0

    .line 78
    :cond_5
    if-lt v9, v11, :cond_6

    .line 79
    .line 80
    if-gt v9, v10, :cond_6

    .line 81
    .line 82
    add-int/lit8 v9, v9, 0x20

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    throw p0

    .line 90
    :cond_7
    if-lt v9, v11, :cond_8

    .line 91
    .line 92
    const/16 v4, 0x45

    .line 93
    .line 94
    if-gt v9, v4, :cond_8

    .line 95
    .line 96
    add-int/lit8 v9, v9, -0x26

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_8
    const/16 v4, 0x46

    .line 100
    .line 101
    if-lt v9, v4, :cond_9

    .line 102
    .line 103
    const/16 v4, 0x57

    .line 104
    .line 105
    if-gt v9, v4, :cond_9

    .line 106
    .line 107
    add-int/lit8 v9, v9, -0xb

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    throw p0

    .line 115
    :cond_a
    if-lt v9, v11, :cond_b

    .line 116
    .line 117
    if-gt v9, v10, :cond_b

    .line 118
    .line 119
    add-int/lit8 v9, v9, -0x40

    .line 120
    .line 121
    :goto_2
    int-to-char v4, v9

    .line 122
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    throw p0

    .line 133
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    array-length v3, p1

    .line 11
    move v4, v2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    xor-int/2addr v7, v5

    .line 21
    const/4 v8, 0x1

    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    aget v7, p1, v6

    .line 25
    .line 26
    add-int/2addr v7, v8

    .line 27
    aput v7, p1, v6

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    add-int/lit8 v7, v3, -0x1

    .line 31
    .line 32
    if-ne v6, v7, :cond_2

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    sget v10, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    .line 39
    .line 40
    if-ne v9, v10, :cond_1

    .line 41
    .line 42
    sub-int v9, v2, v4

    .line 43
    .line 44
    shr-int/2addr v9, v8

    .line 45
    sub-int v9, v4, v9

    .line 46
    .line 47
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    invoke-virtual {p0, v9, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_1

    .line 56
    .line 57
    filled-new-array {v4, v2}, [I

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_1
    aget v9, p1, v1

    .line 63
    .line 64
    aget v10, p1, v8

    .line 65
    .line 66
    add-int/2addr v9, v10

    .line 67
    add-int/2addr v4, v9

    .line 68
    add-int/lit8 v9, v3, -0x2

    .line 69
    .line 70
    const/4 v10, 0x2

    .line 71
    invoke-static {p1, v10, p1, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    aput v1, p1, v9

    .line 75
    .line 76
    aput v1, p1, v7

    .line 77
    .line 78
    add-int/lit8 v6, v6, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    :goto_1
    aput v8, p1, v6

    .line 84
    .line 85
    xor-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0
.end method

.method private static patternToChar(I)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v1, v1, v0

    .line 8
    .line 9
    if-ne v1, p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    .line 12
    .line 13
    aget-char p0, p0, v0

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    throw p0
.end method

.method private static toNarrowWidePattern([I)I
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const v3, 0x7fffffff

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_1
    if-ge v4, v0, :cond_1

    .line 9
    .line 10
    aget v5, p0, v4

    .line 11
    .line 12
    if-ge v5, v3, :cond_0

    .line 13
    .line 14
    if-le v5, v2, :cond_0

    .line 15
    .line 16
    move v3, v5

    .line 17
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v2, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_2
    if-ge v2, v0, :cond_3

    .line 25
    .line 26
    aget v7, p0, v2

    .line 27
    .line 28
    if-le v7, v3, :cond_2

    .line 29
    .line 30
    add-int/lit8 v8, v0, -0x1

    .line 31
    .line 32
    sub-int/2addr v8, v2

    .line 33
    const/4 v9, 0x1

    .line 34
    shl-int v8, v9, v8

    .line 35
    .line 36
    or-int/2addr v5, v8

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    add-int/2addr v6, v7

    .line 40
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    const/4 v2, 0x3

    .line 44
    const/4 v7, -0x1

    .line 45
    if-ne v4, v2, :cond_6

    .line 46
    .line 47
    :goto_3
    if-ge v1, v0, :cond_5

    .line 48
    .line 49
    if-lez v4, :cond_5

    .line 50
    .line 51
    aget v2, p0, v1

    .line 52
    .line 53
    if-le v2, v3, :cond_4

    .line 54
    .line 55
    add-int/lit8 v4, v4, -0x1

    .line 56
    .line 57
    shl-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    if-lt v2, v6, :cond_4

    .line 60
    .line 61
    return v7

    .line 62
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    return v5

    .line 66
    :cond_6
    if-gt v4, v2, :cond_7

    .line 67
    .line 68
    return v7

    .line 69
    :cond_7
    move v2, v3

    .line 70
    goto :goto_0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    const/16 p3, 0x9

    .line 2
    .line 3
    new-array v0, p3, [I

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    aget v3, v1, v2

    .line 11
    .line 12
    invoke-virtual {p2, v3}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const/16 v6, 0x14

    .line 23
    .line 24
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {p2, v3, v0}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-ltz v6, :cond_a

    .line 35
    .line 36
    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    move v9, v3

    .line 45
    const/4 v8, 0x0

    .line 46
    :goto_1
    if-ge v8, p3, :cond_0

    .line 47
    .line 48
    aget v10, v0, v8

    .line 49
    .line 50
    add-int/2addr v9, v10

    .line 51
    add-int/lit8 v8, v8, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    const/16 v9, 0x2a

    .line 59
    .line 60
    if-ne v6, v9, :cond_9

    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    sub-int/2addr p2, v2

    .line 67
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_2
    if-ge p2, p3, :cond_1

    .line 73
    .line 74
    aget v9, v0, p2

    .line 75
    .line 76
    add-int/2addr v6, v9

    .line 77
    add-int/lit8 p2, p2, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    sub-int p2, v8, v3

    .line 81
    .line 82
    sub-int/2addr p2, v6

    .line 83
    if-eq v8, v4, :cond_3

    .line 84
    .line 85
    shr-int/2addr p2, v2

    .line 86
    if-lt p2, v6, :cond_2

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    throw p1

    .line 94
    :cond_3
    :goto_3
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 95
    .line 96
    if-eqz p2, :cond_6

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    sub-int/2addr p2, v2

    .line 103
    const/4 p3, 0x0

    .line 104
    const/4 v0, 0x0

    .line 105
    :goto_4
    if-ge p3, p2, :cond_4

    .line 106
    .line 107
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 108
    .line 109
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    add-int/2addr v0, v4

    .line 118
    add-int/lit8 p3, p3, 0x1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    sget-object v4, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    .line 126
    .line 127
    rem-int/lit8 v0, v0, 0x2b

    .line 128
    .line 129
    aget-char v0, v4, v0

    .line 130
    .line 131
    if-ne p3, v0, :cond_5

    .line 132
    .line 133
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :cond_6
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_8

    .line 147
    .line 148
    iget-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 149
    .line 150
    if-eqz p2, :cond_7

    .line 151
    .line 152
    invoke-static {v5}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    goto :goto_6

    .line 157
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    :goto_6
    aget p3, v1, v2

    .line 162
    .line 163
    aget v0, v1, v7

    .line 164
    .line 165
    add-int/2addr p3, v0

    .line 166
    int-to-float p3, p3

    .line 167
    const/high16 v0, 0x40000000    # 2.0f

    .line 168
    .line 169
    div-float/2addr p3, v0

    .line 170
    add-int/2addr v8, v3

    .line 171
    int-to-float v1, v8

    .line 172
    div-float/2addr v1, v0

    .line 173
    new-instance v0, Lcom/google/zxing/Result;

    .line 174
    .line 175
    const/4 v3, 0x2

    .line 176
    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    .line 177
    .line 178
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 179
    .line 180
    int-to-float p1, p1

    .line 181
    invoke-direct {v4, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 182
    .line 183
    .line 184
    aput-object v4, v3, v7

    .line 185
    .line 186
    new-instance p3, Lcom/google/zxing/ResultPoint;

    .line 187
    .line 188
    invoke-direct {p3, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 189
    .line 190
    .line 191
    aput-object p3, v3, v2

    .line 192
    .line 193
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 194
    .line 195
    const/4 p3, 0x0

    .line 196
    invoke-direct {v0, p2, p3, v3, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 197
    .line 198
    .line 199
    return-object v0

    .line 200
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    throw p1

    .line 205
    :cond_9
    move v3, v8

    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    throw p1
.end method
