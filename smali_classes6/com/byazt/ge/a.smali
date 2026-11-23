.class public Lcom/byazt/ge/a;
.super Lcom/byazt/ge/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f6,
        0x22
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
    .locals 6

    .line 5
    new-instance v0, Lcom/byazt/ge/a$1;

    invoke-direct {v0, p0}, Lcom/byazt/ge/a$1;-><init>(Lcom/byazt/ge/a;)V

    .line 6
    iget-object v1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->n(I)I

    move-result v1

    .line 7
    iget-object v3, p0, Lcom/byazt/ge/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->wn()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 8
    iget-object v1, p0, Lcom/byazt/ge/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->dh()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tk()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    :cond_2
    if-ne v1, v5, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/ge/ve;->c(Lcom/byazt/qq/da;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/qq/da;->tt()V

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve()V

    return-void
.end method

.method private ve()V
    .locals 2

    .line 3
    new-instance v0, Lcom/byazt/ge/a$2;

    invoke-direct {v0, p0}, Lcom/byazt/ge/a$2;-><init>(Lcom/byazt/ge/a;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/ge/ve;->c(Lcom/byazt/qq/da;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/qq/da;->tt()V

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
    invoke-virtual {p0, p1}, Lcom/byazt/ge/a;->c(Landroid/view/View;)V

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
    invoke-virtual {p1}, Lcom/byazt/kcl/ve;->c()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/byazt/fcd/c;->to()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/byazt/ge/a;->tt()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/byazt/ge/a;->ve()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public sp(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ge/ve;->sp(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->v()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ge/ve;->tt(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    move-result-object p1

    instance-of p1, p1, Lcom/byazt/fcd/x;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->qp()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->cu()V

    return-void
.end method

.method public ve(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ge/ve;->ve(Landroid/view/View;)V

    const-string p1, "video_player"

    .line 2
    iget-object v0, p0, Lcom/byazt/ge/ve;->a:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(Ljava/lang/String;)V

    return-void
.end method
