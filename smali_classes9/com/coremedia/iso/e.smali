.class public Lcom/coremedia/iso/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/coremedia/iso/e;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
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

.method public static a(Ljava/lang/String;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    add-int/lit8 v2, v1, 0x2

    .line 19
    .line 20
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v3, 0x10

    .line 25
    .line 26
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 31
    .line 32
    .line 33
    move v1, v2

    .line 34
    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/coremedia/iso/e;->c([BI)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c([BI)Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    shl-int/lit8 v1, v0, 0x1

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    div-int v3, v0, p1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    :goto_0
    add-int/2addr v1, v3

    .line 12
    new-array v1, v1, [C

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_1
    if-lt v2, v0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    if-lez p1, :cond_2

    .line 24
    .line 25
    rem-int v4, v2, p1

    .line 26
    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    add-int/lit8 v4, v3, 0x1

    .line 32
    .line 33
    const/16 v5, 0x2d

    .line 34
    .line 35
    aput-char v5, v1, v3

    .line 36
    .line 37
    move v3, v4

    .line 38
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .line 39
    .line 40
    sget-object v5, Lcom/coremedia/iso/e;->a:[C

    .line 41
    .line 42
    aget-byte v6, p0, v2

    .line 43
    .line 44
    and-int/lit16 v7, v6, 0xf0

    .line 45
    .line 46
    ushr-int/lit8 v7, v7, 0x4

    .line 47
    .line 48
    aget-char v7, v5, v7

    .line 49
    .line 50
    aput-char v7, v1, v3

    .line 51
    .line 52
    add-int/lit8 v3, v4, 0x1

    .line 53
    .line 54
    and-int/lit8 v6, v6, 0xf

    .line 55
    .line 56
    aget-char v5, v5, v6

    .line 57
    .line 58
    aput-char v5, v1, v4

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_1
.end method
