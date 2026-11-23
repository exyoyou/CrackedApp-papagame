.class public Lcom/beizi/fusion/work/c/a;
.super Lcom/beizi/fusion/work/a;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/c/c;


# instance fields
.field protected A:Lcom/beizi/fusion/tool/ad;

.field protected B:Ljava/lang/String;

.field protected C:Z

.field protected D:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

.field protected E:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

.field protected F:F

.field protected G:F

.field protected H:F

.field protected I:F

.field protected J:Ljava/lang/String;

.field protected K:Lcom/beizi/ad/e;

.field protected L:Lcom/beizi/ad/v2/d/c;

.field protected M:Landroid/view/View;

.field protected N:Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;

.field protected O:Ljava/lang/String;

.field protected P:Z

.field protected Q:Z

.field protected R:Ljava/lang/Boolean;

.field protected S:I

.field protected T:I

.field protected U:Z

.field private V:Z

.field private W:J

.field private X:J

.field private Y:Z

.field private Z:Z

.field private aa:J

.field private ab:I

.field private ac:I

.field private ad:Landroid/widget/FrameLayout;

.field private ae:Z

.field private af:[Ljava/lang/String;

.field private ag:J

.field private ah:Ljava/lang/String;

.field private ai:Z

.field private aj:Ljava/lang/String;

.field private ak:Z

.field private al:Z

.field private am:Landroid/view/ViewGroup;

.field private an:Landroid/widget/FrameLayout;

.field private ao:J

.field private ap:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private aq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected n:Landroid/content/Context;

.field protected o:Ljava/lang/String;

.field protected p:J

.field protected q:J

.field protected r:F

.field protected s:F

.field protected t:Landroid/view/ViewGroup;

.field protected u:Landroid/view/View;

.field protected v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

.field protected x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field protected z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;FF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->B:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->C:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/beizi/fusion/work/c/a;->F:F

    .line 12
    .line 13
    iput v2, p0, Lcom/beizi/fusion/work/c/a;->G:F

    .line 14
    .line 15
    iput v2, p0, Lcom/beizi/fusion/work/c/a;->H:F

    .line 16
    .line 17
    iput v2, p0, Lcom/beizi/fusion/work/c/a;->I:F

    .line 18
    .line 19
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->J:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->O:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->P:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->Q:Z

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->af:[Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "#00000000"

    .line 33
    .line 34
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->aj:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v0, Lcom/beizi/fusion/work/c/a$3;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/c/a$3;-><init>(Lcom/beizi/fusion/work/c/a;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->ap:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 42
    .line 43
    new-instance v0, Lcom/beizi/fusion/work/c/a$5;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/c/a$5;-><init>(Lcom/beizi/fusion/work/c/a;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->aq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/beizi/fusion/work/c/a;->o:Ljava/lang/String;

    .line 53
    .line 54
    iput-wide p3, p0, Lcom/beizi/fusion/work/c/a;->p:J

    .line 55
    .line 56
    iput-wide p5, p0, Lcom/beizi/fusion/work/c/a;->q:J

    .line 57
    .line 58
    iput-object p7, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 59
    .line 60
    iput-object p9, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 61
    .line 62
    iput-object p8, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 63
    .line 64
    iput p10, p0, Lcom/beizi/fusion/work/c/a;->r:F

    .line 65
    .line 66
    iput p11, p0, Lcom/beizi/fusion/work/c/a;->s:F

    .line 67
    .line 68
    new-instance p2, Lcom/beizi/fusion/work/splash/SplashContainer;

    .line 69
    .line 70
    invoke-direct {p2, p1}, Lcom/beizi/fusion/work/splash/SplashContainer;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->r()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method static synthetic A(Lcom/beizi/fusion/work/c/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/c/a;->ag:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic B(Lcom/beizi/fusion/work/c/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/c/a;->aa:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic C(Lcom/beizi/fusion/work/c/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/c/a;->X:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic D(Lcom/beizi/fusion/work/c/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/c/a;->ac:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic E(Lcom/beizi/fusion/work/c/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/c/a;->ab:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F(Lcom/beizi/fusion/work/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/c/a;->ak:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic G(Lcom/beizi/fusion/work/c/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/beizi/fusion/work/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/c/a;->al:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic I(Lcom/beizi/fusion/work/c/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/c/a;->ao:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic J(Lcom/beizi/fusion/work/c/a;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/c/a;->am:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K(Lcom/beizi/fusion/work/c/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L(Lcom/beizi/fusion/work/c/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private a(Ljava/lang/String;III)I
    .locals 2

    .line 141
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    const-string v0, "left"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "center"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le p2, p3, :cond_2

    sub-int/2addr p2, p3

    .line 144
    div-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr p4, p2

    goto :goto_2

    :cond_2
    sub-int/2addr p3, p2

    .line 145
    div-int/lit8 p3, p3, 0x2

    :goto_1
    add-int/2addr p4, p3

    goto :goto_2

    :cond_3
    const-string v0, "right"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    if-le p2, p3, :cond_4

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_4
    sub-int/2addr p3, p2

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_2
    if-gez p4, :cond_6

    const/4 p4, 0x0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return p4
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/work/c/a;->W:J

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 51
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a(Lcom/beizi/ad/e;III)V
    .locals 5

    .line 53
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aJ()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Lcom/beizi/fusion/tool/ad;

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 60
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    .line 61
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/c/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 66
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v2, :cond_5

    .line 67
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setShakeViewUuid(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    :cond_5
    if-gtz p3, :cond_6

    move p3, p4

    .line 69
    :cond_6
    iget-object p4, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->R:Ljava/lang/Boolean;

    invoke-virtual {p4, v0}, Lcom/beizi/fusion/tool/ad;->a(Ljava/lang/Boolean;)V

    .line 70
    iget-object p4, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    int-to-float v2, p2

    .line 71
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    int-to-float v3, p3

    .line 72
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 73
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v3

    .line 74
    invoke-virtual {p4, v0, v2, v3}, Lcom/beizi/fusion/tool/ad;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 75
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_7

    .line 77
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 78
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 80
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 81
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getIsHideAnim()I

    move-result v0

    if-nez v0, :cond_7

    .line 82
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_7
    invoke-direct {p0, v1}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 84
    iget-object p4, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    new-instance v0, Lcom/beizi/fusion/work/c/a$13;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/beizi/fusion/work/c/a$13;-><init>(Lcom/beizi/fusion/work/c/a;IILcom/beizi/ad/e;)V

    invoke-virtual {p4, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/tool/ad$a;)V

    .line 85
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    if-eqz p1, :cond_8

    .line 86
    iget-object p2, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    iget-object p3, p0, Lcom/beizi/fusion/work/c/a;->B:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 89
    :goto_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/tool/ad;->c(I)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 93
    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->C:Z

    .line 94
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    return-void

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/c/a;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 99
    :cond_4
    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->C:Z

    .line 100
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;D)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;I)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/work/a;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;[Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/c/a;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 8

    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aL()V

    .line 164
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->ai:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->Y:Z

    .line 167
    iput-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->ai:Z

    .line 168
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_2

    .line 169
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setNativeRuleUuid(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 172
    aget-object v3, p1, v3

    aget-object v4, p1, v0

    const/4 v0, 0x2

    aget-object v5, p1, v0

    const/4 v0, 0x3

    aget-object p1, p1, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/beizi/fusion/work/c/a$7;

    invoke-direct {v7, p0}, Lcom/beizi/fusion/work/c/a$7;-><init>(Lcom/beizi/fusion/work/c/a;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    invoke-interface/range {v0 .. v7}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/beizi/fusion/work/c/a;->V:Z

    return p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/beizi/fusion/work/c/a;->V:Z

    return p1
.end method

.method private a(Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const-string v4, ""

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x4

    :try_start_0
    new-array v7, v7, [Ljava/lang/String;

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v10, p5

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v11, p6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v7, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_1
    new-array v6, v10, [I

    .line 149
    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    float-to-double v12, v2

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v14

    int-to-double v5, v6

    div-double/2addr v12, v5

    double-to-int v5, v12

    float-to-double v12, v3

    mul-double v12, v12, v14

    int-to-double v14, v0

    div-double/2addr v12, v14

    double-to-int v0, v12

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    new-array v8, v10, [I

    .line 154
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    mul-int v3, v3, v5

    .line 155
    div-int/lit8 v3, v3, 0x64

    mul-int v6, v6, v0

    .line 156
    div-int/lit8 v6, v6, 0x64

    const/4 v0, 0x0

    aget v1, v8, v0

    add-int/2addr v1, v3

    aget v0, v8, v9

    add-int/2addr v0, v6

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aput-object v3, v7, v2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 161
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    return-object v7

    :catch_2
    move-exception v0

    .line 162
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v6

    :goto_2
    return-object v7
.end method

.method static synthetic a(Lcom/beizi/fusion/work/c/a;Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p6}, Lcom/beizi/fusion/work/c/a;->a(Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private aF()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->Y:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->ai:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->U:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aL()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->P:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->E()V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->P:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->Q:Z

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x2

    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->f()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->d(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->D()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ad()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/beizi/ad/v2/d/c;->u()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method private aG()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/beizi/fusion/tool/au;->p(Landroid/content/Context;)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    sub-long/2addr v3, v1

    .line 17
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getUserProtectTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    cmp-long v5, v3, v1

    .line 24
    .line 25
    if-gez v5, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return v0
.end method

.method private aH()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getDislikeConfig()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->D:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;->getDislikeUuid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->D:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;->getOrderData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/c/a;->b(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iput-object v1, p0, Lcom/beizi/fusion/work/c/a;->E:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;->getDislikeUuid()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setDislikeUuid(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private aI()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->E:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;->getIsShowDialog()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    return v0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->D:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;->getIsShowDialog()I

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    return v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_3
    return v0
.end method

.method private aJ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRenderRate()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private aK()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->Z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-gtz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    :cond_1
    if-gtz v1, :cond_2

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->aj:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    new-instance v1, Lcom/beizi/fusion/work/c/a$2;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/c/a$2;-><init>(Lcom/beizi/fusion/work/c/a;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->ap:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method private aL()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->ap:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->ap:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/beizi/fusion/work/c/a;->ad:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->aq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->aq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->am:Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :cond_3
    :goto_0
    return-void
.end method

.method private aM()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->ak:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->al:Z

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getNativeOptimize()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getClickArea()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getRandomNum()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getReference()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getWidth()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getHeight()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getHorizontalSpace()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getVerticalSpace()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v5, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    const v6, 0x1020002

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroid/view/ViewGroup;

    .line 86
    .line 87
    iput-object v5, p0, Lcom/beizi/fusion/work/c/a;->am:Landroid/view/ViewGroup;

    .line 88
    .line 89
    if-nez v5, :cond_6

    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    iget-object v5, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v5}, Lcom/beizi/fusion/tool/au;->m(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iget-object v6, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v6}, Lcom/beizi/fusion/tool/au;->n(Landroid/content/Context;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    iget-object v7, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 105
    .line 106
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    iget-object v8, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const/4 v9, 0x2

    .line 117
    new-array v9, v9, [I

    .line 118
    .line 119
    iget-object v10, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 120
    .line 121
    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    aget v11, v9, v10

    .line 126
    .line 127
    const/4 v12, 0x1

    .line 128
    aget v9, v9, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    const/4 v13, -0x1

    .line 131
    if-nez v1, :cond_7

    .line 132
    .line 133
    move v5, v7

    .line 134
    move v6, v8

    .line 135
    goto :goto_0

    .line 136
    :cond_7
    if-ne v1, v12, :cond_8

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    const/4 v5, -0x1

    .line 140
    const/4 v6, -0x1

    .line 141
    :goto_0
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    const-string v12, "%"

    .line 146
    .line 147
    if-nez v1, :cond_a

    .line 148
    .line 149
    :try_start_2
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_9

    .line 154
    .line 155
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    mul-int v1, v1, v5

    .line 168
    .line 169
    div-int/lit8 v5, v1, 0x64

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    :cond_a
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_c

    .line 181
    .line 182
    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    mul-int v1, v1, v6

    .line 201
    .line 202
    div-int/lit8 v1, v1, 0x64

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :goto_2
    move v6, v1

    .line 210
    goto :goto_3

    .line 211
    :catch_0
    move-exception v1

    .line 212
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    :cond_c
    :goto_3
    if-gez v5, :cond_d

    .line 216
    .line 217
    const/4 v5, -0x1

    .line 218
    :cond_d
    if-gez v6, :cond_e

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_e
    move v13, v6

    .line 222
    :goto_4
    new-instance v1, Landroid/widget/FrameLayout;

    .line 223
    .line 224
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 225
    .line 226
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    iput-object v1, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .line 233
    invoke-direct {v1, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, v4, v5, v7, v11}, Lcom/beizi/fusion/work/c/a;->a(Ljava/lang/String;III)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-direct {p0, v0, v13, v8, v9}, Lcom/beizi/fusion/work/c/a;->b(Ljava/lang/String;III)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 250
    .line 251
    const/high16 v3, 0x41c80000    # 25.0f

    .line 252
    .line 253
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-le v0, v2, :cond_f

    .line 258
    .line 259
    sub-int/2addr v0, v2

    .line 260
    :cond_f
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 261
    .line 262
    int-to-float v1, v1

    .line 263
    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 267
    .line 268
    int-to-float v0, v0

    .line 269
    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->aj:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->am:Landroid/view/ViewGroup;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    const/4 v0, 0x4

    .line 291
    new-array v0, v0, [F

    .line 292
    .line 293
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->an:Landroid/widget/FrameLayout;

    .line 294
    .line 295
    new-instance v2, Lcom/beizi/fusion/work/c/a$4;

    .line 296
    .line 297
    invoke-direct {v2, p0, v0}, Lcom/beizi/fusion/work/c/a$4;-><init>(Lcom/beizi/fusion/work/c/a;[F)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->aq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_10
    :goto_5
    return-void

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    :goto_6
    return-void
.end method

.method private aN()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/beizi/fusion/work/c/a$6;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/c/a$6;-><init>(Lcom/beizi/fusion/work/c/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/c/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/work/c/a;->ac:I

    return p1
.end method

.method private b(Ljava/lang/String;III)I
    .locals 2

    .line 41
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    const-string v0, "top"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "center"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le p2, p3, :cond_2

    sub-int/2addr p2, p3

    .line 44
    div-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr p4, p2

    goto :goto_2

    :cond_2
    sub-int/2addr p3, p2

    .line 45
    div-int/lit8 p3, p3, 0x2

    :goto_1
    add-int/2addr p4, p3

    goto :goto_2

    :cond_3
    const-string v0, "bottom"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    if-le p2, p3, :cond_4

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_4
    sub-int/2addr p3, p2

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_2
    if-gez p4, :cond_6

    const/4 p4, 0x0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return p4
.end method

.method static synthetic b(Lcom/beizi/fusion/work/c/a;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/beizi/fusion/work/c/a;->ag:J

    return-wide p1
.end method

.method static synthetic b(Lcom/beizi/fusion/work/c/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object p1
.end method

.method static synthetic b(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataDislikeConfigBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataDislikeConfigBean;

    .line 15
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataDislikeConfigBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataDislikeConfigBean;->getDislike()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->B:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/fusion/work/c/a$14;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/work/c/a$14;-><init>(Lcom/beizi/fusion/work/c/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    iget-object p1, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 11
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 12
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/tool/ap;->a()Lcom/beizi/fusion/tool/ap;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ap;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/beizi/fusion/work/c/a;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/beizi/fusion/work/c/a;->Y:Z

    return p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/c/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/c/a;->W:J

    return-wide v0
.end method

.method static synthetic c(Lcom/beizi/fusion/work/c/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/work/c/a;->X:J

    return-wide p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/c/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/work/c/a;->ai:Z

    return p1
.end method

.method static synthetic d(Lcom/beizi/fusion/work/c/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/work/c/a;->ao:J

    return-wide p1
.end method

.method static synthetic d(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic d(Lcom/beizi/fusion/work/c/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/work/c/a;->ae:Z

    return p1
.end method

.method static synthetic e(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic f(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->x()V

    return-void
.end method

.method static synthetic g(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aF()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic i(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic j(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic k(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    return-object p0
.end method

.method static synthetic l(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    return-object p0
.end method

.method static synthetic m(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    return-object p0
.end method

.method static synthetic n(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->B()V

    return-void
.end method

.method static synthetic o(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->C()V

    return-void
.end method

.method static synthetic p(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ac()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aK()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/beizi/fusion/work/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/c/a;->ai:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic t(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/beizi/fusion/work/c/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/beizi/fusion/work/c/a;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/c/a;->af:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic y(Lcom/beizi/fusion/work/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/c/a;->ae:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lcom/beizi/fusion/work/c/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/c/a;->Y:Z

    return p0
.end method


# virtual methods
.method protected a(IIFLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    int-to-double p1, p2

    div-double/2addr v0, p1

    double-to-float p1, v0

    sub-float/2addr p1, p3

    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3e19999a    # 0.15f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    .line 175
    invoke-static {}, Lcom/beizi/ad/lance/a/c;->b()Lcom/beizi/ad/lance/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/ad/lance/a/c;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/beizi/fusion/work/c/a$8;

    invoke-direct {p2, p0, p4, p5}, Lcom/beizi/fusion/work/c/a$8;-><init>(Lcom/beizi/fusion/work/c/a;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    float-to-double p1, p1

    const-wide p3, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, p1, p3

    if-lez v0, :cond_1

    .line 176
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 177
    :cond_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 8

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    iget v1, p0, Lcom/beizi/fusion/work/c/a;->r:F

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 27
    iget v1, p0, Lcom/beizi/fusion/work/c/a;->s:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 29
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "BeiZis"

    if-eqz v3, :cond_4

    .line 31
    :try_start_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNativeAd != null ? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",renderViewBean != null ? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/beizi/fusion/work/c/a;->w:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    invoke-virtual {v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    invoke-virtual {v2, v7, v7}, Landroid/view/View;->measure(II)V

    .line 35
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 37
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/ad/e;III)V

    .line 38
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aH()V

    .line 39
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->aC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/ad/e;)V

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 42
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/tool/ad;->a(Landroid/view/View;)V

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->w:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    if-eqz v1, :cond_5

    .line 45
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/d/c;->a(Ljava/util/List;)V

    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->w:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getOptimizePercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/d/c;->b(I)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->w:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getOptimizePercent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    new-instance v1, Lcom/beizi/fusion/work/c/a$10;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/work/c/a$10;-><init>(Lcom/beizi/fusion/work/c/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 4

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/beizi/ad/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    invoke-interface {v1}, Lcom/beizi/ad/e;->i()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const/4 v0, 0x2

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_4

    const-string v1, "http"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v1

    new-instance v2, Lcom/beizi/fusion/work/c/a$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/beizi/fusion/work/c/a$9;-><init>(Lcom/beizi/fusion/work/c/a;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 20
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_6

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p2, :cond_6

    .line 24
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/ad/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 5

    const-string v0, "auctionExt"

    const-string v1, "highestLossPrice"

    const-string v2, "adnId"

    const-string v3, "winPrice"

    .line 101
    :try_start_0
    iget-object v4, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    if-nez v4, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {v4, p1}, Lcom/beizi/ad/v2/a/a;->a(Ljava/util/Map;)V

    .line 103
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 105
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v4, v3}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 111
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 112
    check-cast v2, Ljava/lang/String;

    .line 113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 115
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 117
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 118
    check-cast v1, Ljava/lang/String;

    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setHighestLossPrice(Ljava/lang/String;)V

    .line 121
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 123
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 124
    check-cast p1, Ljava/lang/String;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setSecondPrice(Ljava/lang/String;)V

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 128
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected a([Ljava/lang/String;I)V
    .locals 8

    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aL()V

    .line 131
    iget-object p2, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    if-nez p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-boolean p2, p0, Lcom/beizi/fusion/work/c/a;->ai:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/beizi/fusion/work/c/a;->Y:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 133
    iput-boolean p2, p0, Lcom/beizi/fusion/work/c/a;->Y:Z

    .line 134
    iput-boolean p2, p0, Lcom/beizi/fusion/work/c/a;->ai:Z

    .line 135
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setNativeRuleUuid(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 139
    aget-object v2, p1, v2

    aget-object v3, p1, p2

    const/4 p2, 0x2

    aget-object v4, p1, p2

    const/4 p2, 0x3

    aget-object v5, p1, p2

    const/4 v6, 0x0

    new-instance v7, Lcom/beizi/fusion/work/c/a$16;

    invoke-direct {v7, p0}, Lcom/beizi/fusion/work/c/a$16;-><init>(Lcom/beizi/fusion/work/c/a;)V

    invoke-interface/range {v0 .. v7}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public aA()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v2, p0, Lcom/beizi/fusion/work/c/a;->ak:Z

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/beizi/fusion/work/c/a;->al:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v2, Lcom/beizi/fusion/work/c/a$11;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/c/a$11;-><init>(Lcom/beizi/fusion/work/c/a;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/internal/c/d;->a(Lcom/beizi/ad/e;Landroid/view/View;Lcom/beizi/ad/internal/c/b;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_2
    return-void
.end method

.method public aB()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->M:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/beizi/fusion/work/c/a$12;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/c/a$12;-><init>(Lcom/beizi/fusion/work/c/a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/v2/d/c;->a(Landroid/view/View;Lcom/beizi/ad/internal/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_1
    return-void
.end method

.method public aC()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->E:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;->getIsHide()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->D:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$DislikeConfigBean;->getIsHide()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    return v2
.end method

.method public aD()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->U:Z

    .line 2
    .line 3
    return v0
.end method

.method public aE()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aI()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->f()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->F()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v0, Lcom/beizi/fusion/widget/dialog/dislike/a$a;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/beizi/fusion/widget/dialog/dislike/a$a;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/beizi/fusion/work/c/a$15;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/c/a$15;-><init>(Lcom/beizi/fusion/work/c/a;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/widget/dialog/dislike/a$a;->a(Lcom/beizi/fusion/widget/dialog/dislike/a$c;)Lcom/beizi/fusion/widget/dialog/dislike/a$a;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/dialog/dislike/a$a;->a()Lcom/beizi/fusion/widget/dialog/dislike/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

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
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->h()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ax()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

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
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->m()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public az()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " NativeAdWorker:"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Z()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    .line 44
    .line 45
    sget-object v1, Lcom/beizi/fusion/c/g;->a:Lcom/beizi/fusion/c/g;

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->f()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 66
    .line 67
    const/16 v1, 0x279c

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget-object v1, Lcom/beizi/fusion/c/g;->b:Lcom/beizi/fusion/c/g;

    .line 74
    .line 75
    if-ne v0, v1, :cond_4

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v1, "other worker shown,"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->f()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " remove"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->P()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4

    const-string v0, "lossReason"

    const-string v1, "adnId"

    const-string v2, "winPrice"

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    if-nez v3, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {v3, p1}, Lcom/beizi/ad/v2/a/a;->b(Ljava/util/Map;)V

    .line 20
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 22
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 25
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 26
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 28
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 32
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 34
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 35
    check-cast p1, Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setLossReason(Ljava/lang/String;)V

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 39
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->N()V
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

.method public d()V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getComplain()Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->N:Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complain_config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->O:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getNativeOptimize()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getNativeUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/fusion/work/c/a;->ah:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getAdSlide()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getRandomNum()I

    move-result v2

    .line 14
    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/beizi/fusion/work/c/a;->Z:Z

    .line 15
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getNeedTime()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/beizi/fusion/work/c/a;->aa:J

    .line 16
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getDistance()I

    move-result v1

    iput v1, p0, Lcom/beizi/fusion/work/c/a;->ab:I

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getCloseClickNum()I

    move-result v1

    .line 18
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->U:Z

    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getTouchDownNum()I

    move-result v1

    .line 20
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->ak:Z

    .line 21
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getHoldSlideNum()I

    move-result v0

    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/fusion/work/c/a;->al:Z

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 24
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategy()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 26
    iput-boolean v1, p0, Lcom/beizi/fusion/work/c/a;->P:Z

    const/4 v3, 0x0

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 28
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;

    const-string v5, "290.300"

    .line 29
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getEventCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 30
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getRate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/beizi/fusion/work/c/a;->Q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getRenderView()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/fusion/work/c/a;->v:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 34
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a;->v:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->w:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    .line 35
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getDpLinkUrlList()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/beizi/fusion/tool/o;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->x:Ljava/util/List;

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    move-result-object v0

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/events/a;->a(Ljava/lang/String;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_6

    .line 39
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->s()V

    .line 40
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->t()V

    .line 41
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->u()V

    .line 43
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":requestAd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/beizi/fusion/work/c/a;->q:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    iget-wide v2, p0, Lcom/beizi/fusion/work/c/a;->q:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->u()I

    move-result v0

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 48
    invoke-virtual {p0}, Lcom/beizi/fusion/work/c/a;->k()V

    :cond_8
    :goto_2
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BEIZI"

    return-object v0
.end method

.method public h()Lcom/beizi/fusion/e/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    return-object v0
.end method

.method protected k()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->v()V

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ab()V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->z:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cool_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->B:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dl_cool_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->J:Ljava/lang/String;

    .line 8
    iget v0, p0, Lcom/beizi/fusion/work/c/a;->r:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/tool/au;->i(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/work/c/a;->r:F

    .line 10
    :cond_1
    iget v0, p0, Lcom/beizi/fusion/work/c/a;->s:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 11
    iput v1, p0, Lcom/beizi/fusion/work/c/a;->s:F

    .line 12
    :cond_2
    new-instance v0, Lcom/beizi/ad/v2/d/c;

    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    new-instance v3, Lcom/beizi/fusion/work/c/a$1;

    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/c/a$1;-><init>(Lcom/beizi/fusion/work/c/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/beizi/ad/v2/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/d;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->a(Z)V

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventBean;->clone()Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/events/EventBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    iget-wide v1, p0, Lcom/beizi/fusion/work/c/a;->p:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/beizi/ad/v2/a/a;->a(I)V

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V

    const-string v0, "S2S"

    .line 19
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->c(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->b(Ljava/lang/String;)V

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_4

    .line 26
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->C()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->c(Ljava/util/Map;)V

    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->d(Ljava/lang/String;)V

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->c()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->K:Lcom/beizi/ad/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/beizi/ad/e;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->f()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ad;->c()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/beizi/fusion/work/c/a;->aL()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ad;->d()V
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

.method public n()V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->A:Lcom/beizi/fusion/tool/ad;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ad;->a(Z)V
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

.method public o()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    return-object v0
.end method

.method protected z()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/c/a;->L:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ag()V

    :cond_0
    return-void
.end method
