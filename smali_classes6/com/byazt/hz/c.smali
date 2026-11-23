.class public Lcom/byazt/hz/c;
.super Lcom/byazt/hz/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/zq/tt;

.field public gt:Lcom/byazt/bi/c;

.field public my:Lcom/byazt/bi/tt;

.field public rl:Z

.field public tt:Lcom/byazt/zq/ve;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/uj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/hz/c;->rl:Z

    .line 6
    .line 7
    new-instance p1, Lcom/byazt/hz/c$3;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/byazt/hz/c$3;-><init>(Lcom/byazt/hz/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/hz/c;->c:Lcom/byazt/zq/tt;

    .line 13
    .line 14
    new-instance p1, Lcom/byazt/hz/c$4;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/byazt/hz/c$4;-><init>(Lcom/byazt/hz/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/hz/c;->tt:Lcom/byazt/zq/ve;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/c;)Lcom/byazt/bi/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/c;->gt:Lcom/byazt/bi/c;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/hz/c;Lcom/byazt/pp/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/hz/c;->c(Lcom/byazt/pp/c;)V

    return-void
.end method

.method private c(Lcom/byazt/pp/c;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/byazt/hz/c$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hz/c$2;-><init>(Lcom/byazt/hz/c;Lcom/byazt/pp/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/hz/c;->rl:Z

    return p1
.end method

.method private tt(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/hz/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/hz/c$1;-><init>(Lcom/byazt/hz/c;)V

    invoke-super {p0, p1, p2, p3, v0}, Lcom/byazt/hz/da;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;Lcom/byazt/hz/da$c;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, v0}, Lcom/byazt/hz/c;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "TTMediationSDK"

    const-string p2, "activity can not be null !"

    .line 10
    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/hz/c;->tt(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/bi/c;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/hz/c;->gt:Lcom/byazt/bi/c;

    return-void
.end method

.method public c(Lcom/byazt/ll/tt;Lcom/byazt/bi/tt;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/byazt/hz/uj;->tt(Lcom/byazt/ll/tt;)V

    .line 5
    iput-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 6
    iput-object p2, p0, Lcom/byazt/hz/c;->my:Lcom/byazt/bi/tt;

    .line 7
    iget-object p1, p0, Lcom/byazt/hz/c;->c:Lcom/byazt/zq/tt;

    iput-object p1, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    .line 8
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->i()Lcom/byazt/om/sp;

    return-void
.end method

.method public c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/hz/c;->tt:Lcom/byazt/zq/ve;

    iput-object v0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/byazt/hz/c;->c:Lcom/byazt/zq/tt;

    iput-object v0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    .line 19
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/hz/uj;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f_()Lcom/byazt/pp/ve;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hz/c;->rl:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/byazt/hz/tt;->f_()Lcom/byazt/pp/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/c;->my:Lcom/byazt/bi/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/bi/tt;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/pp/c;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/c;->my:Lcom/byazt/bi/tt;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bi/tt;->c(Lcom/byazt/pp/c;)V

    :cond_0
    return-void
.end method

.method public ve()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v6, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/hk/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0}, Lcom/byazt/hz/da;->ve()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/byazt/hz/c;->gt:Lcom/byazt/bi/c;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/byazt/hz/c;->my:Lcom/byazt/bi/tt;

    .line 36
    .line 37
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/c;->my:Lcom/byazt/bi/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/bi/tt;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
