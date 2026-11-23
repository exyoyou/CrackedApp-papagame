.class public Lcom/byazt/ouz/ExpressVideoView;
.super Lcom/byazt/un/NativeVideoTsView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x575
    }
.end annotation


# instance fields
.field public c:I

.field public gu:Z

.field public qy:Z

.field public rl:Z

.field public tt:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZLjava/lang/String;ZZ)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/byazt/ouz/ExpressVideoView;->rl:Z

    .line 14
    .line 15
    const-string p2, "draw_ad"

    .line 16
    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lcom/byazt/ouz/ExpressVideoView;->rl:Z

    .line 25
    .line 26
    :cond_0
    iput-boolean p4, p0, Lcom/byazt/ouz/ExpressVideoView;->qy:Z

    .line 27
    .line 28
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->setNeedNativeVideoPlayBtnVisible(Z)V

    .line 32
    .line 33
    .line 34
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
    invoke-direct {p0}, Lcom/byazt/ouz/ExpressVideoView;->x()V

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
.method public E_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public F_()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public G_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)Lcom/byazt/dh/ve;
    .locals 10

    move-object v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/byazt/ouz/ExpressVideoView;->qy:Z

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/byazt/un/ve;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/byazt/un/ve;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)V

    return-object v1

    .line 3
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)Lcom/byazt/dh/ve;

    move-result-object v1

    return-object v1
.end method

.method public c(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/byazt/ouz/ExpressVideoView;->gu:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->c(Z)V

    :cond_0
    return-void
.end method

.method public getVideoController()Lcom/byazt/dh/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    return-object v0
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
    iget p1, p0, Lcom/byazt/ouz/ExpressVideoView;->c:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->tt(I)V

    .line 19
    .line 20
    .line 21
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
    invoke-direct {p0}, Lcom/byazt/ouz/ExpressVideoView;->rl()V

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
    invoke-direct {p0}, Lcom/byazt/ouz/ExpressVideoView;->rl()V

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
    iput-boolean p1, p0, Lcom/byazt/ouz/ExpressVideoView;->rl:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPauseIcon(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 45
    .line 46
    const/16 v2, 0x140

    .line 47
    .line 48
    const-string v3, "tt_new_play_video"

    .line 49
    .line 50
    invoke-static {v0, v3, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 54
    .line 55
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget v1, p0, Lcom/byazt/un/NativeVideoTsView;->m:I

    .line 65
    .line 66
    int-to-float v1, v1

    .line 67
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    .line 73
    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    const/16 v0, 0x11

    .line 77
    .line 78
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 97
    .line 98
    const/16 v0, 0x8

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public setShouldCheckNetChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->n(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setShowAdInteractionView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->rh()Lcom/byazt/dh/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/byazt/dh/tt;->c(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setVideoPlayStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ouz/ExpressVideoView;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ouz/ExpressVideoView;->rl:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/byazt/ouz/ExpressVideoView;->c:I

    invoke-super {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->tt(I)V

    :cond_0
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ouz/ExpressVideoView;->gu:Z

    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
