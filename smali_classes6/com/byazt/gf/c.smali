.class public Lcom/byazt/gf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x392,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/gf/c;


# instance fields
.field public n:Landroid/telephony/TelephonyManager;

.field public volatile tt:I

.field public volatile uj:I

.field public ve:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/gf/c;->ve:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/byazt/gf/c;->uj:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/gf/c;->n:Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "connectivity"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/gf/c;->ve:Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    const-string v1, "phone"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/byazt/gf/c;->n:Landroid/telephony/TelephonyManager;

    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lcom/byazt/gf/n;->c()Lcom/byazt/gf/n;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/byazt/gf/n;->ve()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide/16 v2, 0x3e8

    .line 47
    .line 48
    div-long/2addr v0, v2

    .line 49
    const-wide/16 v2, 0x3c

    .line 50
    .line 51
    div-long/2addr v0, v2

    .line 52
    div-long/2addr v0, v2

    .line 53
    long-to-int v1, v0

    .line 54
    invoke-virtual {p0, v1}, Lcom/byazt/gf/c;->c(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private a()I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/gf/c;->ve:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_8

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x17

    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x1

    .line 28
    if-lt v2, v3, :cond_5

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/gf/c;->ve:Landroid/net/ConnectivityManager;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/x;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_8

    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/gf/c;->ve:Landroid/net/ConnectivityManager;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_8

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v3, p0, Lcom/byazt/gf/c;->ve:Landroid/net/ConnectivityManager;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/byazt/gf/c;->c(Landroid/net/ConnectivityManager;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    return v4

    .line 65
    :cond_2
    if-eqz v1, :cond_3

    .line 66
    .line 67
    return v6

    .line 68
    :cond_3
    if-eqz v2, :cond_4

    .line 69
    .line 70
    return v5

    .line 71
    :cond_4
    return v0

    .line 72
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ne v1, v6, :cond_7

    .line 77
    .line 78
    iget-object v1, p0, Lcom/byazt/gf/c;->ve:Landroid/net/ConnectivityManager;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/byazt/gf/c;->c(Landroid/net/ConnectivityManager;)Z

    .line 81
    .line 82
    .line 83
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    return v4

    .line 87
    :cond_6
    return v6

    .line 88
    :cond_7
    if-nez v1, :cond_8

    .line 89
    .line 90
    return v5

    .line 91
    :catch_0
    :cond_8
    :goto_1
    return v0
.end method

.method public static c()Lcom/byazt/gf/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/gf/c;->c:Lcom/byazt/gf/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/gf/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/gf/c;->c:Lcom/byazt/gf/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/gf/c;

    invoke-direct {v1}, Lcom/byazt/gf/c;-><init>()V

    sput-object v1, Lcom/byazt/gf/c;->c:Lcom/byazt/gf/c;

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
    sget-object v0, Lcom/byazt/gf/c;->c:Lcom/byazt/gf/c;

    return-object v0
.end method

.method private static c(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const/4 v0, 0x0

    .line 7
    :try_start_0
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "getMobileDataEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/byazt/gf/c;->tt:I

    return-void

    :cond_0
    const/16 v0, 0xa8

    if-le p1, v0, :cond_1

    .line 11
    iput v0, p0, Lcom/byazt/gf/c;->tt:I

    return-void

    .line 12
    :cond_1
    iput p1, p0, Lcom/byazt/gf/c;->tt:I

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gf/c;->n:Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public tt()[I
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/gf/c;->tt:I

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/gf/tt;->c()Lcom/byazt/gf/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "sp_net"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/byazt/gf/tt;->c(Ljava/lang/String;)Ljava/util/LinkedList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lorg/json/JSONObject;

    .line 34
    .line 35
    const-string v3, "t"

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    const-wide/16 v8, 0x3e8

    .line 44
    .line 45
    div-long/2addr v6, v8

    .line 46
    const-wide/16 v10, 0x3c

    .line 47
    .line 48
    div-long/2addr v6, v10

    .line 49
    div-long/2addr v6, v10

    .line 50
    long-to-int v2, v6

    .line 51
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-virtual {v6, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v12

    .line 71
    const-string v7, "val"

    .line 72
    .line 73
    const/4 v14, 0x0

    .line 74
    invoke-virtual {v6, v7, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    div-long/2addr v12, v8

    .line 79
    div-long/2addr v12, v10

    .line 80
    div-long/2addr v12, v10

    .line 81
    long-to-int v7, v12

    .line 82
    sub-int v7, v2, v7

    .line 83
    .line 84
    if-ltz v7, :cond_0

    .line 85
    .line 86
    iget v12, p0, Lcom/byazt/gf/c;->tt:I

    .line 87
    .line 88
    if-ge v7, v12, :cond_0

    .line 89
    .line 90
    aput v6, v0, v7

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    return-object v0
.end method

.method public uj()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/gf/c;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/byazt/gf/c;->uj:I

    .line 6
    .line 7
    iget v0, p0, Lcom/byazt/gf/c;->uj:I

    .line 8
    .line 9
    return v0
.end method

.method public ve()[I
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/gf/c;->tt:I

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/gf/tt;->c()Lcom/byazt/gf/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "sp_screen"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/byazt/gf/tt;->c(Ljava/lang/String;)Ljava/util/LinkedList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const-wide/16 v4, 0x3e8

    .line 28
    .line 29
    div-long/2addr v2, v4

    .line 30
    const-wide/16 v6, 0x3c

    .line 31
    .line 32
    div-long/2addr v2, v6

    .line 33
    div-long/2addr v2, v6

    .line 34
    long-to-int v3, v2

    .line 35
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lorg/json/JSONObject;

    .line 50
    .line 51
    const-string v8, "t"

    .line 52
    .line 53
    const-wide/16 v9, 0x0

    .line 54
    .line 55
    invoke-virtual {v2, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    const-string v10, "val"

    .line 60
    .line 61
    const/4 v11, 0x0

    .line 62
    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    div-long/2addr v8, v4

    .line 67
    div-long/2addr v8, v6

    .line 68
    div-long/2addr v8, v6

    .line 69
    long-to-int v9, v8

    .line 70
    sub-int v8, v3, v9

    .line 71
    .line 72
    if-ltz v8, :cond_0

    .line 73
    .line 74
    iget v9, p0, Lcom/byazt/gf/c;->tt:I

    .line 75
    .line 76
    if-ge v8, v9, :cond_0

    .line 77
    .line 78
    aput v2, v0, v8

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-object v0
.end method
