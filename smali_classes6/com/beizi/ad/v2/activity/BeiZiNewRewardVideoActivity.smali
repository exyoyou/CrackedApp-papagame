.class public Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/FrameLayout;

.field private C:Lcom/beizi/ad/internal/view/CustomRoundImageView;

.field private D:Lcom/beizi/ad/internal/view/CustomRoundImageView;

.field private E:Landroid/widget/VideoView;

.field private F:Landroid/widget/ProgressBar;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Landroid/media/MediaPlayer;

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:I

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

.field private Z:Lcom/beizi/ad/a/a/c;

.field private a:Lcom/beizi/ad/v2/f/b;

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:I

.field private aF:I

.field private aG:I

.field private aH:I

.field private aI:I

.field private aJ:I

.field private aK:Landroid/os/Handler;

.field private aL:Z

.field private aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/ad/model/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private aN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/ad/model/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private aO:I

.field private aP:Lcom/beizi/fusion/widget/BZCarouselView;

.field private aQ:Lcom/beizi/ad/model/a/b;

.field private aR:Lcom/beizi/ad/model/a/b;

.field private aS:I

.field private aT:I

.field private aU:Lcom/beizi/ad/model/a/g;

.field private aV:Lcom/beizi/ad/model/a/g;

.field private aW:Lcom/beizi/ad/model/a/g;

.field private aX:Lcom/beizi/ad/model/a/g;

.field private aY:Landroid/widget/LinearLayout;

.field private aZ:Landroid/widget/RelativeLayout;

.field private aa:Lcom/beizi/ad/a/a/e;

.field private ab:Lcom/beizi/ad/a/a/d;

.field private ac:Lcom/beizi/ad/a/a/a;

.field private ad:Lcom/beizi/ad/a/a/b;

.field private ae:Z

.field private af:Z

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:J

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Ljava/lang/String;

.field private aq:I

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Lcom/beizi/ad/model/a/f;

.field private ax:I

.field private ay:Lcom/beizi/ad/model/a/d;

.field private az:I

.field private b:Lcom/beizi/ad/internal/d/a;

.field private ba:Landroid/widget/TextView;

.field private bb:Landroid/widget/TextView;

.field private bc:Landroid/widget/TextView;

.field private bd:Landroid/widget/TextView;

.field private be:Lcom/beizi/ad/model/a/c;

.field private bf:Z

.field private bg:Z

.field private bh:Landroid/widget/FrameLayout;

.field private bi:Landroid/widget/TextView;

.field private bj:Landroid/widget/ImageView;

.field private bk:I

.field private bl:I

.field private bm:I

.field private bn:I

.field private bo:I

.field private bp:I

.field private bq:I

.field private br:I

.field private bs:I

.field private bt:I

.field private bu:I

.field private bv:Lcom/beizi/fusion/tool/ae;

.field private bw:Z

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I:Z

    .line 8
    .line 9
    const/16 v1, 0x1e

    .line 10
    .line 11
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->S:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ae:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ak:Z

    .line 21
    .line 22
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    .line 23
    .line 24
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aF:I

    .line 25
    .line 26
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aG:I

    .line 27
    .line 28
    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v2, p0, v3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$1;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    .line 38
    .line 39
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    .line 40
    .line 41
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bn:I

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bo:I

    .line 45
    .line 46
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bp:I

    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bq:I

    .line 50
    .line 51
    const/16 v1, 0xf

    .line 52
    .line 53
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->br:I

    .line 54
    .line 55
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    .line 56
    .line 57
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bt:I

    .line 58
    .line 59
    return-void
.end method

.method private A()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

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
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/beizi/ad/a/a/e;

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->X:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/beizi/ad/a/a/e;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    .line 7
    new-instance v0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$7;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$7;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v2, v0}, Lcom/beizi/ad/a/a/e;->a(Lcom/beizi/ad/a/a/e$a;)V

    const-string v0, "shake"

    .line 8
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ai:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    invoke-virtual {v0}, Lcom/beizi/ad/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ah:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V
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

.method static synthetic A(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m()V

    return-void
.end method

.method private B()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

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
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getEulerAngleRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/beizi/ad/a/a/a;

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->X:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/beizi/ad/a/a/a;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac:Lcom/beizi/ad/a/a/a;

    .line 8
    new-instance v0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$8;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$8;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v2, v0}, Lcom/beizi/ad/a/a/a;->a(Lcom/beizi/ad/a/a/a$a;)V

    const-string v0, "eulerAngle"

    .line 9
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ai:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac:Lcom/beizi/ad/a/a/a;

    invoke-virtual {v0}, Lcom/beizi/ad/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ah:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic B(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->p()V

    return-void
.end method

.method private C()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getFullScreenClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Lcom/beizi/ad/a/a/b;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->X:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2}, Lcom/beizi/ad/a/a/b;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ad:Lcom/beizi/ad/a/a/b;

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$9;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$9;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/beizi/ad/a/a/b;->a(Landroid/view/View;Lcom/beizi/ad/a/a/b$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic C(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->y()V

    return-void
.end method

.method private D()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P:I

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/e;->b()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac:Lcom/beizi/ad/a/a/a;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic D(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->s()V

    return-void
.end method

.method static synthetic E(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    return p0
.end method

.method private E()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

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
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Lcom/beizi/ad/internal/d/a;->b(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic F(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    return-object p0
.end method

.method private F()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

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
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Lcom/beizi/ad/internal/d/a;->f(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic G(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aN:Ljava/util/List;

    return-object p0
.end method

.method private G()V
    .locals 6

    const-string v0, "\u70b9\u51fb\u5e7f\u544a\u9886\u53d6\u5956\u52b1"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/f;->g()Lcom/beizi/ad/model/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/beizi/ad/model/a/b;

    invoke-direct {v1}, Lcom/beizi/ad/model/a/b;-><init>()V

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/b;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\u5df2\u7ecf\u83b7\u5f97\u5956\u52b1"

    if-nez v1, :cond_2

    .line 6
    :try_start_1
    new-instance v1, Lcom/beizi/ad/model/a/g;

    invoke-direct {v1}, Lcom/beizi/ad/model/a/g;-><init>()V

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    const-string v3, "__TIME__\u79d2\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    .line 7
    invoke-virtual {v1, v3}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    const-string v3, "\u70b9\u51fb\u5e7f\u544a\u53ef\u63d0\u524d\u9886\u53d6\u5956\u52b1"

    invoke-virtual {v1, v3}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v1, v3}, Lcom/beizi/ad/model/a/b;->a(Lcom/beizi/ad/model/a/g;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/b;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "\u5173\u95ed"

    const-string v4, "\u8df3\u8fc7"

    if-nez v1, :cond_3

    .line 12
    :try_start_2
    new-instance v1, Lcom/beizi/ad/model/a/g;

    invoke-direct {v1}, Lcom/beizi/ad/model/a/g;-><init>()V

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;

    .line 13
    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v1, v3}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v1, v5}, Lcom/beizi/ad/model/a/b;->b(Lcom/beizi/ad/model/a/g;)V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/f;->h()Lcom/beizi/ad/model/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    if-nez v1, :cond_4

    .line 17
    new-instance v1, Lcom/beizi/ad/model/a/b;

    invoke-direct {v1}, Lcom/beizi/ad/model/a/b;-><init>()V

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/b;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aW:Lcom/beizi/ad/model/a/g;

    if-nez v1, :cond_5

    .line 19
    new-instance v1, Lcom/beizi/ad/model/a/g;

    invoke-direct {v1}, Lcom/beizi/ad/model/a/g;-><init>()V

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aW:Lcom/beizi/ad/model/a/g;

    .line 20
    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aW:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aW:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aW:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/b;->a(Lcom/beizi/ad/model/a/g;)V

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aX:Lcom/beizi/ad/model/a/g;

    if-nez v0, :cond_6

    .line 25
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aX:Lcom/beizi/ad/model/a/g;

    .line 26
    invoke-virtual {v0, v4}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aX:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v0, v4}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aX:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v0, v3}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aX:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/b;->b(Lcom/beizi/ad/model/a/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method private H()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->a()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aS:I

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->b()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/b;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 9
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v1, "__TIME__"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_3
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aS:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    if-nez v0, :cond_5

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \uff5c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_6
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aS:I

    if-nez v0, :cond_7

    .line 17
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    if-lez v0, :cond_7

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$14;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$14;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 20
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$15;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$15;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_8
    :goto_3
    return-void

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic H(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aL:Z

    return p0
.end method

.method static synthetic I(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/view/CustomRoundImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->C:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    return-object p0
.end method

.method private I()V
    .locals 3

    .line 2
    :try_start_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bm:I

    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bn:I

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->an:Z

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_4
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aS:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    if-nez v2, :cond_6

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 12
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \uff5c "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 14
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic J(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private J()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->f()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/b;->e()I

    move-result v1

    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/b;->g()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/b;->c(I)V

    .line 9
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ab()V

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/b;->c(I)V

    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W()V

    goto :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->f()I

    move-result v0

    if-ne v0, v3, :cond_7

    if-ne v1, v3, :cond_7

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz v0, :cond_7

    return-void

    .line 13
    :cond_7
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v0, :cond_8

    .line 14
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af()V

    return-void

    .line 15
    :cond_8
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic K(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method private K()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->j()Lcom/beizi/ad/model/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/beizi/ad/model/a/c;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/c;-><init>()V

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/c;->a()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u4ec5\u9700\u518d\u89c2\u770b__TIME__\u79d2\u5373\u53ef\u83b7\u53d6\u5956\u52b1"

    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/c;->a(Lcom/beizi/ad/model/a/g;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/c;->b()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u786e\u5b9a\u9000\u51fa\u5417"

    .line 11
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/c;->b(Lcom/beizi/ad/model/a/g;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    .line 14
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/c;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_4

    .line 15
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u7ee7\u7eed\u89c2\u770b"

    .line 16
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/c;->c(Lcom/beizi/ad/model/a/g;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    .line 19
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/c;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_5

    .line 20
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u5173\u95ed\u5e7f\u544a"

    .line 21
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/c;->d(Lcom/beizi/ad/model/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic L(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aJ:I

    return p0
.end method

.method private L()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aZ:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i()V

    .line 4
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D()V

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aZ:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/c;->a()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bb:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/c;->b()Lcom/beizi/ad/model/a/g;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 13
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/c;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bd:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/c;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ba:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ba:Landroid/widget/TextView;

    const-string v2, "__TIME__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->K:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bc:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 19
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$16;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$16;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bd:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 21
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$17;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$17;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aZ:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$18;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$18;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic M(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/view/CustomRoundImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    return-object p0
.end method

.method private M()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    .line 3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aZ:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->x()V

    .line 6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m()V

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h()V
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

.method static synthetic N(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method private N()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/c;->f()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/c;->e()I

    move-result v1

    .line 8
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 9
    :cond_2
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/c;->a(I)V

    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M()V

    goto :goto_0

    .line 12
    :cond_5
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M()V

    .line 13
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/c;->a(I)V

    .line 14
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ab()V

    goto :goto_0

    .line 15
    :cond_6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M()V

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/c;->a(I)V

    .line 17
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W()V

    goto :goto_0

    .line 18
    :cond_7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M()V

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->be:Lcom/beizi/ad/model/a/c;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/c;->a(I)V

    .line 20
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz v0, :cond_8

    .line 21
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z()V

    .line 22
    :cond_8
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O()V

    goto :goto_0

    .line 23
    :cond_9
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af()V

    :goto_0
    return-void
.end method

.method static synthetic O(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method private O()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i()V

    .line 4
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    .line 6
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/f;->k()Lcom/beizi/ad/model/a/a;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/beizi/ad/model/a/a;

    invoke-direct {v1}, Lcom/beizi/ad/model/a/a;-><init>()V

    .line 8
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a/a;->a(I)V

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/a;->a()I

    move-result v1

    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bk:I

    .line 10
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->P()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iput v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bk:I

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4

    const/16 v3, 0x8

    .line 14
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_4
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P()V

    .line 16
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-eqz v2, :cond_5

    const/4 v3, 0x7

    .line 17
    invoke-virtual {v2, v3}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 18
    invoke-direct {p0, v2, v3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;I)V

    .line 19
    :cond_5
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bk:I

    if-eqz v2, :cond_a

    if-ne v2, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne v2, v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_7

    return-void

    .line 21
    :cond_7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D()V

    .line 22
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-eqz v2, :cond_8

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isRedirectionCanJump"

    .line 26
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->V()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isDownload"

    .line 27
    iget-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "landingPageUrl"

    .line 28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deeplinkUrl"

    .line 29
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->O()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "webDeepLink"

    .line 30
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v3}, Lcom/beizi/ad/internal/d/a;->W()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_8
    new-instance v2, Lcom/beizi/ad/internal/download/BeiZiWebView;

    invoke-direct {v2, p0, v0}, Lcom/beizi/ad/internal/download/BeiZiWebView;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 32
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bh:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    return-void

    .line 34
    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->R()V

    .line 35
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic P(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    return-object p0
.end method

.method private P()V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bf:Z

    .line 4
    sget v1, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_container_rl:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->f(Landroid/content/Context;)I

    move-result v3

    .line 8
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->g(Landroid/content/Context;)I

    move-result v4

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 12
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    sget v1, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_close_tv:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    .line 14
    sget v1, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_logo_container_fl:I

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 16
    invoke-direct {p0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/FrameLayout;)V

    .line 17
    sget v1, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_container_fl:I

    .line 18
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bh:Landroid/widget/FrameLayout;

    .line 19
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/high16 v1, 0x41700000    # 15.0f

    .line 20
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41f00000    # 30.0f

    .line 21
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v3

    .line 22
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    .line 24
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 25
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 26
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    const-string v3, "#66000000"

    const-string v4, "#66FFFFFF"

    invoke-static {v2, v3, v0, v4, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$19;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$19;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->T()V

    :cond_1
    return-void
.end method

.method private Q()V
    .locals 14

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/beizi/fusion/R$layout;->beizi_reward_video_end_car_normal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bh:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bh:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    :cond_0
    sget v1, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_image_iv:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    sget v3, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_image_mask_view:I

    .line 9
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3, v5}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3}, Lcom/beizi/ad/model/c$d;->e()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 13
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 14
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/beizi/ad/model/c$a;

    invoke-virtual {v6}, Lcom/beizi/ad/model/c$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a/e;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 15
    invoke-virtual {v6}, Lcom/beizi/ad/model/a/e;->d()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v2

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v6, v3

    .line 16
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    iget-object v7, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-eqz v7, :cond_3

    .line 18
    invoke-virtual {v7}, Lcom/beizi/ad/internal/d/a;->J()Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v1, :cond_4

    .line 19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 20
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v7

    new-instance v8, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$20;

    invoke-direct {v8, p0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$20;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v6, v8}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    if-eqz v3, :cond_4

    .line 21
    invoke-direct {p0, v5, v3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(ILcom/beizi/ad/model/c$d;)V

    .line 22
    :cond_4
    sget v1, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_interaction_container_ll:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    .line 25
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v7, 0x42480000    # 50.0f

    .line 26
    invoke-static {p0, v7}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v7

    .line 27
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 28
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-eqz v1, :cond_6

    const/high16 v6, 0x41c80000    # 25.0f

    .line 29
    invoke-static {p0, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v6

    const-string v7, "#3976FF"

    .line 30
    invoke-static {v1, v7, v4, v2, v6}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 31
    :cond_6
    sget v2, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_app_icon_iv:I

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 33
    sget v2, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_app_title_tv:I

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 35
    sget v2, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_app_subtitle_tv:I

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-nez v3, :cond_7

    .line 37
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    invoke-virtual {v2, v3}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v3

    .line 38
    iget v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    move v8, v5

    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x1

    :goto_1
    const/16 v11, 0x59

    move-object v6, p0

    move-object v7, v3

    .line 39
    invoke-direct/range {v6 .. v13}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;IZLcom/beizi/ad/internal/view/CustomRoundImageView;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 40
    sget v2, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_interaction_iv:I

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bj:Landroid/widget/ImageView;

    .line 42
    sget v2, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_end_car_interaction_title_tv:I

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    .line 45
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bj:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V

    .line 47
    invoke-direct {p0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bj:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic Q(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w()V

    return-void
.end method

.method private R()V
    .locals 4

    .line 2
    :try_start_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bk:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ar:Z

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    int-to-long v2, v0

    const/4 v0, 0x3

    .line 6
    invoke-static {v1, v2, v3, v0}, Lcom/aggmoread/sdk/z/a/t/k;->a(Landroid/media/MediaPlayer;JI)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 8
    sget v1, Lcom/beizi/fusion/R$drawable;->beizi_voice_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I:Z

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic R(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j()V

    return-void
.end method

.method private S()V
    .locals 1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->T()V

    .line 4
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bj:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->R()V
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

.method static synthetic S(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h()V

    return-void
.end method

.method static synthetic T(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    return p0
.end method

.method private T()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aW:Lcom/beizi/ad/model/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aW:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aX:Lcom/beizi/ad/model/a/g;

    if-eqz v2, :cond_5

    .line 9
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v2}, Lcom/beizi/ad/model/a/g;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v2}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aX:Lcom/beizi/ad/model/a/g;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bi:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \uff5c "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method private U()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->f()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/b;->e()I

    move-result v1

    .line 8
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 9
    :cond_2
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/b;->c(I)V

    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ab()V

    goto :goto_0

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aR:Lcom/beizi/ad/model/a/b;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/b;->c(I)V

    .line 13
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W()V

    goto :goto_0

    .line 14
    :cond_6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r()V

    :goto_0
    return-void
.end method

.method static synthetic U(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->k()V

    return-void
.end method

.method static synthetic V(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->F:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private V()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->i()Lcom/beizi/ad/model/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    if-nez v0, :cond_4

    .line 4
    new-instance v0, Lcom/beizi/ad/model/a/d;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/d;-><init>()V

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->b(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->d()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->c(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->b()I

    move-result v0

    if-lez v0, :cond_3

    .line 10
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->d(I)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->c()I

    move-result v0

    if-lez v0, :cond_4

    .line 12
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->e(I)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->j()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bq:I

    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->k()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bt:I

    .line 15
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->i()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->br:I

    .line 17
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->b()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bm:I

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->a()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bl:I

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->o()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aI:I

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_5

    .line 22
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u606d\u559c\u83b7\u5f97\u7279\u6743"

    .line 23
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->a(Lcom/beizi/ad/model/a/g;)V

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_6

    .line 28
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u6253\u5f00\u5e76\u4f53\u9a8c\u5185\u5bb9"

    .line 29
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    const-string v1, "\u53ea\u9700\u518d\u4f53\u9a8c__TIME__\u79d2"

    .line 30
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    const-string v1, "\u4efb\u52a1\u8fbe\u6210"

    .line 31
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->b(Lcom/beizi/ad/model/a/g;)V

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->e()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_7

    .line 34
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "__TIME__\u79d2\u5373\u53ef\u83b7\u5f97\u5956\u52b1"

    .line 35
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    const-string v1, "\u5373\u53ef\u83b7\u5f97\u5956\u52b1"

    .line 36
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    const-string v1, "\u5df2\u7ecf\u63d0\u524d\u83b7\u53d6\u5230\u5956\u52b1"

    .line 37
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->c(Lcom/beizi/ad/model/a/g;)V

    .line 39
    :cond_7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->f()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_8

    .line 40
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u6d4f\u89c8\u8be6\u60c5\uff0c\u83b7\u53d6\u5956\u52b1"

    .line 41
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    const-string v1, "\u7ee7\u7eed\u6d4f\u89c8\uff0c\u83b7\u53d6\u5956\u52b1"

    .line 42
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    const-string v1, "\u5df2\u83b7\u5f97\u5956\u52b1\uff0c\u7ee7\u7eed\u4f53\u9a8c"

    .line 43
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->d(Lcom/beizi/ad/model/a/g;)V

    .line 45
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->g()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_9

    .line 46
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "__TIME__\u79d2\u540e\u7ee7\u7eed\u64ad\u653e"

    .line 47
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    const-string v1, "\u6d4f\u89c8\u65f6\u95f4\u4e0d\u8db3\uff0c\u65e0\u6cd5\u9886\u53d6\u5956\u52b1"

    .line 48
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    const-string v1, "\u606d\u559c\u60a8\uff01\u5df2\u63d0\u524d\u83b7\u53d6\u5956\u52b1"

    .line 49
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->e(Lcom/beizi/ad/model/a/g;)V

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->h()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-nez v0, :cond_a

    .line 52
    new-instance v0, Lcom/beizi/ad/model/a/g;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/g;-><init>()V

    const-string v1, "\u653e\u5f03\u7279\u6743"

    .line 53
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    const-string v1, "\u5173\u95ed"

    .line 55
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/model/a/d;->f(Lcom/beizi/ad/model/a/g;)V

    :cond_a
    return-void
.end method

.method private W()V
    .locals 12

    const-string v0, "__TIME__\u79d2"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i()V

    .line 4
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->x()V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->al:Z

    .line 7
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    .line 8
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bm:I

    if-ne v2, v1, :cond_2

    .line 9
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->an:Z

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/d;->j()I

    move-result v2

    iput v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bq:I

    .line 11
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/d;->k()I

    move-result v2

    iput v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bt:I

    .line 12
    iput v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    .line 13
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/d;->i()I

    move-result v2

    iput v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->br:I

    .line 14
    iput v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    .line 15
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$21;

    invoke-direct {v4, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$21;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->s:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 18
    invoke-virtual {v4}, Lcom/beizi/ad/model/a/d;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v4

    .line 19
    invoke-direct {p0, v2, v4}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 20
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 21
    invoke-virtual {v4}, Lcom/beizi/ad/model/a/d;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v4

    .line 22
    invoke-direct {p0, v2, v4}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 23
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v2}, Lcom/beizi/ad/model/a/d;->e()Lcom/beizi/ad/model/a/g;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {v2}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 25
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->u:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u79d2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 31
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#3976FF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v6, 0x21

    .line 34
    invoke-virtual {v5, v0, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 35
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 38
    invoke-virtual {v2}, Lcom/beizi/ad/model/a/d;->f()Lcom/beizi/ad/model/a/g;

    move-result-object v2

    .line 39
    invoke-direct {p0, v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 40
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->g()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 41
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 44
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v:Landroid/widget/TextView;

    const-string v4, "__TIME__"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 46
    invoke-virtual {v2}, Lcom/beizi/ad/model/a/d;->h()Lcom/beizi/ad/model/a/g;

    move-result-object v2

    .line 47
    invoke-direct {p0, v0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 48
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n()V

    .line 49
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz v0, :cond_7

    .line 50
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_7
    :goto_1
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aJ:I

    const/4 v4, 0x0

    if-nez v0, :cond_8

    .line 54
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_b

    .line 55
    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    invoke-virtual {v0, v4}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v4

    .line 56
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    if-le v0, v5, :cond_b

    .line 57
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/beizi/ad/model/c$d;

    goto :goto_2

    .line 58
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_b

    .line 59
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/beizi/ad/model/c$d;

    .line 62
    invoke-virtual {v5}, Lcom/beizi/ad/model/c$d;->u()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Lcom/beizi/ad/model/c$d;->v()Z

    move-result v6

    if-nez v6, :cond_9

    move-object v4, v5

    :cond_a
    if-nez v4, :cond_b

    .line 63
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    invoke-virtual {v0, v4}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v4

    :cond_b
    :goto_2
    move-object v5, v4

    .line 64
    iget v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    const/16 v9, 0x2f

    iget-object v10, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->x:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->y:Landroid/widget/TextView;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;IZLcom/beizi/ad/internal/view/CustomRoundImageView;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 65
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V

    .line 66
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 68
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->l()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 69
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 70
    :cond_c
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$22;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$22;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_d
    :goto_4
    return-void

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_5
    return-void
.end method

.method static synthetic W(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->F()V

    return-void
.end method

.method private X()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->n()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/d;->m()I

    move-result v1

    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/a/d;->g(I)V

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ab()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 8
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af()V

    goto :goto_0

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic X(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->u()V

    return-void
.end method

.method private Y()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->k()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ak:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aD:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 6
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/d;->g()Lcom/beizi/ad/model/a/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v:Landroid/widget/TextView;

    const-string v2, "__TIME__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    goto :goto_1

    :cond_4
    if-nez v0, :cond_6

    .line 12
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic Y(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t()V

    return-void
.end method

.method private Z()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    .line 3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-nez v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ak:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->S()V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h()V

    return-void
.end method

.method static synthetic Z(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I:Z

    return p0
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Ljava/lang/String;)Lcom/beizi/ad/model/a/e;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/beizi/ad/model/a/e;
    .locals 6

    const-string v0, "lauchImageUrl"

    const-string v1, "appIcon"

    const-string v2, "desc"

    const-string v3, "title"

    const/4 v4, 0x0

    .line 79
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "{"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-static {v5, v3}, Lcom/beizi/ad/internal/e/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    .line 83
    :goto_0
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-static {v5, v2}, Lcom/beizi/ad/internal/e/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 85
    :goto_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    invoke-static {v5, v1}, Lcom/beizi/ad/internal/e/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v4

    .line 87
    :goto_2
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    invoke-static {v5, v0}, Lcom/beizi/ad/internal/e/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v4

    .line 89
    :goto_3
    new-instance v3, Lcom/beizi/ad/model/a/e;

    invoke-direct {v3}, Lcom/beizi/ad/model/a/e;-><init>()V

    .line 90
    invoke-virtual {v3, p1}, Lcom/beizi/ad/model/a/e;->b(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v2}, Lcom/beizi/ad/model/a/e;->c(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3, v1}, Lcom/beizi/ad/model/a/e;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/a/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v4
.end method

.method private a()V
    .locals 1

    .line 12
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_container_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    .line 13
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_video_vv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    .line 14
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->F:Landroid/widget/ProgressBar;

    .line 15
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_voice_close_container_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d:Landroid/widget/RelativeLayout;

    .line 16
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_voice_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    .line 17
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_voice_outline_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->k:Landroid/view/View;

    .line 18
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_get_rewards_container_ll:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e:Landroid/widget/LinearLayout;

    .line 19
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_get_rewards_close_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    .line 20
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_app_icon_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/internal/view/CustomRoundImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->C:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 21
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_app_title_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->p:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_app_subtitle_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->q:Landroid/widget/TextView;

    .line 23
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_logo_container_fl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->B:Landroid/widget/FrameLayout;

    .line 24
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_interaction_container_ll:I

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    .line 26
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_interaction_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->m:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_interaction_title_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_app_download_info_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_container_ll:I

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g:Landroid/widget/LinearLayout;

    .line 31
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_content_container_ll:I

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h:Landroid/widget/LinearLayout;

    .line 33
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_tip_title_tv:I

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->s:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_tip_sub_title_tv:I

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_app_info_ll:I

    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i:Landroid/widget/LinearLayout;

    .line 39
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_app_icon_iv:I

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/internal/view/CustomRoundImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 41
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_app_title_tv:I

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->x:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_app_subtitle_tv:I

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->y:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_tip_detail_tv:I

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->u:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_interaction_container_ll:I

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j:Landroid/widget/LinearLayout;

    .line 49
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_interaction_title_tv:I

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->z:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_interaction_iv:I

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_privilege_dialog_countdown_tv:I

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_cancel_privilege_dialog_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_quit_dialog_container_rl:I

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aZ:Landroid/widget/RelativeLayout;

    .line 58
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_quit_dialog_content_container_ll:I

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aY:Landroid/widget/LinearLayout;

    .line 60
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_quit_dialog_get_reward_tv:I

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ba:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_quit_dialog_quit_tv:I

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bb:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_quit_dialog_continue_play_tv:I

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bc:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_quit_dialog_close_ad_tv:I

    .line 67
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bd:Landroid/widget/TextView;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(II)V
    .locals 6

    int-to-double v0, p2

    int-to-double p1, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double v2, v2, p1

    const/4 v4, 0x1

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_0

    .line 189
    iget-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->at:Z

    if-nez v2, :cond_0

    .line 190
    iput-boolean v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->at:Z

    const/16 v2, 0x19

    .line 191
    invoke-direct {p0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c(I)V

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, p1

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_1

    .line 192
    iget-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->au:Z

    if-nez v2, :cond_1

    .line 193
    iput-boolean v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->au:Z

    const/16 v2, 0x32

    .line 194
    invoke-direct {p0, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c(I)V

    :cond_1
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double p1, p1, v2

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_2

    .line 195
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->av:Z

    if-nez p1, :cond_2

    .line 196
    iput-boolean v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->av:Z

    const/16 p1, 0x4b

    .line 197
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c(I)V

    :cond_2
    return-void
.end method

.method private a(ILcom/beizi/ad/model/c$d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 247
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez p1, :cond_2

    return-void

    .line 248
    :cond_2
    invoke-virtual {p1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_3

    return-void

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2, v1, p1}, Lcom/beizi/ad/internal/d/a;->a(Lcom/beizi/ad/model/c$d;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    if-eqz v0, :cond_1

    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 125
    :cond_3
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bm:I

    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bn:I

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->an:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->br:I

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-nez v1, :cond_4

    .line 126
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W()V

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Lcom/beizi/ad/model/f;

    invoke-direct {v2}, Lcom/beizi/ad/model/f;-><init>()V

    .line 129
    invoke-virtual {v2, p2}, Lcom/beizi/ad/model/f;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, p6}, Lcom/beizi/ad/model/f;->e(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, p3}, Lcom/beizi/ad/model/f;->b(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, p7}, Lcom/beizi/ad/model/f;->f(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2, p4}, Lcom/beizi/ad/model/f;->c(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, p8}, Lcom/beizi/ad/model/f;->g(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2, p5}, Lcom/beizi/ad/model/f;->d(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, p9}, Lcom/beizi/ad/model/f;->h(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 137
    invoke-virtual {v0, v3}, Lcom/beizi/ad/internal/d/a;->a(Z)V

    .line 138
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i()V

    .line 139
    iget p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aJ:I

    if-nez p2, :cond_c

    const/4 p2, 0x0

    const/4 p3, 0x7

    const/4 p4, 0x2

    const/4 p5, 0x5

    if-eq p1, p4, :cond_8

    if-ne p1, p3, :cond_5

    goto :goto_0

    .line 140
    :cond_5
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    iget p3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aF:I

    if-ne p1, p3, :cond_6

    .line 141
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-eqz p1, :cond_e

    .line 142
    invoke-virtual {v0, p5}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object p1

    goto/16 :goto_1

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_e

    .line 144
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-nez p1, :cond_7

    .line 145
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    iget p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beizi/ad/model/c$d;

    goto/16 :goto_1

    .line 146
    :cond_7
    invoke-virtual {v0, p5}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object p1

    if-nez p1, :cond_f

    .line 147
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beizi/ad/model/c$d;

    goto/16 :goto_1

    .line 148
    :cond_8
    :goto_0
    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object p6

    if-nez p6, :cond_b

    .line 149
    iget p7, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    iget p8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aF:I

    if-ne p7, p8, :cond_9

    .line 150
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-eqz p1, :cond_b

    .line 151
    invoke-virtual {v0, p5}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object p1

    goto :goto_1

    .line 152
    :cond_9
    iget-object p5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    if-eqz p5, :cond_b

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_b

    if-ne p1, p4, :cond_a

    .line 153
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    iget p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beizi/ad/model/c$d;

    goto :goto_1

    :cond_a
    if-ne p1, p3, :cond_b

    .line 154
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beizi/ad/model/c$d;

    goto :goto_1

    :cond_b
    move-object p1, p6

    goto :goto_1

    .line 155
    :cond_c
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->ac()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_e

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/beizi/ad/model/c$d;

    .line 158
    invoke-virtual {p2}, Lcom/beizi/ad/model/c$d;->u()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Lcom/beizi/ad/model/c$d;->v()Z

    move-result p3

    if-nez p3, :cond_d

    move-object p1, p2

    goto :goto_1

    :cond_e
    const/4 p1, 0x0

    :cond_f
    :goto_1
    if-nez p1, :cond_10

    .line 159
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    invoke-virtual {v0, p1}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object p1

    :cond_10
    move-object p2, p1

    .line 160
    iget-object p3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    const-wide/16 p8, 0xa

    add-long/2addr p6, p8

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p6

    iget-boolean p7, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O:Z

    move-object p1, v0

    move-object p4, v2

    move-object p8, v1

    move p9, p10

    .line 163
    invoke-virtual/range {p1 .. p9}, Lcom/beizi/ad/internal/d/a;->a(Lcom/beizi/ad/model/c$d;Landroid/view/View;Lcom/beizi/ad/model/f;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 164
    iput-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O:Z

    .line 165
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ax:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_11

    .line 166
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aH:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aH:I

    .line 167
    :cond_11
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {p1}, Lcom/beizi/ad/v2/f/b;->G()V

    .line 168
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz p1, :cond_12

    .line 169
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j()V

    .line 170
    :cond_12
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bv:Lcom/beizi/fusion/tool/ae;

    if-eqz p1, :cond_13

    .line 171
    invoke-virtual {p1}, Lcom/beizi/fusion/tool/ae;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_2
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 8

    .line 252
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    int-to-double v0, v1

    div-double/2addr v2, v0

    double-to-float v0, v2

    .line 254
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->f(Landroid/content/Context;)I

    move-result v1

    .line 255
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->g(Landroid/content/Context;)I

    move-result v2

    int-to-double v6, v1

    mul-double v6, v6, v4

    int-to-double v1, v2

    div-double/2addr v6, v1

    double-to-float v1, v6

    sub-float/2addr v1, v0

    .line 256
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 257
    invoke-static {}, Lcom/beizi/ad/lance/a/c;->b()Lcom/beizi/ad/lance/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/lance/a/c;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$26;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 258
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 259
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 260
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$13;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 7

    .line 198
    :try_start_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->k()Lcom/beizi/ad/internal/d/a$a;

    move-result-object v1

    .line 201
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v4, 0x0

    .line 202
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->j()Lcom/beizi/ad/internal/d/a$a;

    move-result-object v1

    .line 205
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x5

    .line 209
    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 210
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 211
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 212
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 213
    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    .line 214
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v3

    .line 215
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 216
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "shake"

    .line 173
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    sget v0, Lcom/beizi/fusion/R$mipmap;->beizi_interaction_icon_shake:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ah:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ah:Ljava/lang/String;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$10;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/e/h;->b(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {v0, p1}, Lcom/beizi/ad/a/a/e;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    const-string v0, "eulerAngle"

    .line 180
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ai:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    sget v0, Lcom/beizi/fusion/R$mipmap;->beizi_interaction_icon_euler_angle:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ah:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ah:Ljava/lang/String;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$11;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/e/h;->b(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac:Lcom/beizi/ad/a/a/a;

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {v0, p1}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 106
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 110
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 114
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/beizi/ad/model/a/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p2}, Lcom/beizi/ad/model/a/g;->c()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 222
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/beizi/ad/internal/view/CustomRoundImageView;ILjava/lang/String;)V
    .locals 2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 96
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p2, 0x8

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    int-to-float p2, p2

    .line 98
    invoke-static {p0, p2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result p2

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 102
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$28;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Lcom/beizi/ad/internal/view/CustomRoundImageView;I)V

    invoke-virtual {v0, p3, v1}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Lcom/beizi/ad/model/c$d;I)V
    .locals 7

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->Z()Lcom/beizi/ad/model/l;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->Y()Lcom/beizi/ad/model/l;

    move-result-object v0

    :goto_0
    move-object v5, v0

    if-nez v5, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_5

    .line 227
    invoke-virtual {p1}, Lcom/beizi/ad/model/c$d;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/model/c$a;

    invoke-virtual {v0}, Lcom/beizi/ad/model/c$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 230
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->d()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    invoke-virtual {v5, v1}, Lcom/beizi/ad/model/l;->a(Ljava/lang/String;)V

    .line 233
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 235
    invoke-virtual {v5, v1}, Lcom/beizi/ad/model/l;->b(Ljava/lang/String;)V

    .line 236
    :cond_4
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    invoke-virtual {v5, v0}, Lcom/beizi/ad/model/l;->c(Ljava/lang/String;)V

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bv:Lcom/beizi/fusion/tool/ae;

    if-eqz v0, :cond_6

    .line 240
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ae;->b()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bv:Lcom/beizi/fusion/tool/ae;

    .line 242
    :cond_6
    new-instance v0, Lcom/beizi/fusion/tool/ae;

    invoke-direct {v0}, Lcom/beizi/fusion/tool/ae;-><init>()V

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bv:Lcom/beizi/fusion/tool/ae;

    .line 243
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->f(Landroid/content/Context;)I

    move-result v3

    .line 244
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->g(Landroid/content/Context;)I

    move-result v4

    .line 245
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bv:Lcom/beizi/fusion/tool/ae;

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;

    invoke-direct {v6, p0, p2, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$25;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILcom/beizi/ad/model/c$d;)V

    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/tool/ae;->a(Landroid/view/ViewGroup;IILcom/beizi/ad/model/l;Lcom/beizi/fusion/tool/ae$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private a(Lcom/beizi/ad/model/c$d;IZLcom/beizi/ad/internal/view/CustomRoundImageView;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/beizi/ad/model/c$d;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/model/c$a;

    invoke-virtual {v0}, Lcom/beizi/ad/model/c$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->d()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->a()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object p3, v1

    move-object v2, p3

    .line 75
    :goto_0
    invoke-direct {p0, p4, p5, p3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/internal/view/CustomRoundImageView;ILjava/lang/String;)V

    .line 76
    invoke-direct {p0, p6, p7, v1, v2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p2, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(ILcom/beizi/ad/model/c$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private a(Lcom/beizi/ad/model/c$d;Landroid/widget/ImageView;)V
    .locals 18

    move-object/from16 v10, p0

    .line 262
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 263
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/beizi/ad/model/c$d;->w()Lcom/beizi/ad/model/o;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 264
    :cond_2
    iget-object v1, v10, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {v1}, Lcom/beizi/ad/a/a/e;->d()V

    .line 266
    iput-object v2, v10, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    .line 267
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->d()I

    move-result v1

    .line 268
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->b()D

    move-result-wide v3

    .line 269
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->c()D

    move-result-wide v5

    .line 270
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->e()I

    move-result v7

    .line 271
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->j()I

    move-result v8

    .line 272
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->h()D

    move-result-wide v11

    .line 273
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->i()D

    move-result-wide v13

    .line 274
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->k()I

    move-result v9

    .line 275
    invoke-virtual {v0}, Lcom/beizi/ad/model/o;->g()I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_4

    if-lez v8, :cond_4

    const-wide/16 v16, 0x0

    cmpl-double v0, v11, v16

    if-lez v0, :cond_4

    cmpl-double v0, v13, v16

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v15, 0x0

    .line 276
    :goto_0
    new-instance v0, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-direct {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;-><init>()V

    .line 277
    iget-boolean v2, v10, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bw:Z

    if-eqz v2, :cond_5

    if-eqz v15, :cond_5

    .line 278
    invoke-virtual {v0, v8}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setShakeCount(I)V

    .line 279
    invoke-virtual {v0, v11, v12}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setShakeStartAmplitude(D)V

    .line 280
    invoke-virtual {v0, v13, v14}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setShakeEndAmplitude(D)V

    .line 281
    invoke-virtual {v0, v9}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setRegulatoryAngle(I)V

    goto :goto_1

    .line 282
    :cond_5
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setShakeCount(I)V

    .line 283
    invoke-virtual {v0, v3, v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setShakeStartAmplitude(D)V

    .line 284
    invoke-virtual {v0, v5, v6}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setShakeEndAmplitude(D)V

    .line 285
    invoke-virtual {v0, v7}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->setRegulatoryAngle(I)V

    .line 286
    :goto_1
    new-instance v7, Lcom/beizi/ad/a/a/e;

    const/4 v1, 0x0

    invoke-direct {v7, v10, v0, v1, v1}, Lcom/beizi/ad/a/a/e;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v10, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    .line 287
    new-instance v0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$27;

    move-object v1, v0

    move-object/from16 v2, p0

    move v3, v15

    move v4, v8

    move-wide v5, v11

    move-object v11, v7

    move-wide v7, v13

    invoke-direct/range {v1 .. v9}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$27;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ZIDDI)V

    invoke-virtual {v11, v0}, Lcom/beizi/ad/a/a/e;->a(Lcom/beizi/ad/a/a/e$a;)V

    const-string v0, "shake"

    .line 288
    iput-object v0, v10, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ai:Ljava/lang/String;

    .line 289
    iget-object v0, v10, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    invoke-virtual {v0}, Lcom/beizi/ad/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ah:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 290
    invoke-direct {v10, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILcom/beizi/ad/model/c$d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(ILcom/beizi/ad/model/c$d;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p10}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Lcom/beizi/ad/internal/view/CustomRoundImageView;ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/internal/view/CustomRoundImageView;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O:Z

    return p0
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aD:Z

    return p1
.end method

.method static synthetic aa(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private aa()V
    .locals 11

    const-string v0, "__TIME__\u79d2"

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->S:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->n:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/ImageView;)V

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O:Z

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    if-eqz v1, :cond_3

    return-void

    .line 7
    :cond_3
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-nez v1, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aj:J

    sub-long/2addr v1, v3

    .line 9
    iget v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ax:I

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v6, :cond_a

    cmp-long v5, v3, v7

    if-gtz v5, :cond_5

    return-void

    .line 10
    :cond_5
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bm:I

    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bn:I

    if-ne v3, v4, :cond_6

    .line 11
    iget-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->an:Z

    if-nez v3, :cond_6

    return-void

    .line 12
    :cond_6
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_8

    .line 13
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bl:I

    if-eqz v3, :cond_9

    :cond_8
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bl:I

    if-ne v3, v10, :cond_e

    iget-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v3, :cond_e

    .line 14
    :cond_9
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t()V

    .line 15
    invoke-direct {p0, v9}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(I)V

    goto :goto_1

    :cond_a
    cmp-long v5, v3, v7

    if-gtz v5, :cond_b

    .line 16
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->br:I

    if-lez v3, :cond_b

    return-void

    .line 17
    :cond_b
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aI:I

    if-lez v3, :cond_c

    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aH:I

    if-ge v4, v3, :cond_d

    :cond_c
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_e

    .line 18
    :cond_d
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t()V

    .line 19
    invoke-direct {p0, v9}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(I)V

    .line 20
    :cond_e
    :goto_1
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->s:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 21
    invoke-virtual {v4}, Lcom/beizi/ad/model/a/d;->c()Lcom/beizi/ad/model/a/g;

    move-result-object v4

    .line 22
    invoke-direct {p0, v3, v4}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 23
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long/2addr v3, v1

    long-to-int v1, v3

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    if-gtz v1, :cond_f

    .line 24
    iput v10, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    .line 25
    :cond_f
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 26
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    invoke-virtual {v1}, Lcom/beizi/ad/model/a/d;->d()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 27
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/g;->b()Ljava/lang/String;

    move-result-object v2

    .line 28
    iget-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v3, :cond_10

    .line 29
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/g;->c()Ljava/lang/String;

    move-result-object v2

    .line 30
    :cond_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u79d2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 36
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#3976FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v4, 0x21

    .line 38
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 39
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 40
    :cond_11
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_12
    :goto_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 42
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/d;->e()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 44
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 45
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/d;->f()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    const/16 v0, -0x3e7

    .line 47
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bu:I

    .line 48
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 49
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/d;->g()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 51
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ay:Lcom/beizi/ad/model/a/d;

    .line 52
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/d;->h()Lcom/beizi/ad/model/a/g;

    move-result-object v1

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V

    .line 54
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bl:I

    if-ne v0, v10, :cond_13

    .line 55
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v:Landroid/widget/TextView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$24;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$24;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_3
    return-void
.end method

.method private ab()V
    .locals 13

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42480000    # 50.0f

    .line 6
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_2

    .line 8
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->d(Landroid/content/Context;)I

    move-result v0

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p0, v5}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v0, v5

    .line 9
    :cond_2
    div-int/2addr v0, v1

    div-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 10
    aget v1, v0, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    aget v6, v0, v1

    .line 11
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v0, v4

    aget v8, v2, v4

    add-int/2addr v7, v8

    .line 12
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aget v8, v0, v1

    aget v9, v2, v1

    add-int/2addr v8, v9

    .line 13
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aget v9, v0, v4

    .line 14
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aget v10, v0, v1

    .line 15
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aget v11, v0, v4

    aget v4, v2, v4

    add-int/2addr v11, v4

    .line 16
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aget v0, v0, v1

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    move-object v1, p0

    move v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v0

    move v11, v12

    .line 18
    invoke-direct/range {v1 .. v11}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic ab(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ae:Z

    return p0
.end method

.method private ac()V
    .locals 12

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [I

    .line 2
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42480000    # 50.0f

    .line 5
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 6
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_1

    .line 7
    invoke-static {p0}, Lcom/beizi/ad/lance/a/q;->d(Landroid/content/Context;)I

    move-result v2

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p0, v5}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    .line 8
    :cond_1
    div-int/2addr v2, v0

    div-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v10

    .line 10
    new-instance v7, Lcom/beizi/ad/model/f;

    invoke-direct {v7}, Lcom/beizi/ad/model/f;-><init>()V

    .line 11
    aget v2, v0, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/beizi/ad/model/f;->a(Ljava/lang/String;)V

    .line 12
    aget v2, v0, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/beizi/ad/model/f;->e(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 13
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/beizi/ad/model/f;->b(Ljava/lang/String;)V

    .line 14
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/beizi/ad/model/f;->f(Ljava/lang/String;)V

    .line 15
    aget v3, v0, v4

    aget v5, v1, v4

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/beizi/ad/model/f;->c(Ljava/lang/String;)V

    .line 16
    aget v3, v0, v4

    aget v4, v1, v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/beizi/ad/model/f;->g(Ljava/lang/String;)V

    .line 17
    aget v3, v0, v2

    aget v4, v1, v2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/beizi/ad/model/f;->d(Ljava/lang/String;)V

    .line 18
    aget v0, v0, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/beizi/ad/model/f;->h(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/internal/d/a;->a(Z)V

    .line 20
    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    iget-object v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 23
    invoke-virtual/range {v5 .. v11}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Lcom/beizi/ad/model/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic ac(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E()V

    return-void
.end method

.method static synthetic ad(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W:Ljava/lang/String;

    return-object p0
.end method

.method private ad()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bv:Lcom/beizi/fusion/tool/ae;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ae;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bv:Lcom/beizi/fusion/tool/ae;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private ae()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->aa()Lcom/beizi/ad/model/m;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/beizi/ad/model/m;->a()I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    const/16 v2, 0x2711

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic ae(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->v()V

    return-void
.end method

.method static synthetic af(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method private af()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aQ:Lcom/beizi/ad/model/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/b;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O()V

    return-void

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r()V

    return-void
.end method

.method static synthetic ag(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aS:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ah(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ai(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic aj(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ak(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic al(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic am(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->br:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic an(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ao(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ap(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic aq(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ak:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ar(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/a/a/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 4
    :try_start_0
    sget-object v0, Lcom/beizi/ad/v2/f/b;->H:Lcom/beizi/ad/v2/f/b;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->a()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af:Z

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/f/b;->C()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->H:Z

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getTemplate()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 10
    iput-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G:Z

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G:Z

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->X:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->z()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->K()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aq:I

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->T:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Q:Z

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->h()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->R:I

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->U:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->V:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->e()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I:Z

    .line 23
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ap:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->L()Lcom/beizi/ad/model/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    const/16 v1, 0x1e

    if-nez v0, :cond_5

    .line 25
    new-instance v0, Lcom/beizi/ad/model/a/f;

    invoke-direct {v0}, Lcom/beizi/ad/model/a/f;-><init>()V

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    .line 26
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/a/f;->f(I)V

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->f()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    if-gtz v0, :cond_7

    .line 28
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->g()I

    move-result v0

    if-lez v0, :cond_6

    .line 29
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    goto :goto_1

    .line 30
    :cond_6
    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    .line 31
    :cond_7
    :goto_1
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aq:I

    if-lez v0, :cond_8

    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    if-le v1, v0, :cond_8

    .line 32
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->e()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ax:I

    .line 34
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->K:I

    .line 35
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->ab()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    .line 36
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    invoke-virtual {v0}, Lcom/beizi/ad/model/a/f;->l()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aJ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->F:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Landroid/widget/TextView;Lcom/beizi/ad/model/a/g;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 43
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ar:Z

    return p1
.end method

.method static synthetic c(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->K:I

    return p1
.end method

.method private c()V
    .locals 9

    const/high16 v0, 0x41700000    # 15.0f

    .line 4
    :try_start_0
    invoke-static {p0, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    .line 5
    invoke-static {p0, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 9
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 10
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->k:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "#66FFFFFF"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 12
    :try_start_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 15
    iget-object v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->k:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->k:Landroid/view/View;

    div-int/lit8 v6, v1, 0x2

    invoke-static {v2, v5, v4, v3, v6}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    .line 19
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 20
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 21
    iget-object v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e:Landroid/widget/LinearLayout;

    const-string v6, "#66000000"

    invoke-static {v2, v6, v4, v3, v0}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 23
    :cond_2
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    const/high16 v3, 0x42300000    # 44.0f

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 26
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 27
    iget-object v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    :cond_3
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h:Landroid/widget/LinearLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "#FFFFFF"

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 29
    :try_start_2
    invoke-static {v2, v6, v7, v5, v0}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 30
    :cond_4
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->i:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    const-string v8, "#EBF1FF"

    .line 31
    div-int/lit8 v1, v1, 0x3

    invoke-static {v2, v8, v7, v5, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x42480000    # 50.0f

    .line 35
    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    .line 36
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 37
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_6
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42f00000    # 120.0f

    .line 40
    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v8, 0x420c0000    # 35.0f

    .line 41
    invoke-static {p0, v8}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v8

    .line 42
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 43
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 44
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w:Landroid/widget/TextView;

    const-string v2, "#4DFFFFFF"

    div-int/lit8 v8, v8, 0x2

    invoke-static {v1, v2, v7, v5, v8}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 46
    :cond_7
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aY:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 47
    invoke-static {v1, v6, v7, v5, v0}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 48
    :cond_8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bc:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 51
    invoke-static {p0, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v1

    .line 52
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 53
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bc:Landroid/widget/TextView;

    const-string v2, "#3976FF"

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v2, v7, v5, v1}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    .line 58
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v1}, Lcom/beizi/ad/internal/d/a;->c(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x32

    if-ne p1, v2, :cond_3

    .line 59
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v1}, Lcom/beizi/ad/internal/d/a;->d(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x4b

    if-ne p1, v2, :cond_4

    .line 60
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v1}, Lcom/beizi/ad/internal/d/a;->e(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y()V

    return-void
.end method

.method static synthetic c(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ae:Z

    return p1
.end method

.method static synthetic d(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->L:I

    return p1
.end method

.method private d()V
    .locals 6

    .line 4
    :try_start_0
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_complaint_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$12;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$12;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 7
    invoke-static {p0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x1

    aput v4, v3, v1

    int-to-float v2, v2

    const/4 v5, 0x2

    aput v2, v3, v5

    const/4 v5, 0x3

    aput v2, v3, v5

    const/4 v5, 0x4

    aput v2, v3, v5

    const/4 v5, 0x5

    aput v2, v3, v5

    const/4 v2, 0x6

    aput v4, v3, v2

    const/4 v2, 0x7

    aput v4, v3, v2

    const-string v2, "#66000000"

    const-string v4, "#66FFFFFF"

    .line 8
    invoke-static {v0, v2, v1, v4, v3}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;[F)V
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

.method private d(I)V
    .locals 6

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " \uff5c "

    const/4 v3, 0x0

    if-lez v1, :cond_5

    if-gtz p1, :cond_5

    if-eqz v0, :cond_4

    .line 12
    :try_start_1
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/beizi/ad/model/a/g;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->c()Ljava/lang/String;

    move-result-object v3

    .line 16
    :cond_2
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aS:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    if-nez v0, :cond_3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t()V

    return-void

    .line 20
    :cond_5
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v0, :cond_6

    return-void

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aU:Lcom/beizi/ad/model/a/g;

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v3

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aV:Lcom/beizi/ad/model/a/g;

    if-eqz v1, :cond_8

    .line 24
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/g;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v3

    .line 25
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v3, "__TIME__"

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_9
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aS:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    if-nez v0, :cond_b

    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    .line 29
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    move-object v1, v3

    .line 30
    :goto_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 31
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    if-gtz p1, :cond_d

    .line 32
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->t()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_4
    return-void
.end method

.method static synthetic d(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    return p0
.end method

.method static synthetic d(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I:Z

    return p1
.end method

.method static synthetic e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bp:I

    return p1
.end method

.method static synthetic e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Landroid/widget/VideoView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D()V

    .line 5
    new-instance v0, Lcom/beizi/ad/internal/view/a/a$a;

    invoke-direct {v0, p0}, Lcom/beizi/ad/internal/view/a/a$a;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$23;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$23;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/view/a/a$a;->a(Lcom/beizi/ad/internal/view/a/a$b;)Lcom/beizi/ad/internal/view/a/a$a;

    .line 7
    invoke-virtual {v0}, Lcom/beizi/ad/internal/view/a/a$a;->a()Lcom/beizi/ad/internal/view/a/a;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aD:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aD:Z

    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 12

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [I

    .line 12
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 13
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    div-int/2addr v2, v0

    div-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 16
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget v5, v0, v4

    .line 17
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aget v6, v0, v2

    aget v7, v1, v2

    add-int/2addr v6, v7

    .line 18
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v0, v4

    aget v8, v1, v4

    add-int/2addr v7, v8

    .line 19
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aget v8, v0, v2

    .line 20
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aget v9, v0, v4

    .line 21
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aget v10, v0, v2

    aget v2, v1, v2

    add-int/2addr v10, v2

    .line 22
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aget v0, v0, v4

    aget v1, v1, v4

    add-int/2addr v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v0

    .line 24
    invoke-direct/range {v1 .. v11}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    return p1
.end method

.method private f()V
    .locals 4

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ap:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(I)V

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->F:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_ad_image_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ap:Ljava/lang/String;

    new-instance v3, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$29;

    invoke-direct {v3, p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$29;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2, v3}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(I)V

    return-void
.end method

.method static synthetic f(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    return p0
.end method

.method static synthetic f(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    return p1
.end method

.method static synthetic g(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    return p1
.end method

.method private g()V
    .locals 6

    .line 4
    :try_start_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aF:I

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->ac()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/ad/model/c$d;

    .line 9
    invoke-virtual {v1}, Lcom/beizi/ad/model/c$d;->t()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 10
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_2

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beizi/ad/model/c$d;

    if-eqz v2, :cond_7

    .line 15
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$d;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 17
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beizi/ad/model/c$a;

    invoke-virtual {v3}, Lcom/beizi/ad/model/c$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a/e;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {v3}, Lcom/beizi/ad/model/a/e;->d()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    if-nez v1, :cond_8

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    :cond_8
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aN:Ljava/util/List;

    if-nez v4, :cond_9

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aN:Ljava/util/List;

    .line 24
    :cond_9
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$d;->b()Lcom/beizi/ad/model/c$b;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 25
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->e(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->a(I)V

    .line 27
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->f(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->g(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->i(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->h(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->j(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->k(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/a/e;->m(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/beizi/ad/model/a/e;->l(Ljava/lang/String;)V

    .line 35
    :cond_a
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aN:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    if-eqz v1, :cond_f

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 37
    :cond_c
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(I)V

    .line 38
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->F:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    const/16 v2, 0x8

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_d
    sget v0, Lcom/beizi/fusion/R$id;->beizi_reward_video_group_image_container_fl:I

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 42
    new-instance v2, Lcom/beizi/fusion/widget/BZCarouselView;

    invoke-direct {v2, p0}, Lcom/beizi/fusion/widget/BZCarouselView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    .line 43
    new-instance v4, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;

    invoke-direct {v4, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$30;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v2, v4}, Lcom/beizi/fusion/widget/BZCarouselView;->setOnContentChangeListener(Lcom/beizi/fusion/widget/BZCarouselView$a;)V

    .line 44
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/widget/BZCarouselView;->setImageUrls(Ljava/util/List;)V

    .line 45
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aw:Lcom/beizi/ad/model/a/f;

    if-eqz v1, :cond_e

    .line 46
    invoke-virtual {v1}, Lcom/beizi/ad/model/a/f;->m()I

    move-result v1

    .line 47
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/widget/BZCarouselView;->setScrollInterval(I)V

    .line 48
    :cond_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$31;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$31;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h()V

    .line 52
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->p()V

    .line 53
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->y()V

    .line 54
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->s()V

    .line 55
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    if-eqz v0, :cond_10

    const/16 v1, 0x271a

    const-wide/16 v2, 0x3e8

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_f
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_3
    return-void
.end method

.method static synthetic g(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    return p0
.end method

.method static synthetic g(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bw:Z

    return p1
.end method

.method static synthetic h(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P:I

    return p1
.end method

.method private h()V
    .locals 1

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/BZCarouselView;->startCarousel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic h(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    return p0
.end method

.method static synthetic i(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    return p1
.end method

.method private i()V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/BZCarouselView;->stopCarousel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aD:Z

    return p0
.end method

.method static synthetic j(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->az:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->az:I

    return v0
.end method

.method private j()V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/BZCarouselView;->performNextCarousel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(I)V

    return-void
.end method

.method static synthetic k(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->az:I

    return p0
.end method

.method static synthetic k(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aT:I

    return p1
.end method

.method private k()V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aP:Lcom/beizi/fusion/widget/BZCarouselView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/BZCarouselView;->performLastCarousel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    return p0
.end method

.method static synthetic l(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bs:I

    return p1
.end method

.method private l()V
    .locals 3

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->J:I

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d(I)V

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    sget v2, Lcom/beizi/fusion/R$drawable;->beizi_voice_on:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    sget v2, Lcom/beizi/fusion/R$drawable;->beizi_voice_off:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->H:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "BeiZisAd"

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "isVideoCacheSuccess: true"

    .line 12
    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(I)V

    goto :goto_1

    :cond_3
    const-string v0, "isVideoCacheSuccess: false"

    .line 14
    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$32;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$33;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$2;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 20
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$3;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method static synthetic m(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->K:I

    return p0
.end method

.method private m()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->P:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->N:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    int-to-long v2, v0

    const/4 v0, 0x3

    .line 6
    invoke-static {v1, v2, v3, v0}, Lcom/aggmoread/sdk/z/a/t/k;->a(Landroid/media/MediaPlayer;JI)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic n(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->L:I

    return p0
.end method

.method private n()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method static synthetic o(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bm:I

    return p0
.end method

.method private o()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/f/b;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bn:I

    return p0
.end method

.method private p()V
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
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

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
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

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
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->B:Landroid/widget/FrameLayout;

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
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->B:Landroid/widget/FrameLayout;

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

.method static synthetic q(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bq:I

    return p0
.end method

.method private q()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$4;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bp:I

    return p0
.end method

.method private r()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/v2/f/b;->F()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private s()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aA:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aA:Z

    .line 6
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aF:I

    if-ne v2, v3, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aM:Ljava/util/List;

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beizi/ad/model/c$d;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3, v1}, Lcom/beizi/ad/internal/d/a;->a(Lcom/beizi/ad/model/c$d;Landroid/view/View;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/f/b;->E()V

    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;I)V

    goto :goto_1

    .line 15
    :cond_5
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    invoke-direct {p0, v2, v0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;I)V

    .line 16
    :goto_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ae()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic s(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->I()V

    return-void
.end method

.method private t()V
    .locals 4

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    .line 6
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/b;->A()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v3}, Lcom/beizi/ad/v2/a/b;->B()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/ad/internal/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/v2/f/b;->a(Ljava/lang/String;I)V
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

.method static synthetic t(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O()V

    return-void
.end method

.method static synthetic u(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bo:I

    return p0
.end method

.method private u()V
    .locals 1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aB:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aB:Z

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/f/b;->H()V
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

.method private v()V
    .locals 1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aC:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->m()Lcom/beizi/ad/internal/d/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aC:Z

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/f/b;->I()V
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

.method static synthetic v(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->al:Z

    return p0
.end method

.method private w()V
    .locals 12

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aF:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_2

    .line 4
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af:Z

    if-nez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a;->u()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->l()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v2}, Lcom/beizi/ad/internal/d/a;->p()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v5}, Lcom/beizi/ad/internal/d/a;->o()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v6}, Lcom/beizi/ad/internal/d/a;->r()Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v7, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v7}, Lcom/beizi/ad/internal/d/a;->q()Ljava/lang/String;

    move-result-object v7

    .line 12
    iget-object v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v8}, Lcom/beizi/ad/internal/d/a;->s()Ljava/lang/String;

    move-result-object v8

    .line 13
    iget-object v9, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v9}, Lcom/beizi/ad/internal/d/a;->t()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aN:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aO:I

    if-lt v0, v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aN:Ljava/util/List;

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/ad/model/a/e;

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 18
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 20
    :cond_4
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->f()I

    move-result v1

    .line 21
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->g()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->h()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->i()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->j()Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->k()Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->l()Ljava/lang/String;

    move-result-object v9

    .line 27
    invoke-virtual {v0}, Lcom/beizi/ad/model/a/e;->m()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    move v0, v1

    move-object v11, v7

    move-object v7, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v11

    goto :goto_0

    :cond_5
    const-string v2, ""

    const/4 v1, 0x0

    move-object v7, v1

    move-object v5, v2

    move-object v6, v5

    move-object v8, v6

    move-object v9, v8

    move-object v10, v9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 28
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 29
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v6

    goto :goto_2

    :cond_8
    move-object v0, v8

    .line 31
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | \u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | \u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | <u>\u6743\u9650\u8be6\u60c5</u> | <u>\u9690\u79c1\u534f\u8bae</u> | <u>\u529f\u80fd\u4ecb\u7ecd</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A:Landroid/widget/TextView;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$5;

    move-object v5, v2

    move-object v6, p0

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$5;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method static synthetic w(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->W()V

    return-void
.end method

.method private x()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/e;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac:Lcom/beizi/ad/a/a/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic x(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->e()V

    return-void
.end method

.method static synthetic y(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)Lcom/beizi/ad/v2/f/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    return-object p0
.end method

.method private y()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->C()V

    .line 6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->z()V

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->A()V

    .line 8
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->B()V
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

.method private z()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getRegionalClickView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "#3976FF"

    if-nez v0, :cond_1

    .line 4
    :try_start_1
    new-instance v0, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    invoke-direct {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;-><init>()V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setBackgroundAlpha(D)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setBackgroundColor(Ljava/lang/String;)V

    const-string v2, "\u70b9\u51fb\u8df3\u8f6c\u7f51\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 7
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setTitle(Ljava/lang/String;)V

    const-string v2, "#FFFFFF"

    .line 8
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setTitleColor(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ag:Ljava/lang/String;

    .line 10
    new-instance v2, Lcom/beizi/ad/a/a/c;

    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->X:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->af:Z

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/beizi/ad/a/a/c;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z:Lcom/beizi/ad/a/a/c;

    .line 11
    invoke-virtual {v2}, Lcom/beizi/ad/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/high16 v4, 0x40a00000    # 5.0f

    .line 14
    invoke-static {p0, v4}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    .line 15
    invoke-static {v0, v1, v3, v2, v4}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z:Lcom/beizi/ad/a/a/c;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/beizi/ad/a/a/c;->a(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z:Lcom/beizi/ad/a/a/c;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$6;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$6;-><init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/beizi/ad/a/a/c;->a(Lcom/beizi/ad/a/a/c$a;)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const-string v1, "#2A8BEF"

    const/high16 v4, 0x41c80000    # 25.0f

    .line 19
    invoke-static {p0, v4}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    .line 20
    invoke-static {v0, v1, v3, v2, v4}, Lcom/beizi/ad/internal/e/m;->a(Landroid/view/View;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic z(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->x()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
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
    sget p1, Lcom/beizi/fusion/R$layout;->activity_beizi_reward_video:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->c()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->d()V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    .line 22
    .line 23
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aF:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->l()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->f()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->g()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    .line 52
    .line 53
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aE:I

    .line 60
    .line 61
    move-object v3, p1

    .line 62
    move v4, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aL:Z

    .line 66
    .line 67
    move-object v3, p1

    .line 68
    const/4 v4, 0x3

    .line 69
    :goto_1
    iget-boolean v5, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aL:Z

    .line 70
    .line 71
    iget-object v6, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->C:Lcom/beizi/ad/internal/view/CustomRoundImageView;

    .line 72
    .line 73
    const/16 v7, 0x37

    .line 74
    .line 75
    iget-object v8, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->p:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v9, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->q:Landroid/widget/TextView;

    .line 78
    .line 79
    move-object v2, p0

    .line 80
    invoke-direct/range {v2 .. v9}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/model/c$d;IZLcom/beizi/ad/internal/view/CustomRoundImageView;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->V()V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->K()V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->G()V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->H()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->q()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_2
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
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z:Lcom/beizi/ad/a/a/c;

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
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->Z:Lcom/beizi/ad/a/a/c;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

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
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa:Lcom/beizi/ad/a/a/e;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac:Lcom/beizi/ad/a/a/a;

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
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ac:Lcom/beizi/ad/a/a/a;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ab:Lcom/beizi/ad/a/a/d;

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
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ab:Lcom/beizi/ad/a/a/d;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ad:Lcom/beizi/ad/a/a/b;

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
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ad:Lcom/beizi/ad/a/a/b;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_5
    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aK:Landroid/os/Handler;

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ad()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
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
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ak:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->D()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->b:Lcom/beizi/ad/internal/d/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a:Lcom/beizi/ad/v2/f/b;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ak:Z

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->x()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aa()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->S()V

    .line 25
    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aj:J

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ao:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->E:Landroid/widget/VideoView;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->M:Z

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->ar:Z

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->as:Z

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->bg:Z

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->S:Z

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->h()V

    .line 68
    .line 69
    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->S:Z

    .line 72
    .line 73
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->am:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->O:Z

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->br:I

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aj:J

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aj:J

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iput-wide v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->aj:J

    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method
