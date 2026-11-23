.class public Lcom/join/mgps/Util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/o$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x100

.field private static final d:I = 0x3e


# instance fields
.field private final a:[B

.field private b:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "alphabet"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/Util/o;->a:[B

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/Util/o;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private a([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "sourceBase",
            "targetBase"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-direct {p0, v0, p2, p3}, Lcom/join/mgps/Util/o;->h(III)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    .line 10
    .line 11
    move-object v0, p1

    .line 12
    :goto_0
    array-length v2, v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-lez v2, :cond_3

    .line 15
    .line 16
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    array-length v4, v0

    .line 19
    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    :goto_1
    array-length v5, v0

    .line 24
    if-ge v3, v5, :cond_2

    .line 25
    .line 26
    aget-byte v5, v0, v3

    .line 27
    .line 28
    and-int/lit16 v5, v5, 0xff

    .line 29
    .line 30
    mul-int v4, v4, p2

    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    rem-int v4, v5, p3

    .line 34
    .line 35
    sub-int/2addr v5, v4

    .line 36
    div-int/2addr v5, p3

    .line 37
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-gtz v6, :cond_0

    .line 42
    .line 43
    if-lez v5, :cond_1

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 p2, 0x0

    .line 60
    :goto_2
    array-length p3, p1

    .line 61
    add-int/lit8 p3, p3, -0x1

    .line 62
    .line 63
    if-ge p2, p3, :cond_4

    .line 64
    .line 65
    aget-byte p3, p1, p2

    .line 66
    .line 67
    if-nez p3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p2, p2, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/o;->j([B)[B

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public static b()Lcom/join/mgps/Util/o;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/o;->c()Lcom/join/mgps/Util/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static c()Lcom/join/mgps/Util/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/o;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/Util/o$a;->a()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/Util/o;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static d()Lcom/join/mgps/Util/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/o;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/Util/o$a;->b()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/mgps/Util/o;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private e()V
    .locals 4

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iput-object v0, p0, Lcom/join/mgps/Util/o;->b:[B

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/Util/o;->a:[B

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/Util/o;->b:[B

    .line 14
    .line 15
    aget-byte v1, v1, v0

    .line 16
    .line 17
    and-int/lit16 v3, v0, 0xff

    .line 18
    .line 19
    int-to-byte v3, v3

    .line 20
    aput-byte v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private h(III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputLength",
            "sourceBase",
            "targetBase"
        }
    .end annotation

    .line 1
    int-to-double v0, p2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    int-to-double p2, p3

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    div-double/2addr v0, p2

    .line 12
    int-to-double p1, p1

    .line 13
    mul-double v0, v0, p1

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    double-to-int p1, p1

    .line 20
    return p1
.end method

.method private j([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arr"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    sub-int v3, v0, v2

    .line 8
    .line 9
    add-int/lit8 v3, v3, -0x1

    .line 10
    .line 11
    aget-byte v4, p1, v2

    .line 12
    .line 13
    aput-byte v4, v1, v3

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object v1
.end method

.method private k([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "indices",
            "dictionary"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [B

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
    aget-byte v2, p1, v1

    .line 9
    .line 10
    aget-byte v2, p2, v2

    .line 11
    .line 12
    aput-byte v2, v0, v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-object v0
.end method


# virtual methods
.method public f([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "encoded"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/o;->i([B)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/Util/o;->b:[B

    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/o;->k([B[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 v0, 0x3e

    .line 14
    .line 15
    const/16 v1, 0x100

    .line 16
    .line 17
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/Util/o;->a([BII)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Input is not encoded correctly"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public g([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const/16 v1, 0x3e

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/Util/o;->a([BII)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/Util/o;->a:[B

    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/Util/o;->k([B[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public i([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_5

    .line 8
    .line 9
    aget-byte v3, p1, v2

    .line 10
    .line 11
    const/16 v4, 0x30

    .line 12
    .line 13
    if-gt v4, v3, :cond_1

    .line 14
    .line 15
    const/16 v4, 0x39

    .line 16
    .line 17
    if-ge v4, v3, :cond_3

    .line 18
    .line 19
    :cond_1
    const/16 v4, 0x61

    .line 20
    .line 21
    if-gt v4, v3, :cond_2

    .line 22
    .line 23
    const/16 v4, 0x7a

    .line 24
    .line 25
    if-ge v4, v3, :cond_3

    .line 26
    .line 27
    :cond_2
    const/16 v4, 0x41

    .line 28
    .line 29
    if-gt v4, v3, :cond_4

    .line 30
    .line 31
    const/16 v4, 0x5a

    .line 32
    .line 33
    if-ge v4, v3, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    :goto_1
    return v0

    .line 40
    :cond_5
    const/4 p1, 0x1

    .line 41
    return p1
.end method
