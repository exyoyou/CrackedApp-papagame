.class public Lcom/byazt/dqg/x;
.super Lcom/byazt/dqg/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x47
    }
.end annotation


# instance fields
.field public gr:Landroid/widget/TextView;

.field public gt:Landroid/widget/TextView;

.field public gu:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public my:Landroid/widget/TextView;

.field public nu:Landroid/widget/TextView;

.field public qy:Landroid/widget/RelativeLayout;

.field public rh:Landroid/widget/ImageView;

.field public rl:Landroid/widget/RelativeLayout;

.field public yp:Lcom/byazt/ff/RoundImageView;

.field public z:Landroid/widget/RelativeLayout;

.field public zm:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dqg/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    const-string v1, "TTBaseVideoActivity#mRlDownloadBar"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mVideoNativeFrame"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/byazt/dqg/x;->gt:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mLiveDesc"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/byazt/dqg/x;->nu:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mLiveFans"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/byazt/dqg/x;->my:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mLiveWatch"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/byazt/dqg/x;->m:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mLiveName"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/byazt/dqg/x;->yp:Lcom/byazt/ff/RoundImageView;

    const-string v1, "TTBaseVideoActivity#mLiveIcon"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    const-string v1, "TTBaseVideoActivity#mLiveBtnLayout"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    new-instance v0, Lcom/byazt/dqg/x$1;

    iget-object v3, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    iget-boolean v1, p0, Lcom/byazt/dqg/tt;->a:Z

    if-eqz v1, :cond_1

    const-string v2, "rewarded_video"

    goto :goto_0

    :cond_1
    const-string v2, "fullscreen_interstitial_ad"

    :goto_0
    move-object v5, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    const/4 v6, 0x7

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    const/4 v6, 0x5

    :goto_1
    move-object v1, v0

    move-object v2, p0

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/byazt/dqg/x$1;-><init>(Lcom/byazt/dqg/x;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;Lcom/byazt/hkv/tt;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private c(Lcom/byazt/hkv/tt;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    const-string v1, "click_live_feed"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/byazt/dqg/x;->gt:Landroid/widget/TextView;

    const-string v1, "click_live_author_description"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/byazt/dqg/x;->nu:Landroid/widget/TextView;

    const-string v1, "click_live_author_follower_count"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/byazt/dqg/x;->my:Landroid/widget/TextView;

    const-string v1, "click_live_author_following_count"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/byazt/dqg/x;->m:Landroid/widget/TextView;

    const-string v1, "click_live_author_nickname"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/byazt/dqg/x;->yp:Lcom/byazt/ff/RoundImageView;

    const-string v1, "click_live_avata"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    const-string v1, "click_live_button"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    const-string v1, "click_live_btn_layout"

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/byazt/dqg/tt;->c()V

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06fece

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff2a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06feca

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->da:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ffaa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/RoundImageView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->yp:Lcom/byazt/ff/RoundImageView;

    .line 6
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ffc7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/dqg/x;->z:Landroid/widget/RelativeLayout;

    .line 7
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ffd1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->m:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff8a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->nu:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ffa9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->rh:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff45

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->my:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06feb8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->gt:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06fecf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/dqg/x;->rl:Landroid/widget/RelativeLayout;

    .line 13
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff7b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/dqg/x;->qy:Landroid/widget/RelativeLayout;

    .line 14
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff05

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    .line 15
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff28

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->gu:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff04

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/x;->gr:Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcom/byazt/dqg/tt;->da:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    .line 18
    invoke-virtual {p0}, Lcom/byazt/dqg/tt;->sl()V

    .line 19
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/bx;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/byazt/dqg/x;->yp:Lcom/byazt/ff/RoundImageView;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/byazt/dqg/x;->z:Landroid/widget/RelativeLayout;

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 23
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/dqg/x;->yp:Lcom/byazt/ff/RoundImageView;

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/x;->z:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/byazt/dqg/x;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/bx;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/byazt/dqg/x;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/byazt/dqg/x;->nu:Landroid/widget/TextView;

    const/4 v1, 0x1

    const-string v3, "w"

    const v4, 0x461c4000    # 10000.0f

    const/16 v5, 0x2710

    const/4 v6, 0x4

    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/bx;->uj(Lcom/byazt/ete/ic;)I

    move-result v0

    if-gez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/byazt/dqg/x;->nu:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/byazt/dqg/x;->rh:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    goto :goto_2

    :cond_2
    if-le v0, v5, :cond_3

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const-string v0, "\u7c89\u4e1d %1$s"

    .line 33
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v7, p0, Lcom/byazt/dqg/x;->nu:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/byazt/dqg/x;->my:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 36
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/bx;->n(Lcom/byazt/ete/ic;)I

    move-result v0

    if-gez v0, :cond_5

    .line 37
    iget-object v0, p0, Lcom/byazt/dqg/x;->my:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/byazt/dqg/x;->rh:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    goto :goto_4

    :cond_5
    if-le v0, v5, :cond_6

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "\u89c2\u770b %1$s"

    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/byazt/dqg/x;->my:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/byazt/dqg/x;->gt:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 43
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/bx;->a(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/byazt/dqg/x;->gt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public c(II)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 69
    iput-boolean v0, p0, Lcom/byazt/dqg/x;->zm:Z

    .line 70
    iget-object p1, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    if-gez p2, :cond_1

    return-void

    .line 72
    :cond_1
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v2}, Lcom/byazt/apd/tt;->tt(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/to;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/to;->n(Lcom/byazt/ete/ic;)I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    return-void

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v2, 0x7e06ff04

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_5

    return-void

    .line 76
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "s"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "%1$s\u540e\u81ea\u52a8\u8fdb\u5165\u76f4\u64ad\u95f4"

    .line 77
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;Lcom/byazt/hkv/tt;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/byazt/dqg/x;->gu:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mLiveLoadingBtn"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/byazt/dqg/x;->gu:Landroid/widget/TextView;

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/byazt/dqg/x;->gr:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mLiveVideoBtn"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/byazt/dqg/x;->gr:Landroid/widget/TextView;

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/byazt/dqg/x;->c(Lcom/byazt/hkv/tt;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/byazt/dqg/x;->c(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dqg/x;->zm:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sl:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public ve(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/x;->rl:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/dqg/x;->qy:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
