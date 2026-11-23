.class public Lnet/lingala/zip4j/crypto/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/d;


# instance fields
.field private a:[C

.field private b:I

.field private c:Lnc/a;

.field private d:Lnet/lingala/zip4j/crypto/PBKDF2/b;

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:Z

.field private n:I

.field private o:I

.field private p:[B

.field private q:[B


# direct methods
.method public constructor <init>([CI)V
    .locals 3
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
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lnet/lingala/zip4j/crypto/b;->h:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lnet/lingala/zip4j/crypto/b;->n:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lnet/lingala/zip4j/crypto/b;->o:I

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    array-length v2, p1

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    if-eq p2, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 25
    .line 26
    const-string p2, "Invalid key strength in AES encrypter constructor"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/b;->a:[C

    .line 33
    .line 34
    iput p2, p0, Lnet/lingala/zip4j/crypto/b;->b:I

    .line 35
    .line 36
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/b;->m:Z

    .line 37
    .line 38
    const/16 p1, 0x10

    .line 39
    .line 40
    new-array p2, p1, [B

    .line 41
    .line 42
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/b;->q:[B

    .line 43
    .line 44
    new-array p1, p1, [B

    .line 45
    .line 46
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/b;->p:[B

    .line 47
    .line 48
    invoke-direct {p0}, Lnet/lingala/zip4j/crypto/b;->j()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 53
    .line 54
    const-string p2, "input password is empty or null in AES encrypter constructor"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method private c([B[C)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 2
    .line 3
    const-string v1, "HmacSHA1"

    .line 4
    .line 5
    const-string v2, "ISO-8859-1"

    .line 6
    .line 7
    const/16 v3, 0x3e8

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/e;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/c;

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/e;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lnet/lingala/zip4j/crypto/b;->e:I

    .line 18
    .line 19
    iget v1, p0, Lnet/lingala/zip4j/crypto/b;->f:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->g([CI)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method private static d(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eq p0, v1, :cond_1

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    .line 12
    const-string v0, "invalid salt size, cannot generate salt"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 19
    if-ne p0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    :goto_1
    if-ne p0, v0, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    :cond_3
    new-array p0, p0, [B

    .line 28
    .line 29
    :goto_2
    if-lt v2, v1, :cond_4

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    new-instance v0, Ljava/util/Random;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    mul-int/lit8 v3, v2, 0x4

    .line 42
    .line 43
    add-int/lit8 v4, v3, 0x0

    .line 44
    .line 45
    shr-int/lit8 v5, v0, 0x18

    .line 46
    .line 47
    int-to-byte v5, v5

    .line 48
    aput-byte v5, p0, v4

    .line 49
    .line 50
    add-int/lit8 v4, v3, 0x1

    .line 51
    .line 52
    shr-int/lit8 v5, v0, 0x10

    .line 53
    .line 54
    int-to-byte v5, v5

    .line 55
    aput-byte v5, p0, v4

    .line 56
    .line 57
    add-int/lit8 v4, v3, 0x2

    .line 58
    .line 59
    shr-int/lit8 v5, v0, 0x8

    .line 60
    .line 61
    int-to-byte v5, v5

    .line 62
    aput-byte v5, p0, v4

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x3

    .line 65
    .line 66
    int-to-byte v0, v0

    .line 67
    aput-byte v0, p0, v3

    .line 68
    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_2
.end method

.method private j()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x20

    .line 12
    .line 13
    iput v0, p0, Lnet/lingala/zip4j/crypto/b;->e:I

    .line 14
    .line 15
    iput v0, p0, Lnet/lingala/zip4j/crypto/b;->f:I

    .line 16
    .line 17
    iput v2, p0, Lnet/lingala/zip4j/crypto/b;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    .line 22
    const-string v1, "invalid aes key strength, cannot determine key sizes"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/b;->e:I

    .line 29
    .line 30
    iput v2, p0, Lnet/lingala/zip4j/crypto/b;->f:I

    .line 31
    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    iput v0, p0, Lnet/lingala/zip4j/crypto/b;->g:I

    .line 35
    .line 36
    :goto_0
    iget v0, p0, Lnet/lingala/zip4j/crypto/b;->g:I

    .line 37
    .line 38
    invoke-static {v0}, Lnet/lingala/zip4j/crypto/b;->d(I)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/b;->l:[B

    .line 43
    .line 44
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/b;->a:[C

    .line 45
    .line 46
    invoke-direct {p0, v0, v1}, Lnet/lingala/zip4j/crypto/b;->c([B[C)[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    array-length v1, v0

    .line 53
    iget v2, p0, Lnet/lingala/zip4j/crypto/b;->e:I

    .line 54
    .line 55
    iget v3, p0, Lnet/lingala/zip4j/crypto/b;->f:I

    .line 56
    .line 57
    add-int v4, v2, v3

    .line 58
    .line 59
    const/4 v5, 0x2

    .line 60
    add-int/2addr v4, v5

    .line 61
    if-ne v1, v4, :cond_2

    .line 62
    .line 63
    new-array v1, v2, [B

    .line 64
    .line 65
    iput-object v1, p0, Lnet/lingala/zip4j/crypto/b;->i:[B

    .line 66
    .line 67
    new-array v3, v3, [B

    .line 68
    .line 69
    iput-object v3, p0, Lnet/lingala/zip4j/crypto/b;->j:[B

    .line 70
    .line 71
    new-array v3, v5, [B

    .line 72
    .line 73
    iput-object v3, p0, Lnet/lingala/zip4j/crypto/b;->k:[B

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lnet/lingala/zip4j/crypto/b;->e:I

    .line 80
    .line 81
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/b;->j:[B

    .line 82
    .line 83
    iget v4, p0, Lnet/lingala/zip4j/crypto/b;->f:I

    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lnet/lingala/zip4j/crypto/b;->e:I

    .line 89
    .line 90
    iget v2, p0, Lnet/lingala/zip4j/crypto/b;->f:I

    .line 91
    .line 92
    add-int/2addr v1, v2

    .line 93
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/b;->k:[B

    .line 94
    .line 95
    invoke-static {v0, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lnc/a;

    .line 99
    .line 100
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/b;->i:[B

    .line 101
    .line 102
    invoke-direct {v0, v1}, Lnc/a;-><init>([B)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/b;->c:Lnc/a;

    .line 106
    .line 107
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 108
    .line 109
    const-string v1, "HmacSHA1"

    .line 110
    .line 111
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/b;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/b;->d:Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 115
    .line 116
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/b;->j:[B

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->b([B)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 123
    .line 124
    const-string v1, "invalid key generated, cannot decrypt file"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method


# virtual methods
.method public a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/crypto/b;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    rem-int/lit8 v0, p3, 0x10

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/b;->m:Z

    .line 11
    .line 12
    :cond_0
    move v0, p2

    .line 13
    :goto_0
    add-int v2, p2, p3

    .line 14
    .line 15
    if-lt v0, v2, :cond_1

    .line 16
    .line 17
    return p3

    .line 18
    :cond_1
    add-int/lit8 v3, v0, 0x10

    .line 19
    .line 20
    const/16 v4, 0x10

    .line 21
    .line 22
    if-gt v3, v2, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    sub-int/2addr v2, v0

    .line 28
    :goto_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/b;->o:I

    .line 29
    .line 30
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/b;->p:[B

    .line 31
    .line 32
    iget v5, p0, Lnet/lingala/zip4j/crypto/b;->n:I

    .line 33
    .line 34
    invoke-static {v2, v5, v4}, Lnet/lingala/zip4j/util/f;->d([BII)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/b;->c:Lnc/a;

    .line 38
    .line 39
    iget-object v4, p0, Lnet/lingala/zip4j/crypto/b;->p:[B

    .line 40
    .line 41
    iget-object v5, p0, Lnet/lingala/zip4j/crypto/b;->q:[B

    .line 42
    .line 43
    invoke-virtual {v2, v4, v5}, Lnc/a;->e([B[B)I

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_2
    iget v4, p0, Lnet/lingala/zip4j/crypto/b;->o:I

    .line 48
    .line 49
    if-lt v2, v4, :cond_3

    .line 50
    .line 51
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/b;->d:Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 52
    .line 53
    invoke-virtual {v2, p1, v0, v4}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->update([BII)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lnet/lingala/zip4j/crypto/b;->n:I

    .line 57
    .line 58
    add-int/2addr v0, v1

    .line 59
    iput v0, p0, Lnet/lingala/zip4j/crypto/b;->n:I

    .line 60
    .line 61
    move v0, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    add-int v4, v0, v2

    .line 64
    .line 65
    aget-byte v5, p1, v4

    .line 66
    .line 67
    iget-object v6, p0, Lnet/lingala/zip4j/crypto/b;->q:[B

    .line 68
    .line 69
    aget-byte v6, v6, v2

    .line 70
    .line 71
    xor-int/2addr v5, v6

    .line 72
    int-to-byte v5, v5

    .line 73
    aput-byte v5, p1, v4

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 79
    .line 80
    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    .line 81
    .line 82
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    array-length v1, p1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/crypto/b;->a([BII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 11
    .line 12
    const-string v0, "input bytes are null, cannot perform AES encrpytion"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/b;->k:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public f()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/b;->d:Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/b;->d()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object v2
.end method

.method public g()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/b;->l:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/b;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public k([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/b;->k:[B

    .line 2
    .line 3
    return-void
.end method

.method public l([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/b;->l:[B

    .line 2
    .line 3
    return-void
.end method
