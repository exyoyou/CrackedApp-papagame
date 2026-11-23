.class public Lcom/byazt/lf/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20e,
        0xf
    }
.end annotation


# direct methods
.method private static c(I)Ljava/lang/String;
    .locals 1

    const-string v0, "tnc_config"

    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object p1

    invoke-static {p2}, Lcom/byazt/lf/uj;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2, v0}, Lcom/byazt/hw/tt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_1
    :goto_0
    move-object p0, v0

    .line 8
    :goto_1
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/byazt/lf/uj;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "MultiProcessFileUtils"

    const-string v1, "saveData = "

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/lf/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/hw/sp;->c()Lcom/byazt/hw/sp;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/byazt/hw/sp;->c(I)Lcom/byazt/hw/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/hw/n;->uj()Lcom/byazt/hw/tt;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lcom/byazt/hw/tt;->c(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
