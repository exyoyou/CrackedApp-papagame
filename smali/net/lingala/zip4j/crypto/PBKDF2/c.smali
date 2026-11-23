.class public Lnet/lingala/zip4j/crypto/PBKDF2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

.field protected b:Lnet/lingala/zip4j/crypto/PBKDF2/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 3
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/e;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/e;Lnet/lingala/zip4j/crypto/PBKDF2/f;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 9
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    return-void
.end method


# virtual methods
.method protected a([BII)V
    .locals 2

    .line 1
    add-int/lit8 v0, p2, 0x0

    .line 2
    .line 3
    const/high16 v1, 0x1000000

    .line 4
    .line 5
    div-int v1, p3, v1

    .line 6
    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p1, v0

    .line 9
    .line 10
    add-int/lit8 v0, p2, 0x1

    .line 11
    .line 12
    const/high16 v1, 0x10000

    .line 13
    .line 14
    div-int v1, p3, v1

    .line 15
    .line 16
    int-to-byte v1, v1

    .line 17
    aput-byte v1, p1, v0

    .line 18
    .line 19
    add-int/lit8 v0, p2, 0x2

    .line 20
    .line 21
    div-int/lit16 v1, p3, 0x100

    .line 22
    .line 23
    int-to-byte v1, v1

    .line 24
    aput-byte v1, p1, v0

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x3

    .line 27
    .line 28
    int-to-byte p3, p3

    .line 29
    aput-byte p3, p1, p2

    .line 30
    .line 31
    return-void
.end method

.method protected b(Lnet/lingala/zip4j/crypto/PBKDF2/f;[BII)[B
    .locals 17

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    new-array v2, v1, [B

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object/from16 v2, p2

    .line 10
    .line 11
    :goto_0
    invoke-interface/range {p1 .. p1}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->a()I

    .line 12
    .line 13
    .line 14
    move-result v10

    .line 15
    move-object/from16 v11, p0

    .line 16
    .line 17
    invoke-virtual {v11, v0, v10}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->e(II)I

    .line 18
    .line 19
    .line 20
    move-result v12

    .line 21
    add-int/lit8 v3, v12, -0x1

    .line 22
    .line 23
    mul-int v3, v3, v10

    .line 24
    .line 25
    sub-int v13, v0, v3

    .line 26
    .line 27
    mul-int v3, v12, v10

    .line 28
    .line 29
    new-array v14, v3, [B

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v15, 0x1

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    :goto_1
    if-le v15, v12, :cond_2

    .line 36
    .line 37
    if-ge v13, v10, :cond_1

    .line 38
    .line 39
    new-array v2, v0, [B

    .line 40
    .line 41
    invoke-static {v14, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_1
    return-object v14

    .line 46
    :cond_2
    move-object/from16 v3, p0

    .line 47
    .line 48
    move-object v4, v14

    .line 49
    move/from16 v5, v16

    .line 50
    .line 51
    move-object/from16 v6, p1

    .line 52
    .line 53
    move-object v7, v2

    .line 54
    move/from16 v8, p3

    .line 55
    .line 56
    move v9, v15

    .line 57
    invoke-virtual/range {v3 .. v9}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->c([BILnet/lingala/zip4j/crypto/PBKDF2/f;[BII)V

    .line 58
    .line 59
    .line 60
    add-int v16, v16, v10

    .line 61
    .line 62
    add-int/lit8 v15, v15, 0x1

    .line 63
    .line 64
    goto :goto_1
.end method

.method protected c([BILnet/lingala/zip4j/crypto/PBKDF2/f;[BII)V
    .locals 5

    .line 1
    invoke-interface {p3}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    array-length v2, p4

    .line 8
    add-int/lit8 v2, v2, 0x4

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    array-length v3, p4

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    array-length p4, p4

    .line 18
    invoke-virtual {p0, v2, p4, p6}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a([BII)V

    .line 19
    .line 20
    .line 21
    const/4 p4, 0x0

    .line 22
    :goto_0
    if-lt p4, p5, :cond_0

    .line 23
    .line 24
    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-interface {p3, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->c([B)[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->m([B[B)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p4, p4, 0x1

    .line 36
    .line 37
    goto :goto_0
.end method

.method protected d([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lnet/lingala/zip4j/crypto/PBKDF2/b;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 8
    .line 9
    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/b;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->b([B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected e(II)I
    .locals 1

    .line 1
    rem-int v0, p1, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    div-int/2addr p1, p2

    .line 9
    add-int/2addr p1, v0

    .line 10
    return p1
.end method

.method public f([C)[B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->g([CI)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public g([CI)[B
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnet/lingala/zip4j/util/f;->c([C)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->d([B)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 14
    .line 15
    invoke-interface {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/f;->a()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :cond_0
    iget-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 20
    .line 21
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 22
    .line 23
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e()[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 28
    .line 29
    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, p1, v0, v1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b(Lnet/lingala/zip4j/crypto/PBKDF2/f;[BII)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public h()Lnet/lingala/zip4j/crypto/PBKDF2/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lnet/lingala/zip4j/crypto/PBKDF2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Lnet/lingala/zip4j/crypto/PBKDF2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->a:Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 2
    .line 3
    return-void
.end method

.method public k(Lnet/lingala/zip4j/crypto/PBKDF2/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/c;->b:Lnet/lingala/zip4j/crypto/PBKDF2/f;

    .line 2
    .line 3
    return-void
.end method

.method public l([C)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->h()Lnet/lingala/zip4j/crypto/PBKDF2/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    array-length v2, v0

    .line 17
    invoke-virtual {p0, p1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/c;->g([CI)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    array-length v2, p1

    .line 24
    array-length v3, v0

    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_0
    array-length v3, p1

    .line 30
    if-lt v2, v3, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_2
    aget-byte v3, p1, v2

    .line 35
    .line 36
    aget-byte v4, v0, v2

    .line 37
    .line 38
    if-eq v3, v4, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    :goto_1
    return v1
.end method

.method protected m([B[B)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-lt v0, v1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    aget-byte v1, p1, v0

    .line 7
    .line 8
    aget-byte v2, p2, v0

    .line 9
    .line 10
    xor-int/2addr v1, v2

    .line 11
    int-to-byte v1, v1

    .line 12
    aput-byte v1, p1, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0
.end method
