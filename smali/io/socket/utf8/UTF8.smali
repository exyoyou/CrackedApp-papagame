.class public final Lio/socket/utf8/UTF8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/utf8/UTF8$Options;
    }
.end annotation


# static fields
.field private static final INVALID_CONTINUATION_BYTE:Ljava/lang/String; = "Invalid continuation byte"

.field private static byteArray:[I

.field private static byteCount:I

.field private static byteIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static checkScalarValue(IZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 1
    const v0, 0xd800

    .line 2
    .line 3
    .line 4
    if-lt p0, v0, :cond_1

    .line 5
    .line 6
    const v0, 0xdfff

    .line 7
    .line 8
    .line 9
    if-gt p0, v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    new-instance p1, Lio/socket/utf8/UTF8Exception;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "Lone surrogate U+"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, " is not a scalar value"

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, p0}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method private static createByte(II)[C
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    and-int/lit8 p0, p0, 0x3f

    .line 3
    .line 4
    or-int/lit16 p0, p0, 0x80

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/socket/utf8/UTF8$Options;

    invoke-direct {v0}, Lio/socket/utf8/UTF8$Options;-><init>()V

    invoke-static {p0, v0}, Lio/socket/utf8/UTF8;->decode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 2
    iget-boolean p1, p1, Lio/socket/utf8/UTF8$Options;->strict:Z

    .line 3
    invoke-static {p0}, Lio/socket/utf8/UTF8;->ucs2decode(Ljava/lang/String;)[I

    move-result-object p0

    sput-object p0, Lio/socket/utf8/UTF8;->byteArray:[I

    .line 4
    array-length p0, p0

    sput p0, Lio/socket/utf8/UTF8;->byteCount:I

    const/4 p0, 0x0

    .line 5
    sput p0, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :goto_0
    invoke-static {p1}, Lio/socket/utf8/UTF8;->decodeSymbol(Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lio/socket/utf8/UTF8;->listToArray(Ljava/util/List;)[I

    move-result-object p0

    invoke-static {p0}, Lio/socket/utf8/UTF8;->ucs2encode([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeSymbol(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 1
    sget v0, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 2
    .line 3
    sget v1, Lio/socket/utf8/UTF8;->byteCount:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    return p0

    .line 11
    :cond_0
    sget-object v1, Lio/socket/utf8/UTF8;->byteArray:[I

    .line 12
    .line 13
    aget v1, v1, v0

    .line 14
    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    sput v0, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 20
    .line 21
    and-int/lit16 v0, v1, 0x80

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    and-int/lit16 v0, v1, 0xe0

    .line 27
    .line 28
    const/16 v2, 0xc0

    .line 29
    .line 30
    const-string v3, "Invalid continuation byte"

    .line 31
    .line 32
    if-ne v0, v2, :cond_3

    .line 33
    .line 34
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    and-int/lit8 v0, v1, 0x1f

    .line 39
    .line 40
    shl-int/lit8 v0, v0, 0x6

    .line 41
    .line 42
    or-int/2addr p0, v0

    .line 43
    const/16 v0, 0x80

    .line 44
    .line 45
    if-lt p0, v0, :cond_2

    .line 46
    .line 47
    return p0

    .line 48
    :cond_2
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_3
    and-int/lit16 v0, v1, 0xf0

    .line 55
    .line 56
    const/16 v2, 0xe0

    .line 57
    .line 58
    if-ne v0, v2, :cond_6

    .line 59
    .line 60
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    and-int/lit8 v1, v1, 0xf

    .line 69
    .line 70
    shl-int/lit8 v1, v1, 0xc

    .line 71
    .line 72
    shl-int/lit8 v0, v0, 0x6

    .line 73
    .line 74
    or-int/2addr v0, v1

    .line 75
    or-int/2addr v0, v2

    .line 76
    const/16 v1, 0x800

    .line 77
    .line 78
    if-lt v0, v1, :cond_5

    .line 79
    .line 80
    invoke-static {v0, p0}, Lio/socket/utf8/UTF8;->checkScalarValue(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const v0, 0xfffd

    .line 88
    .line 89
    .line 90
    :goto_0
    return v0

    .line 91
    :cond_5
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    .line 92
    .line 93
    invoke-direct {p0, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_6
    and-int/lit16 p0, v1, 0xf8

    .line 98
    .line 99
    const/16 v0, 0xf0

    .line 100
    .line 101
    if-ne p0, v0, :cond_7

    .line 102
    .line 103
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    and-int/lit8 v1, v1, 0xf

    .line 116
    .line 117
    shl-int/lit8 v1, v1, 0x12

    .line 118
    .line 119
    shl-int/lit8 p0, p0, 0xc

    .line 120
    .line 121
    or-int/2addr p0, v1

    .line 122
    shl-int/lit8 v0, v0, 0x6

    .line 123
    .line 124
    or-int/2addr p0, v0

    .line 125
    or-int/2addr p0, v2

    .line 126
    const/high16 v0, 0x10000

    .line 127
    .line 128
    if-lt p0, v0, :cond_7

    .line 129
    .line 130
    const v0, 0x10ffff

    .line 131
    .line 132
    .line 133
    if-gt p0, v0, :cond_7

    .line 134
    .line 135
    return p0

    .line 136
    :cond_7
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    .line 137
    .line 138
    invoke-direct {p0, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_8
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    .line 143
    .line 144
    const-string v0, "Invalid byte index"

    .line 145
    .line 146
    invoke-direct {p0, v0}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/socket/utf8/UTF8$Options;

    invoke-direct {v0}, Lio/socket/utf8/UTF8$Options;-><init>()V

    invoke-static {p0, v0}, Lio/socket/utf8/UTF8;->encode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 2
    iget-boolean p1, p1, Lio/socket/utf8/UTF8$Options;->strict:Z

    .line 3
    invoke-static {p0}, Lio/socket/utf8/UTF8;->ucs2decode(Ljava/lang/String;)[I

    move-result-object p0

    .line 4
    array-length v0, p0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, -0x1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    .line 6
    aget v3, p0, v2

    .line 7
    invoke-static {v3, p1}, Lio/socket/utf8/UTF8;->encodeCodePoint(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeCodePoint(IZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, -0x80

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    and-int/lit16 v1, p0, -0x800

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    shr-int/lit8 p1, p0, 0x6

    .line 27
    .line 28
    and-int/lit8 p1, p1, 0x1f

    .line 29
    .line 30
    or-int/lit16 p1, p1, 0xc0

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/high16 v1, -0x10000

    .line 41
    .line 42
    and-int/2addr v1, p0

    .line 43
    const/4 v2, 0x6

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    invoke-static {p0, p1}, Lio/socket/utf8/UTF8;->checkScalarValue(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    const p0, 0xfffd

    .line 53
    .line 54
    .line 55
    :cond_2
    shr-int/lit8 p1, p0, 0xc

    .line 56
    .line 57
    and-int/lit8 p1, p1, 0xf

    .line 58
    .line 59
    or-int/lit16 p1, p1, 0xe0

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v2}, Lio/socket/utf8/UTF8;->createByte(II)[C

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/high16 p1, -0x200000

    .line 77
    .line 78
    and-int/2addr p1, p0

    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    shr-int/lit8 p1, p0, 0x12

    .line 82
    .line 83
    and-int/lit8 p1, p1, 0x7

    .line 84
    .line 85
    or-int/lit16 p1, p1, 0xf0

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const/16 p1, 0xc

    .line 95
    .line 96
    invoke-static {p0, p1}, Lio/socket/utf8/UTF8;->createByte(II)[C

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {p0, v2}, Lio/socket/utf8/UTF8;->createByte(II)[C

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_0
    and-int/lit8 p0, p0, 0x3f

    .line 111
    .line 112
    or-int/lit16 p0, p0, 0x80

    .line 113
    .line 114
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0
.end method

.method private static listToArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aput v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v1
.end method

.method private static readContinuationByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 1
    sget v0, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 2
    .line 3
    sget v1, Lio/socket/utf8/UTF8;->byteCount:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lio/socket/utf8/UTF8;->byteArray:[I

    .line 8
    .line 9
    aget v1, v1, v0

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    sput v0, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 16
    .line 17
    and-int/lit16 v0, v1, 0xc0

    .line 18
    .line 19
    const/16 v2, 0x80

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    and-int/lit8 v0, v1, 0x3f

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    new-instance v0, Lio/socket/utf8/UTF8Exception;

    .line 27
    .line 28
    const-string v1, "Invalid continuation byte"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    new-instance v0, Lio/socket/utf8/UTF8Exception;

    .line 35
    .line 36
    const-string v1, "Invalid byte index"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method private static ucs2decode(Ljava/lang/String;)[I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-array v2, v2, [I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/lit8 v5, v3, 0x1

    .line 20
    .line 21
    aput v4, v2, v3

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v1, v3

    .line 28
    move v3, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v2
.end method

.method private static ucs2encode([I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
