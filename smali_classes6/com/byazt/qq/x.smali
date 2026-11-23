.class public Lcom/byazt/qq/x;
.super Lcom/byazt/qq/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58,
        0x47
    }
.end annotation


# instance fields
.field public nu:Lcom/byazt/sgn/a;

.field public rh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/qq/c;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/byazt/qq/x;->nu:Lcom/byazt/sgn/a;

    .line 6
    .line 7
    return-void
.end method

.method private c(Lcom/byazt/sgn/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tt_reward_browse_multi_icon"

    .line 29
    invoke-virtual {p1, v0}, Lcom/byazt/sgn/a;->n(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p2}, Lcom/byazt/sgn/a;->c(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object p2

    .line 31
    invoke-virtual {p2, p3}, Lcom/byazt/sgn/a;->ve(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object p2

    .line 32
    invoke-virtual {p2, p4}, Lcom/byazt/sgn/a;->uj(Ljava/lang/String;)Lcom/byazt/sgn/a;

    .line 33
    iget-object p2, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    invoke-static {p2}, Lcom/byazt/vfu/a;->or(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/sgn/a;->c(Landroid/view/View;)Lcom/byazt/sgn/a;

    return-void
.end method

.method private c(Lcom/byazt/sgn/a;Z)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ka()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ete/lo;->c(Lcom/byazt/ete/ic;)I

    move-result v1

    const-string v2, "\u575a\u6301\u9000\u51fa"

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const-string p2, "#FC1D56"

    const-string v4, "\u7ee7\u7eed\u89c2\u770b"

    const-string v5, "\u518d\u770b%s\u79d2\u53ef\u5f97\u5956\u52b1"

    const-string v6, "\u786e\u5b9a\u9000\u51fa\u5417?"

    const/4 v7, 0x0

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iput-object v6, p0, Lcom/byazt/qq/x;->rh:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "remainTime"

    .line 8
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/qq/x;->rh:Ljava/lang/String;

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/qq/tt;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4, v2}, Lcom/byazt/qq/x;->c(Lcom/byazt/sgn/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/sgn/a;->c(I)Lcom/byazt/sgn/a;

    :goto_1
    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/my;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    const-string v1, "\u672a\u6ee1\u8db3\u5956\u52b1\u8981\u6c42\uff0c\u9700\u8981\u7ee7\u7eed\u6d4f\u89c8"

    .line 13
    iput-object v1, p0, Lcom/byazt/qq/x;->rh:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-array v1, v3, [Ljava/lang/Object;

    .line 14
    iget v3, p0, Lcom/byazt/qq/c;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/qq/x;->rh:Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1, v6}, Lcom/byazt/sgn/a;->tt(Ljava/lang/String;)Lcom/byazt/sgn/a;

    .line 16
    invoke-virtual {p0}, Lcom/byazt/qq/tt;->x()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4, v2}, Lcom/byazt/qq/x;->c(Lcom/byazt/sgn/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "tt_reward_coin"

    .line 17
    invoke-virtual {p1, v0}, Lcom/byazt/sgn/a;->n(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object v0

    .line 18
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/byazt/sgn/a;->c(I)Lcom/byazt/sgn/a;

    move-result-object p2

    .line 19
    invoke-virtual {p0}, Lcom/byazt/qq/tt;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/sgn/a;->c(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object p2

    .line 20
    invoke-virtual {p2, v4}, Lcom/byazt/sgn/a;->ve(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object p2

    .line 21
    invoke-virtual {p2, v2}, Lcom/byazt/sgn/a;->uj(Ljava/lang/String;)Lcom/byazt/sgn/a;

    .line 22
    iget-object p2, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    invoke-static {p2}, Lcom/byazt/vfu/a;->i(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/sgn/a;->c(Landroid/view/View;)Lcom/byazt/sgn/a;

    return-void

    :cond_7
    const-string v0, "\u8bd5\u73a9\u65f6\u957f\u8fbe\u6807\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    if-eq v1, v3, :cond_a

    if-eqz p2, :cond_8

    goto :goto_3

    .line 23
    :cond_8
    iget-boolean p2, p0, Lcom/byazt/qq/c;->ve:Z

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "\u8bd5\u73a9\u540e\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    :cond_a
    :goto_3
    iput-object v0, p0, Lcom/byazt/qq/x;->rh:Ljava/lang/String;

    const-string p2, "tt_retain_gift"

    .line 24
    invoke-virtual {p1, p2}, Lcom/byazt/sgn/a;->n(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object p2

    .line 25
    invoke-virtual {p0}, Lcom/byazt/qq/tt;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/sgn/a;->c(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object p2

    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    .line 26
    invoke-virtual {p2, v0}, Lcom/byazt/sgn/a;->ve(Ljava/lang/String;)Lcom/byazt/sgn/a;

    move-result-object p2

    .line 27
    invoke-virtual {p2, v2}, Lcom/byazt/sgn/a;->uj(Ljava/lang/String;)Lcom/byazt/sgn/a;

    .line 28
    iget-object p2, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    invoke-static {p2}, Lcom/byazt/vfu/a;->i(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/sgn/a;->c(Landroid/view/View;)Lcom/byazt/sgn/a;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/x;->rh:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/sgn/a;

    iget-object v1, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/byazt/sgn/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object v0, p0, Lcom/byazt/qq/x;->nu:Lcom/byazt/sgn/a;

    .line 3
    iget-boolean v1, p0, Lcom/byazt/qq/c;->uj:Z

    invoke-direct {p0, v0, v1}, Lcom/byazt/qq/x;->c(Lcom/byazt/sgn/a;Z)V

    .line 4
    iget-object v1, p0, Lcom/byazt/qq/x;->nu:Lcom/byazt/sgn/a;

    new-instance v2, Lcom/byazt/qq/x$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/byazt/qq/x$1;-><init>(Lcom/byazt/qq/x;Lcom/byazt/sgn/a;Lcom/byazt/qq/da;)V

    invoke-virtual {v1, v2}, Lcom/byazt/sgn/a;->c(Lcom/byazt/sgn/a$c;)Lcom/byazt/sgn/a;

    .line 5
    iget-object p1, p0, Lcom/byazt/qq/x;->nu:Lcom/byazt/sgn/a;

    invoke-virtual {p1}, Lcom/byazt/sgn/a;->show()V

    .line 6
    new-instance p1, Lcom/byazt/qq/tt$c;

    const-string v0, ""

    iget-object v1, p0, Lcom/byazt/qq/x;->nu:Lcom/byazt/sgn/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public tt()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/qq/x;->nu:Lcom/byazt/sgn/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/x;->nu:Lcom/byazt/sgn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
