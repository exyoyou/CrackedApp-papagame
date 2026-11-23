.class public Lcom/papa/sim/statistic/http/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/papa/sim/statistic/http/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_3

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    if-gtz v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    array-length v3, p0

    .line 17
    if-ge v2, v3, :cond_2

    .line 18
    .line 19
    aget-byte v3, p0, v2

    .line 20
    .line 21
    and-int/lit16 v3, v3, 0xff

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x2

    .line 32
    if-ge v4, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "625202f9149e061d"

    .line 2
    .line 3
    const-string v1, "AES/ECB/NoPadding"

    .line 4
    .line 5
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v3, p0

    .line 18
    rem-int v4, v3, v2

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    rem-int v4, v3, v2

    .line 23
    .line 24
    sub-int/2addr v2, v4

    .line 25
    add-int/2addr v3, v2

    .line 26
    :cond_0
    new-array v2, v3, [B

    .line 27
    .line 28
    array-length v3, p0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "AES"

    .line 40
    .line 41
    invoke-direct {p0, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {v1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/papa/sim/statistic/http/c;->a([B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    const-string p0, ""

    .line 62
    .line 63
    return-object p0
.end method

.method public static c()Lcom/papa/sim/statistic/http/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/http/c;->a:Lcom/papa/sim/statistic/http/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/sim/statistic/http/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/papa/sim/statistic/http/c;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/sim/statistic/http/c;->a:Lcom/papa/sim/statistic/http/c;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/papa/sim/statistic/http/c;->a:Lcom/papa/sim/statistic/http/c;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/a;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v2, "file"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v4, v1, [Lcom/papa/sim/statistic/http/b$n;

    .line 9
    .line 10
    new-instance v5, Lcom/papa/sim/statistic/http/c$a;

    .line 11
    .line 12
    invoke-direct {v5, p0, p3}, Lcom/papa/sim/statistic/http/c$a;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    move-object v1, p1

    .line 20
    move-object v3, p2

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/http/b$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/papa/sim/statistic/http/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/papa/sim/statistic/http/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x6

    .line 2
    new-array p1, p1, [Lcom/papa/sim/statistic/http/b$n;

    .line 3
    .line 4
    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    .line 5
    .line 6
    const-string v1, "device_id"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput-object v0, p1, v1

    .line 15
    .line 16
    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    .line 17
    .line 18
    const-string v1, "brand"

    .line 19
    .line 20
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v1, v3}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aput-object v0, p1, v1

    .line 27
    .line 28
    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    .line 29
    .line 30
    const-string v1, "model"

    .line 31
    .line 32
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v0, v1, v3}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    aput-object v0, p1, v1

    .line 39
    .line 40
    new-instance v0, Lcom/papa/sim/statistic/http/b$n;

    .line 41
    .line 42
    const-string v1, "data"

    .line 43
    .line 44
    invoke-direct {v0, v1, p4}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p4, 0x3

    .line 48
    aput-object v0, p1, p4

    .line 49
    .line 50
    new-instance p4, Lcom/papa/sim/statistic/http/b$n;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    const-string v0, "game_id"

    .line 68
    .line 69
    invoke-direct {p4, v0, p3}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p3, 0x4

    .line 73
    aput-object p4, p1, p3

    .line 74
    .line 75
    new-instance p3, Lcom/papa/sim/statistic/http/b$n;

    .line 76
    .line 77
    new-instance p4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    const-string p5, "uid"

    .line 93
    .line 94
    invoke-direct {p3, p5, p4}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p4, 0x5

    .line 98
    aput-object p3, p1, p4

    .line 99
    .line 100
    new-instance p3, Lcom/papa/sim/statistic/http/c$e;

    .line 101
    .line 102
    invoke-direct {p3, p0, p6}, Lcom/papa/sim/statistic/http/c$e;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p2, p1, p3}, Lcom/papa/sim/statistic/http/b;->Y(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public f(Landroid/content/Context;)Z
    .locals 10

    .line 1
    const-string v0, "Papa_Stat_SharedPreferences"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "RequestHeaders"

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v2, Lcom/papa/sim/statistic/RequestHeaderBean;

    .line 27
    .line 28
    invoke-virtual {v0, p1, v2}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/papa/sim/statistic/RequestHeaderBean;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWufankey()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_ad()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_m()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_i()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_pm()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual/range {v2 .. v9}, Lcom/papa/sim/statistic/http/b;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWufankey()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/papa/sim/statistic/RequestHeaderBean;->getWf_a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    :cond_0
    return v1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/papa/sim/statistic/http/a<",
            "Lcom/papa/sim/statistic/StatResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b;->H()Lcom/papa/sim/statistic/http/b$o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/papa/sim/statistic/http/c$d;

    .line 10
    .line 11
    invoke-direct {v1, p0, p2, p3}, Lcom/papa/sim/statistic/http/c$d;-><init>(Lcom/papa/sim/statistic/http/c;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b$o;->n(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/a;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/papa/sim/statistic/http/a<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/papa/sim/statistic/StatRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/sim/statistic/u;->r()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "_"

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    aget-object v0, v0, v3

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    if-eqz p5, :cond_0

    .line 41
    .line 42
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p5

    .line 46
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/papa/sim/statistic/StatRequest;

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v6, "{\"uid\": \""

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Lcom/papa/sim/statistic/Data;->getUid()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v6, "\",\"game_id\":\""

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, "\",\"batch_id\":\""

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, "\",\"play_time\":\""

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/papa/sim/statistic/Ext;->getDuration()J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v4, "\"},"

    .line 128
    .line 129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v4, "{\"batch_id\":\""

    .line 146
    .line 147
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p3, "\",\"play_game_time_info\":["

    .line 154
    .line 155
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    sub-int/2addr p3, v3

    .line 163
    invoke-virtual {v1, v2, p3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p3, "]}"

    .line 171
    .line 172
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    invoke-static {p3}, Lcom/papa/sim/statistic/http/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    new-instance p5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v1, ""

    .line 189
    .line 190
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, "gzRN53VWRF9BYUXomg2014"

    .line 194
    .line 195
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p5

    .line 202
    invoke-static {p5}, Lcom/papa/sim/statistic/l;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p5

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v3, "{\"version\": \""

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v0, "\",\"deviceid\": \""

    .line 220
    .line 221
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, "\",\"sign\": \""

    .line 228
    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p5, "\",\"messages\": {\"args\": {\"info\":\""

    .line 236
    .line 237
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p3, "\"}}}"

    .line 244
    .line 245
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    const-string v3, ""

    .line 253
    .line 254
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 255
    .line 256
    .line 257
    move-result-object p5

    .line 258
    invoke-virtual {p5}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p5

    .line 262
    :try_start_0
    invoke-static {p5, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    :goto_1
    move-object v4, p5

    .line 272
    invoke-static {p1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 277
    .line 278
    .line 279
    move-result-object p5

    .line 280
    invoke-virtual {p5, p1}, Lcom/papa/sim/statistic/u;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p5

    .line 284
    :try_start_1
    invoke-static {p5, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    goto :goto_2

    .line 289
    :catch_1
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    .line 292
    .line 293
    :goto_2
    move-object v5, p5

    .line 294
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lcom/papa/sim/statistic/u;->g()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    :try_start_2
    invoke-static {p1, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    goto :goto_3

    .line 307
    :catch_2
    move-exception p5

    .line 308
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    .line 310
    .line 311
    :goto_3
    move-object v7, p1

    .line 312
    invoke-static {}, Lcom/papa/sim/statistic/i;->e()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    :try_start_3
    invoke-static {p1, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 320
    goto :goto_4

    .line 321
    :catch_3
    move-exception p5

    .line 322
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 323
    .line 324
    .line 325
    :goto_4
    move-object v8, p1

    .line 326
    :try_start_4
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {p1, v1}, Lcom/papa/sim/statistic/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 332
    goto :goto_5

    .line 333
    :catch_4
    move-exception p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    .line 336
    .line 337
    :goto_5
    move-object v9, v1

    .line 338
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->G()Lcom/papa/sim/statistic/http/b;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual/range {v2 .. v9}, Lcom/papa/sim/statistic/http/b;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    new-instance p1, Lcom/papa/sim/statistic/http/c$f;

    .line 346
    .line 347
    invoke-direct {p1, p0, p4}, Lcom/papa/sim/statistic/http/c$f;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 348
    .line 349
    .line 350
    invoke-static {p2, p3, p1}, Lcom/papa/sim/statistic/http/b;->U(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V

    .line 351
    .line 352
    .line 353
    return-void
.end method

.method public i(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/papa/sim/statistic/JoyStickConfig;",
            "Lcom/papa/sim/statistic/http/a<",
            "Lcom/papa/sim/statistic/GameWorldResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfigTmp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfigTmp;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUid(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setDevice_id(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/papa/sim/statistic/u;->p()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setVer(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_mac(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_name(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUpload_time(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lcom/papa/sim/statistic/q;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v6, Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getFile()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    sget-object v4, Lcom/papa/sim/statistic/s;->n:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, "/v14/user/configure/game_pad_cfg"

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const-string v5, "file"

    .line 132
    .line 133
    const/4 v1, 0x7

    .line 134
    new-array v7, v1, [Lcom/papa/sim/statistic/http/b$n;

    .line 135
    .line 136
    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    .line 137
    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const-string v9, "uid"

    .line 158
    .line 159
    invoke-direct {v1, v9, v8}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    aput-object v1, v7, v8

    .line 164
    .line 165
    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    .line 166
    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/papa/sim/statistic/u;->p()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string v8, "ver"

    .line 191
    .line 192
    invoke-direct {v1, v8, p1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 p1, 0x1

    .line 196
    aput-object v1, v7, p1

    .line 197
    .line 198
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 199
    .line 200
    const-string v1, "gamepad_mac"

    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-direct {p1, v1, v8}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const/4 v1, 0x2

    .line 210
    aput-object p1, v7, v1

    .line 211
    .line 212
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 213
    .line 214
    const-string v1, "gamepad_name"

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-direct {p1, v1, v8}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v1, 0x3

    .line 224
    aput-object p1, v7, v1

    .line 225
    .line 226
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    .line 234
    .line 235
    .line 236
    move-result-wide v8

    .line 237
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    const-string v1, "upload_time"

    .line 248
    .line 249
    invoke-direct {p1, v1, p2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const/4 p2, 0x4

    .line 253
    aput-object p1, v7, p2

    .line 254
    .line 255
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 256
    .line 257
    const-string p2, "device_id"

    .line 258
    .line 259
    invoke-direct {p1, p2, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const/4 p2, 0x5

    .line 263
    aput-object p1, v7, p2

    .line 264
    .line 265
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 266
    .line 267
    const-string p2, "sign"

    .line 268
    .line 269
    invoke-direct {p1, p2, v0}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const/4 p2, 0x6

    .line 273
    aput-object p1, v7, p2

    .line 274
    .line 275
    new-instance v8, Lcom/papa/sim/statistic/http/c$b;

    .line 276
    .line 277
    invoke-direct {v8, p0, p3}, Lcom/papa/sim/statistic/http/c$b;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/http/b$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public j(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;Lcom/papa/sim/statistic/http/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/papa/sim/statistic/JoyStickConfig;",
            "Lcom/papa/sim/statistic/http/a<",
            "Lcom/papa/sim/statistic/GameWorldResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfigTmp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfigTmp;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUid(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setDevice_id(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/papa/sim/statistic/u;->p()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setVer(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_mac(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setGamepad_name(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfigTmp;->setUpload_time(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lcom/papa/sim/statistic/q;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v6, Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getFile()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    sget-object v4, Lcom/papa/sim/statistic/s;->n:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v4, "/v14/user/configure/game_pad_info"

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const-string v5, "file"

    .line 132
    .line 133
    const/4 v1, 0x7

    .line 134
    new-array v7, v1, [Lcom/papa/sim/statistic/http/b$n;

    .line 135
    .line 136
    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    .line 137
    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUid()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const-string v9, "uid"

    .line 158
    .line 159
    invoke-direct {v1, v9, v8}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    aput-object v1, v7, v8

    .line 164
    .line 165
    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    .line 166
    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/papa/sim/statistic/u;->p()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string v8, "ver"

    .line 191
    .line 192
    invoke-direct {v1, v8, p1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 p1, 0x1

    .line 196
    aput-object v1, v7, p1

    .line 197
    .line 198
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 199
    .line 200
    const-string v1, "gamepad_mac"

    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_mac()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-direct {p1, v1, v8}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const/4 v1, 0x2

    .line 210
    aput-object p1, v7, v1

    .line 211
    .line 212
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 213
    .line 214
    const-string v1, "gamepad_name"

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getGamepad_name()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-direct {p1, v1, v8}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v1, 0x3

    .line 224
    aput-object p1, v7, v1

    .line 225
    .line 226
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    .line 234
    .line 235
    .line 236
    move-result-wide v8

    .line 237
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    const-string v1, "upload_time"

    .line 248
    .line 249
    invoke-direct {p1, v1, p2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const/4 p2, 0x4

    .line 253
    aput-object p1, v7, p2

    .line 254
    .line 255
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 256
    .line 257
    const-string p2, "device_id"

    .line 258
    .line 259
    invoke-direct {p1, p2, v2}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const/4 p2, 0x5

    .line 263
    aput-object p1, v7, p2

    .line 264
    .line 265
    new-instance p1, Lcom/papa/sim/statistic/http/b$n;

    .line 266
    .line 267
    const-string p2, "sign"

    .line 268
    .line 269
    invoke-direct {p1, p2, v0}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const/4 p2, 0x6

    .line 273
    aput-object p1, v7, p2

    .line 274
    .line 275
    new-instance v8, Lcom/papa/sim/statistic/http/c$c;

    .line 276
    .line 277
    invoke-direct {v8, p0, p3}, Lcom/papa/sim/statistic/http/c$c;-><init>(Lcom/papa/sim/statistic/http/c;Lcom/papa/sim/statistic/http/a;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-virtual/range {v3 .. v9}, Lcom/papa/sim/statistic/http/b$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    return-void
.end method
