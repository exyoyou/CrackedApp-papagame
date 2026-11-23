.class public Lcom/byazt/dqg/ve;
.super Lcom/byazt/dqg/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x36
    }
.end annotation


# instance fields
.field public gt:Lcom/byazt/ff/TTRatingBar;

.field public m:Lcom/byazt/ff/TTRoundRectImageView;

.field public my:Landroid/widget/TextView;

.field public nu:Landroid/widget/TextView;

.field public qy:Landroid/widget/FrameLayout;

.field public rh:Landroid/widget/TextView;

.field public rl:Landroid/widget/FrameLayout;

.field public yp:I

.field public final z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dqg/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/dqg/ve;->yp:I

    .line 6
    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/byazt/dqg/ve;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/dqg/tt;->uj:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 11
    .line 12
    const/high16 v2, 0x43190000    # 153.0f

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 27
    .line 28
    const/high16 v2, 0x43ca0000    # 404.0f

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/dqg/tt;->a:Z

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method private c(Z)Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x4

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result p1

    if-ne p1, v1, :cond_1

    const-string p1, "\u4e0b\u8f7d"

    return-object p1

    :cond_1
    const-string p1, "\u67e5\u770b"

    return-object p1

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result p1

    if-ne p1, v1, :cond_3

    const-string p1, "Install"

    return-object p1

    :cond_3
    const-string p1, "View"

    return-object p1
.end method

.method private c(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    const-string v1, "TTBaseVideoActivity#mRlDownloadBar"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mTvAppName"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/byazt/dqg/ve;->m:Lcom/byazt/ff/TTRoundRectImageView;

    const-string v1, "TTBaseVideoActivity#mIvIcon"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/byazt/dqg/ve;->rh:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mTvCommentVertical"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    const-string v1, "TTBaseVideoActivity#mRbScore"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mVideoNativeFrame"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/byazt/dqg/ve;->rl:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mClickUpperNonContentArea"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/byazt/dqg/ve;->qy:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mClickLowerNonContentArea"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    const-string v1, "TTBaseVideoActivity#mRlDownloadBar"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mTvAppName"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/byazt/dqg/ve;->m:Lcom/byazt/ff/TTRoundRectImageView;

    const-string v1, "TTBaseVideoActivity#mIvIcon"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/byazt/dqg/ve;->rh:Landroid/widget/TextView;

    const-string v1, "TTBaseVideoActivity#mTvCommentVertical"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    const-string v1, "TTBaseVideoActivity#mRbScore"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mVideoNativeFrame"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/byazt/dqg/ve;->rl:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mClickUpperNonContentArea"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/byazt/dqg/ve;->qy:Landroid/widget/FrameLayout;

    const-string v1, "TTBaseVideoActivity#mClickLowerNonContentArea"

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->cf()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/dqg/ve;->x()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/dqg/ve;->tt()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private sp()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->cf()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const-string v0, "#0070FF"

    .line 11
    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    filled-new-array {v0}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 21
    .line 22
    const/high16 v2, 0x41880000    # 17.0f

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "#80000000"

    .line 29
    .line 30
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 35
    .line 36
    const/high16 v4, 0x40400000    # 3.0f

    .line 37
    .line 38
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    new-instance v4, Lcom/byazt/sgn/t$c;

    .line 43
    .line 44
    invoke-direct {v4}, Lcom/byazt/sgn/t$c;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    aget v6, v0, v5

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Lcom/byazt/sgn/t$c;->c(I)Lcom/byazt/sgn/t$c;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4, v2}, Lcom/byazt/sgn/t$c;->tt(I)Lcom/byazt/sgn/t$c;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2, v0}, Lcom/byazt/sgn/t$c;->c([I)Lcom/byazt/sgn/t$c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Lcom/byazt/sgn/t$c;->ve(I)Lcom/byazt/sgn/t$c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v5}, Lcom/byazt/sgn/t$c;->uj(I)Lcom/byazt/sgn/t$c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v3}, Lcom/byazt/sgn/t$c;->n(I)Lcom/byazt/sgn/t$c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 75
    .line 76
    const v2, 0x7e06ffba

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    invoke-static {v1, v0}, Lcom/byazt/sgn/t;->c(Landroid/view/View;Lcom/byazt/sgn/t$c;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method private uj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/ve;->rh:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/n;->a()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v0, 0x1ad6

    .line 26
    .line 27
    :goto_0
    const/16 v1, 0x2710

    .line 28
    .line 29
    if-le v0, v1, :cond_2

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    div-int/2addr v0, v1

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "\u4e07"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_1
    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    aput-object v0, v1, v2

    .line 59
    .line 60
    const-string v0, "%1$s\u4e2a\u8bc4\u5206"

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/byazt/dqg/ve;->rh:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private ve()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/ve;->m:Lcom/byazt/ff/TTRoundRectImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/byazt/dqg/ve;->m:Lcom/byazt/ff/TTRoundRectImageView;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/dqg/ve;->m:Lcom/byazt/ff/TTRoundRectImageView;

    .line 36
    .line 37
    const/16 v2, 0x140

    .line 38
    .line 39
    const-string v3, "tt_ad_logo_small"

    .line 40
    .line 41
    invoke-static {v0, v3, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget v0, p0, Lcom/byazt/dqg/tt;->uj:I

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method private x()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v3, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 53
    :goto_1
    :try_start_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_3

    .line 64
    :catchall_0
    nop

    .line 65
    goto :goto_2

    .line 66
    :catchall_1
    nop

    .line 67
    const/4 v3, 0x1

    .line 68
    :goto_2
    const/4 v0, 0x0

    .line 69
    :goto_3
    const-string v4, "\u4e0b\u8f7d"

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_3
    if-eqz v0, :cond_4

    .line 75
    .line 76
    const-string v4, "Install"

    .line 77
    .line 78
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 79
    .line 80
    if-nez v5, :cond_5

    .line 81
    .line 82
    return-object v4

    .line 83
    :cond_5
    invoke-virtual {v5}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    iget-object v1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->i()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/4 v2, 0x4

    .line 100
    if-eq v1, v2, :cond_b

    .line 101
    .line 102
    if-eqz v3, :cond_6

    .line 103
    .line 104
    const-string v4, "\u67e5\u770b"

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    if-eqz v0, :cond_b

    .line 108
    .line 109
    const-string v4, "View"

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_7
    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_b

    .line 119
    .line 120
    invoke-static {v4}, Lcom/byazt/aas/nb;->da(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_9

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    const/4 v6, 0x2

    .line 131
    if-le v5, v6, :cond_9

    .line 132
    .line 133
    if-eqz v3, :cond_8

    .line 134
    .line 135
    invoke-direct {p0, v1}, Lcom/byazt/dqg/ve;->c(Z)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_5

    .line 140
    :cond_8
    if-eqz v0, :cond_b

    .line 141
    .line 142
    invoke-direct {p0, v2}, Lcom/byazt/dqg/ve;->c(Z)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    goto :goto_5

    .line 147
    :cond_9
    invoke-static {v4}, Lcom/byazt/aas/nb;->da(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_b

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    const/4 v6, 0x7

    .line 158
    if-le v5, v6, :cond_b

    .line 159
    .line 160
    if-eqz v3, :cond_a

    .line 161
    .line 162
    invoke-direct {p0, v1}, Lcom/byazt/dqg/ve;->c(Z)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    goto :goto_5

    .line 167
    :cond_a
    if-eqz v0, :cond_b

    .line 168
    .line 169
    invoke-direct {p0, v2}, Lcom/byazt/dqg/ve;->c(Z)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    :cond_b
    :goto_5
    if-eqz v0, :cond_c

    .line 174
    .line 175
    invoke-static {v4}, Lcom/byazt/aas/nb;->da(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_c

    .line 180
    .line 181
    iget-object v0, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .line 189
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 190
    .line 191
    const/high16 v2, 0x40800000    # 4.0f

    .line 192
    .line 193
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 198
    .line 199
    iget-object v1, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    :cond_c
    return-object v4
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/byazt/dqg/tt;->c()V

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06fec1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff51

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTRoundRectImageView;

    iput-object v0, p0, Lcom/byazt/dqg/ve;->m:Lcom/byazt/ff/TTRoundRectImageView;

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ffa3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/ve;->nu:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06feae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/ve;->rh:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06ff76

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v1, 0x7e06fe99

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTRatingBar;

    iput-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ff/TTRatingBar;->setStarEmptyNum(I)V

    .line 9
    iget-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/byazt/ff/TTRatingBar;->setStarFillNum(I)V

    .line 10
    iget-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/byazt/ff/TTRatingBar;->setStarImageWidth(F)V

    .line 11
    iget-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/byazt/ff/TTRatingBar;->setStarImageHeight(F)V

    .line 12
    iget-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/byazt/ff/TTRatingBar;->setStarImagePadding(F)V

    .line 13
    iget-object v0, p0, Lcom/byazt/dqg/ve;->gt:Lcom/byazt/ff/TTRatingBar;

    invoke-virtual {v0}, Lcom/byazt/ff/TTRatingBar;->c()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v2, 0x7e06feca

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->da:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v2, 0x7e06feba

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    .line 16
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v2, 0x7e06fffc

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byazt/dqg/ve;->rl:Landroid/widget/FrameLayout;

    .line 17
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const v2, 0x7e06ffd5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byazt/dqg/ve;->qy:Landroid/widget/FrameLayout;

    .line 18
    iget-object v0, p0, Lcom/byazt/dqg/tt;->da:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Lcom/byazt/ete/ic;)V

    const/4 v0, 0x2

    .line 19
    :try_start_0
    iget v2, p0, Lcom/byazt/dqg/tt;->uj:I

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->cf()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 20
    iget-object v2, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 21
    iget-object v2, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 22
    iget-object v3, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v4, 0x425c0000    # 55.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 23
    iget-object v3, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 24
    iget-object v3, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v2, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    iget-object v3, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 27
    iget-object v3, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 28
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->cf()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v2

    .line 32
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v2, v2, 0x9

    .line 33
    div-int/lit8 v2, v2, 0x10

    .line 34
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 35
    iget-object v3, p0, Lcom/byazt/dqg/tt;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v1}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/byazt/dqg/ve;->yp:I

    .line 37
    :cond_2
    invoke-direct {p0}, Lcom/byazt/dqg/ve;->ve()V

    .line 38
    invoke-direct {p0}, Lcom/byazt/dqg/ve;->uj()V

    .line 39
    invoke-direct {p0}, Lcom/byazt/dqg/ve;->n()V

    .line 40
    invoke-direct {p0}, Lcom/byazt/dqg/ve;->a()V

    .line 41
    invoke-direct {p0}, Lcom/byazt/dqg/ve;->sp()V

    .line 42
    invoke-virtual {p0}, Lcom/byazt/dqg/tt;->sl()V

    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;Lcom/byazt/hkv/tt;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/byazt/dqg/ve;->my:Landroid/widget/TextView;

    invoke-static {v0, p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/byazt/dqg/ve;->c(Landroid/view/View$OnTouchListener;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/byazt/dqg/ve;->c(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->cf()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 52
    iget-object p1, p0, Lcom/byazt/dqg/ve;->rl:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 53
    invoke-static {p1, p2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 54
    iget-object p1, p0, Lcom/byazt/dqg/ve;->rl:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    iget v0, p0, Lcom/byazt/dqg/ve;->yp:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 56
    iget-object v0, p0, Lcom/byazt/dqg/ve;->rl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/byazt/dqg/ve;->qy:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 58
    invoke-static {p1, p2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 59
    iget-object p1, p0, Lcom/byazt/dqg/ve;->qy:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    iget p2, p0, Lcom/byazt/dqg/ve;->yp:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 61
    iget-object p2, p0, Lcom/byazt/dqg/ve;->qy:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public tt(I)V
    .locals 14

    .line 5
    iget-object v0, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/byazt/dqg/tt;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/dqg/ve;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p1, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p1

    const v2, 0x3f266666    # 0.65f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const v4, 0x3f43d70a    # 0.765f

    const v5, 0x3f666666    # 0.9f

    .line 11
    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v5, 0x3f6147ae    # 0.88f

    .line 12
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const v6, 0x3f733333    # 0.95f

    .line 13
    invoke-static {v6, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 14
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v7, 0x6

    new-array v8, v7, [Landroid/animation/Keyframe;

    aput-object p1, v8, v1

    aput-object v2, v8, v0

    const/4 v9, 0x2

    aput-object v4, v8, v9

    const/4 v10, 0x3

    aput-object v5, v8, v10

    const/4 v11, 0x4

    aput-object v6, v8, v11

    const/4 v12, 0x5

    aput-object v3, v8, v12

    const-string v13, "scaleX"

    .line 15
    invoke-static {v13, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object p1, v7, v1

    aput-object v2, v7, v0

    aput-object v4, v7, v9

    aput-object v5, v7, v10

    aput-object v6, v7, v11

    aput-object v3, v7, v12

    const-string p1, "scaleY"

    .line 16
    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 17
    iget-object v2, p0, Lcom/byazt/dqg/tt;->x:Landroid/widget/RelativeLayout;

    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v3, v1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 19
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method
