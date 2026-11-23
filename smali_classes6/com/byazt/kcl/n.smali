.class public Lcom/byazt/kcl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x2e
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/hkv/tt;

.field public final c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public i:Lcom/byazt/ge/n;

.field public n:Lcom/byazt/dn/UgenBanner;

.field public sp:Lcom/byazt/ge/a;

.field public tt:Lcom/byazt/ete/ic;

.field public uj:Landroid/widget/TextView;

.field public ve:Lcom/byazt/ge/c;

.field public x:Lcom/byazt/ge/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/kcl/n;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/kcl/n;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kcl/n;->uj:Landroid/widget/TextView;

    return-object p0
.end method

.method private c(Lcom/byazt/ff/TopProxyLayout;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 18
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 19
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p3, p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 22
    :cond_0
    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/n;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    const v1, 0x7e06ff09

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/byazt/ff/TopProxyLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/byazt/kcl/n;->c(Lcom/byazt/ff/TopProxyLayout;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/n;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 18
    .line 19
    const v1, 0x7e06ff59

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/kcl/n;->uj:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/kcl/n;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 31
    .line 32
    const v1, 0x7e06ffbd

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/byazt/dn/UgenBanner;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/byazt/kcl/n;->n:Lcom/byazt/dn/UgenBanner;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/n;->n:Lcom/byazt/dn/UgenBanner;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/kcl/n;->a:Lcom/byazt/hkv/tt;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setShowBack(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/byazt/ge/c;->c()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/byazt/kcl/n;->sp:Lcom/byazt/ge/a;

    invoke-virtual {p0, p1}, Lcom/byazt/kcl/n;->c(Lcom/byazt/ge/tt;)V

    return-void

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/byazt/kcl/n;->i:Lcom/byazt/ge/n;

    invoke-virtual {p0, p1}, Lcom/byazt/kcl/n;->c(Lcom/byazt/ge/tt;)V

    return-void

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/byazt/kcl/n;->x:Lcom/byazt/ge/uj;

    invoke-virtual {p0, p1}, Lcom/byazt/kcl/n;->c(Lcom/byazt/ge/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/byazt/kcl/n;->sp:Lcom/byazt/ge/a;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Lcom/byazt/ge/ve;->c(Lcom/byazt/ete/ic;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/n;->x:Lcom/byazt/ge/uj;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0, p1}, Lcom/byazt/ge/ve;->c(Lcom/byazt/ete/ic;)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/byazt/kcl/n;->i:Lcom/byazt/ge/n;

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0, p1}, Lcom/byazt/ge/ve;->c(Lcom/byazt/ete/ic;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;ZLcom/byazt/hkv/tt;)V
    .locals 7

    .line 2
    iput-object p1, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    .line 3
    iput-object p4, p0, Lcom/byazt/kcl/n;->a:Lcom/byazt/hkv/tt;

    .line 4
    invoke-direct {p0}, Lcom/byazt/kcl/n;->x()V

    .line 5
    new-instance v6, Lcom/byazt/ge/a;

    iget-object v1, p0, Lcom/byazt/kcl/n;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    move-object v0, v6

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ge/a;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/n;Z)V

    iput-object v6, p0, Lcom/byazt/kcl/n;->sp:Lcom/byazt/ge/a;

    .line 6
    new-instance v6, Lcom/byazt/ge/n;

    iget-object v1, p0, Lcom/byazt/kcl/n;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ge/n;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/n;Z)V

    iput-object v6, p0, Lcom/byazt/kcl/n;->i:Lcom/byazt/ge/n;

    .line 7
    new-instance v6, Lcom/byazt/ge/uj;

    iget-object v1, p0, Lcom/byazt/kcl/n;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ge/uj;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/n;Z)V

    iput-object v6, p0, Lcom/byazt/kcl/n;->x:Lcom/byazt/ge/uj;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/kcl/n;->c(I)V

    return-void
.end method

.method public c(Lcom/byazt/ff/TopProxyLayout;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1}, Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ge/RewardBrowserMixTopLayoutImpl;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/byazt/ge/TopLayoutImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/ge/TopLayoutImpl;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/byazt/kcl/n;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1}, Lcom/byazt/ge/TopLayoutImpl;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ge/TopLayoutImpl;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iput-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    goto :goto_1

    :cond_1
    const-string v1, "RewardFullTopProxyManager"

    const-string v2, "view not implements ITopLayout interface"

    .line 13
    invoke-static {v1, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 15
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 17
    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/kcl/n;->c(Lcom/byazt/ff/TopProxyLayout;Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ge/tt;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setListener(Lcom/byazt/ge/tt;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setPlayAgainEntranceText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/ge/c;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public c(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 26
    invoke-interface/range {v0 .. v5}, Lcom/byazt/ge/c;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setShowSound(Z)V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ge/c;->getSkipOrCloseVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sp()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/n;->n:Lcom/byazt/dn/UgenBanner;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/dn/UgenBanner;->c()V

    return-void
.end method

.method public sp(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setShowAgain(Z)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ge/c;->tt()V

    :cond_0
    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/kcl/n;->uj:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/kcl/n;->uj:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/byazt/kcl/n;->uj:Landroid/widget/TextView;

    new-instance v0, Lcom/byazt/kcl/n$1;

    invoke-direct {v0, p0}, Lcom/byazt/kcl/n$1;-><init>(Lcom/byazt/kcl/n;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setShowDislike(Z)V

    :cond_0
    return-void
.end method

.method public uj()Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ge/c;->getCloseButton()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public uj(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ge/c;->ve()V

    :cond_0
    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/n;->ve:Lcom/byazt/ge/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/ge/c;->setDislikeLeft(Z)V

    :cond_0
    return-void
.end method
