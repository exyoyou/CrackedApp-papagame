.class public Lcom/byazt/ke/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gs/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d3,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/gs/c<",
        "Lcom/byazt/vb/tt;",
        ">;"
    }
.end annotation


# static fields
.field public static final tt:Ljava/text/SimpleDateFormat;


# instance fields
.field public final c:Z

.field public uj:Lcom/byazt/vb/n;

.field public final ve:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/ke/c;->tt:Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "x-pglcypher"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/ke/c;->ve:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/ke/c;->tt()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ke/c;->c:Z

    .line 13
    .line 14
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method private c([BLjava/util/Map;Ljava/lang/String;)Lcom/byazt/lph/tt;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/byazt/lph/tt;"
        }
    .end annotation

    const-string v0, "error"

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Lcom/byazt/vb/x;->n()Lcom/byazt/gs/a;

    move-result-object v3

    .line 41
    invoke-interface {v2}, Lcom/byazt/vb/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/byazt/gs/a;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Lcom/byazt/gs/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v3, p3, p1}, Lcom/byazt/gs/a;->c(Ljava/lang/String;[B)V

    const-string v2, "User-Agent"

    .line 45
    invoke-interface {v1}, Lcom/byazt/vb/uj;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/byazt/gs/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {v3}, Lcom/byazt/gs/a;->c()Lcom/byazt/gs/n;

    move-result-object v1

    if-nez v1, :cond_1

    .line 47
    new-instance p1, Lcom/byazt/lph/tt;

    const/4 v3, 0x0

    const/16 v4, 0x1fe

    const-string v5, "RSP IS NULL"

    const/4 v6, 0x0

    const-string v7, "error"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/byazt/lph/tt;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    return-object p1

    .line 48
    :cond_1
    invoke-interface {v1}, Lcom/byazt/gs/n;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/byazt/gs/n;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    new-instance v2, Lorg/json/JSONObject;

    invoke-interface {v1}, Lcom/byazt/gs/n;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/byazt/ke/c;->ve(Lorg/json/JSONObject;)Z

    move-result v4

    .line 51
    invoke-direct {p0, v2}, Lcom/byazt/ke/c;->n(Lorg/json/JSONObject;)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 52
    :goto_1
    invoke-interface {v1}, Lcom/byazt/gs/n;->ve()I

    move-result v5

    .line 53
    invoke-interface {v1}, Lcom/byazt/gs/n;->n()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 54
    invoke-interface {v1}, Lcom/byazt/gs/n;->n()Ljava/util/Map;

    move-result-object v6

    const-string v7, "x-tt-logid"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    :cond_3
    const/4 v6, 0x1

    if-nez v4, :cond_4

    const/16 v7, 0xc8

    if-ne v5, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 55
    :goto_2
    invoke-interface {v1}, Lcom/byazt/gs/n;->uj()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    const-string v1, "DEFAULT OK"

    :cond_6
    if-eqz v2, :cond_7

    const-string v1, "RSP FAIL"

    move-object v4, v1

    move v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    move v2, v4

    move v3, v5

    move v5, v7

    move-object v4, v1

    .line 57
    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ke/c;->tt([BLjava/util/Map;Ljava/lang/String;)V

    .line 58
    new-instance p1, Lcom/byazt/lph/tt;

    move-object v1, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/lph/tt;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    move-object v5, v0

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "uploadEvent error"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object p3

    const-string v0, "NetApiImpl"

    invoke-static {v0, p2, p3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 60
    new-instance p2, Lcom/byazt/lph/tt;

    const/4 v1, 0x0

    const/16 v2, 0x1ff

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/byazt/lph/tt;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    return-object p2
.end method

.method private c()Lcom/byazt/vb/n;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ke/c;->uj:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    const-string v0, "csj"

    .line 3
    invoke-static {v0}, Lcom/byazt/epi/c;->tt(Ljava/lang/String;)Lcom/byazt/vb/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/vb/sp;->tt()Lcom/byazt/vb/n;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ke/c;->uj:Lcom/byazt/vb/n;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ke/c;->uj:Lcom/byazt/vb/n;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/ke/c;)Lcom/byazt/vb/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object p0

    return-object p0
.end method

.method private c(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    const-string v1, "Content-Encoding"

    const-string v2, "union_sdk_encode"

    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-pglcypher"

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "Content-Type"

    .line 36
    invoke-direct {p0, p1}, Lcom/byazt/ke/c;->tt(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/byazt/ke/c;->ve()Ljava/security/PublicKey;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 63
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    .line 64
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "Sha1withRSA"

    .line 66
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    const-string p1, "UTF-8"

    .line 69
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method private n(Lorg/json/JSONObject;)I
    .locals 9

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/16 v2, 0x200

    .line 8
    .line 9
    :try_start_0
    const-string v3, "s_sig_ts"

    .line 10
    .line 11
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x5

    .line 23
    if-ge v3, v4, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v3}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Lcom/byazt/vb/x;->i()Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v5, ""

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const-string v5, "device_id"

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p0, v0, p1}, Lcom/byazt/ke/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    const-wide/16 v7, 0x3e8

    .line 91
    .line 92
    div-long/2addr v5, v7

    .line 93
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    sub-long/2addr v5, v3

    .line 102
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const-wide/16 v4, 0x12c

    .line 107
    .line 108
    cmp-long p1, v2, v4

    .line 109
    .line 110
    if-lez p1, :cond_4

    .line 111
    .line 112
    const/16 v1, 0x201

    .line 113
    .line 114
    :cond_4
    move v2, v1

    .line 115
    :catchall_0
    :cond_5
    return v2
.end method

.method private tt(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const-string p1, "application/octet-stream"

    return-object p1

    :cond_0
    const-string p1, "application/octet-stream;tt-data=a"

    return-object p1
.end method

.method private tt([BLjava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 30
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 33
    :cond_2
    invoke-interface {v0}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 34
    :cond_3
    invoke-interface {v1}, Lcom/byazt/vb/x;->c()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 35
    :cond_4
    invoke-interface {v1}, Lcom/byazt/vb/x;->n()Lcom/byazt/gs/a;

    move-result-object v2

    .line 36
    invoke-interface {v1}, Lcom/byazt/vb/x;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/byazt/gs/a;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 37
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/byazt/gs/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_5
    invoke-interface {v2, p3, p1}, Lcom/byazt/gs/a;->c(Ljava/lang/String;[B)V

    const-string p1, "User-Agent"

    .line 40
    invoke-interface {v0}, Lcom/byazt/vb/uj;->n()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Lcom/byazt/gs/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/byazt/ke/c$1;

    invoke-direct {p1, p0}, Lcom/byazt/ke/c$1;-><init>(Lcom/byazt/ke/c;)V

    invoke-interface {v2, p1}, Lcom/byazt/gs/a;->c(Lcom/byazt/gs/ve;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static tt()Z
    .locals 3

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static tt(Lorg/json/JSONObject;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private uj(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Content-Type"

    .line 7
    .line 8
    const-string v2, "application/json; charset=utf-8"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/byazt/ke/c;->a(Lorg/json/JSONObject;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string p1, "Content-Encoding"

    .line 20
    .line 21
    const-string v1, "union_sdk_encode"

    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object v0
.end method

.method private static ve()Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    .line 2
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 3
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKtjHB7PDkflFl5bX4x/25mE9x2/C6kd\n8wVgzXFiC67Jx+meptu1hL54XgnPnI+AvxXhEgN/+DZUmrRPdvB+UZECAwEAAQ=="

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 4
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/util/List;)Lcom/byazt/lph/tt;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;)",
            "Lcom/byazt/lph/tt;"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/byazt/vb/uj;->uj()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, ""

    const-string v5, "1streqid"

    const-string v6, "2ndreqid"

    move-object v12, v4

    const/4 v4, 0x0

    .line 11
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/byazt/vb/tt;

    .line 13
    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "show"

    .line 14
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    invoke-interface {v7}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v8, p0, Lcom/byazt/ke/c;->uj:Lcom/byazt/vb/n;

    invoke-static {v5, v8}, Lcom/byazt/ml/c;->c(Lorg/json/JSONObject;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_2

    .line 16
    iget-object v8, p0, Lcom/byazt/ke/c;->uj:Lcom/byazt/vb/n;

    invoke-static {v7, v8}, Lcom/byazt/ml/c;->a(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 17
    :cond_2
    iget-object v6, p0, Lcom/byazt/ke/c;->uj:Lcom/byazt/vb/n;

    invoke-static {v7, v6}, Lcom/byazt/ml/c;->a(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    :goto_1
    const/4 v8, 0x1

    move-object v12, v5

    move-object v5, v4

    const/4 v4, 0x1

    .line 18
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    invoke-interface {v0}, Lcom/byazt/vb/x;->da()I

    move-result p1

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 21
    invoke-virtual {p0, v3}, Lcom/byazt/ke/c;->tt(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 22
    iget-boolean v3, p0, Lcom/byazt/ke/c;->c:Z

    invoke-interface {v0, v1, v3}, Lcom/byazt/vb/x;->c(Ljava/util/List;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 23
    invoke-interface {v0, v1, p1}, Lcom/byazt/vb/x;->c(Lorg/json/JSONObject;I)[B

    move-result-object v3

    if-nez v3, :cond_5

    .line 24
    invoke-interface {v0, v1}, Lcom/byazt/vb/x;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/byazt/ke/c;->tt(Lorg/json/JSONObject;)[B

    move-result-object v3

    .line 26
    invoke-direct {p0, p1}, Lcom/byazt/ke/c;->uj(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "application/json; charset=utf-8"

    invoke-direct {p0, v3, p1, v0}, Lcom/byazt/ke/c;->c([BLjava/util/Map;Ljava/lang/String;)Lcom/byazt/lph/tt;

    move-result-object p1

    goto :goto_2

    .line 27
    :cond_5
    invoke-direct {p0, p1}, Lcom/byazt/ke/c;->c(I)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/byazt/ke/c;->tt(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v0, p1}, Lcom/byazt/ke/c;->c([BLjava/util/Map;Ljava/lang/String;)Lcom/byazt/lph/tt;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    .line 28
    array-length v2, v3

    move v11, v2

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    if-eqz p1, :cond_7

    .line 29
    iget-boolean v7, p1, Lcom/byazt/lph/tt;->c:Z

    iget v8, p1, Lcom/byazt/lph/tt;->tt:I

    iget-object v9, p1, Lcom/byazt/lph/tt;->ve:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v7 .. v12}, Lcom/byazt/ml/c;->c(ZILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    return-object p1

    :cond_8
    return-object v1

    :catchall_0
    move-exception p1

    move v2, v4

    goto :goto_5

    :cond_9
    :goto_4
    return-object v1

    :catchall_1
    move-exception p1

    :goto_5
    :try_start_2
    const-string v0, "NetApiImpl"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uploadEvent error"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 31
    new-instance v0, Lcom/byazt/lph/tt;

    const/4 v5, 0x0

    const/16 v6, 0x1fd

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "error"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/byazt/lph/tt;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    :catchall_2
    move-exception p1

    .line 32
    throw p1

    :cond_a
    :goto_6
    return-object v1
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/lph/tt;
    .locals 11

    .line 70
    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 71
    invoke-interface {v0}, Lcom/byazt/vb/uj;->uj()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_9

    .line 72
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_5

    .line 73
    :cond_1
    invoke-interface {v0}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 74
    :cond_2
    invoke-interface {v2}, Lcom/byazt/vb/x;->n()Lcom/byazt/gs/a;

    move-result-object v1

    .line 75
    invoke-interface {v2}, Lcom/byazt/vb/x;->sp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/byazt/gs/a;->c(Ljava/lang/String;)V

    .line 76
    invoke-interface {v2}, Lcom/byazt/vb/x;->da()I

    move-result v3

    .line 77
    invoke-interface {v2, p1, v3}, Lcom/byazt/vb/x;->tt(Lorg/json/JSONObject;I)[B

    move-result-object v4

    if-nez v4, :cond_3

    .line 78
    invoke-interface {v2, p1}, Lcom/byazt/vb/x;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/byazt/gs/a;->tt(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-direct {p0, v3}, Lcom/byazt/ke/c;->tt(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v4}, Lcom/byazt/gs/a;->c(Ljava/lang/String;[B)V

    const-string p1, "x-pglcypher"

    .line 81
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/byazt/gs/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "User-Agent"

    .line 82
    invoke-interface {v0}, Lcom/byazt/vb/uj;->n()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/byazt/gs/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error unknown"

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-interface {v1}, Lcom/byazt/gs/a;->c()Lcom/byazt/gs/n;

    move-result-object v1

    if-nez v1, :cond_4

    .line 84
    new-instance v1, Lcom/byazt/lph/tt;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "ignore"

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/byazt/lph/tt;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    return-object v1

    .line 85
    :cond_4
    invoke-interface {v1}, Lcom/byazt/gs/n;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/byazt/gs/n;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-interface {v1}, Lcom/byazt/gs/n;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    const/4 v4, -0x1

    .line 87
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "data"

    const-string v5, ""

    .line 88
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x4e20

    const/4 v4, 0x1

    if-ne v3, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    const v5, 0xea65

    if-ne v3, v5, :cond_7

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :cond_7
    const/4 v4, 0x0

    .line 89
    :goto_2
    :try_start_1
    invoke-interface {v1}, Lcom/byazt/gs/n;->ve()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    invoke-interface {v1}, Lcom/byazt/gs/n;->c()Z

    move-result v3

    if-nez v3, :cond_8

    .line 91
    invoke-interface {v1}, Lcom/byazt/gs/n;->uj()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    move-object v8, p1

    move v7, v0

    move v6, v2

    goto :goto_4

    :catchall_0
    move v1, v0

    move v0, v2

    goto :goto_3

    :catchall_1
    move v0, v2

    const/4 v1, 0x0

    goto :goto_3

    :catchall_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    move-object v8, p1

    move v6, v0

    move v7, v1

    :goto_4
    move v9, v4

    .line 92
    new-instance p1, Lcom/byazt/lph/tt;

    const-string v10, "ignore"

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/byazt/lph/tt;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    return-object p1

    :cond_9
    :goto_5
    return-object v1
.end method

.method public tt(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation

    const-string v0, "label"

    const-string v1, "params"

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/vb/tt;

    .line 6
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-interface {v3}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "event"

    if-eqz v7, :cond_0

    .line 10
    :try_start_1
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    :cond_0
    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "event_ts"

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v9, "local_time_ms"

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "datetime"

    .line 14
    sget-object v10, Lcom/byazt/ke/c;->tt:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 16
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 17
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 19
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 20
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 21
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 22
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 23
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 24
    :cond_3
    :goto_2
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    new-instance v5, Lcom/byazt/fo/c;

    invoke-interface {v3}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/byazt/fo/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 26
    invoke-interface {v3}, Lcom/byazt/vb/tt;->uj()B

    move-result v4

    invoke-interface {v5, v4}, Lcom/byazt/vb/tt;->c(B)V

    .line 27
    invoke-interface {v3}, Lcom/byazt/vb/tt;->n()B

    move-result v3

    invoke-interface {v5, v3}, Lcom/byazt/vb/tt;->tt(B)V

    .line 28
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 29
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/byazt/ke/c;->c()Lcom/byazt/vb/n;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method public ve(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "message"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
