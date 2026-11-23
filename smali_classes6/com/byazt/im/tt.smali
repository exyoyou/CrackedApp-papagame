.class public Lcom/byazt/im/tt;
.super Lcom/byazt/im/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x548,
        0xd
    }
.end annotation


# instance fields
.field public a:I

.field public da:Z

.field public i:I

.field public n:Lcom/byazt/sml/tt;

.field public sl:Lcom/byazt/ete/c;

.field public sp:I

.field public t:Z

.field public u:Z

.field public uj:I

.field public x:Lcom/byazt/jzl/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/byazt/im/c;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/byazt/im/tt;->u:Z

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x2

    .line 16
    if-ne p2, v0, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p2, 0x0

    .line 21
    :goto_0
    iput-boolean p2, p0, Lcom/byazt/im/tt;->t:Z

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/byazt/im/tt;->tt(Lcom/byazt/ete/ic;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private a(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/im/tt;->x:Lcom/byazt/jzl/uj;

    .line 2
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    iput v0, p0, Lcom/byazt/im/tt;->i:I

    .line 3
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ox()Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/im/tt;->da:Z

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method private c(Lcom/byazt/ete/dz;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/byazt/ete/dz;->x()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/im/tt;->c(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/byazt/ete/ma;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/byazt/ete/ma;->sp()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private n(Lcom/byazt/ete/ic;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ete/zb;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/zb;->tt()I

    move-result v1

    iput v1, p0, Lcom/byazt/im/tt;->a:I

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/zb;->ve()I

    move-result v1

    iput v1, p0, Lcom/byazt/im/tt;->sp:I

    .line 7
    new-instance v1, Lcom/byazt/sml/tt;

    invoke-virtual {p1}, Lcom/byazt/ete/zb;->sp()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/byazt/sml/tt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/byazt/im/tt;->n:Lcom/byazt/sml/tt;

    return-void
.end method

.method private tt(Lcom/byazt/ete/ic;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->w()I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/byazt/ete/pu;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ma;

    move-result-object v2

    .line 4
    invoke-static {p1}, Lcom/byazt/ete/xd;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 5
    iput v4, p0, Lcom/byazt/im/tt;->uj:I

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/im/tt;->ve(Lcom/byazt/ete/ic;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_5

    .line 7
    invoke-direct {p0, v1}, Lcom/byazt/im/tt;->c(Lcom/byazt/ete/dz;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/byazt/im/tt;->c(Lcom/byazt/ete/ma;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v1}, Lcom/byazt/im/tt;->tt(Lcom/byazt/ete/dz;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/byazt/im/tt;->tt(Lcom/byazt/ete/ma;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_2
    invoke-static {p1, v4}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;I)V

    .line 10
    :cond_3
    iput v4, p0, Lcom/byazt/im/tt;->uj:I

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    iput v5, p0, Lcom/byazt/im/tt;->uj:I

    goto :goto_1

    :cond_5
    if-ne v0, v4, :cond_6

    .line 12
    iput v4, p0, Lcom/byazt/im/tt;->uj:I

    goto :goto_1

    .line 13
    :cond_6
    iput v5, p0, Lcom/byazt/im/tt;->uj:I

    .line 14
    :goto_1
    invoke-direct {p0, p1}, Lcom/byazt/im/tt;->uj(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method private tt(Lcom/byazt/ete/dz;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/byazt/ete/dz;->x()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/im/tt;->c(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tt(Lcom/byazt/ete/ma;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ete/ma;->sp()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private uj(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/im/tt;->n(Lcom/byazt/ete/ic;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/im/tt;->a(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method private ve(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/byazt/im/tt;->sp:I

    return v0
.end method

.method public c(Lcom/byazt/ete/c;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/im/tt;->sl:Lcom/byazt/ete/c;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/im/tt;->u:Z

    return-void
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/im/tt;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/tt;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/byazt/im/tt;->a:I

    return v0
.end method

.method public sl()Lcom/byazt/ete/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/tt;->sl:Lcom/byazt/ete/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/jzl/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/tt;->x:Lcom/byazt/jzl/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/tt;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/tt;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()Lcom/byazt/sml/tt;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/im/tt;->n:Lcom/byazt/sml/tt;

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/im/tt;->i:I

    .line 2
    .line 3
    return v0
.end method
