.class public Lcom/byazt/dz/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a,
        0x36
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/jg/c;


# direct methods
.method public static c()V
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/byazt/jg/c;->destroy()V

    return-void
.end method

.method public static c(I)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p0}, Lcom/byazt/jg/c;->changeLogLevel(I)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/byazt/jg/c;->initCloudMessageManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/byazt/dz/tt;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/byazt/dz/c;->c(Lcom/byazt/dz/tt;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-interface {v0, p0}, Lcom/byazt/jg/c;->setUploadHost(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/byazt/jg/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/byazt/jg/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/byazt/jg/c;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 14
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/byazt/jg/c;->initCLog(Landroid/content/Context;Lorg/json/JSONObject;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static tt()V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/byazt/jg/c;->fetchCommand()V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/byazt/jg/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/byazt/jg/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static uj()Lcom/byazt/jg/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/dz/ve;->c:Lcom/byazt/jg/c;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/omf/eo;->c()Lcom/byazt/omf/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/eo;->n()Lcom/byazt/jg/c;

    move-result-object v0

    sput-object v0, Lcom/byazt/dz/ve;->c:Lcom/byazt/jg/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/byazt/dz/ve;->c:Lcom/byazt/jg/c;

    return-object v0
.end method

.method public static uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/byazt/jg/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ve()V
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/byazt/jg/c;->execCloudManagerSafely()V

    return-void
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/dz/ve;->uj()Lcom/byazt/jg/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/byazt/jg/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
