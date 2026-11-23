.class public Lcom/sdk/v/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B[BI)[B
    .locals 4

    if-eqz p1, :cond_7

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/sdk/v/a;->p:Lcom/sdk/v/a;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Lcom/sdk/v/f;

    invoke-direct {p1, v1}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    .line 3
    :cond_2
    array-length v3, p2

    if-lez v3, :cond_3

    array-length v3, p2

    rem-int/2addr v3, v1

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    sget-object v1, Lcom/sdk/v/a;->q:Lcom/sdk/v/a;

    if-eqz v0, :cond_5

    :goto_0
    :try_start_0
    const-string v0, "SM4/ECB/PKCS5Padding"

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "SM4"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/sdk/v/f;

    if-ne p3, v2, :cond_4

    sget-object p3, Lcom/sdk/v/a;->j:Lcom/sdk/v/a;

    invoke-direct {p2, p3, p1}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;Ljava/lang/Exception;)V

    throw p2

    :cond_4
    sget-object p3, Lcom/sdk/v/a;->k:Lcom/sdk/v/a;

    invoke-direct {p2, p3, p1}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;Ljava/lang/Exception;)V

    throw p2

    .line 4
    :cond_5
    new-instance p1, Lcom/sdk/v/f;

    invoke-direct {p1, v1}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    .line 5
    :cond_6
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->l:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->r:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1
.end method

.method public final a([B[B[BI)[B
    .locals 4

    .line 1
    if-eqz p1, :cond_7

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    array-length v2, p3

    if-ne p4, v0, :cond_1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->p:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_1
    if-lez v2, :cond_4

    array-length v2, p3

    rem-int/2addr v2, v1

    if-nez v2, :cond_4

    :goto_0
    array-length v2, p2

    if-ne v2, v1, :cond_3

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "SM4"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :try_start_0
    const-string p2, "SM4/CBC/PKCS5Padding"

    const-string v3, "BC"

    invoke-static {p2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, p4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/sdk/v/f;

    if-ne p4, v0, :cond_2

    sget-object p3, Lcom/sdk/v/a;->j:Lcom/sdk/v/a;

    invoke-direct {p2, p3, p1}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;Ljava/lang/Exception;)V

    throw p2

    :cond_2
    sget-object p3, Lcom/sdk/v/a;->k:Lcom/sdk/v/a;

    invoke-direct {p2, p3, p1}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;Ljava/lang/Exception;)V

    throw p2

    :cond_3
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->s:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->q:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->s:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->l:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/sdk/v/f;

    sget-object p2, Lcom/sdk/v/a;->r:Lcom/sdk/v/a;

    invoke-direct {p1, p2}, Lcom/sdk/v/f;-><init>(Lcom/sdk/v/a;)V

    throw p1
.end method
