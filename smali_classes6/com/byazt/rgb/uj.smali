.class public Lcom/byazt/rgb/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33a,
        0xf
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/byazt/ip/uj;->getContext(Ljava/lang/String;)Lcom/byazt/ip/tt;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Lcom/byazt/ha/n;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Lcom/byazt/ha/n;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/byazt/ha/n;->c:Lorg/json/JSONObject;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    return v1
.end method

.method public static c()Lcom/byazt/lh/n;
    .locals 1

    const/4 v0, 0x5

    .line 12
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/n;

    return-object v0
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/byazt/lh/n;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/byazt/ky/a;

    invoke-direct {v1}, Lcom/byazt/ky/a;-><init>()V

    invoke-virtual {v0, p3, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 4
    new-instance v1, Lcom/byazt/rgb/uj$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/byazt/rgb/uj$1;-><init>(Lcom/byazt/ete/ic;ILjava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 5
    invoke-static {p3}, Lcom/byazt/rgb/uj;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/byazt/hi/n;->c:Lcom/byazt/hi/n;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/n;->c(Ljava/lang/String;Lcom/byazt/hi/n;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 4

    .line 8
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Lcom/byazt/ip/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/byazt/ip/x;-><init>(J)V

    const-string v2, "source"

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/ip/x;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/byazt/hi/n;->ve:Lcom/byazt/hi/n;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/n;->c(Ljava/lang/String;Lcom/byazt/hi/n;Lcom/byazt/ip/x;)V

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/byazt/hi/n;->a:Lcom/byazt/hi/n;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/n;->c(Ljava/lang/String;Lcom/byazt/hi/n;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/byazt/hi/n;->tt:Lcom/byazt/hi/n;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/n;->c(Ljava/lang/String;Lcom/byazt/hi/n;)V

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;I)V
    .locals 4

    .line 3
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/ip/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/byazt/ip/x;-><init>(J)V

    const-string v2, "source"

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/ip/x;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcom/byazt/hi/n;->sp:Lcom/byazt/hi/n;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/n;->c(Ljava/lang/String;Lcom/byazt/hi/n;Lcom/byazt/ip/x;)V

    :cond_0
    return-void
.end method

.method public static uj(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/byazt/hi/n;->n:Lcom/byazt/hi/n;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/n;->c(Ljava/lang/String;Lcom/byazt/hi/n;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/byazt/hi/n;->uj:Lcom/byazt/hi/n;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/n;->c(Ljava/lang/String;Lcom/byazt/hi/n;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
