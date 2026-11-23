.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field private static final INITIAL_BYTE_BUFFER_SIZE:I = 0xc8

.field private static final INITIAL_CHAR_BUFFER_SIZE:I = 0x78

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field private static final instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 6
    .line 7
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 12
    .line 13
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private _appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .locals 1

    .line 1
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 2
    .line 3
    .line 4
    const/16 p4, 0x5c

    .line 5
    .line 6
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 7
    .line 8
    .line 9
    if-gez p2, :cond_1

    .line 10
    .line 11
    const/16 p2, 0x75

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 14
    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    if-le p1, p2, :cond_0

    .line 19
    .line 20
    shr-int/lit8 p2, p1, 0x8

    .line 21
    .line 22
    sget-object p4, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 23
    .line 24
    shr-int/lit8 v0, p2, 0x4

    .line 25
    .line 26
    aget-byte v0, p4, v0

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 29
    .line 30
    .line 31
    and-int/lit8 p2, p2, 0xf

    .line 32
    .line 33
    aget-byte p2, p4, p2

    .line 34
    .line 35
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 36
    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 p2, 0x30

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sget-object p2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 50
    .line 51
    shr-int/lit8 p4, p1, 0x4

    .line 52
    .line 53
    aget-byte p4, p2, p4

    .line 54
    .line 55
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 56
    .line 57
    .line 58
    and-int/lit8 p1, p1, 0xf

    .line 59
    .line 60
    aget-byte p1, p2, p1

    .line 61
    .line 62
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    int-to-byte p1, p2

    .line 67
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method private _appendNamed(I[C)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    int-to-char p1, p1

    .line 3
    aput-char p1, p2, v0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    return p1
.end method

.method private _appendNumeric(I[C)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x75

    .line 3
    .line 4
    aput-char v1, p2, v0

    .line 5
    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x4

    .line 9
    .line 10
    aget-char v1, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    aput-char v1, p2, v2

    .line 14
    .line 15
    and-int/lit8 p1, p1, 0xf

    .line 16
    .line 17
    aget-char p1, v0, p1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    aput-char p1, p2, v0

    .line 21
    .line 22
    const/4 p1, 0x6

    .line 23
    return p1
.end method

.method private static _convert(II)I
    .locals 3

    .line 1
    const v0, 0xdc00

    .line 2
    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    const v1, 0xdfff

    .line 7
    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    const v1, 0xd800

    .line 12
    .line 13
    .line 14
    sub-int/2addr p0, v1

    .line 15
    shl-int/lit8 p0, p0, 0xa

    .line 16
    .line 17
    const/high16 v1, 0x10000

    .line 18
    .line 19
    add-int/2addr p0, v1

    .line 20
    sub-int/2addr p1, v0

    .line 21
    add-int/2addr p0, p1

    .line 22
    return p0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Broken surrogate pair: first char 0x"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, ", second 0x"

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, "; illegal combination"

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method private static _illegal(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method private _qbuf()[C
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v1, 0x3

    aput-char v2, v0, v1

    return-object v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/CharSequence;)[B
    .locals 11

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xc8

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_10

    add-int/lit8 v7, v5, 0x1

    .line 33
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    :goto_1
    const/16 v8, 0x7f

    if-gt v5, v8, :cond_3

    if-lt v6, v1, :cond_1

    if-nez v4, :cond_0

    .line 34
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    .line 35
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 36
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_1
    add-int/lit8 v8, v6, 0x1

    int-to-byte v5, v5

    .line 37
    aput-byte v5, v2, v6

    if-lt v7, v0, :cond_2

    move v6, v8

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 38
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v5

    move v5, v6

    move v6, v8

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 39
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    :cond_4
    if-lt v6, v1, :cond_5

    .line 40
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 41
    array-length v1, v2

    const/4 v6, 0x0

    :cond_5
    const/16 v8, 0x800

    if-ge v5, v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 42
    aput-byte v9, v2, v6

    :goto_2
    move v6, v5

    move v5, v7

    goto/16 :goto_4

    :cond_6
    const v8, 0xd800

    if-lt v5, v8, :cond_d

    const v8, 0xdfff

    if-le v5, v8, :cond_7

    goto :goto_3

    :cond_7
    const v8, 0xdbff

    if-le v5, v8, :cond_8

    .line 43
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_8
    if-lt v7, v0, :cond_9

    .line 44
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_9
    add-int/lit8 v8, v7, 0x1

    .line 45
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v5, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v5

    const v7, 0x10ffff

    if-le v5, v7, :cond_a

    .line 46
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_a
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 47
    aput-byte v9, v2, v6

    if-lt v7, v1, :cond_b

    .line 48
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 49
    array-length v1, v2

    const/4 v7, 0x0

    :cond_b
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 50
    aput-byte v9, v2, v7

    if-lt v6, v1, :cond_c

    .line 51
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 52
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_c
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 53
    aput-byte v9, v2, v6

    move v6, v5

    move v5, v8

    move v8, v7

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 54
    aput-byte v9, v2, v6

    if-lt v8, v1, :cond_e

    .line 55
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 56
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_e
    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 57
    aput-byte v9, v2, v8

    move v8, v6

    goto/16 :goto_2

    :goto_4
    if-lt v8, v1, :cond_f

    .line 58
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 59
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_f
    add-int/lit8 v7, v8, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 60
    aput-byte v6, v2, v8

    move v6, v7

    goto/16 :goto_0

    :cond_10
    :goto_5
    if-nez v4, :cond_11

    .line 61
    invoke-static {v2, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 62
    :cond_11
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_10

    add-int/lit8 v7, v5, 0x1

    .line 2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    const/16 v8, 0x7f

    if-gt v5, v8, :cond_3

    if-lt v6, v1, :cond_1

    if-nez v4, :cond_0

    .line 3
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    .line 4
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_1
    add-int/lit8 v8, v6, 0x1

    int-to-byte v5, v5

    .line 6
    aput-byte v5, v2, v6

    if-lt v7, v0, :cond_2

    move v6, v8

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v5

    move v5, v6

    move v6, v8

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 8
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    :cond_4
    if-lt v6, v1, :cond_5

    .line 9
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 10
    array-length v1, v2

    const/4 v6, 0x0

    :cond_5
    const/16 v8, 0x800

    if-ge v5, v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 11
    aput-byte v9, v2, v6

    :goto_2
    move v6, v5

    move v5, v7

    goto/16 :goto_4

    :cond_6
    const v8, 0xd800

    if-lt v5, v8, :cond_d

    const v8, 0xdfff

    if-le v5, v8, :cond_7

    goto :goto_3

    :cond_7
    const v8, 0xdbff

    if-le v5, v8, :cond_8

    .line 12
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_8
    if-lt v7, v0, :cond_9

    .line 13
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_9
    add-int/lit8 v8, v7, 0x1

    .line 14
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v5, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v5

    const v7, 0x10ffff

    if-le v5, v7, :cond_a

    .line 15
    invoke-static {v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    :cond_a
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 16
    aput-byte v9, v2, v6

    if-lt v7, v1, :cond_b

    .line 17
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    .line 18
    array-length v1, v2

    const/4 v7, 0x0

    :cond_b
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 19
    aput-byte v9, v2, v7

    if-lt v6, v1, :cond_c

    .line 20
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 21
    array-length v2, v1

    const/4 v6, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_c
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 22
    aput-byte v9, v2, v6

    move v6, v5

    move v5, v8

    move v8, v7

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v5, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 23
    aput-byte v9, v2, v6

    if-lt v8, v1, :cond_e

    .line 24
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 25
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_e
    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 26
    aput-byte v9, v2, v8

    move v8, v6

    goto/16 :goto_2

    :goto_4
    if-lt v8, v1, :cond_f

    .line 27
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    .line 28
    array-length v2, v1

    const/4 v8, 0x0

    move v10, v2

    move-object v2, v1

    move v1, v10

    :cond_f
    add-int/lit8 v7, v8, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 29
    aput-byte v6, v2, v8

    move v6, v7

    goto/16 :goto_0

    :cond_10
    :goto_5
    if-nez v4, :cond_11

    .line 30
    invoke-static {v2, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 31
    :cond_11
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object p1

    return-object p1
.end method

.method public quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 8

    .line 51
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    .line 52
    array-length v1, v0

    .line 53
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    .line 54
    :cond_0
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v1, :cond_3

    .line 55
    aget v7, v0, v6

    if-eqz v7, :cond_3

    if-nez v4, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v4

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 57
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 58
    aget v7, v0, v5

    if-gez v7, :cond_2

    .line 59
    invoke-direct {p0, v5, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v5

    goto :goto_1

    .line 60
    :cond_2
    invoke-direct {p0, v7, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v5

    .line 61
    :goto_1
    invoke-virtual {p2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_0

    :cond_4
    return-void
.end method

.method public quoteAsString(Ljava/lang/CharSequence;)[C
    .locals 12

    .line 25
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x78

    new-array v0, v0, [C

    .line 27
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v1

    .line 28
    array-length v2, v1

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v3, :cond_a

    .line 30
    :goto_1
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v2, :cond_6

    .line 31
    aget v10, v1, v9

    if-eqz v10, :cond_6

    if-nez v6, :cond_1

    .line 32
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v6

    :cond_1
    add-int/lit8 v9, v7, 0x1

    .line 33
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 34
    aget v10, v1, v7

    if-gez v10, :cond_2

    .line 35
    invoke-direct {p0, v7, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v7

    goto :goto_2

    .line 36
    :cond_2
    invoke-direct {p0, v10, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    .line 37
    array-length v11, v0

    if-le v10, v11, :cond_5

    .line 38
    array-length v10, v0

    sub-int/2addr v10, v8

    if-lez v10, :cond_3

    .line 39
    invoke-static {v6, v5, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-nez v4, :cond_4

    .line 40
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v4

    .line 41
    :cond_4
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    sub-int/2addr v7, v10

    .line 42
    invoke-static {v6, v10, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    .line 43
    :cond_5
    invoke-static {v6, v5, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    .line 44
    :cond_6
    array-length v10, v0

    if-lt v8, v10, :cond_8

    if-nez v4, :cond_7

    .line 45
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v4

    .line 46
    :cond_7
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v8, 0x0

    :cond_8
    add-int/lit8 v10, v8, 0x1

    .line 47
    aput-char v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_9

    move v8, v10

    goto :goto_4

    :cond_9
    move v8, v10

    goto :goto_1

    :cond_a
    :goto_4
    if-nez v4, :cond_b

    .line 48
    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    return-object p1

    .line 49
    :cond_b
    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 50
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object p1

    return-object p1
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 12

    const/16 v0, 0x78

    new-array v0, v0, [C

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v1

    .line 2
    array-length v2, v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v3, :cond_9

    .line 4
    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v2, :cond_5

    .line 5
    aget v10, v1, v9

    if-eqz v10, :cond_5

    if-nez v6, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v6

    :cond_0
    add-int/lit8 v9, v7, 0x1

    .line 7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 8
    aget v10, v1, v7

    if-gez v10, :cond_1

    .line 9
    invoke-direct {p0, v7, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v7

    goto :goto_2

    .line 10
    :cond_1
    invoke-direct {p0, v10, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    .line 11
    array-length v11, v0

    if-le v10, v11, :cond_4

    .line 12
    array-length v10, v0

    sub-int/2addr v10, v8

    if-lez v10, :cond_2

    .line 13
    invoke-static {v6, v4, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-nez v5, :cond_3

    .line 14
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 15
    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    sub-int/2addr v7, v10

    .line 16
    invoke-static {v6, v10, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    .line 17
    :cond_4
    invoke-static {v6, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    .line 18
    :cond_5
    array-length v10, v0

    if-lt v8, v10, :cond_7

    if-nez v5, :cond_6

    .line 19
    invoke-static {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 20
    :cond_6
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v0

    const/4 v8, 0x0

    :cond_7
    add-int/lit8 v10, v8, 0x1

    .line 21
    aput-char v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_8

    move v8, v10

    goto :goto_4

    :cond_8
    move v8, v10

    goto :goto_1

    :cond_9
    :goto_4
    if-nez v5, :cond_a

    .line 22
    invoke-static {v0, v4, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    return-object p1

    .line 23
    :cond_a
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 24
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object p1

    return-object p1
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v4, v0, :cond_12

    .line 14
    .line 15
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    const/16 v8, 0x7f

    .line 24
    .line 25
    if-gt v7, v8, :cond_4

    .line 26
    .line 27
    aget v9, v6, v7

    .line 28
    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    array-length v8, v1

    .line 33
    if-lt v5, v8, :cond_2

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v5, 0x0

    .line 46
    :cond_2
    add-int/lit8 v8, v5, 0x1

    .line 47
    .line 48
    int-to-byte v7, v7

    .line 49
    aput-byte v7, v1, v5

    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    if-lt v4, v0, :cond_3

    .line 54
    .line 55
    move v5, v8

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_3
    move v5, v8

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 61
    .line 62
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_5
    array-length v7, v1

    .line 67
    if-lt v5, v7, :cond_6

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v5, 0x0

    .line 74
    :cond_6
    add-int/lit8 v7, v4, 0x1

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-gt v4, v8, :cond_7

    .line 81
    .line 82
    aget v1, v6, v4

    .line 83
    .line 84
    invoke-direct {p0, v4, v1, v3, v5}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    move v4, v7

    .line 93
    goto :goto_0

    .line 94
    :cond_7
    const/16 v6, 0x7ff

    .line 95
    .line 96
    if-gt v4, v6, :cond_8

    .line 97
    .line 98
    add-int/lit8 v6, v5, 0x1

    .line 99
    .line 100
    shr-int/lit8 v8, v4, 0x6

    .line 101
    .line 102
    or-int/lit16 v8, v8, 0xc0

    .line 103
    .line 104
    int-to-byte v8, v8

    .line 105
    aput-byte v8, v1, v5

    .line 106
    .line 107
    and-int/lit8 v4, v4, 0x3f

    .line 108
    .line 109
    or-int/lit16 v4, v4, 0x80

    .line 110
    .line 111
    :goto_3
    move v5, v4

    .line 112
    move v4, v7

    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_8
    const v6, 0xd800

    .line 116
    .line 117
    .line 118
    if-lt v4, v6, :cond_f

    .line 119
    .line 120
    const v6, 0xdfff

    .line 121
    .line 122
    .line 123
    if-le v4, v6, :cond_9

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_9
    const v6, 0xdbff

    .line 127
    .line 128
    .line 129
    if-le v4, v6, :cond_a

    .line 130
    .line 131
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 132
    .line 133
    .line 134
    :cond_a
    if-lt v7, v0, :cond_b

    .line 135
    .line 136
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 137
    .line 138
    .line 139
    :cond_b
    add-int/lit8 v6, v7, 0x1

    .line 140
    .line 141
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-static {v4, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    const v7, 0x10ffff

    .line 150
    .line 151
    .line 152
    if-le v4, v7, :cond_c

    .line 153
    .line 154
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 155
    .line 156
    .line 157
    :cond_c
    add-int/lit8 v7, v5, 0x1

    .line 158
    .line 159
    shr-int/lit8 v8, v4, 0x12

    .line 160
    .line 161
    or-int/lit16 v8, v8, 0xf0

    .line 162
    .line 163
    int-to-byte v8, v8

    .line 164
    aput-byte v8, v1, v5

    .line 165
    .line 166
    array-length v5, v1

    .line 167
    if-lt v7, v5, :cond_d

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const/4 v7, 0x0

    .line 174
    :cond_d
    add-int/lit8 v5, v7, 0x1

    .line 175
    .line 176
    shr-int/lit8 v8, v4, 0xc

    .line 177
    .line 178
    and-int/lit8 v8, v8, 0x3f

    .line 179
    .line 180
    or-int/lit16 v8, v8, 0x80

    .line 181
    .line 182
    int-to-byte v8, v8

    .line 183
    aput-byte v8, v1, v7

    .line 184
    .line 185
    array-length v7, v1

    .line 186
    if-lt v5, v7, :cond_e

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const/4 v5, 0x0

    .line 193
    :cond_e
    add-int/lit8 v7, v5, 0x1

    .line 194
    .line 195
    shr-int/lit8 v8, v4, 0x6

    .line 196
    .line 197
    and-int/lit8 v8, v8, 0x3f

    .line 198
    .line 199
    or-int/lit16 v8, v8, 0x80

    .line 200
    .line 201
    int-to-byte v8, v8

    .line 202
    aput-byte v8, v1, v5

    .line 203
    .line 204
    and-int/lit8 v4, v4, 0x3f

    .line 205
    .line 206
    or-int/lit16 v4, v4, 0x80

    .line 207
    .line 208
    move v5, v4

    .line 209
    move v4, v6

    .line 210
    move v6, v7

    .line 211
    goto :goto_5

    .line 212
    :cond_f
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .line 213
    .line 214
    shr-int/lit8 v8, v4, 0xc

    .line 215
    .line 216
    or-int/lit16 v8, v8, 0xe0

    .line 217
    .line 218
    int-to-byte v8, v8

    .line 219
    aput-byte v8, v1, v5

    .line 220
    .line 221
    array-length v5, v1

    .line 222
    if-lt v6, v5, :cond_10

    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const/4 v6, 0x0

    .line 229
    :cond_10
    add-int/lit8 v5, v6, 0x1

    .line 230
    .line 231
    shr-int/lit8 v8, v4, 0x6

    .line 232
    .line 233
    and-int/lit8 v8, v8, 0x3f

    .line 234
    .line 235
    or-int/lit16 v8, v8, 0x80

    .line 236
    .line 237
    int-to-byte v8, v8

    .line 238
    aput-byte v8, v1, v6

    .line 239
    .line 240
    and-int/lit8 v4, v4, 0x3f

    .line 241
    .line 242
    or-int/lit16 v4, v4, 0x80

    .line 243
    .line 244
    move v6, v5

    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :goto_5
    array-length v7, v1

    .line 248
    if-lt v6, v7, :cond_11

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const/4 v6, 0x0

    .line 255
    :cond_11
    add-int/lit8 v7, v6, 0x1

    .line 256
    .line 257
    int-to-byte v5, v5

    .line 258
    aput-byte v5, v1, v6

    .line 259
    .line 260
    move v5, v7

    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_12
    :goto_6
    if-nez v3, :cond_13

    .line 264
    .line 265
    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    return-object p1

    .line 270
    :cond_13
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    return-object p1
.end method
