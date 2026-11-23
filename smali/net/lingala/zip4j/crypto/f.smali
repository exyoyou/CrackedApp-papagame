.class public Lnet/lingala/zip4j/crypto/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/d;


# instance fields
.field private a:Lnc/b;

.field private b:[B


# direct methods
.method public constructor <init>([CI)V
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
    if-eqz p1, :cond_0

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lnc/b;

    .line 10
    .line 11
    invoke-direct {v0}, Lnc/b;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/f;->a:Lnc/b;

    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/f;->b:[B

    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/crypto/f;->f([CI)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 27
    .line 28
    const-string p2, "input password is null or empty in standard encrpyter constructor"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method private f([CI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/f;->a:Lnc/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnc/b;->c([C)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/crypto/f;->d(I)[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lnet/lingala/zip4j/crypto/f;->b:[B

    .line 18
    .line 19
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/f;->a:Lnc/b;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lnc/b;->c([C)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/f;->b:[B

    .line 25
    .line 26
    ushr-int/lit8 v1, p2, 0x18

    .line 27
    .line 28
    int-to-byte v1, v1

    .line 29
    const/16 v2, 0xb

    .line 30
    .line 31
    aput-byte v1, p1, v2

    .line 32
    .line 33
    ushr-int/lit8 p2, p2, 0x10

    .line 34
    .line 35
    int-to-byte p2, p2

    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    aput-byte p2, p1, v1

    .line 39
    .line 40
    array-length p2, p1

    .line 41
    if-lt p2, v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/crypto/f;->b([B)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 48
    .line 49
    const-string p2, "invalid header bytes generated, cannot perform standard encryption"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 56
    .line 57
    const-string p2, "input password is null or empty, cannot initialize standard encrypter"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-ltz p3, :cond_1

    .line 2
    .line 3
    move v0, p2

    .line 4
    :goto_0
    add-int v1, p2, p3

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    :try_start_0
    aget-byte v1, p1, v0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/crypto/f;->c(B)B

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    aput-byte v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p2

    .line 27
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 28
    .line 29
    const-string p2, "invalid length specified to decrpyt data"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public b([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    array-length v1, p1

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/crypto/f;->a([BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method protected c(B)B
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/f;->a:Lnc/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnc/b;->b()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 8
    .line 9
    xor-int/2addr v0, p1

    .line 10
    int-to-byte v0, v0

    .line 11
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/f;->a:Lnc/b;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lnc/b;->d(B)V

    .line 14
    .line 15
    .line 16
    return v0
.end method

.method protected d(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    new-array v0, p1, [B

    .line 4
    .line 5
    new-instance v1, Ljava/util/Random;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-lt v2, p1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/16 v3, 0x100

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    int-to-byte v3, v3

    .line 21
    invoke-virtual {p0, v3}, Lnet/lingala/zip4j/crypto/f;->c(B)B

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    aput-byte v3, v0, v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    .line 32
    const-string v0, "size is either 0 or less than 0, cannot generate header for standard encryptor"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/f;->b:[B

    .line 2
    .line 3
    return-object v0
.end method
