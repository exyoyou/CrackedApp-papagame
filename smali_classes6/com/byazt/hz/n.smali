.class public Lcom/byazt/hz/n;
.super Lcom/byazt/hz/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ix/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x2e
    }
.end annotation


# instance fields
.field public final c:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/ix/uj$ve;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/byazt/hz/n;->c:I

    .line 5
    .line 6
    return-void
.end method

.method private c(Lcom/byazt/nbs/tt;Lcom/byazt/yl/ve;)Lcom/byazt/nbs/tt;
    .locals 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v0

    const-string p2, "\u7b5b\u9009\u9884\u7f13\u5b58 ecpm "

    .line 36
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "TMe"

    invoke-static {v2, p2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->my()Lcom/byazt/nbs/tt;

    move-result-object p1

    .line 38
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/nbs/da;

    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->pf()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_1

    .line 42
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->yp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1, p2}, Lcom/byazt/nbs/tt;->tt(Ljava/util/List;)V

    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p1, p2}, Lcom/byazt/nbs/tt;->c(Ljava/util/List;)V

    :goto_1
    return-object p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Lcom/byazt/ix/uj$ve;)V
    .locals 5

    .line 1
    iput-object p3, p0, Lcom/byazt/hz/n;->tt:Lcom/byazt/ix/uj$ve;

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 3
    iget-object p3, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/byazt/iz/tt;->tt(Z)V

    .line 4
    iget-object p3, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p3, v0}, Lcom/byazt/iz/tt;->n(Z)V

    .line 5
    iget-object p3, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p3}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object p3

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/byazt/ll/tt;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-direct {p0, p1, p2}, Lcom/byazt/hz/n;->c(Lcom/byazt/nbs/tt;Lcom/byazt/yl/ve;)Lcom/byazt/nbs/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 7
    iget-object p2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p2, p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/tt;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/ll/tt;->n(I)V

    .line 9
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    iget-object p2, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-static {p1, p2}, Lcom/byazt/xx/ve;->c(Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;)Lcom/byazt/nbs/tt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 11
    iget-object p2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p2, p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/tt;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    const/4 p2, 0x0

    const-string p3, "TTMediationSDK"

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u672a\u53d1\u8d77\uff0cmRitConfig\u4e3anull"

    .line 13
    invoke-static {p3, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/hz/n;->tt:Lcom/byazt/ix/uj$ve;

    if-eqz p1, :cond_1

    .line 15
    iget-object p3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-interface {p1, p3, v0, v0, p2}, Lcom/byazt/ix/uj$ve;->c(Ljava/lang/String;ZILjava/util/List;)V

    :cond_1
    return-void

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    goto/16 :goto_1

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->aw()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object p2, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->a()D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/nbs/tt;->sp(J)V

    .line 19
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->sv()J

    move-result-wide v1

    long-to-double v1, v1

    iget-object p2, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->n()D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/nbs/tt;->a(J)V

    .line 20
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/nbs/tt;->tt(Z)V

    .line 21
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/nbs/tt;->c(Z)V

    .line 22
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/hz/n;->m:Ljava/util/List;

    .line 23
    iget-object p2, p0, Lcom/byazt/hz/tt;->z:Ljava/util/Comparator;

    invoke-static {p1, p2}, Lcom/byazt/vx/h;->c(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\uff0c\u8fc7\u6ee4\u540e\u7684waterfall\uff1a"

    .line 25
    invoke-static {p3, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/byazt/hz/n;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/nbs/da;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "waterfall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adnSlotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadSort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->yv()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showSort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eCpm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p3, p2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/hz/n;->i()Lcom/byazt/om/sp;

    return-void

    :cond_5
    :goto_1
    const-string p1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u672a\u53d1\u8d77\uff0c\u8fc7\u6ee4\u540e\u7684waterfall\u4e3a\u7a7a"

    .line 32
    invoke-static {p3, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/byazt/hz/n;->tt:Lcom/byazt/ix/uj$ve;

    if-eqz p1, :cond_6

    .line 34
    iget-object p3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-interface {p1, p3, v0, v0, p2}, Lcom/byazt/ix/uj$ve;->c(Ljava/lang/String;ZILjava/util/List;)V

    :cond_6
    return-void
.end method

.method public i()Lcom/byazt/om/sp;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/byazt/hz/n;->c:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/byazt/om/i;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/byazt/om/i;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x4

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/byazt/om/da;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/byazt/hz/n;->m:Ljava/util/List;

    .line 30
    .line 31
    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/om/da;-><init>(Lcom/byazt/iz/tt;Lcom/byazt/nbs/tt;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Lcom/byazt/om/tt;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/byazt/om/tt;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    new-instance v1, Lcom/byazt/om/sp;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/byazt/om/sp;-><init>(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/byazt/om/sp;->c(Lcom/byazt/iz/tt;)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method

.method public sp()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/byazt/hz/tt;->sp()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/hz/n;->tt:Lcom/byazt/ix/uj$ve;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ""

    .line 18
    .line 19
    :goto_0
    iget-object v2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-interface {v0, v1, v3, v4, v2}, Lcom/byazt/ix/uj$ve;->c(Ljava/lang/String;ZILjava/util/List;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public tt(Lcom/byazt/pp/c;)V
    .locals 4
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/hz/tt;->tt(Lcom/byazt/pp/c;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/hz/n;->tt:Lcom/byazt/ix/uj$ve;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/16 v1, 0x4e25

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget p1, p1, Lcom/byazt/pp/c;->c:I

    .line 13
    .line 14
    const/16 v2, 0x2713

    .line 15
    .line 16
    if-ne p1, v2, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x2713

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, ""

    .line 30
    .line 31
    :goto_0
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-interface {v0, p1, v2, v1, v3}, Lcom/byazt/ix/uj$ve;->c(Ljava/lang/String;ZILjava/util/List;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method
