.class public Lcom/byazt/dqg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x2e
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ete/ic;

.field public c:Lcom/byazt/pop/ve;

.field public i:Lcom/byazt/rpt/FullRewardExpressView;

.field public final n:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public sp:Ljava/lang/String;

.field public tt:Z

.field public uj:Z

.field public ve:Z

.field public x:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/dqg/n;->tt:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/dqg/n;->ve:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/byazt/dqg/n;->uj:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dqg/n;)Lcom/byazt/lcf/TTBaseVideoActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 47
    instance-of v2, v1, Lcom/byazt/omf/EmptyView;

    if-eqz v2, :cond_0

    .line 48
    check-cast v1, Lcom/byazt/omf/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/byazt/ete/ic;)Lcom/byazt/pop/ve;
    .locals 2

    .line 43
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/byazt/dqg/n;->sp:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/byazt/dqg/n;->a:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 42
    :goto_0
    new-instance v0, Lcom/byazt/dqg/n$3;

    invoke-direct {v0, p0, p2}, Lcom/byazt/dqg/n$3;-><init>(Lcom/byazt/dqg/n;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->rl()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public c()Landroid/widget/FrameLayout;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/byazt/biq/ve;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/byazt/biq/ve;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 63
    invoke-virtual {p1}, Lcom/byazt/biq/ve;->n()I

    move-result v0

    .line 64
    iget-object v2, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/byazt/biq/ve;->tt()I

    move-result v3

    invoke-virtual {p1}, Lcom/byazt/biq/ve;->uj()I

    move-result p1

    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/byazt/rpt/FullRewardExpressView;->c(IIII)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dh/ve;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/byazt/rpt/FullRewardExpressView;->setVideoController(Lcom/byazt/dh/ve;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 2
    iget-boolean v0, p0, Lcom/byazt/dqg/n;->uj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/dqg/n;->uj:Z

    .line 4
    iput-object p1, p0, Lcom/byazt/dqg/n;->a:Lcom/byazt/ete/ic;

    .line 5
    iput-object p3, p0, Lcom/byazt/dqg/n;->sp:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/byazt/rpt/FullRewardExpressView;

    iget-object v2, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/rpt/FullRewardExpressView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 7
    iget-object p1, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->or()Lcom/byazt/dqg/RewardFullBaseLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/dqg/RewardFullBaseLayout;->getExpressFrameContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/dqg/n;->x:Landroid/view/ViewGroup;

    .line 8
    iget-object p2, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x2

    const/4 p5, -0x1

    invoke-direct {p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    iget-object p2, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->or()Lcom/byazt/dqg/RewardFullBaseLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/dqg/RewardFullBaseLayout;->getEasyPlayableContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/rpt/FullRewardExpressView;->setEasyPlayableContainer(Landroid/view/View;)V

    return-void
.end method

.method public c(Lcom/byazt/ouz/a;Lcom/byazt/ouz/n;)V
    .locals 5

    .line 15
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/byazt/dqg/n;->a:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_0
    invoke-direct {p0, v0}, Lcom/byazt/dqg/n;->c(Lcom/byazt/ete/ic;)Lcom/byazt/pop/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    .line 17
    instance-of v1, v0, Lcom/byazt/wz/c;

    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lcom/byazt/wz/c;

    invoke-virtual {v0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/dqg/n$1;

    invoke-direct {v1, p0}, Lcom/byazt/dqg/n$1;-><init>(Lcom/byazt/dqg/n;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/av/c;)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 20
    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    .line 21
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    iget-object v2, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v0, v2, v1}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/byazt/dqg/n;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;)V

    .line 24
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-direct {p0, v0}, Lcom/byazt/dqg/n;->c(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/byazt/dqg/n;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->if()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e8

    .line 27
    :goto_0
    new-instance v2, Lcom/byazt/omf/EmptyView;

    iget-object v3, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-direct {v2, v3, v4, v0}, Lcom/byazt/omf/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 28
    iget-object v0, p0, Lcom/byazt/dqg/n;->a:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/dqg/n;->sp:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v2

    .line 30
    :cond_4
    invoke-virtual {v0, v1}, Lcom/byazt/omf/EmptyView;->setNeedCheckingShow(Z)V

    .line 31
    new-instance v2, Lcom/byazt/dqg/n$2;

    invoke-direct {v2, p0}, Lcom/byazt/dqg/n$2;-><init>(Lcom/byazt/dqg/n;)V

    invoke-virtual {v0, v2}, Lcom/byazt/omf/EmptyView;->setCallback(Lcom/byazt/omf/EmptyView$c;)V

    .line 32
    iget-object v2, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p1, v2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 33
    const-class v2, Lcom/byazt/nat/c;

    invoke-virtual {p1, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v3

    check-cast v3, Lcom/byazt/nat/c;

    iget-object v4, p0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    invoke-virtual {v3, v4}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 34
    iget-object v3, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v3, p1}, Lcom/byazt/ouz/NativeExpressView;->setClickListener(Lcom/byazt/hkv/tt;)V

    .line 35
    iget-object p1, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p2, p1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 36
    invoke-virtual {p2, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    invoke-virtual {p1, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 37
    iget-object p1, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p1, p2}, Lcom/byazt/ouz/NativeExpressView;->setClickCreativeListener(Lcom/byazt/hkv/c;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/byazt/omf/EmptyView;->setNeedCheckingShow(Z)V

    .line 39
    iget-object p1, p0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    iget-object p2, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-direct {p0, p1, p2}, Lcom/byazt/dqg/n;->c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/ouz/c;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    return-void
.end method

.method public c(Lcom/byazt/ouz/sl;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/rpt/FullRewardExpressView;->setExpressVideoListenerProxy(Lcom/byazt/ouz/sl;)V

    return-void
.end method

.method public c(Lcom/byazt/ua/c$c;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/byazt/dqg/n;->c:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ua/c$c;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/dqg/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Ljava/lang/CharSequence;IIZ)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getJsObject()Lcom/byazt/omf/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/byazt/dqg/n;->n:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/byazt/dqg/n;->tt:Z

    return-void
.end method

.method public da()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getShowDLFactorsEventParams()B

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->nu()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->z()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public t()Lcom/byazt/xl/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->getRenderResult()Lcom/byazt/xl/yp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dqg/n;->ve:Z

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dqg/n;->tt:Z

    return v0
.end method

.method public u()Lcom/byazt/rpt/FullRewardExpressView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->t()V

    :cond_0
    return-void
.end method

.method public uj(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->ve(Z)V

    :cond_0
    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/n;->x:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/dqg/n;->ve:Z

    return v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->nu()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public yp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getJsObject()Lcom/byazt/omf/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->getJsObject()Lcom/byazt/omf/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->sp(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string v0, "isVerifyReward"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/n;->i:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->rh()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
