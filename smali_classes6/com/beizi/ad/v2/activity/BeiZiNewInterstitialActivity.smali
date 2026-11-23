.class public Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Landroid/media/MediaPlayer;

.field private F:Z

.field private G:I

.field private H:Z

.field private I:I

.field private J:Landroid/os/CountDownTimer;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

.field private R:Lcom/beizi/ad/a/a/c;

.field private S:Lcom/beizi/ad/a/a/e;

.field private T:Lcom/beizi/ad/a/a/d;

.field private U:Lcom/beizi/ad/a/a/a;

.field private V:Lcom/beizi/ad/a/a/b;

.field private W:Z

.field private X:Ljava/util/Timer;

.field private Y:Ljava/util/TimerTask;

.field private Z:Z

.field protected a:Landroid/os/Handler;

.field private aa:Lcom/beizi/fusion/tool/ae;

.field private b:Lcom/beizi/ad/v2/c/b;

.field private c:Lcom/beizi/ad/internal/d/a;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/FrameLayout;

.field private t:Lcom/beizi/ad/internal/view/CustomRoundImageView;

.field private u:Lcom/beizi/ad/internal/view/CustomRoundImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/VideoView;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->C:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->F:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->K:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->W:Z

    .line 15
    .line 16
    new-instance v0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$1;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$1;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->G:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->G:I

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->S:Lcom/beizi/ad/a/a/e;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/e;->b()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->U:Lcom/beizi/ad/a/a/a;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/a;->b()V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->J:Landroid/os/CountDownTimer;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 53
    .line 54
    .line 55
    :cond_4
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->J:Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method private B()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->d:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->Y()Lcom/beizi/ad/model/l;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    if-nez v6, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Lcom/beizi/fusion/tool/ae;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/beizi/fusion/tool/ae;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->aa:Lcom/beizi/fusion/tool/ae;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->f(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->g(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->aa:Lcom/beizi/fusion/tool/ae;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->d:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    new-instance v7, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$14;

    .line 37
    .line 38
    invoke-direct {v7, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$14;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v2 .. v7}, Lcom/beizi/fusion/tool/ae;->a(Landroid/view/ViewGroup;IILcom/beizi/ad/model/l;Lcom/beizi/fusion/tool/ae$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method private C()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->aa:Lcom/beizi/fusion/tool/ae;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ae;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->aa:Lcom/beizi/fusion/tool/ae;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private D()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->F:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->aa()Lcom/beizi/ad/model/m;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/beizi/ad/model/m;->a()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-gtz v0, :cond_3

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a:Landroid/os/Handler;

    .line 30
    .line 31
    const/16 v2, 0x2711

    .line 32
    .line 33
    int-to-long v3, v0

    .line 34
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_4
    :goto_0
    return-void
.end method

.method private E()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->aa()Lcom/beizi/ad/model/m;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    invoke-virtual {v1}, Lcom/beizi/ad/model/m;->b()I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_2
    return v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return v0
.end method

.method private F()V
    .locals 14

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    div-int/2addr v2, v0

    .line 49
    div-int/2addr v3, v0

    .line 50
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v2, 0x0

    .line 55
    aget v3, v0, v2

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v3, 0x1

    .line 62
    aget v4, v0, v3

    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    aget v4, v0, v2

    .line 69
    .line 70
    aget v7, v1, v2

    .line 71
    .line 72
    add-int/2addr v4, v7

    .line 73
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    aget v4, v0, v3

    .line 78
    .line 79
    aget v8, v1, v3

    .line 80
    .line 81
    add-int/2addr v4, v8

    .line 82
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    aget v4, v0, v2

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    aget v4, v0, v3

    .line 93
    .line 94
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    aget v4, v0, v2

    .line 99
    .line 100
    aget v2, v1, v2

    .line 101
    .line 102
    add-int/2addr v4, v2

    .line 103
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    aget v0, v0, v3

    .line 108
    .line 109
    aget v1, v1, v3

    .line 110
    .line 111
    add-int/2addr v0, v1

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    const/4 v13, 0x0

    .line 117
    move-object v4, p0

    .line 118
    invoke-direct/range {v4 .. v13}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->G:I

    return p1
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->E:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->F()V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p9}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/beizi/ad/model/f;

    invoke-direct {v2}, Lcom/beizi/ad/model/f;-><init>()V

    .line 11
    invoke-virtual {v2, p1}, Lcom/beizi/ad/model/f;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p5}, Lcom/beizi/ad/model/f;->e(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p2}, Lcom/beizi/ad/model/f;->b(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p6}, Lcom/beizi/ad/model/f;->f(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, p3}, Lcom/beizi/ad/model/f;->c(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p7}, Lcom/beizi/ad/model/f;->g(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, p4}, Lcom/beizi/ad/model/f;->d(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, p8}, Lcom/beizi/ad/model/f;->h(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v3}, Lcom/beizi/ad/internal/d/a;->a(Z)V

    .line 20
    iget-object p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e:Landroid/widget/LinearLayout;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    const-wide/16 p7, 0xa

    add-long/2addr p5, p7

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    iget-boolean p6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->F:Z

    move-object p1, v0

    move-object p3, v2

    move-object p7, v1

    move p8, p9

    .line 23
    invoke-virtual/range {p1 .. p8}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Lcom/beizi/ad/model/f;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 24
    iput-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->F:Z

    .line 25
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    invoke-virtual {p1}, Lcom/beizi/ad/v2/c/b;->E()V

    .line 26
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->aa:Lcom/beizi/fusion/tool/ae;

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/beizi/fusion/tool/ae;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->W:Z

    return p1
.end method

.method static synthetic b(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 3
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_root_container_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->d:Landroid/widget/RelativeLayout;

    .line 4
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_content_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->m:Landroid/widget/RelativeLayout;

    .line 5
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_container_ll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e:Landroid/widget/LinearLayout;

    .line 6
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_complain_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_close_container_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->n:Landroid/widget/RelativeLayout;

    .line 8
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_close_text_container_ll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f:Landroid/widget/LinearLayout;

    .line 9
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_close_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->w:Landroid/widget/ImageView;

    .line 10
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_countdown_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i:Landroid/widget/TextView;

    .line 11
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_material_container_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    .line 12
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_video_replay_container_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p:Landroid/widget/RelativeLayout;

    .line 13
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_video_replay_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->x:Landroid/widget/ImageView;

    .line 14
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_logo_container_fl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->s:Landroid/widget/FrameLayout;

    .line 15
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_img_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/internal/view/CustomRoundImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 16
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_video_vv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    .line 17
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_app_icon_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/internal/view/CustomRoundImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 18
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_divide_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->z:Landroid/view/View;

    .line 19
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_voice_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    .line 20
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_title_container_ll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->g:Landroid/widget/LinearLayout;

    .line 21
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_title_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_subtitle_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_title_divider_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A:Landroid/view/View;

    .line 24
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_interaction_container_landscape_rl:I

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    .line 26
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_interaction_container_portrait_rl:I

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    .line 28
    sget v0, Lcom/beizi/fusion/R$id;->beizi_interstitial_ad_app_download_info_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->j:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->C:Z

    return p1
.end method

.method private c()V
    .locals 3

    .line 2
    :try_start_0
    sget-object v0, Lcom/beizi/ad/v2/c/b;->H:Lcom/beizi/ad/v2/c/b;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    .line 3
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->a()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Z:Z

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getTemplate()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 7
    iput-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->P:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->z()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->O:Ljava/lang/String;

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->O:Ljava/lang/String;

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->L:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->H:Z

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->h()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->I:I

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->e()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->C:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->H:Z

    return p0
.end method

.method static synthetic d(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->I:I

    return p0
.end method

.method private d()V
    .locals 12

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e:Landroid/widget/LinearLayout;

    const-string v3, "#FFFFFF"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    const/high16 v2, 0x42440000    # 49.0f

    .line 4
    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41980000    # 19.0f

    .line 5
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v3

    const/high16 v6, 0x41000000    # 8.0f

    .line 6
    invoke-static {p0, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42500000    # 52.0f

    .line 7
    invoke-static {p0, v7}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v7

    .line 8
    iget-object v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "#66303030"

    if-eqz v8, :cond_0

    .line 9
    :try_start_1
    invoke-static {v8, v9, v5, v4, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 10
    iget-object v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 13
    iput v3, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    invoke-virtual {v8, v6, v6, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0x11

    .line 15
    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-boolean v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D:Z

    if-eqz v8, :cond_1

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 19
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 20
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 21
    invoke-virtual {v2, v5, v6, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 22
    iget-object v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 26
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 27
    invoke-virtual {v2, v5, v6, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 28
    iget-object v7, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f:Landroid/widget/LinearLayout;

    invoke-static {v2, v9, v5, v4, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 30
    :cond_2
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    iget-object v7, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i:Landroid/widget/TextView;

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v9, v5, v4, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->w:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 39
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 40
    invoke-virtual {v1, v5, v6, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_4
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->f(Landroid/content/Context;)I

    move-result v1

    .line 43
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->g(Landroid/content/Context;)I

    move-result v2

    int-to-double v3, v1

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double v6, v6, v3

    double-to-int v1, v6

    const/high16 v6, 0x40a00000    # 5.0f

    .line 44
    invoke-static {p0, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v7

    .line 45
    iget-boolean v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    const/4 v9, -0x2

    if-eqz v8, :cond_6

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double v3, v3, v7

    double-to-int v1, v3

    .line 46
    invoke-static {p0, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v7

    .line 47
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_7

    mul-int/lit8 v3, v7, 0x3

    sub-int v3, v1, v3

    .line 50
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 51
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 52
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->L:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 53
    invoke-static {p0, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v5, v7, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_5
    int-to-double v3, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    mul-double v3, v3, v10

    double-to-int v3, v3

    .line 54
    invoke-static {p0, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    .line 55
    invoke-virtual {v0, v5, v3, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 57
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_7

    .line 60
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 61
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v3, v7, 0x3

    .line 62
    invoke-virtual {v0, v5, v3, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 63
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_8

    .line 66
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 67
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 68
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v1, v7

    .line 71
    iget-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    if-eqz v3, :cond_9

    int-to-double v3, v1

    const-wide v5, 0x3fe1eb851eb851ecL    # 0.56

    goto :goto_2

    :cond_9
    int-to-double v3, v1

    const-wide v5, 0x3ffc7ae147ae147bL    # 1.78

    :goto_2
    mul-double v3, v3, v5

    double-to-int v3, v3

    int-to-double v4, v3

    int-to-double v6, v2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double v8, v8, v6

    cmpl-double v2, v4, v8

    if-lez v2, :cond_a

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v2

    double-to-int v3, v6

    .line 72
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_b

    .line 73
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 74
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 75
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_3
    return-void
.end method

.method static synthetic e(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q()V

    return-void
.end method

.method private e()Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->H:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->I:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic f(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Lcom/beizi/ad/internal/view/CustomRoundImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private g()V
    .locals 8

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->J:Landroid/os/CountDownTimer;

    .line 3
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->I:I

    .line 4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    new-instance v7, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$12;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$12;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;JJ)V

    iput-object v7, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->J:Landroid/os/CountDownTimer;

    .line 11
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private h()V
    .locals 3

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->O:Ljava/lang/String;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$15;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$15;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic h(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getComplain()Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;->getOpen()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$16;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$16;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A()V

    .line 3
    new-instance v0, Lcom/beizi/ad/internal/view/a/a$a;

    invoke-direct {v0, p0}, Lcom/beizi/ad/internal/view/a/a$a;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$17;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$17;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/view/a/a$a;->a(Lcom/beizi/ad/internal/view/a/a$b;)Lcom/beizi/ad/internal/view/a/a$a;

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/internal/view/a/a$a;->a()Lcom/beizi/ad/internal/view/a/a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r()V

    return-void
.end method

.method private k()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->z:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    const/high16 v0, 0x41a00000    # 20.0f

    .line 8
    invoke-static {p0, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v3, v0, 0x2

    .line 11
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 12
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 13
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->z:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    .line 17
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 18
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_5
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->L:Ljava/lang/String;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$18;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$18;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->g()V

    return-void
.end method

.method private l()V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41500000    # 13.0f

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    .line 11
    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {p0, v4}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v2, v5, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 14
    :goto_2
    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const/high16 v4, 0x41000000    # 8.0f

    .line 24
    invoke-static {p0, v4}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_4

    .line 25
    :cond_6
    invoke-static {p0, v4}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v4, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_4
    if-eqz v0, :cond_7

    .line 26
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_9
    :goto_5
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    if-eqz v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 32
    :cond_a
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 33
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 35
    :cond_b
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A:Landroid/view/View;

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 37
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 38
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->M:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->N:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->L:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/high16 v1, 0x40a00000    # 5.0f

    .line 39
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_6

    .line 40
    :cond_c
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 41
    :goto_6
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_7
    return-void
.end method

.method static synthetic l(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->j()V

    return-void
.end method

.method static synthetic m(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Lcom/beizi/ad/v2/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    return-object p0
.end method

.method private m()V
    .locals 6

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v4, "#000000"

    .line 4
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v5

    .line 5
    invoke-static {v0, v4, v3, v2, v5}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->C:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    sget v4, Lcom/beizi/fusion/R$drawable;->beizi_voice_on:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    sget v4, Lcom/beizi/fusion/R$drawable;->beizi_voice_off:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    const-string v4, "#66303030"

    .line 12
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v1

    .line 13
    invoke-static {v0, v4, v3, v2, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$19;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$19;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/high16 v0, 0x42580000    # 54.0f

    .line 16
    invoke-static {p0, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->x:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 19
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 20
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-static {}, Lcom/beizi/ad/internal/e/s;->a()Lcom/beizi/ad/internal/e/s;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->O:Ljava/lang/String;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$20;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$20;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/beizi/ad/internal/e/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/e/s$a;)V

    .line 24
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$21;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$21;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 25
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$2;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 26
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$3;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$3;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 27
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->H:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->I:I

    if-lez v0, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->g()V

    goto :goto_2

    .line 29
    :cond_6
    invoke-virtual {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private n()V
    .locals 9

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 6
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 7
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-double v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double v5, v5, v7

    int-to-double v7, v4

    div-double/2addr v5, v7

    double-to-float v5, v5

    .line 8
    iget-object v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-lt v2, v0, :cond_1

    :goto_0
    const/4 v7, -0x1

    const/4 v8, -0x2

    goto :goto_1

    :cond_1
    if-le v4, v1, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v2

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 9
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    if-eqz v0, :cond_5

    const v0, 0x3fe3d70a    # 1.78f

    goto :goto_2

    :cond_5
    const v0, 0x3f0f5c29    # 0.56f

    :goto_2
    sub-float/2addr v0, v5

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpg-double v2, v0, v4

    if-gtz v2, :cond_6

    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/a/a/f;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v4}, Lcom/beizi/ad/a/a/f;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    const-string v1, "#FFFFFF"

    .line 17
    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v1, v3, v4, v2}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic n(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t()V

    return-void
.end method

.method static synthetic o(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Lcom/beizi/ad/internal/view/CustomRoundImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->u:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    return-object p0
.end method

.method private o()V
    .locals 7

    .line 2
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->k()Lcom/beizi/ad/internal/d/a$a;

    move-result-object v1

    .line 5
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->j()Lcom/beizi/ad/internal/d/a$a;

    move-result-object v1

    .line 9
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x5

    .line 13
    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 14
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 15
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->s:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 18
    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    .line 19
    invoke-virtual {v1, v4, v4, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 20
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$4;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$4;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$5;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$5;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic q(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    return-object p0
.end method

.method private q()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->J:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->J:Landroid/os/CountDownTimer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/beizi/ad/v2/c/b;->D()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic r(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->E:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b:Lcom/beizi/ad/v2/c/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/c/b;->C()V

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B()V

    .line 8
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private s()V
    .locals 8

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->u()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->l()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->o()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->r()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v4}, Lcom/beizi/ad/internal/d/a;->q()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v2

    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->s()Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->t()Ljava/lang/String;

    move-result-object v6

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | \u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | \u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | <u>\u6743\u9650\u8be6\u60c5</u> | <u>\u9690\u79c1\u534f\u8bae</u> | <u>\u529f\u80fd\u4ecb\u7ecd</u>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->j:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->j:Landroid/widget/TextView;

    new-instance v7, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$6;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$6;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method static synthetic s(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->C:Z

    return p0
.end method

.method static synthetic t(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->G:I

    return p0
.end method

.method private t()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->D:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->S:Lcom/beizi/ad/a/a/e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/e;->a()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->U:Lcom/beizi/ad/a/a/a;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/a;->a()V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->K:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->H:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->I:I

    if-lez v0, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->g()V

    :cond_3
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private u()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->z()V

    .line 4
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v()V

    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->w()V

    .line 6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->x()V

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic u(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->W:Z

    return p0
.end method

.method private v()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getRegionalClickView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    invoke-direct {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;-><init>()V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setBackgroundAlpha(D)V

    const-string v1, "#3976FF"

    .line 6
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setBackgroundColor(Ljava/lang/String;)V

    const-string v1, "\u70b9\u51fb\u8df3\u8f6c\u7f51\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setTitle(Ljava/lang/String;)V

    const-string v1, "#FFFFFF"

    .line 8
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setTitleColor(Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance v1, Lcom/beizi/ad/a/a/c;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->P:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Z:Z

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/beizi/ad/a/a/c;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->R:Lcom/beizi/ad/a/a/c;

    .line 10
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/a/a/c;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/a/a/c;->a(Landroid/view/ViewGroup;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->R:Lcom/beizi/ad/a/a/c;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$7;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$7;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/beizi/ad/a/a/c;->a(Lcom/beizi/ad/a/a/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic v(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->n()V

    return-void
.end method

.method static synthetic w(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method private w()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/beizi/ad/a/a/e;

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->P:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/beizi/ad/a/a/e;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->S:Lcom/beizi/ad/a/a/e;

    .line 7
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lcom/beizi/ad/a/a/e;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lcom/beizi/ad/a/a/e;->a(Landroid/view/ViewGroup;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->S:Lcom/beizi/ad/a/a/e;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$8;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$8;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/beizi/ad/a/a/e;->a(Lcom/beizi/ad/a/a/e$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic x(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)Lcom/beizi/ad/a/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->V:Lcom/beizi/ad/a/a/b;

    return-object p0
.end method

.method private x()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getScrollClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/beizi/ad/a/a/d;

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->P:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/beizi/ad/a/a/d;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->T:Lcom/beizi/ad/a/a/d;

    .line 6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->E()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/beizi/ad/a/a/d;->a(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->T:Lcom/beizi/ad/a/a/d;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/a/a/d;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->T:Lcom/beizi/ad/a/a/d;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/a/a/d;->a(Landroid/view/ViewGroup;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->T:Lcom/beizi/ad/a/a/d;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->m:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$9;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$9;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/a/a/d;->a(Landroid/view/View;Lcom/beizi/ad/a/a/d$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private y()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getEulerAngleRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/beizi/ad/a/a/a;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->P:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {v2, p0, v0, v1, v3}, Lcom/beizi/ad/a/a/a;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->U:Lcom/beizi/ad/a/a/a;

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->B:Z

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->r:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lcom/beizi/ad/a/a/a;->a(Landroid/view/ViewGroup;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->q:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/beizi/ad/a/a/a;->a(Landroid/view/ViewGroup;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->U:Lcom/beizi/ad/a/a/a;

    .line 57
    .line 58
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$10;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$10;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/beizi/ad/a/a/a;->a(Lcom/beizi/ad/a/a/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getFullScreenClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance v1, Lcom/beizi/ad/a/a/b;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->P:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0, v2}, Lcom/beizi/ad/a/a/b;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->V:Lcom/beizi/ad/a/a/b;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->m:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$11;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$11;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/beizi/ad/a/a/b;->a(Landroid/view/View;Lcom/beizi/ad/a/a/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->X:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->X:Ljava/util/Timer;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Y:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$13;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity$13;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;)V

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Y:Ljava/util/TimerTask;

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->X:Ljava/util/Timer;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Y:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget p1, Lcom/beizi/fusion/R$layout;->activity_beizi_interstitial:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->b()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->c()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->d()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->i()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->k()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->h()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->m()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->f()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->l()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->p()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->R:Lcom/beizi/ad/a/a/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/c;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->R:Lcom/beizi/ad/a/a/c;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->S:Lcom/beizi/ad/a/a/e;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/beizi/ad/a/a/e;->d()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->S:Lcom/beizi/ad/a/a/e;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->U:Lcom/beizi/ad/a/a/a;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/beizi/ad/a/a/a;->d()V

    .line 28
    .line 29
    .line 30
    :cond_2
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->U:Lcom/beizi/ad/a/a/a;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->T:Lcom/beizi/ad/a/a/d;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/beizi/ad/a/a/d;->a()V

    .line 37
    .line 38
    .line 39
    :cond_3
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->T:Lcom/beizi/ad/a/a/d;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->V:Lcom/beizi/ad/a/a/b;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/beizi/ad/a/a/b;->b()V

    .line 46
    .line 47
    .line 48
    :cond_4
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->V:Lcom/beizi/ad/a/a/b;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->X:Ljava/util/Timer;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 55
    .line 56
    .line 57
    :cond_5
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->X:Ljava/util/Timer;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Y:Ljava/util/TimerTask;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 64
    .line 65
    .line 66
    :cond_6
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->Y:Ljava/util/TimerTask;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a:Landroid/os/Handler;

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_7
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->a:Landroid/os/Handler;

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->C()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewInterstitialActivity;->t()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
