.class public Lcom/byazt/lvl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8a0,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/lvl/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final tt:Landroid/content/Context;

.field public uj:J

.field public final ve:Lcom/byazt/lvl/tt;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/byazt/lvl/c;->tt:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p1, Lcom/byazt/lvl/tt;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/byazt/lvl/tt;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/byazt/lvl/c;->ve:Lcom/byazt/lvl/tt;

    .line 23
    .line 24
    return-void
.end method

.method public static c()Lcom/byazt/lvl/c;
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/lvl/c;->c:Lcom/byazt/lvl/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/lvl/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/lvl/c;->c:Lcom/byazt/lvl/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/lvl/c;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/lvl/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/byazt/lvl/c;->c:Lcom/byazt/lvl/c;

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
    sget-object v0, Lcom/byazt/lvl/c;->c:Lcom/byazt/lvl/c;

    return-object v0
.end method

.method private c(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;
    .locals 4

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "req_id"

    .line 17
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->oz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aid"

    .line 18
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->gu()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    .line 19
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "price"

    .line 20
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "material_key"

    .line 21
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s_send_ts"

    .line 22
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->dz()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "cache_time"

    .line 23
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ext"

    .line 24
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/dj/tt;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object p1

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/byazt/lvl/c;->ve:Lcom/byazt/lvl/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/lvl/tt;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/dj/tt;

    move-result-object p1

    return-object p1
.end method

.method public c(ZLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 7
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/byazt/ogz/sl;->ve(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string v4, "1"

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lcom/byazt/lvl/c;->uj:J

    sub-long/2addr v2, v5

    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    return-object v4

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/lvl/c;->tt(ZLjava/lang/String;)Lcom/byazt/ete/ic;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->b()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->dz()J

    move-result-wide v5

    add-long/2addr v5, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, v5, v1

    if-gez v3, :cond_2

    .line 12
    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/eti/n;->c(Ljava/lang/String;)V

    return-object v4

    .line 13
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/lvl/c;->c(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/lvl/c;->uj:J

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "0"

    return-object p1
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/byazt/lvl/c;->ve:Lcom/byazt/lvl/tt;

    invoke-virtual {v0, p2, p1}, Lcom/byazt/lvl/tt;->c(Ljava/lang/String;Lcom/byazt/dj/tt;)V

    return-void
.end method

.method public declared-synchronized tt(ZLjava/lang/String;)Lcom/byazt/ete/ic;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 14
    :try_start_0
    invoke-static {}, Lcom/byazt/cf/sp;->c()Lcom/byazt/cf/sp;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;I)Lcom/byazt/ete/ic;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/byazt/cf/tt;->c()Lcom/byazt/cf/tt;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/byazt/cf/ve;->c(Ljava/lang/String;I)Lcom/byazt/ete/ic;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 16
    monitor-exit p0

    return-object v0

    .line 17
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "again"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 19
    monitor-exit p0

    return-object v0

    .line 20
    :cond_2
    monitor-exit p0

    return-object p1

    .line 21
    :cond_3
    :try_start_2
    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 22
    monitor-exit p0

    return-object p1

    .line 23
    :cond_4
    :try_start_3
    invoke-static {p1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_5

    .line 24
    monitor-exit p0

    return-object v0

    .line 25
    :cond_5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public tt()V
    .locals 4

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eti/n;->c()V

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eti/n;->c()V

    const-string v0, "mounted"

    .line 3
    invoke-static {}, Lcom/byazt/bzd/uj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/byazt/lvl/c;->tt:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/byazt/nr/sp;->uj(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/lvl/c;->tt:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/byazt/nr/sp;->uj(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/lvl/c;->tt:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/byazt/nr/sp;->tt(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lcom/byazt/lvl/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/lvl/c$1;-><init>(Lcom/byazt/lvl/c;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    array-length v1, v0

    if-lez v1, :cond_2

    .line 10
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 11
    :try_start_0
    invoke-static {v3}, Lcom/byazt/nr/x;->ve(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public tt(Lcom/byazt/dj/tt;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/byazt/lvl/c;->c(Lcom/byazt/dj/tt;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
