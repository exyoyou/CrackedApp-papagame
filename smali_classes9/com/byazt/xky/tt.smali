.class public Lcom/byazt/xky/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa9,
        0xd
    }
.end annotation


# direct methods
.method public static c()Lcom/byazt/dyf/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/xky/tt$1;

    invoke-direct {v0}, Lcom/byazt/xky/tt$1;-><init>()V

    return-object v0
.end method

.method public static c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;
    .locals 2

    .line 4
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/yj/qy;->from(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/ete/zb;->tt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->width(I)Lcom/byazt/yj/yp;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ete/zb;->ve()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->height(I)Lcom/byazt/yj/yp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/ete/zb;->sp()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/byazt/yj/yp;->key(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/yj/yp;)Lcom/byazt/yj/yp;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/byazt/yj/yp;)Lcom/byazt/yj/yp;
    .locals 1

    .line 8
    invoke-static {}, Lcom/byazt/aas/qp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/byazt/xky/ve;

    invoke-direct {v0}, Lcom/byazt/xky/ve;-><init>()V

    invoke-interface {p0, v0}, Lcom/byazt/yj/yp;->track(Lcom/byazt/yj/or;)Lcom/byazt/yj/yp;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/byazt/yj/yp;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/byazt/yj/qy;->from(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/yj/yp;)Lcom/byazt/yj/yp;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 7
    invoke-static {}, Lcom/byazt/xky/tt;->tt()Lcom/byazt/yj/qy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/byazt/yj/qy;->getCacheStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static tt()Lcom/byazt/yj/qy;
    .locals 1

    .line 1
    const-string v0, "img_service"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/yj/qy;

    .line 8
    .line 9
    return-object v0
.end method
