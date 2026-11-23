.class public Lcom/byazt/rgb/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33a,
        0x36
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/byazt/hi/uj;->i:Lcom/byazt/hi/uj;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static c()Lcom/byazt/lh/uj;
    .locals 1

    const/4 v0, 0x2

    .line 12
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/uj;

    return-object v0
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/byazt/lh/uj;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/byazt/ky/n;

    invoke-direct {v1}, Lcom/byazt/ky/n;-><init>()V

    invoke-virtual {v0, p4, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 4
    new-instance v1, Lcom/byazt/rgb/ve$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/byazt/rgb/ve$1;-><init>(Lcom/byazt/ete/ic;ILjava/lang/String;I)V

    invoke-virtual {v0, p4, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 5
    invoke-static {p4}, Lcom/byazt/rgb/ve;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/byazt/hi/uj;->c:Lcom/byazt/hi/uj;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 4

    .line 8
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

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
    sget-object p1, Lcom/byazt/hi/uj;->ve:Lcom/byazt/hi/uj;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;Lcom/byazt/ip/x;)V

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/byazt/hi/uj;->sp:Lcom/byazt/hi/uj;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/byazt/hi/uj;->tt:Lcom/byazt/hi/uj;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;)V

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;I)V
    .locals 4

    .line 3
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

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
    sget-object p1, Lcom/byazt/hi/uj;->n:Lcom/byazt/hi/uj;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;Lcom/byazt/ip/x;)V

    :cond_0
    return-void
.end method

.method public static uj(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/byazt/hi/uj;->a:Lcom/byazt/hi/uj;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/byazt/hi/uj;->uj:Lcom/byazt/hi/uj;

    invoke-virtual {v0, p0, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;)V

    :cond_0
    return-void
.end method

.method public static ve(Ljava/lang/String;I)V
    .locals 4

    .line 3
    invoke-static {}, Lcom/byazt/rgb/ve;->c()Lcom/byazt/lh/uj;

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
    sget-object p1, Lcom/byazt/hi/uj;->da:Lcom/byazt/hi/uj;

    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/lh/uj;->c(Ljava/lang/String;Lcom/byazt/hi/uj;Lcom/byazt/ip/x;)V

    :cond_0
    return-void
.end method
