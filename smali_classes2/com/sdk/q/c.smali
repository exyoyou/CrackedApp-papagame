.class public Lcom/sdk/q/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sdk/q/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/v/b;->a([B)[B

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2
    sget-object v1, Lcom/sdk/v/b;->a:Lcom/sdk/v/c;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    array-length v2, p2

    if-eqz v2, :cond_3

    array-length v2, p1

    const/16 v3, 0x41

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v0

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/sdk/v/c;->a([B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Lorg/bouncycastle/crypto/engines/SM2Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/SM2Engine;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v2, p1, v4}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/bouncycastle/crypto/engines/SM2Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :try_start_1
    array-length p1, p2

    invoke-virtual {v1, p2, v0, p1}, Lorg/bouncycastle/crypto/engines/SM2Engine;->processBlock([BII)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    array-length p2, p1

    const/16 v1, 0x61

    if-lt p2, v1, :cond_0

    array-length p2, p1

    new-array p2, p2, [B

    invoke-static {p1, v0, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    const/16 v4, 0x20

    sub-int/2addr v2, v4

    invoke-static {p1, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v0, ""

    .line 6
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    :try_start_2
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->o:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1
    :try_end_2
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/sdk/v/f;

    sget-object v0, Lcom/sdk/v/a;->f:Lcom/sdk/v/a;

    invoke-direct {p2, v0, p1}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->u:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->m:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->v:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->t:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->l:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->l:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p3, p1, p2, v0}, Lcom/sdk/v/b;->b([B[B[BI)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string p3, ""

    .line 13
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/sdk/p/c;->a(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {p2, v0, p1, v1}, Lcom/sdk/v/b;->a([B[B[BI)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 32
    .line 33
    .line 34
    return-object p2
.end method
