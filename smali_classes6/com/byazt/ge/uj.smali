.class public Lcom/byazt/ge/uj;
.super Lcom/byazt/ge/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f6,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/n;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/byazt/ge/ve;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/n;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private tt()V
    .locals 2

    .line 3
    new-instance v0, Lcom/byazt/ge/uj$1;

    invoke-direct {v0, p0}, Lcom/byazt/ge/uj$1;-><init>(Lcom/byazt/ge/uj;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/ge/ve;->c(Lcom/byazt/qq/da;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget v0, p0, Lcom/byazt/ge/ve;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/byazt/ge/ve;->sp:I

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/qq/da;->tt()V

    return-void
.end method

.method private ve()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ge/ve;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/ge/uj;->c(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ge/ve;->c(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/ge/ve;->c()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->lt()Lcom/byazt/kcl/ve;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/byazt/kcl/ve;->tt()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/ge/ve;->uj:Lcom/byazt/kcl/tt;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->bx()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/byazt/fcd/c;->to()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/byazt/ge/uj;->tt()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ge/uj;->ve()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ge/ve;->tt(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->qp()V

    return-void
.end method

.method public ve(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ge/ve;->ve(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/ge/ve;->uj:Lcom/byazt/kcl/tt;

    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->nb()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(Ljava/lang/String;)V

    return-void
.end method
