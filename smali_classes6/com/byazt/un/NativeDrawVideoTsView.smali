.class public Lcom/byazt/un/NativeDrawVideoTsView;
.super Lcom/byazt/un/NativeVideoTsView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x7d8
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/un/NativeDrawVideoTsView;->c:Z

    .line 3
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/byazt/un/NativeDrawVideoTsView;->tt:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/un/NativeDrawVideoTsView;->c:Z

    .line 7
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/byazt/un/NativeDrawVideoTsView;->tt:I

    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/NativeDrawVideoTsView;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/un/NativeVideoTsView;->uj()V

    return-void
.end method

.method private rl()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/byazt/un/NativeDrawVideoTsView;->x()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)Lcom/byazt/dh/ve;
    .locals 9

    .line 4
    new-instance v8, Lcom/byazt/un/ve;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/byazt/un/ve;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)V

    return-object v8
.end method

.method public c(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/omf/x;->c(Landroid/graphics/Bitmap;)V

    .line 3
    iput p2, p0, Lcom/byazt/un/NativeVideoTsView;->m:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/un/NativeDrawVideoTsView;->tt()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/un/NativeDrawVideoTsView;->tt:I

    .line 2
    .line 3
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/byazt/un/NativeDrawVideoTsView;->tt:I

    .line 9
    .line 10
    new-instance p1, Lcom/byazt/un/NativeDrawVideoTsView$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/byazt/un/NativeDrawVideoTsView$1;-><init>(Lcom/byazt/un/NativeDrawVideoTsView;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Lcom/byazt/aas/pf$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/un/NativeDrawVideoTsView;->rl()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->onWindowFocusChanged(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/un/NativeDrawVideoTsView;->rl()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->onWindowVisibilityChanged(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/un/NativeDrawVideoTsView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public sp()V
    .locals 1

    .line 1
    const-string v0, "draw_ad"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    .line 4
    .line 5
    invoke-super {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeDrawVideoTsView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/byazt/un/NativeVideoTsView;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public uj()V
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
    iget v1, p0, Lcom/byazt/un/NativeDrawVideoTsView;->tt:I

    .line 12
    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    iput v0, p0, Lcom/byazt/un/NativeDrawVideoTsView;->tt:I

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/un/NativeDrawVideoTsView$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/byazt/un/NativeDrawVideoTsView$2;-><init>(Lcom/byazt/un/NativeDrawVideoTsView;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Lcom/byazt/aas/pf$c;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-super {p0}, Lcom/byazt/un/NativeVideoTsView;->uj()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
