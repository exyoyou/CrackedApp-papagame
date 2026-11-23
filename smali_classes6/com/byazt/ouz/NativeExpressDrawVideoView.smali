.class public Lcom/byazt/ouz/NativeExpressDrawVideoView;
.super Lcom/byazt/ouz/NativeExpressVideoView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x873
    }
.end annotation


# instance fields
.field public gu:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressVideoView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 13
    .line 14
    iput p1, p0, Lcom/byazt/ouz/NativeExpressDrawVideoView;->gu:I

    .line 15
    .line 16
    return-void
.end method

.method private c(Landroid/view/View;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/NativeExpressDrawVideoView;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ouz/NativeExpressDrawVideoView;->c(Landroid/view/View;II)V

    return-void
.end method

.method private gu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    iget v1, p0, Lcom/byazt/ouz/NativeExpressDrawVideoView;->gu:I

    .line 12
    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    iput v0, p0, Lcom/byazt/ouz/NativeExpressDrawVideoView;->gu:I

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/ouz/NativeExpressDrawVideoView$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressDrawVideoView$1;-><init>(Lcom/byazt/ouz/NativeExpressDrawVideoView;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Lcom/byazt/aas/pf$c;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ouz/ExpressVideoView;
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/ouz/ExpressVideoView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/byazt/ouz/ExpressVideoView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressVideoView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressDrawVideoView;->gu()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressDrawVideoView;->gu()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressDrawVideoView;->gu()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
