.class public Lnet/lingala/zip4j/crypto/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/c;


# instance fields
.field private a:Lpc/h;

.field private b:[B

.field private c:Lnc/b;


# direct methods
.method public constructor <init>(Lpc/h;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/e;->b:[B

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/e;->a:Lpc/h;

    .line 12
    .line 13
    new-instance p1, Lnc/b;

    .line 14
    .line 15
    invoke-direct {p1}, Lnc/b;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnc/b;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lnet/lingala/zip4j/crypto/e;->c([B)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 25
    .line 26
    const-string p2, "one of more of the input parameters were null in StandardDecryptor"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method


# virtual methods
.method public a([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/crypto/e;->b([BII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    if-ltz p3, :cond_1

    .line 4
    .line 5
    move v0, p2

    .line 6
    :goto_0
    add-int v1, p2, p3

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    return p3

    .line 11
    :cond_0
    :try_start_0
    aget-byte v1, p1, v0

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnc/b;

    .line 16
    .line 17
    invoke-virtual {v2}, Lnc/b;->b()B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    xor-int/2addr v1, v2

    .line 22
    and-int/lit16 v1, v1, 0xff

    .line 23
    .line 24
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnc/b;

    .line 25
    .line 26
    int-to-byte v1, v1

    .line 27
    invoke-virtual {v2, v1}, Lnc/b;->d(B)V

    .line 28
    .line 29
    .line 30
    aput-byte v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p2

    .line 42
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 43
    .line 44
    const-string p2, "one of the input parameters were null in standard decrpyt data"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public c([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->a:Lpc/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpc/h;->h()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/e;->b:[B

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    aget-byte v3, v0, v2

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-byte v3, v3

    .line 15
    aput-byte v3, v1, v2

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    shr-int/lit8 v2, v0, 0x8

    .line 20
    .line 21
    and-int/lit16 v2, v2, 0xff

    .line 22
    .line 23
    int-to-byte v2, v2

    .line 24
    const/4 v3, 0x2

    .line 25
    aput-byte v2, v1, v3

    .line 26
    .line 27
    shr-int/lit8 v3, v0, 0x10

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    int-to-byte v3, v3

    .line 32
    const/4 v4, 0x1

    .line 33
    aput-byte v3, v1, v4

    .line 34
    .line 35
    shr-int/lit8 v0, v0, 0x18

    .line 36
    .line 37
    and-int/lit16 v0, v0, 0xff

    .line 38
    .line 39
    int-to-byte v0, v0

    .line 40
    const/4 v4, 0x0

    .line 41
    aput-byte v0, v1, v4

    .line 42
    .line 43
    if-gtz v2, :cond_3

    .line 44
    .line 45
    if-gtz v3, :cond_3

    .line 46
    .line 47
    if-gtz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->a:Lpc/h;

    .line 50
    .line 51
    invoke-virtual {v0}, Lpc/h;->v()[C

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->a:Lpc/h;

    .line 58
    .line 59
    invoke-virtual {v0}, Lpc/h;->v()[C

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    array-length v0, v0

    .line 64
    if-lez v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnc/b;

    .line 67
    .line 68
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/e;->a:Lpc/h;

    .line 69
    .line 70
    invoke-virtual {v1}, Lpc/h;->v()[C

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lnc/b;->c([C)V

    .line 75
    .line 76
    .line 77
    :try_start_0
    aget-byte v0, p1, v4

    .line 78
    .line 79
    :cond_0
    :goto_0
    const/16 v1, 0xc

    .line 80
    .line 81
    if-lt v4, v1, :cond_1

    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/e;->c:Lnc/b;

    .line 85
    .line 86
    invoke-virtual {v2}, Lnc/b;->b()B

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    xor-int/2addr v3, v0

    .line 91
    int-to-byte v3, v3

    .line 92
    invoke-virtual {v2, v3}, Lnc/b;->d(B)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    if-eq v4, v1, :cond_0

    .line 98
    .line 99
    aget-byte v0, p1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 104
    .line 105
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 110
    .line 111
    const-string v0, "Wrong password!"

    .line 112
    .line 113
    const/4 v1, 0x5

    .line 114
    invoke-direct {p1, v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v0, "Invalid CRC in File Header"

    .line 121
    .line 122
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method
