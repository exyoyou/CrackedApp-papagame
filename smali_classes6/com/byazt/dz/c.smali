.class public Lcom/byazt/dz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/dz/c;->tt()V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/dz/tt;)V
    .locals 7

    const-string v0, "/aa"

    const-string v1, "ACL"

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    if-eqz v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/dz/tt;->uj()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    invoke-static {p0, v2, v3}, Lcom/byazt/nr/sp;->tt(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p0}, Lcom/byazt/nys/tt;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "buffer_dir_path"

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "log_dir_path"

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "compress"

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "encrypt"

    .line 11
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "level"

    .line 12
    invoke-virtual {p1}, Lcom/byazt/dz/tt;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "log_file_exp_days"

    .line 13
    invoke-virtual {p1}, Lcom/byazt/dz/tt;->tt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_dir_size"

    .line 14
    invoke-virtual {p1}, Lcom/byazt/dz/tt;->ve()I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "per_size"

    const/high16 v0, 0x200000

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "offload_main_write"

    .line 16
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-static {p0, v4}, Lcom/byazt/dz/ve;->c(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    new-instance p1, Lcom/byazt/dz/n;

    invoke-direct {p1}, Lcom/byazt/dz/n;-><init>()V

    invoke-static {p1}, Lcom/byazt/nr/m;->c(Lcom/byazt/ak/c;)V

    const-string p1, "3892"

    const-string v0, "embed_applog"

    .line 19
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/ve;

    invoke-interface {v0}, Lcom/byazt/dna/ve;->getDid()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {p0, p1, v0}, Lcom/byazt/dz/ve;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mon.zijieapi.com"

    .line 21
    invoke-static {p0}, Lcom/byazt/dz/ve;->c(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 22
    sput-boolean p0, Lcom/byazt/dz/c;->c:Z

    .line 23
    invoke-static {}, Lcom/byazt/dz/ve;->ve()V

    return-void

    :cond_4
    const-string p0, "init failed"

    .line 24
    invoke-static {v1, p0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "init failed:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/byazt/dz/tt;)V
    .locals 3

    .line 26
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/byazt/dz/c;->c(Landroid/content/Context;Lcom/byazt/dz/tt;)V

    return-void

    :cond_0
    if-eqz p0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/byazt/dz/tt;->uj()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dz/tt;->c()I

    move-result p0

    invoke-static {p0}, Lcom/byazt/dz/ve;->c(I)V

    .line 30
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/byazt/dz/c$1;

    invoke-direct {v0}, Lcom/byazt/dz/c$1;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 31
    :cond_2
    :goto_0
    invoke-static {}, Lcom/byazt/dz/ve;->c()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {p0, p1}, Lcom/byazt/dz/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/byazt/dz/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 36
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lcom/byazt/dz/ve;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static tt()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/dz/c$2;

    const-string v1, "fetch_lg_command"

    invoke-direct {v0, v1}, Lcom/byazt/dz/c$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/byazt/dz/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/byazt/dz/ve;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/byazt/dz/ve;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/dz/c;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/byazt/dz/ve;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
