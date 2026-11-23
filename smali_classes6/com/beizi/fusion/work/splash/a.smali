.class public Lcom/beizi/fusion/work/splash/a;
.super Lcom/beizi/fusion/work/a;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/tool/aj$a;
.implements Lcom/beizi/fusion/tool/am$a;
.implements Lcom/beizi/fusion/tool/aq$a;


# instance fields
.field private A:Landroid/view/View;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:J

.field private K:J

.field private L:J

.field private M:Z

.field private N:Lcom/beizi/fusion/widget/CircleProgressView;

.field private O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

.field private P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

.field private Q:F

.field private R:F

.field private S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

.field private T:I

.field private U:I

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

.field private Z:Ljava/lang/String;

.field private aA:Z

.field private aB:Lcom/beizi/fusion/tool/ao;

.field private aC:Lcom/beizi/fusion/tool/an;

.field private aD:Z

.field private aE:Lcom/beizi/fusion/tool/ae;

.field private aa:Z

.field private ab:I

.field private ac:Ljava/lang/String;

.field private ad:Lcom/beizi/fusion/tool/aq;

.field private ae:Lcom/beizi/fusion/tool/aj;

.field private af:Lcom/beizi/fusion/tool/am;

.field private ag:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;

.field private ah:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

.field private ai:Lcom/beizi/fusion/tool/ak;

.field private aj:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

.field private ak:Lcom/beizi/fusion/tool/s;

.field private al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$ScreenConfigVoBean;",
            ">;"
        }
    .end annotation
.end field

.field private am:Landroid/view/View;

.field private an:Ljava/lang/Boolean;

.field private ao:Z

.field private ap:Z

.field private aq:I

.field private ar:I

.field private as:Z

.field private at:I

.field private au:Z

.field private av:J

.field private aw:I

.field private ax:Z

.field private ay:Z

.field private az:Z

.field n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

.field p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

.field q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

.field r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

.field s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

.field t:Landroid/view/View$OnClickListener;

.field private u:Landroid/content/Context;

.field private v:Ljava/lang/String;

.field private w:J

.field private x:Lcom/beizi/ad/v2/g/a;

.field private y:Landroid/view/ViewGroup;

.field private z:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLandroid/view/View;Landroid/view/ViewGroup;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/util/List;IILcom/beizi/fusion/c/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;",
            "Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;",
            ">;II",
            "Lcom/beizi/fusion/c/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->C:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->D:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->E:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->F:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->G:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->H:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->I:Z

    .line 28
    .line 29
    const-wide/16 v1, 0x1388

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/beizi/fusion/work/splash/a;->J:J

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/beizi/fusion/work/splash/a;->Z:Ljava/lang/String;

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    .line 40
    .line 41
    const-string v1, "full"

    .line 42
    .line 43
    iput-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->ao:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->ap:Z

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    iput v0, p0, Lcom/beizi/fusion/work/splash/a;->aw:I

    .line 51
    .line 52
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/beizi/fusion/work/splash/a;->v:Ljava/lang/String;

    .line 55
    .line 56
    iput-wide p3, p0, Lcom/beizi/fusion/work/splash/a;->w:J

    .line 57
    .line 58
    iput-object p6, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    .line 59
    .line 60
    iput-object p7, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 61
    .line 62
    iput-object p8, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 63
    .line 64
    iput-object p12, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 65
    .line 66
    new-instance p2, Lcom/beizi/fusion/work/splash/SplashContainer;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Lcom/beizi/fusion/work/splash/SplashContainer;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 72
    .line 73
    iput-object p5, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    .line 74
    .line 75
    iput-object p9, p0, Lcom/beizi/fusion/work/splash/a;->B:Ljava/util/List;

    .line 76
    .line 77
    iput p10, p0, Lcom/beizi/fusion/work/splash/a;->aq:I

    .line 78
    .line 79
    iput p11, p0, Lcom/beizi/fusion/work/splash/a;->ar:I

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->r()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method static synthetic A(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/aq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/aj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/am;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->af:Lcom/beizi/fusion/tool/am;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/ak;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic G(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->ak:Lcom/beizi/fusion/tool/s;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic H(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/ao;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic I(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/tool/an;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic J(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aX()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K(Lcom/beizi/fusion/work/splash/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic M(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->D()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aL()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->M:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic X(Lcom/beizi/fusion/work/splash/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/splash/a;->L:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Y(Lcom/beizi/fusion/work/splash/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/splash/a;->J:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Z(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/work/splash/a;->aw:I

    return p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/beizi/fusion/work/splash/a;->w:J

    return-wide v0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/beizi/fusion/work/splash/a;->av:J

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/work/splash/a;->d(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;

    move-result-object p0

    return-object p0
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

    .line 68
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

    .line 69
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ah:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 83
    iput-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    .line 84
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getCoolTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/beizi/fusion/work/splash/a;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ah:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;)V

    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ah:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getUserProtectTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/beizi/fusion/work/splash/a;->c(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ah:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;)V

    return-void

    .line 89
    :cond_2
    iput-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    .line 90
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V

    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 5

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 21
    :goto_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    move-result v1

    .line 22
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/tool/aq;->h(I)V

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 25
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/splash/a;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 27
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {v1, p1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;)V

    .line 28
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p1

    .line 29
    invoke-static {p1}, Lcom/beizi/fusion/tool/ai;->b(I)I

    move-result p1

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/beizi/fusion/work/splash/a$13;

    invoke-direct {v2, p0, v0}, Lcom/beizi/fusion/work/splash/a$13;-><init>(Lcom/beizi/fusion/work/splash/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 31
    :cond_2
    iput-boolean v2, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    .line 32
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    :cond_3
    :goto_1
    return-void

    .line 33
    :cond_4
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/work/splash/a;->b(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    .line 35
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 36
    :cond_5
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getUserProtectTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/work/splash/a;->c(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    .line 38
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 39
    :cond_6
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/splash/a;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 40
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 41
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {v1, p1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;)V

    .line 42
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p1

    .line 43
    invoke-static {p1}, Lcom/beizi/fusion/tool/ai;->b(I)I

    move-result p1

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/beizi/fusion/work/splash/a$14;

    invoke-direct {v2, p0, v0}, Lcom/beizi/fusion/work/splash/a$14;-><init>(Lcom/beizi/fusion/work/splash/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 45
    :cond_7
    iput-boolean v2, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    .line 46
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Landroid/view/View;)V
    .locals 8

    .line 47
    iget v0, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getFeedback()I

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    .line 50
    :cond_0
    iget p1, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    if-nez p1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 52
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_2

    .line 53
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    new-instance p2, Lcom/beizi/fusion/update/ShakeArcView;

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/beizi/fusion/update/ShakeArcView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    .line 55
    invoke-virtual {p2, v0}, Lcom/beizi/fusion/update/ShakeArcView;->setLineRadius(I)V

    .line 56
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0xc

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 59
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-double v2, v0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-double v4, p1

    const-wide v6, 0x3fb47ae147ae147bL    # 0.08

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 60
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    iget v0, p0, Lcom/beizi/fusion/work/splash/a;->ab:I

    invoke-virtual {p1, p2, v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/update/ShakeArcView;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/beizi/fusion/tool/am$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->Z:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 66
    invoke-interface/range {p1 .. p9}, Lcom/beizi/fusion/tool/am$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;D)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Lcom/beizi/fusion/tool/am$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p9}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/tool/am$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p9}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/beizi/fusion/tool/am$a;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    int-to-float p2, p2

    invoke-static {v0, p2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p2

    .line 63
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    new-instance v1, Lcom/beizi/fusion/work/splash/a$15;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/beizi/fusion/work/splash/a$15;-><init>(Lcom/beizi/fusion/work/splash/a;ILjava/lang/String;Lcom/beizi/fusion/tool/am$a;)V

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/g/a;->b(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v1, p0

    const/4 v0, 0x1

    .line 76
    :try_start_0
    iput-boolean v0, v1, Lcom/beizi/fusion/work/splash/a;->ay:Z

    .line 77
    iget-object v2, v1, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 78
    invoke-virtual/range {v2 .. v11}, Lcom/beizi/ad/v2/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    :cond_0
    iget-object v0, v1, Lcom/beizi/fusion/work/splash/a;->aE:Lcom/beizi/fusion/tool/ae;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ae;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/splash/a;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/beizi/fusion/work/splash/a;->as:Z

    return p1
.end method

.method private aA()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splashWorkers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Z()V

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    sget-object v1, Lcom/beizi/fusion/c/g;->a:Lcom/beizi/fusion/c/g;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->az()V

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {p0}, Lcom/beizi/fusion/work/splash/a;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Lcom/beizi/fusion/c/g;->b:Lcom/beizi/fusion/c/g;

    if-ne v0, v1, :cond_2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other worker shown,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/beizi/fusion/work/splash/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " remove"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic aA(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->G()V

    return-void
.end method

.method private aB()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsImageSpeed()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsHideInteraction()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    new-instance v2, Lcom/beizi/fusion/work/splash/a$11;

    invoke-direct {v2, p0, v0}, Lcom/beizi/fusion/work/splash/a$11;-><init>(Lcom/beizi/fusion/work/splash/a;Z)V

    invoke-virtual {v1, v2}, Lcom/beizi/ad/v2/g/a;->a(Lcom/beizi/ad/v2/b/a;)V

    if-nez v0, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aC()V

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aC()V

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ap()V

    :goto_2
    return-void
.end method

.method static synthetic aB(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    return p0
.end method

.method static synthetic aC(Lcom/beizi/fusion/work/splash/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->Z:Ljava/lang/String;

    return-object p0
.end method

.method private aC()V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shakeViewBean != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",regionalClickViewBean != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",fullScreenClickBean != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeiZis"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/beizi/fusion/work/splash/a$12;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/splash/a$12;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic aD(Lcom/beizi/fusion/work/splash/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    return-object p0
.end method

.method private aD()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aI()Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/g/a;->a(Landroid/view/View;)V

    .line 7
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aJ()V

    .line 8
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->M:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aH()V

    :cond_1
    return-void
.end method

.method static synthetic aE(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private aE()V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/beizi/fusion/tool/aq;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->ao:Z

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 11
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setShakeViewUuid(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/tool/aq;->a(Ljava/lang/Boolean;)V

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 18
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v4

    .line 19
    invoke-virtual {v0, v2, v3, v4}, Lcom/beizi/fusion/tool/aq;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 21
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4

    .line 22
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 25
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 26
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aF()V

    .line 28
    invoke-direct {p0, v1}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {v2, p0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/tool/aq$a;)V

    .line 30
    invoke-direct {p0, v1, v0}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private aF()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getSensorParam()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCompliantAngle()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->isReturnAngle()Z

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/beizi/ad/v2/a/a;->g()Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    if-nez v4, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/beizi/fusion/tool/aq;->a(IIZLjava/util/Map;)V

    return-void
.end method

.method static synthetic aF(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic aG(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private aG()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, v0, Lcom/beizi/fusion/work/splash/a;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    iget-object v3, v0, Lcom/beizi/fusion/work/splash/a;->B:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    .line 4
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SKIPVIEW"

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    iget-object v4, v0, Lcom/beizi/fusion/work/splash/a;->D:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v5, "MATERIALVIEW"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v0, Lcom/beizi/fusion/work/splash/a;->C:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 10
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    iput-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    if-eqz v2, :cond_11

    .line 11
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getTapPosition()Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    move-result-object v2

    iput-object v2, v0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    .line 12
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getLayerPosition()Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    move-result-object v2

    iput-object v2, v0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    .line 13
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getSkipViewTotalTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 14
    iput-wide v2, v0, Lcom/beizi/fusion/work/splash/a;->J:J

    .line 15
    :cond_3
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getSkipUnavailableTime()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    .line 16
    iput-wide v2, v0, Lcom/beizi/fusion/work/splash/a;->L:J

    .line 17
    :cond_4
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getShowCountDown()I

    move-result v2

    iput v2, v0, Lcom/beizi/fusion/work/splash/a;->T:I

    .line 18
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getShowBorder()I

    move-result v2

    iput v2, v0, Lcom/beizi/fusion/work/splash/a;->U:I

    .line 19
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getSkipText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/beizi/fusion/work/splash/a;->V:Ljava/lang/String;

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\u8df3\u8fc7"

    .line 21
    iput-object v2, v0, Lcom/beizi/fusion/work/splash/a;->V:Ljava/lang/String;

    .line 22
    :cond_5
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getTextColor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/beizi/fusion/work/splash/a;->W:Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "#FFFFFF"

    if-eqz v2, :cond_6

    .line 24
    iput-object v3, v0, Lcom/beizi/fusion/work/splash/a;->W:Ljava/lang/String;

    .line 25
    :cond_6
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getCountDownColor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/beizi/fusion/work/splash/a;->X:Ljava/lang/String;

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    iput-object v3, v0, Lcom/beizi/fusion/work/splash/a;->X:Ljava/lang/String;

    .line 28
    :cond_7
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getRandomClick()I

    move-result v2

    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/beizi/fusion/work/splash/a;->aA:Z

    .line 29
    iget-object v2, v0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getPassPolicy()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beizi/fusion/model/AdSpacesBean$PassPolicyBean;

    .line 32
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$PassPolicyBean;->getPassType()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$PassPolicyBean;->getPassPercent()I

    move-result v3

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v5, "LAYERPASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_1
    const-string v5, "WAITPASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x1

    goto :goto_3

    :sswitch_2
    const-string v5, "RANDOMPASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    .line 35
    :pswitch_0
    iget-object v4, v0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    if-eqz v4, :cond_10

    iget-object v5, v0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    if-eqz v5, :cond_10

    .line 36
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterX()D

    move-result-wide v4

    .line 37
    iget-object v7, v0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v7}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterY()D

    move-result-wide v7

    .line 38
    iget-object v9, v0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v9}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getWidth()D

    move-result-wide v9

    .line 39
    iget-object v11, v0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v11}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getHeight()D

    move-result-wide v11

    .line 40
    iget-object v13, v0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterX()D

    move-result-wide v13

    .line 41
    iget-object v15, v0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v15}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterY()D

    move-result-wide v15

    .line 42
    iget-object v1, v0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getWidth()D

    move-result-wide v17

    .line 43
    iget-object v1, v0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getHeight()D

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmpl-double v1, v4, v21

    if-lez v1, :cond_b

    cmpl-double v1, v13, v21

    if-lez v1, :cond_b

    cmpl-double v1, v4, v13

    if-nez v1, :cond_e

    :cond_b
    cmpl-double v1, v7, v21

    if-lez v1, :cond_c

    cmpl-double v1, v15, v21

    if-lez v1, :cond_c

    cmpl-double v1, v7, v15

    if-nez v1, :cond_e

    :cond_c
    cmpl-double v1, v9, v21

    if-lez v1, :cond_d

    cmpl-double v1, v17, v21

    if-lez v1, :cond_d

    cmpl-double v1, v9, v17

    if-nez v1, :cond_e

    :cond_d
    cmpl-double v1, v11, v21

    if-lez v1, :cond_f

    cmpl-double v1, v19, v21

    if-lez v1, :cond_f

    cmpl-double v1, v11, v19

    if-eqz v1, :cond_f

    .line 44
    :cond_e
    invoke-static {v3}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/beizi/fusion/work/splash/a;->G:Z

    :cond_f
    mul-double v17, v17, v19

    mul-double v9, v9, v11

    cmpg-double v1, v17, v9

    if-gez v1, :cond_10

    .line 45
    iput-boolean v6, v0, Lcom/beizi/fusion/work/splash/a;->H:Z

    goto :goto_4

    .line 46
    :pswitch_1
    invoke-static {v3}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/beizi/fusion/work/splash/a;->E:Z

    goto :goto_4

    .line 47
    :pswitch_2
    invoke-static {v3}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/beizi/fusion/work/splash/a;->F:Z

    :cond_10
    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 48
    :cond_11
    iget-object v1, v0, Lcom/beizi/fusion/work/splash/a;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 49
    iget-object v1, v0, Lcom/beizi/fusion/work/splash/a;->C:Ljava/util/List;

    new-instance v2, Lcom/beizi/fusion/work/splash/a$16;

    invoke-direct {v2, v0}, Lcom/beizi/fusion/work/splash/a$16;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_12
    return-void

    :sswitch_data_0
    .sparse-switch
        0x23db1b54 -> :sswitch_2
        0x3d522306 -> :sswitch_1
        0x42ef38c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private aH()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->E:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->R()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->F:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->S()V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->G:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->T()V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->H:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->U()V

    .line 10
    :cond_3
    iget-wide v0, p0, Lcom/beizi/fusion/work/splash/a;->J:J

    iget-wide v2, p0, Lcom/beizi/fusion/work/splash/a;->L:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/beizi/fusion/work/splash/a;->K:J

    return-void
.end method

.method static synthetic aH(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method private aI()Landroid/view/View;
    .locals 3

    .line 2
    new-instance v0, Lcom/beizi/fusion/work/splash/a$17;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/splash/a$17;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->t:Landroid/view/View$OnClickListener;

    .line 3
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    :cond_0
    new-instance v0, Lcom/beizi/fusion/widget/SkipView;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/beizi/fusion/widget/SkipView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    .line 8
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcom/beizi/fusion/widget/CircleProgressView;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/beizi/fusion/widget/CircleProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    const-string v1, "beizi"

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Lcom/beizi/fusion/widget/CircleProgressView;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/beizi/fusion/widget/CircleProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    const-string v1, "app"

    goto :goto_0

    :cond_2
    const-string v1, "buyer"

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setSkipType(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    :cond_3
    return-object v0
.end method

.method static synthetic aI(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    return p0
.end method

.method static synthetic aJ(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->ah:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

    return-object p0
.end method

.method private aJ()V
    .locals 13

    .line 2
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    if-eqz v0, :cond_7

    .line 4
    iget v0, p0, Lcom/beizi/fusion/work/splash/a;->Q:F

    .line 5
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 6
    iget v2, p0, Lcom/beizi/fusion/work/splash/a;->R:F

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    :cond_0
    float-to-double v5, v0

    .line 7
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getWidth()D

    move-result-wide v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double v7, v7, v9

    mul-double v5, v5, v7

    double-to-int v3, v5

    .line 8
    iget-object v5, p0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getHeight()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    cmpl-double v11, v5, v7

    if-ltz v11, :cond_6

    int-to-double v5, v3

    .line 9
    iget-object v7, p0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v7}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getHeight()D

    move-result-wide v7

    mul-double v7, v7, v9

    mul-double v5, v5, v7

    double-to-int v5, v5

    int-to-double v6, v5

    .line 10
    iget-object v8, p0, Lcom/beizi/fusion/work/splash/a;->S:Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;

    invoke-virtual {v8}, Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;->getPaddingHeight()D

    move-result-wide v11

    mul-double v11, v11, v9

    mul-double v6, v6, v11

    double-to-int v6, v6

    if-gez v6, :cond_1

    const/4 v6, 0x0

    .line 11
    :cond_1
    iget-object v7, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    check-cast v7, Lcom/beizi/fusion/widget/SkipView;

    iget v8, p0, Lcom/beizi/fusion/work/splash/a;->U:I

    invoke-virtual {v7, v8, v6}, Lcom/beizi/fusion/widget/SkipView;->setData(II)V

    .line 12
    iget v6, p0, Lcom/beizi/fusion/work/splash/a;->aw:I

    invoke-direct {p0, v6}, Lcom/beizi/fusion/work/splash/a;->e(I)V

    .line 13
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    iget-object v7, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v6, p0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v6}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterX()D

    move-result-wide v6

    mul-double v6, v6, v9

    double-to-float v6, v6

    .line 16
    iget-object v7, p0, Lcom/beizi/fusion/work/splash/a;->O:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v7}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterY()D

    move-result-wide v7

    mul-double v7, v7, v9

    double-to-float v7, v7

    mul-float v6, v6, v0

    .line 17
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v6, v3

    mul-float v7, v7, v2

    .line 18
    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    sub-float/2addr v7, v3

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-eqz v3, :cond_5

    .line 20
    invoke-virtual {v3}, Lcom/beizi/ad/v2/a/a;->r()Lcom/beizi/ad/model/n;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {v3}, Lcom/beizi/ad/model/n;->a()Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-virtual {v3}, Lcom/beizi/ad/model/n;->c()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "%"

    if-nez v9, :cond_3

    .line 24
    :try_start_1
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 25
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    mul-float v0, v0, v6

    div-float v6, v0, v4

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v6, v0

    .line 27
    :cond_3
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 28
    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v2, v0

    div-float/2addr v2, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    add-float/2addr v2, v0

    move v7, v2

    goto :goto_1

    .line 30
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v0, v0

    move v7, v0

    goto :goto_1

    :catch_0
    nop

    .line 31
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 35
    :cond_6
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aK()V

    goto :goto_2

    .line 36
    :cond_7
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aK()V

    goto :goto_2

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    :goto_2
    return-void
.end method

.method static synthetic aK(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private aK()V
    .locals 5

    .line 2
    iget v0, p0, Lcom/beizi/fusion/work/splash/a;->Q:F

    float-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fdccccccccccccdL    # 0.45

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x35

    .line 4
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/beizi/fusion/work/splash/a;->T:I

    .line 11
    iput v1, p0, Lcom/beizi/fusion/work/splash/a;->U:I

    .line 12
    check-cast v0, Lcom/beizi/fusion/widget/SkipView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/widget/SkipView;->setData(II)V

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    check-cast v0, Lcom/beizi/fusion/widget/SkipView;

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/beizi/fusion/work/splash/a;->aw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "\u8df3\u8fc7 %d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private aL()V
    .locals 11

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lcom/beizi/fusion/work/splash/a;->Q:F

    .line 6
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 7
    iget v2, p0, Lcom/beizi/fusion/work/splash/a;->R:F

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    :cond_1
    float-to-double v3, v0

    .line 8
    iget-object v5, p0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getWidth()D

    move-result-wide v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double v5, v5, v7

    mul-double v3, v3, v5

    double-to-int v3, v3

    int-to-double v4, v3

    .line 9
    iget-object v6, p0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v6}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getHeight()D

    move-result-wide v9

    mul-double v9, v9, v7

    mul-double v4, v4, v9

    double-to-int v4, v4

    .line 10
    iget-object v5, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 11
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iget-object v6, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v5, p0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterX()D

    move-result-wide v5

    mul-double v5, v5, v7

    double-to-float v5, v5

    .line 15
    iget-object v6, p0, Lcom/beizi/fusion/work/splash/a;->P:Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;

    invoke-virtual {v6}, Lcom/beizi/fusion/model/AdSpacesBean$PositionBean;->getCenterY()D

    move-result-wide v9

    mul-double v9, v9, v7

    double-to-float v6, v9

    mul-float v0, v0, v5

    .line 16
    div-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    mul-float v2, v2, v6

    .line 17
    div-int/2addr v4, v1

    int-to-float v1, v4

    :goto_0
    sub-float/2addr v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    aget v0, v2, v0

    int-to-float v0, v0

    .line 18
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPivotX()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    .line 19
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v1, v3

    goto :goto_0

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->N:Lcom/beizi/fusion/widget/CircleProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic aL(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic aM(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private aM()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->ay:Z

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/ad/v2/g/a;->t()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aE:Lcom/beizi/fusion/tool/ae;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ae;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private aN()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    invoke-direct {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;-><init>()V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    const-string v1, "#FFFFFF"

    .line 5
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setTitleColor(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    const-string v1, "\u70b9\u51fb\u8df3\u8f6c\u81f3\u7f51\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setTitle(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    const-string v1, "-4"

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setRegionalClickUuid(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setIsDisableClick(I)V

    .line 9
    new-instance v0, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-direct {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;-><init>()V

    const-string v1, "50%"

    .line 10
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->setCenterX(Ljava/lang/String;)V

    const-string v1, "80%"

    .line 11
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->setCenterY(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->setPosition(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getRegionalClickUuid()Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getOrderData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/splash/a;->b(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;->getRegionalClickView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getRegionalClickUuid()Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/tool/aj;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/tool/aj;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;)V

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setRegionalClickUuid(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/aj;->a(Ljava/lang/Boolean;)V

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 27
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v3

    const/4 v4, 0x1

    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/beizi/fusion/tool/aj;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->am:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 30
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    .line 31
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 34
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->am:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    invoke-virtual {v0, p0}, Lcom/beizi/fusion/tool/aj;->a(Lcom/beizi/fusion/tool/aj$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 37
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic aN(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic aO(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private aO()V
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getCoolScrollClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getUserProtectTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/beizi/fusion/work/splash/a;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getCoolTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/beizi/fusion/work/splash/a;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    .line 8
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getStyle()I

    move-result v0

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getOrderData()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/beizi/fusion/work/splash/a;->c(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;->getScrollClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getStyle()I

    move-result v0

    goto :goto_1

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getStyle()I

    move-result v0

    .line 15
    :goto_1
    iget-boolean v2, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    if-eqz v2, :cond_6

    .line 16
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollClickUuid()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 17
    :cond_6
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollClickUuid()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 19
    :cond_7
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollClickUuid()Ljava/lang/String;

    move-result-object v2

    .line 20
    :goto_2
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v3, :cond_8

    .line 21
    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setScrollClickUuid(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    :cond_8
    if-ne v0, v1, :cond_9

    .line 23
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aQ()V

    return-void

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 24
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aR()V

    return-void

    .line 25
    :cond_a
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private aP()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/beizi/fusion/tool/am;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->af:Lcom/beizi/fusion/tool/am;

    .line 4
    iget-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/am;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/am;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/am;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->af:Lcom/beizi/fusion/tool/am;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/am;->a(Ljava/lang/Boolean;)V

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->af:Lcom/beizi/fusion/tool/am;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 13
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/am;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 16
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    .line 17
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 20
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->af:Lcom/beizi/fusion/tool/am;

    invoke-virtual {v0, p0}, Lcom/beizi/fusion/tool/am;->a(Lcom/beizi/fusion/tool/am$a;)V

    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollDirection()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 24
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollDistance()I

    move-result v1

    .line 25
    invoke-direct {p0, v0, v1, p0}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/lang/String;ILcom/beizi/fusion/tool/am$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic aP(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic aQ(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->am:Landroid/view/View;

    return-object p0
.end method

.method private aQ()V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Lcom/beizi/fusion/tool/ao;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 6
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aZ()Z

    move-result v3

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;ZZII)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    if-eqz v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aZ()Z

    move-result v3

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;ZZII)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aZ()Z

    move-result v3

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;ZZII)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ao;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 13
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 14
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 17
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    new-instance v1, Lcom/beizi/fusion/work/splash/a$18;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/splash/a$18;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/tool/ao$a;)V

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aB:Lcom/beizi/fusion/tool/ao;

    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ao;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private aR()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    new-instance v0, Lcom/beizi/fusion/tool/an;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/an;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->aD:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->r:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aZ()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;ZZII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->q:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aZ()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;ZZII)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aZ()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual/range {v1 .. v6}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;ZZII)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/an;->a(Landroid/view/View;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    move-object v2, v1

    .line 102
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .line 104
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .line 106
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 107
    .line 108
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    .line 110
    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .line 112
    .line 113
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 114
    .line 115
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 116
    .line 117
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 118
    .line 119
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 120
    .line 121
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    .line 122
    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 129
    .line 130
    new-instance v1, Lcom/beizi/fusion/work/splash/a$2;

    .line 131
    .line 132
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/splash/a$2;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an$a;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aC:Lcom/beizi/fusion/tool/an;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/an;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    :catch_0
    :cond_3
    return-void
.end method

.method private aS()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getRollView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ag:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getOrderData()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v0, v1}, Lcom/beizi/fusion/work/splash/a;->e(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;->getRollView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;->getRollView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ag:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;

    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollViewUuid()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setRollViewUuid(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    .line 67
    .line 68
    if-nez v1, :cond_5

    .line 69
    .line 70
    new-instance v1, Lcom/beizi/fusion/tool/ak;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 73
    .line 74
    invoke-direct {v1, v2}, Lcom/beizi/fusion/tool/ak;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    .line 78
    .line 79
    :cond_5
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/tool/ak;->a(Ljava/lang/Boolean;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    int-to-float v4, v4

    .line 99
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    int-to-float v5, v5

    .line 112
    invoke-static {v4, v5}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/beizi/fusion/tool/ak;->a(Landroid/view/ViewGroup;IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ag:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getCoolRollView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iput-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ah:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;

    .line 128
    .line 129
    :cond_6
    invoke-direct {p0, v0}, Lcom/beizi/fusion/work/splash/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/beizi/fusion/tool/ak;->a()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getIsClick()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ai:Lcom/beizi/fusion/tool/ak;

    .line 142
    .line 143
    new-instance v2, Lcom/beizi/fusion/work/splash/a$3;

    .line 144
    .line 145
    invoke-direct {v2, p0, v0}, Lcom/beizi/fusion/work/splash/a$3;-><init>(Lcom/beizi/fusion/work/splash/a;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/tool/ak;->a(Lcom/beizi/fusion/tool/ak$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_2
    return-void
.end method

.method private aT()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getEulerAngleRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aj:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getOrderData()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, v0, v1}, Lcom/beizi/fusion/work/splash/a;->f(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;->getEulerAngleRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;->getEulerAngleRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getEulerAngleUuid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setEulerAngleUuid(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->aj:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getEulerAngleUuid()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setEulerAngleUuid(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ak:Lcom/beizi/fusion/tool/s;

    .line 74
    .line 75
    if-nez v1, :cond_4

    .line 76
    .line 77
    new-instance v1, Lcom/beizi/fusion/tool/s;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->aj:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 84
    .line 85
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/beizi/fusion/tool/s;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ak:Lcom/beizi/fusion/tool/s;

    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ak:Lcom/beizi/fusion/tool/s;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->an:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/s;->a(Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ak:Lcom/beizi/fusion/tool/s;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    int-to-float v3, v3

    .line 110
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    int-to-float v4, v4

    .line 123
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/tool/s;->a(Landroid/view/ViewGroup;II)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ak:Lcom/beizi/fusion/tool/s;

    .line 131
    .line 132
    new-instance v1, Lcom/beizi/fusion/work/splash/a$4;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/splash/a$4;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/s;->a(Lcom/beizi/fusion/tool/s$a;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ak:Lcom/beizi/fusion/tool/s;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/s;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void
.end method

.method private aU()V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v8, Lcom/beizi/fusion/work/splash/a;->al:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_12

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_a

    .line 14
    .line 15
    :cond_0
    iget-object v0, v8, Lcom/beizi/fusion/work/splash/a;->al:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_13

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$ScreenConfigVoBean;

    .line 32
    .line 33
    iget-object v2, v8, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    int-to-float v2, v2

    .line 40
    iget-object v3, v8, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    const/4 v4, 0x0

    .line 48
    cmpl-float v5, v2, v4

    .line 49
    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    iget v2, v8, Lcom/beizi/fusion/work/splash/a;->Q:F

    .line 53
    .line 54
    :cond_1
    move v6, v2

    .line 55
    cmpl-float v2, v3, v4

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    iget v2, v8, Lcom/beizi/fusion/work/splash/a;->R:F

    .line 60
    .line 61
    move v7, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v7, v3

    .line 64
    :goto_1
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$ScreenConfigVoBean;->getScreenW()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$ScreenConfigVoBean;->getScreenH()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$ScreenConfigVoBean;->getScreenX()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$ScreenConfigVoBean;->getScreenY()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const-string v10, "0"

    .line 85
    .line 86
    const/4 v11, 0x0

    .line 87
    const-string v12, "%"

    .line 88
    .line 89
    if-nez v9, :cond_5

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_4

    .line 103
    .line 104
    float-to-int v9, v6

    .line 105
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    mul-int v9, v9, v2

    .line 118
    .line 119
    div-int/lit8 v9, v9, 0x64

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object v9, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    int-to-float v2, v2

    .line 129
    invoke-static {v9, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    :goto_2
    float-to-int v9, v6

    .line 135
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_8

    .line 140
    .line 141
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    float-to-int v2, v7

    .line 155
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    invoke-virtual {v3, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    mul-int v2, v2, v3

    .line 168
    .line 169
    div-int/lit8 v2, v2, 0x64

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    iget-object v2, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    int-to-float v3, v3

    .line 179
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    goto :goto_5

    .line 184
    :cond_8
    :goto_4
    float-to-int v2, v7

    .line 185
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_b

    .line 190
    .line 191
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_9

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_9
    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_a

    .line 203
    .line 204
    float-to-int v3, v6

    .line 205
    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    invoke-virtual {v4, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    mul-int v3, v3, v4

    .line 218
    .line 219
    div-int/lit8 v3, v3, 0x64

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_a
    iget-object v3, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 223
    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    int-to-float v4, v4

    .line 229
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    goto :goto_7

    .line 234
    :cond_b
    :goto_6
    float-to-int v3, v6

    .line 235
    :goto_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-nez v4, :cond_e

    .line 240
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_c

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_c
    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_d

    .line 253
    .line 254
    float-to-int v4, v7

    .line 255
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    mul-int v4, v4, v5

    .line 268
    .line 269
    div-int/lit8 v4, v4, 0x64

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_d
    iget-object v4, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 273
    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    int-to-float v5, v5

    .line 279
    invoke-static {v4, v5}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    goto :goto_9

    .line 284
    :cond_e
    :goto_8
    float-to-int v4, v7

    .line 285
    :goto_9
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    .line 287
    invoke-direct {v10, v9, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 288
    .line 289
    .line 290
    div-int/lit8 v2, v2, 0x2

    .line 291
    .line 292
    sub-int/2addr v4, v2

    .line 293
    div-int/lit8 v9, v9, 0x2

    .line 294
    .line 295
    sub-int/2addr v3, v9

    .line 296
    if-gez v4, :cond_f

    .line 297
    .line 298
    const/4 v4, 0x0

    .line 299
    :cond_f
    if-gez v3, :cond_10

    .line 300
    .line 301
    const/4 v3, 0x0

    .line 302
    :cond_10
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 303
    .line 304
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 305
    .line 306
    new-instance v9, Landroid/widget/ImageView;

    .line 307
    .line 308
    iget-object v2, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 309
    .line 310
    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 314
    .line 315
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$ScreenConfigVoBean;->getScreenImage()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_11

    .line 333
    .line 334
    const-string v2, "http"

    .line 335
    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_11

    .line 341
    .line 342
    iget-object v2, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 343
    .line 344
    invoke-static {v2}, Lcom/beizi/fusion/tool/f;->a(Landroid/content/Context;)Lcom/beizi/fusion/tool/f;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/tool/f;->a(Ljava/lang/String;)Lcom/beizi/fusion/tool/f$b;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v1, v9}, Lcom/beizi/fusion/tool/f$b;->a(Landroid/widget/ImageView;)V

    .line 353
    .line 354
    .line 355
    :cond_11
    const/4 v1, 0x1

    .line 356
    new-array v11, v1, [F

    .line 357
    .line 358
    new-array v12, v1, [F

    .line 359
    .line 360
    new-array v13, v1, [F

    .line 361
    .line 362
    new-array v14, v1, [F

    .line 363
    .line 364
    new-instance v15, Lcom/beizi/fusion/work/splash/a$5;

    .line 365
    .line 366
    move-object v1, v15

    .line 367
    move-object/from16 v2, p0

    .line 368
    .line 369
    move-object v3, v11

    .line 370
    move-object v4, v9

    .line 371
    move-object v5, v12

    .line 372
    invoke-direct/range {v1 .. v7}, Lcom/beizi/fusion/work/splash/a$5;-><init>(Lcom/beizi/fusion/work/splash/a;[FLandroid/widget/ImageView;[FFF)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v9, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    new-instance v7, Lcom/beizi/fusion/work/splash/a$6;

    .line 379
    .line 380
    move-object v1, v7

    .line 381
    move-object/from16 v2, p0

    .line 382
    .line 383
    move-object v3, v11

    .line 384
    move-object v4, v12

    .line 385
    move-object v5, v13

    .line 386
    move-object v6, v14

    .line 387
    invoke-direct/range {v1 .. v6}, Lcom/beizi/fusion/work/splash/a$6;-><init>(Lcom/beizi/fusion/work/splash/a;[F[F[F[F)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v8, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    .line 394
    .line 395
    invoke-virtual {v1, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_12
    :goto_a
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 403
    .line 404
    .line 405
    :cond_13
    return-void
.end method

.method private aV()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getInteractionRules()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getInteractionRules()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x64

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->b(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "shake"

    .line 29
    .line 30
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getInteractionRules()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3, v0}, Lcom/beizi/fusion/e/b;->a(Ljava/util/List;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    return v1

    .line 61
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 81
    return v0
.end method

.method private aW()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->o()Lcom/beizi/ad/model/l;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    if-nez v6, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v6}, Lcom/beizi/ad/model/l;->c()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gtz v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    new-instance v0, Lcom/beizi/fusion/tool/ae;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/beizi/fusion/tool/ae;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aE:Lcom/beizi/fusion/tool/ae;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v6}, Lcom/beizi/ad/model/l;->l()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->aE:Lcom/beizi/fusion/tool/ae;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->y:Landroid/view/ViewGroup;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 59
    .line 60
    :goto_0
    move-object v3, v0

    .line 61
    new-instance v7, Lcom/beizi/fusion/work/splash/a$7;

    .line 62
    .line 63
    invoke-direct {v7, p0}, Lcom/beizi/fusion/work/splash/a$7;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {v2 .. v7}, Lcom/beizi/fusion/tool/ae;->a(Landroid/view/ViewGroup;IILcom/beizi/ad/model/l;Lcom/beizi/fusion/tool/ae$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    return-void
.end method

.method private aX()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->aE:Lcom/beizi/fusion/tool/ae;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ae;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method private aY()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->p()Lcom/beizi/ad/model/m;

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
    invoke-virtual {v0}, Lcom/beizi/ad/model/m;->a()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Lcom/beizi/ad/model/m;->b()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v2, 0x0

    .line 26
    :goto_0
    iput-boolean v2, p0, Lcom/beizi/fusion/work/splash/a;->az:Z

    .line 27
    .line 28
    if-gtz v1, :cond_3

    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    new-instance v0, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/beizi/fusion/work/splash/a$8;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/splash/a$8;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    .line 39
    .line 40
    .line 41
    int-to-long v3, v1

    .line 42
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

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

.method private aZ()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->p()Lcom/beizi/ad/model/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/model/m;->b()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v2, 0x0

    .line 23
    :goto_0
    iput-boolean v2, p0, Lcom/beizi/fusion/work/splash/a;->az:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return v2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method static synthetic aa(Lcom/beizi/fusion/work/splash/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/splash/a;->K:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic ab(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ac(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ad(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ae(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic af(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aC()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ag(Lcom/beizi/fusion/work/splash/a;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ah(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ai(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic aj(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ak(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic al(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aU()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic am(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic an(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ao(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ap(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aN()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic aq(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aE()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ar(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aO()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic as(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aS()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic at(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aT()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic au(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->bb()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic av(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aD()V

    return-void
.end method

.method static synthetic aw(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->az:Z

    return p0
.end method

.method static synthetic ax(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->aA:Z

    return p0
.end method

.method static synthetic ay(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->ay:Z

    return p0
.end method

.method private az()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->M:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->t:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic az(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->ba()V

    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    return-object p0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/splash/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object p1
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;

    .line 18
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRegionalClickViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/splash/a;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/splash/a;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/splash/a;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(J)Z
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->Z:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result v2

    if-lez v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    .line 13
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result v2

    if-lez v2, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/splash/a;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/beizi/fusion/work/splash/a;->au:Z

    return p1
.end method

.method private declared-synchronized ba()V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->ay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->ay:Z

    .line 10
    .line 11
    const-string v1, "regionalClick"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 16
    .line 17
    const-string v2, "regionalClick"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setClickType(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 23
    .line 24
    .line 25
    const-string v1, "BeiZis"

    .line 26
    .line 27
    const-string v2, "enter onClick"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x2

    .line 45
    new-array v4, v3, [I

    .line 46
    .line 47
    int-to-double v5, v1

    .line 48
    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-double v7, v7, v5

    .line 54
    .line 55
    double-to-int v1, v7

    .line 56
    div-int/2addr v1, v3

    .line 57
    const/4 v7, 0x0

    .line 58
    aput v1, v4, v7

    .line 59
    .line 60
    int-to-double v1, v2

    .line 61
    const-wide v8, 0x3fe999999999999aL    # 0.8

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    mul-double v1, v1, v8

    .line 67
    .line 68
    double-to-int v1, v1

    .line 69
    aput v1, v4, v0

    .line 70
    .line 71
    const-wide v1, 0x3feccccccccccccdL    # 0.9

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    mul-double v5, v5, v1

    .line 77
    .line 78
    double-to-int v1, v5

    .line 79
    div-int/2addr v1, v3

    .line 80
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 81
    .line 82
    const/high16 v5, 0x42820000    # 65.0f

    .line 83
    .line 84
    invoke-static {v2, v5}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    div-int/2addr v2, v3

    .line 89
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget v2, v1, v7

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    aget v3, v1, v0

    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    aget v5, v1, v7

    .line 106
    .line 107
    aget v6, v4, v7

    .line 108
    .line 109
    add-int/2addr v5, v6

    .line 110
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    aget v6, v1, v0

    .line 115
    .line 116
    aget v8, v4, v0

    .line 117
    .line 118
    add-int/2addr v6, v8

    .line 119
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    aget v8, v1, v7

    .line 124
    .line 125
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    aget v9, v1, v0

    .line 130
    .line 131
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    aget v10, v1, v7

    .line 136
    .line 137
    aget v7, v4, v7

    .line 138
    .line 139
    add-int/2addr v10, v7

    .line 140
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    aget v1, v1, v0

    .line 145
    .line 146
    aget v0, v4, v0

    .line 147
    .line 148
    add-int/2addr v1, v0

    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v11, 0x0

    .line 154
    move-object v1, p0

    .line 155
    move-object v4, v5

    .line 156
    move-object v5, v6

    .line 157
    move-object v6, v8

    .line 158
    move-object v7, v9

    .line 159
    move-object v8, v10

    .line 160
    move-object v9, v0

    .line 161
    move v10, v11

    .line 162
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    .line 172
    :goto_0
    monitor-exit p0

    .line 173
    return-void

    .line 174
    :goto_1
    monitor-exit p0

    .line 175
    throw v0
.end method

.method private bb()V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v8, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->s()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_16

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_9

    .line 21
    .line 22
    :cond_1
    iget-object v1, v8, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    iget-object v2, v8, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    const/4 v3, 0x0

    .line 40
    cmpl-float v4, v1, v3

    .line 41
    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    iget v1, v8, Lcom/beizi/fusion/work/splash/a;->Q:F

    .line 45
    .line 46
    :cond_3
    move v9, v1

    .line 47
    cmpl-float v1, v2, v3

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    iget v2, v8, Lcom/beizi/fusion/work/splash/a;->R:F

    .line 52
    .line 53
    :cond_4
    move v10, v2

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_17

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/beizi/ad/model/e;

    .line 69
    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {v1}, Lcom/beizi/ad/model/e;->a()Lcom/beizi/ad/model/n;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/beizi/ad/model/n;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2}, Lcom/beizi/ad/model/n;->e()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v2}, Lcom/beizi/ad/model/n;->a()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v2}, Lcom/beizi/ad/model/n;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const-string v7, "0"

    .line 98
    .line 99
    const/4 v11, 0x0

    .line 100
    const-string v12, "%"

    .line 101
    .line 102
    if-nez v6, :cond_8

    .line 103
    .line 104
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_7

    .line 116
    .line 117
    float-to-int v6, v9

    .line 118
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    invoke-virtual {v3, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    mul-int v6, v6, v3

    .line 131
    .line 132
    div-int/lit8 v6, v6, 0x64

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    iget-object v6, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    int-to-float v3, v3

    .line 142
    invoke-static {v6, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    goto :goto_2

    .line 147
    :cond_8
    :goto_1
    float-to-int v6, v9

    .line 148
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_b

    .line 153
    .line 154
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_9

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    invoke-virtual {v4, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_a

    .line 166
    .line 167
    float-to-int v3, v10

    .line 168
    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    invoke-virtual {v4, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    mul-int v3, v3, v4

    .line 181
    .line 182
    div-int/lit8 v3, v3, 0x64

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_a
    iget-object v3, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 186
    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    int-to-float v4, v4

    .line 192
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    goto :goto_4

    .line 197
    :cond_b
    :goto_3
    float-to-int v3, v10

    .line 198
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_e

    .line 203
    .line 204
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_c

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_c
    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_d

    .line 216
    .line 217
    float-to-int v4, v9

    .line 218
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    invoke-virtual {v5, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    mul-int v4, v4, v5

    .line 231
    .line 232
    div-int/lit8 v4, v4, 0x64

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_d
    iget-object v4, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 236
    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    int-to-float v5, v5

    .line 242
    invoke-static {v4, v5}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    goto :goto_6

    .line 247
    :cond_e
    :goto_5
    float-to-int v4, v9

    .line 248
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-nez v5, :cond_11

    .line 253
    .line 254
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_f

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_f
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_10

    .line 266
    .line 267
    float-to-int v5, v10

    .line 268
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    invoke-virtual {v2, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    mul-int v5, v5, v2

    .line 281
    .line 282
    div-int/lit8 v5, v5, 0x64

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_10
    iget-object v5, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 286
    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    int-to-float v2, v2

    .line 292
    invoke-static {v5, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    goto :goto_8

    .line 297
    :cond_11
    :goto_7
    float-to-int v5, v10

    .line 298
    :goto_8
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 299
    .line 300
    invoke-direct {v12, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 301
    .line 302
    .line 303
    div-int/lit8 v3, v3, 0x2

    .line 304
    .line 305
    sub-int/2addr v5, v3

    .line 306
    div-int/lit8 v6, v6, 0x2

    .line 307
    .line 308
    sub-int/2addr v4, v6

    .line 309
    if-gez v5, :cond_12

    .line 310
    .line 311
    const/4 v5, 0x0

    .line 312
    :cond_12
    if-gez v4, :cond_13

    .line 313
    .line 314
    const/4 v4, 0x0

    .line 315
    :cond_13
    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 316
    .line 317
    iput v4, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 318
    .line 319
    new-instance v13, Landroid/widget/ImageView;

    .line 320
    .line 321
    iget-object v2, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 322
    .line 323
    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v13, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/beizi/ad/model/e;->b()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-nez v3, :cond_14

    .line 341
    .line 342
    const-string v3, "#"

    .line 343
    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_14

    .line 349
    .line 350
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-virtual {v13, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 355
    .line 356
    .line 357
    :cond_14
    invoke-virtual {v1}, Lcom/beizi/ad/model/e;->c()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-nez v2, :cond_15

    .line 366
    .line 367
    const-string v2, "http"

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_15

    .line 374
    .line 375
    iget-object v2, v8, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    .line 376
    .line 377
    invoke-static {v2}, Lcom/beizi/fusion/tool/f;->a(Landroid/content/Context;)Lcom/beizi/fusion/tool/f;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/tool/f;->a(Ljava/lang/String;)Lcom/beizi/fusion/tool/f$b;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v1, v13}, Lcom/beizi/fusion/tool/f$b;->a(Landroid/widget/ImageView;)V

    .line 386
    .line 387
    .line 388
    :cond_15
    const/4 v1, 0x1

    .line 389
    new-array v11, v1, [F

    .line 390
    .line 391
    new-array v14, v1, [F

    .line 392
    .line 393
    new-array v15, v1, [F

    .line 394
    .line 395
    new-array v7, v1, [F

    .line 396
    .line 397
    new-instance v6, Lcom/beizi/fusion/work/splash/a$9;

    .line 398
    .line 399
    move-object v1, v6

    .line 400
    move-object/from16 v2, p0

    .line 401
    .line 402
    move-object v3, v11

    .line 403
    move-object v4, v13

    .line 404
    move-object v5, v14

    .line 405
    move-object/from16 v16, v0

    .line 406
    .line 407
    move-object v0, v6

    .line 408
    move v6, v9

    .line 409
    move-object/from16 v17, v7

    .line 410
    .line 411
    move v7, v10

    .line 412
    invoke-direct/range {v1 .. v7}, Lcom/beizi/fusion/work/splash/a$9;-><init>(Lcom/beizi/fusion/work/splash/a;[FLandroid/widget/ImageView;[FFF)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Lcom/beizi/fusion/work/splash/a$10;

    .line 419
    .line 420
    move-object v1, v0

    .line 421
    move-object/from16 v2, p0

    .line 422
    .line 423
    move-object v3, v11

    .line 424
    move-object v4, v14

    .line 425
    move-object v5, v15

    .line 426
    move-object/from16 v6, v17

    .line 427
    .line 428
    invoke-direct/range {v1 .. v6}, Lcom/beizi/fusion/work/splash/a$10;-><init>(Lcom/beizi/fusion/work/splash/a;[F[F[F[F)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    .line 433
    .line 434
    iget-object v0, v8, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    .line 435
    .line 436
    invoke-virtual {v0, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 437
    .line 438
    .line 439
    move-object/from16 v0, v16

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_16
    :goto_9
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    .line 447
    .line 448
    :cond_17
    return-void
.end method

.method static synthetic c(Lcom/beizi/fusion/work/splash/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/splash/a;->at:I

    return p0
.end method

.method private c(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;

    .line 7
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataScrollViewOrderBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private c(J)Z
    .locals 5

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-static {v1}, Lcom/beizi/fusion/tool/au;->p(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v1

    cmp-long v1, v3, p1

    if-gez v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/beizi/fusion/work/splash/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/work/splash/a;->ap:Z

    return p1
.end method

.method static synthetic d(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/ad/v2/g/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    return-object p0
.end method

.method private d(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;

    .line 29
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataFullScreenClickBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 30
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/beizi/fusion/work/splash/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/work/splash/a;->I:Z

    return p1
.end method

.method private e(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;

    .line 7
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataRollViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private e(I)V
    .locals 7

    .line 9
    iget v0, p0, Lcom/beizi/fusion/work/splash/a;->T:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-ne v0, v1, :cond_0

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/beizi/fusion/work/splash/a;->W:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v4, v5, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 15
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->X:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v4, v0, p1, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 16
    iget-object p1, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    check-cast p1, Lcom/beizi/fusion/widget/SkipView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->V:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->W:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->V:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->A:Landroid/view/View;

    check-cast v0, Lcom/beizi/fusion/widget/SkipView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/splash/a;->au:Z

    return p0
.end method

.method static synthetic e(Lcom/beizi/fusion/work/splash/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    return p1
.end method

.method static synthetic f(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private f(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;

    .line 5
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic f(Lcom/beizi/fusion/work/splash/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/work/splash/a;->aA:Z

    return p1
.end method

.method static synthetic g(Lcom/beizi/fusion/work/splash/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/splash/a;->av:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic h(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic i(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic j(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->x()V

    return-void
.end method

.method static synthetic k(Lcom/beizi/fusion/work/splash/a;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Y()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aA()V

    return-void
.end method

.method static synthetic m(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ac()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aW()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y(Lcom/beizi/fusion/work/splash/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aY()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z(Lcom/beizi/fusion/work/splash/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_1

    .line 14
    iget p1, p1, Landroid/os/Message;->what:I

    .line 15
    iget-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->as:Z

    if-eqz v1, :cond_0

    const/16 p1, 0x27c4

    .line 16
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setError(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setErrorCode(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 19
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->A()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    const-string v0, "regionalClick"

    .line 71
    iput-object v0, v10, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    .line 72
    iget-object v1, v10, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setClickType(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    const-string v0, "BeiZis"

    const-string v1, "enter onRegionClickByPosition "

    .line 74
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 75
    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 5

    const-string v0, "auctionExt"

    const-string v1, "highestLossPrice"

    const-string v2, "adnId"

    const-string v3, "winPrice"

    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-nez v4, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {v4, p1}, Lcom/beizi/ad/v2/a/a;->a(Ljava/util/Map;)V

    .line 93
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 96
    check-cast v3, Ljava/lang/String;

    .line 97
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v4, v3}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 101
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 102
    check-cast v2, Ljava/lang/String;

    .line 103
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 105
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setHighestLossPrice(Ljava/lang/String;)V

    .line 111
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 113
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 114
    check-cast p1, Ljava/lang/String;

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setSecondPrice(Ljava/lang/String;)V

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 118
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a_()V
    .locals 2

    .line 1
    const-string v0, "scroll"

    .line 2
    .line 3
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setClickType(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 11
    .line 12
    .line 13
    const-string v0, "BeiZis"

    .line 14
    .line 15
    const-string v1, "enter onScrollDistanceMeet "

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aM()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public av()Ljava/util/Map;
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->ax:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "actionType"

    if-eqz v1, :cond_3

    .line 3
    :try_start_1
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aV()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->n()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "maxAcc"

    const/16 v4, 0xf

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "angle"

    const/16 v4, 0x23

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    const/16 v4, 0xbb8

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "direction"

    const-string v4, "x\u6216y\u6216z"

    .line 12
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x1

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 14
    :cond_3
    iget-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->ap:Z

    if-nez v1, :cond_4

    return-object v0

    .line 15
    :cond_4
    iget-boolean v1, p0, Lcom/beizi/fusion/work/splash/a;->ao:Z

    if-nez v1, :cond_7

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-nez v1, :cond_5

    return-object v0

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getSensorParam()I

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_6
    return-object v0

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->ad:Lcom/beizi/fusion/tool/aq;

    if-nez v1, :cond_8

    return-object v0

    .line 21
    :cond_8
    invoke-virtual {v1}, Lcom/beizi/fusion/tool/aq;->e()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ax()Lorg/json/JSONObject;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->m()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public ay()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->q()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 12

    .line 20
    iget-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->aa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->Z:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "shake"

    .line 22
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setClickType(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    const-string v0, "BeiZis"

    const-string v1, "enter onShakeHappened  "

    .line 25
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x2

    move-object v2, p0

    .line 26
    invoke-direct/range {v2 .. v11}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v10, p0

    const-string v0, "scroll"

    .line 27
    iput-object v0, v10, Lcom/beizi/fusion/work/splash/a;->ac:Ljava/lang/String;

    .line 28
    iget-object v1, v10, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setClickType(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    const-string v0, "BeiZis"

    const-string v1, "enter onScrollDistanceMeetByPosition "

    .line 30
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 31
    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4

    const-string v0, "lossReason"

    const-string v1, "adnId"

    const-string v2, "winPrice"

    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-nez v3, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {v3, p1}, Lcom/beizi/ad/v2/a/a;->b(Ljava/util/Map;)V

    .line 34
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 42
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 46
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 48
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 49
    check-cast p1, Ljava/lang/String;

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setLossReason(Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 53
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splash_cool_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->Z:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getMinShowTime()I

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/work/splash/a;->at:I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWorker chanel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeiZis"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a;->a(Ljava/lang/String;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->s()V

    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->t()V

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->u()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v0

    .line 17
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v2}, Lcom/beizi/fusion/c/e;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getHotRequestDelay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->B:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/beizi/fusion/work/splash/a;->M:Z

    if-eqz v2, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aG()V

    .line 21
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/beizi/fusion/work/splash/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":requestAd:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "===="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "==="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    .line 22
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->u()I

    move-result v0

    if-ge v0, v3, :cond_6

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/beizi/fusion/work/splash/a;->k()V

    .line 25
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/tool/au;->k(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/work/splash/a;->Q:F

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/tool/au;->l(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/work/splash/a;->R:F

    .line 27
    new-instance v0, Lcom/beizi/fusion/tool/aj;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/aj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->ae:Lcom/beizi/fusion/tool/aj;

    return-void
.end method

.method public e()V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/beizi/fusion/work/splash/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " out make show ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/splash/a;->aB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
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
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

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
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->Y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getRegionalClickView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->o:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RegionalClickViewBean;

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getFullScreenClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$FullScreenClickBean;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getScrollClick()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->p:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getScreenConfigVo()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->al:Ljava/util/List;

    const/4 v0, 0x1

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getIsImageSpeed()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_1

    const-string v2, "1"

    .line 11
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setIsImageSpeed(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->v()V

    .line 15
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ab()V

    .line 16
    new-instance v1, Lcom/beizi/fusion/work/splash/a$1;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/splash/a$1;-><init>(Lcom/beizi/fusion/work/splash/a;)V

    .line 17
    new-instance v2, Lcom/beizi/ad/v2/g/a;

    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget-object v4, p0, Lcom/beizi/fusion/work/splash/a;->z:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/beizi/ad/v2/g/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    .line 18
    iget-wide v3, p0, Lcom/beizi/fusion/work/splash/a;->w:J

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Lcom/beizi/ad/v2/a/a;->a(I)V

    .line 19
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    iget-object v3, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v2, v3}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/events/EventBean;->clone()Lcom/beizi/fusion/events/EventBean;

    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v3, v2}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/events/EventBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :goto_1
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    const/16 v3, 0x14

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3, v4, v4}, Lcom/beizi/ad/v2/g/a;->a(IIII)V

    .line 24
    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v2, v0}, Lcom/beizi/ad/v2/a/a;->a(Z)V

    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/g/a;->a(Lcom/beizi/ad/a;)V

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget v2, p0, Lcom/beizi/fusion/work/splash/a;->aq:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/beizi/fusion/work/splash/a;->u:Landroid/content/Context;

    iget v3, p0, Lcom/beizi/fusion/work/splash/a;->ar:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/v2/g/a;->a(II)V

    const-string v0, "S2S"

    .line 27
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->c(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->b(Ljava/lang/String;)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->C()Ljava/util/Map;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->c(Ljava/util/Map;)V

    if-eqz v0, :cond_3

    const-string v1, "returnInteraction"

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 38
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/fusion/work/splash/a;->ax:Z

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->d(Ljava/lang/String;)V

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->c()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/beizi/fusion/work/a;->l()V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->f()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/splash/a;->x:Lcom/beizi/ad/v2/g/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ag()V

    :cond_0
    return-void
.end method
