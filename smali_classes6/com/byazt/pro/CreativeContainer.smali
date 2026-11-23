.class public Lcom/byazt/pro/CreativeContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x899
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public n:Lcom/byazt/ui/UpieImageView;

.field public final tt:Lcom/byazt/ete/ic;

.field public uj:Lcom/byazt/pro/EffectView;

.field public final ve:Lcom/byazt/omf/my;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/omf/my;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/pro/CreativeContainer;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/pro/CreativeContainer;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/pro/CreativeContainer;->ve:Lcom/byazt/omf/my;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/byazt/pro/CreativeContainer;->c()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pro/CreativeContainer;Lcom/byazt/pro/EffectView;)Lcom/byazt/pro/EffectView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/CreativeContainer;->uj:Lcom/byazt/pro/EffectView;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/ui/UpieImageView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/pro/CreativeContainer;->n:Lcom/byazt/ui/UpieImageView;

    return-object p0
.end method

.method private c()V
    .locals 6

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    new-instance v1, Lcom/byazt/ui/UpieImageView;

    iget-object v2, p0, Lcom/byazt/pro/CreativeContainer;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/pro/CreativeContainer;->tt:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/pro/CreativeContainer;->tt:Lcom/byazt/ete/ic;

    invoke-static {v4}, Lcom/byazt/nj/c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/tt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/byazt/ui/UpieImageView;-><init>(Landroid/content/Context;Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/ui/c;)V

    iput-object v1, p0, Lcom/byazt/pro/CreativeContainer;->n:Lcom/byazt/ui/UpieImageView;

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/pro/CreativeContainer;->n:Lcom/byazt/ui/UpieImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/byazt/pro/CreativeContainer;->tt:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ete/md;->n(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lcom/byazt/pro/EffectView;

    iget-object v2, p0, Lcom/byazt/pro/CreativeContainer;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/pro/CreativeContainer;->tt:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/pro/CreativeContainer;->ve:Lcom/byazt/omf/my;

    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/pro/EffectView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/omf/my;)V

    iput-object v1, p0, Lcom/byazt/pro/CreativeContainer;->uj:Lcom/byazt/pro/EffectView;

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/pro/CreativeContainer;->uj:Lcom/byazt/pro/EffectView;

    new-instance v1, Lcom/byazt/pro/CreativeContainer$1;

    invoke-direct {v1, p0}, Lcom/byazt/pro/CreativeContainer$1;-><init>(Lcom/byazt/pro/CreativeContainer;)V

    invoke-virtual {v0, v1}, Lcom/byazt/pro/EffectView;->c(Lcom/byazt/pro/EffectView$c;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/CreativeContainer;->n:Lcom/byazt/ui/UpieImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 14
    invoke-static {p0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_3

    .line 16
    invoke-static {p0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/md;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 18
    :cond_2
    invoke-static {p0}, Lcom/byazt/ic/c;->x(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic tt(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/pro/EffectView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pro/CreativeContainer;->uj:Lcom/byazt/pro/EffectView;

    .line 2
    .line 3
    return-object p0
.end method
