.class public Lcom/byazt/da/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cv/yp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x48,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/yl/ve;

.field public tt:Lcom/byazt/ll/tt;

.field public ve:Lcom/byazt/hz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/sp;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/da/tt;->tt:Lcom/byazt/ll/tt;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/byazt/da/tt;->ve:Lcom/byazt/hz/sp;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/oh/tt;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isHasShowCallback()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/vx/z;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/byazt/cv/a;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/da/tt;->tt:Lcom/byazt/ll/tt;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v1, v2, v3}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lcom/byazt/cv/a;-><init>(Lcom/byazt/pp/ve;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Lcom/byazt/cv/n;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/byazt/cv/n;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public c(Lcom/byazt/cv/z;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setUseCustomVideo(Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/byazt/da/tt;->tt:Lcom/byazt/ll/tt;

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v2, v1}, Lcom/byazt/ng/a;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 6
    iget-object v0, p0, Lcom/byazt/da/tt;->tt:Lcom/byazt/ll/tt;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public da()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->onResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/oh/tt;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/da/tt;->ve:Lcom/byazt/hz/sp;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/hz/tt;->t()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/byazt/pp/ve;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    new-instance v3, Lcom/byazt/cv/a;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Lcom/byazt/cv/a;-><init>(Lcom/byazt/pp/ve;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->hasDislike()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public tt()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/oh/uj;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/da/tt;->ve:Lcom/byazt/hz/sp;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/hz/tt;->da()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/byazt/pp/tt;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    new-instance v3, Lcom/byazt/cv/c;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Lcom/byazt/cv/c;-><init>(Lcom/byazt/pp/tt;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public uj()Lcom/byazt/oh/tt;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->or()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/byazt/cv/a;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/da/tt;->tt:Lcom/byazt/ll/tt;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v1, v2, v3}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/byazt/cv/a;-><init>(Lcom/byazt/pp/ve;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    :goto_0
    new-instance v0, Lcom/byazt/cv/n;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/byazt/cv/n;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public ve()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/oh/tt;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/da/tt;->ve:Lcom/byazt/hz/sp;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/hz/tt;->sl()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/byazt/pp/ve;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    new-instance v3, Lcom/byazt/cv/a;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Lcom/byazt/cv/a;-><init>(Lcom/byazt/pp/ve;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isExpressAd()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
