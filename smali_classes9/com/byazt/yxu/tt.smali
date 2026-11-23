.class public Lcom/byazt/yxu/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x758,
        0xd
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBALo9WqslO45/EjPWz6YMAu8PBgzV9Ujk3TSQSgebYdNPLJ2u0Y69eSj5DRk7uVplC+WkdEJGznST4OXTRZyKI9ECAwEAAQ=="

.field public static volatile tt:Lcom/byazt/yxu/tt; = null

.field public static ve:Ljava/lang/String; = "OutProcessEncryptUtils"


# instance fields
.field public n:Lcom/byazt/yxu/uj;

.field public uj:Ljava/security/PublicKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/yxu/tt;->uj:Ljava/security/PublicKey;

    .line 6
    .line 7
    return-void
.end method

.method public static c()Lcom/byazt/yxu/tt;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/yxu/tt;->tt:Lcom/byazt/yxu/tt;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/yxu/tt;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/yxu/tt;->tt:Lcom/byazt/yxu/tt;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/yxu/tt;

    invoke-direct {v1}, Lcom/byazt/yxu/tt;-><init>()V

    sput-object v1, Lcom/byazt/yxu/tt;->tt:Lcom/byazt/yxu/tt;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/yxu/tt;->tt:Lcom/byazt/yxu/tt;

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 0

    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/yxu/tt;->tt(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object p1

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/byazt/yxu/tt;->c(Ljava/security/PublicKey;[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/security/PublicKey;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 7
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 9
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method private tt(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yxu/tt;->uj:Ljava/security/PublicKey;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/yxu/tt;->ve(Landroid/content/Context;)Ljava/security/PublicKey;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/byazt/yxu/tt;->uj:Ljava/security/PublicKey;

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/byazt/yxu/tt;->uj:Ljava/security/PublicKey;

    .line 12
    .line 13
    return-object p1
.end method

.method private uj(Landroid/content/Context;)Lcom/byazt/yxu/uj;
    .locals 6

    .line 1
    new-instance v0, Lcom/byazt/yxu/uj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/yxu/uj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/yxu/ve;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/byazt/yxu/uj;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/yxu/ve;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/byazt/yxu/uj;->tt:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lcom/byazt/yxu/uj;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "#"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lcom/byazt/yxu/uj;->tt:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    const/4 v3, 0x2

    .line 44
    :goto_0
    if-ltz v3, :cond_1

    .line 45
    .line 46
    invoke-direct {p0, p1, v1}, Lcom/byazt/yxu/tt;->c(Landroid/content/Context;Ljava/lang/String;)[B

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    array-length v5, v4

    .line 53
    if-lez v5, :cond_0

    .line 54
    .line 55
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iput-object v4, v0, Lcom/byazt/yxu/uj;->ve:Ljava/lang/String;

    .line 60
    .line 61
    :cond_0
    iget-object v4, v0, Lcom/byazt/yxu/uj;->ve:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-object v0
.end method

.method private ve(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/byazt/yxu/tt;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 11
    .line 12
    .line 13
    const-string p1, "RSA"

    .line 14
    .line 15
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method


# virtual methods
.method public c(Landroid/content/Context;)Lcom/byazt/yxu/uj;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/yxu/tt;->n:Lcom/byazt/yxu/uj;

    if-eqz v0, :cond_0

    return-object v0

    .line 11
    :cond_0
    monitor-enter p0

    .line 12
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/yxu/tt;->uj(Landroid/content/Context;)Lcom/byazt/yxu/uj;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/yxu/tt;->n:Lcom/byazt/yxu/uj;

    .line 13
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
