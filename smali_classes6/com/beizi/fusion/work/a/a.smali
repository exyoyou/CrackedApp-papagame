.class public Lcom/beizi/fusion/work/a/a;
.super Lcom/beizi/fusion/work/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/work/a/a$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/View;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/Boolean;

.field private H:Z

.field private I:J

.field private J:J

.field private K:J

.field private L:Z

.field private M:Z

.field private N:J

.field private O:I

.field private P:I

.field private Q:Landroid/widget/FrameLayout;

.field private R:Z

.field private S:[Ljava/lang/String;

.field private T:J

.field private U:Ljava/lang/String;

.field private V:Z

.field private W:Z

.field private X:Ljava/lang/String;

.field private Y:Z

.field private Z:Z

.field private aa:Landroid/view/ViewGroup;

.field private ab:Landroid/widget/FrameLayout;

.field private ac:J

.field private ad:Z

.field private ae:J

.field private af:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdResponse;

.field private ag:Landroid/widget/FrameLayout;

.field private ah:Z

.field private ai:Z

.field private aj:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

.field private ak:Z

.field private al:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private an:Lcom/beizi/fusion/tool/ab;

.field private ao:Lcom/beizi/fusion/work/a/a$a;

.field private ap:I

.field private aq:Ljava/lang/String;

.field private ar:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field private p:Landroid/content/Context;

.field private q:Lcom/beizi/ad/v2/d/c;

.field private r:Lcom/beizi/ad/e;

.field private s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field private t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

.field private u:Lcom/beizi/fusion/tool/ad;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->v:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->w:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->x:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->y:Z

    .line 13
    .line 14
    iput v1, p0, Lcom/beizi/fusion/work/a/a;->B:I

    .line 15
    .line 16
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->D:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->S:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "#00000000"

    .line 24
    .line 25
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->X:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->ah:Z

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->ai:Z

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->ak:Z

    .line 33
    .line 34
    new-instance v2, Lcom/beizi/fusion/work/a/a$2;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/a/a$2;-><init>(Lcom/beizi/fusion/work/a/a;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/beizi/fusion/work/a/a;->al:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 40
    .line 41
    new-instance v2, Lcom/beizi/fusion/work/a/a$4;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/a/a$4;-><init>(Lcom/beizi/fusion/work/a/a;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/beizi/fusion/work/a/a;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 47
    .line 48
    const-string v2, "com.beizi.fusion.install.receiver"

    .line 49
    .line 50
    iput-object v2, p0, Lcom/beizi/fusion/work/a/a;->n:Ljava/lang/String;

    .line 51
    .line 52
    const-string v2, "com.beizi.fusion.download.receiver"

    .line 53
    .line 54
    iput-object v2, p0, Lcom/beizi/fusion/work/a/a;->o:Ljava/lang/String;

    .line 55
    .line 56
    iput v1, p0, Lcom/beizi/fusion/work/a/a;->ap:I

    .line 57
    .line 58
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 59
    .line 60
    iput-wide p4, p0, Lcom/beizi/fusion/work/a/a;->ae:J

    .line 61
    .line 62
    iput-object p6, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 63
    .line 64
    iput-object p8, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 65
    .line 66
    iput-object p7, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 67
    .line 68
    iput-wide p2, p0, Lcom/beizi/fusion/work/a/a;->J:J

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->E:Z

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->F:Z

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->r()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method static synthetic A(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->ak:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Lcom/beizi/fusion/work/a/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->aq:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->aj:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->ah:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic F(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aG()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic I(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic J(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/tool/ad;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic M(Lcom/beizi/fusion/work/a/a;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->S:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->R:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic O(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->L:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic P(Lcom/beizi/fusion/work/a/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/a/a;->T:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Q(Lcom/beizi/fusion/work/a/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/a/a;->N:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic R(Lcom/beizi/fusion/work/a/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/a/a;->K:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic S(Lcom/beizi/fusion/work/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/a/a;->P:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic T(Lcom/beizi/fusion/work/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/a/a;->O:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic U(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic V(Lcom/beizi/fusion/work/a/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/a/a;->ac:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic W(Lcom/beizi/fusion/work/a/a;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->aa:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method private a(Ljava/lang/String;III)I
    .locals 2

    .line 115
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    const-string v0, "left"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "center"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le p2, p3, :cond_2

    sub-int/2addr p2, p3

    .line 118
    div-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr p4, p2

    goto :goto_2

    :cond_2
    sub-int/2addr p3, p2

    .line 119
    div-int/lit8 p3, p3, 0x2

    :goto_1
    add-int/2addr p4, p3

    goto :goto_2

    :cond_3
    const-string v0, "right"

    .line 120
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

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return p4
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/work/a/a;->I:J

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Lcom/beizi/ad/e;)Lcom/beizi/ad/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/v2/d/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 4
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

    .line 22
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

    .line 23
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a;->G:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    return-object p1
.end method

.method private a(III)V
    .locals 5

    .line 25
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aN()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    if-nez v0, :cond_2

    .line 28
    new-instance v0, Lcom/beizi/fusion/tool/ad;

    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 32
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    .line 33
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/a/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 37
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 38
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v2, :cond_5

    .line 39
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setShakeViewUuid(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    :cond_5
    if-gtz p2, :cond_6

    move p2, p3

    .line 41
    :cond_6
    iget-object p3, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->G:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Lcom/beizi/fusion/tool/ad;->a(Ljava/lang/Boolean;)V

    .line 42
    iget-object p3, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    int-to-float v2, p1

    .line 43
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    int-to-float v3, p2

    .line 44
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 45
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v3

    iget-object v4, p0, Lcom/beizi/fusion/work/a/a;->D:Ljava/lang/String;

    .line 46
    invoke-virtual {p3, v0, v2, v3, v4}, Lcom/beizi/fusion/tool/ad;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;Ljava/lang/String;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/beizi/fusion/work/a/a;->C:Landroid/view/View;

    if-eqz p3, :cond_7

    .line 47
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 48
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 49
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 52
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 53
    iget-object p3, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getIsHideAnim()I

    move-result p3

    if-nez p3, :cond_7

    .line 54
    iget-object p3, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->C:Landroid/view/View;

    invoke-virtual {p3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :cond_7
    invoke-direct {p0, v1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 56
    iget-object p3, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    new-instance v0, Lcom/beizi/fusion/work/a/a$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/beizi/fusion/work/a/a$10;-><init>(Lcom/beizi/fusion/work/a/a;II)V

    invoke-virtual {p3, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/tool/ad$a;)V

    .line 57
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    if-eqz p1, :cond_8

    .line 58
    iget-object p2, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    iget-object p3, p0, Lcom/beizi/fusion/work/a/a;->v:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;Ljava/lang/String;)V

    .line 59
    :cond_8
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    iget-object p2, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/beizi/fusion/tool/ad;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/beizi/fusion/widget/BeiZiAdContainer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/beizi/fusion/widget/BeiZiAdContainer;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 18
    :try_start_0
    iput-object p2, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    .line 19
    new-instance p1, Lcom/beizi/fusion/work/a/a$8;

    invoke-direct {p1, p0, p3}, Lcom/beizi/fusion/work/a/a$8;-><init>(Lcom/beizi/fusion/work/a/a;Ljava/util/List;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a;->aj:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/tool/ad;->c(I)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 66
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->w:Z

    .line 67
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    return-void

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/a/a;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-object p1, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 72
    :cond_4
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->w:Z

    .line 73
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;D)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;I)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/work/a;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;III)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/fusion/work/a/a;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Landroid/content/Context;Lcom/beizi/fusion/widget/BeiZiAdContainer;Ljava/util/List;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/fusion/work/a/a;->a(Landroid/content/Context;Lcom/beizi/fusion/widget/BeiZiAdContainer;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/a/a;->a(Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Ljava/util/List;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/a/a;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;[Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/a/a;->a([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;[Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/work/a/a;->a([Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->ad:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 140
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 142
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    goto :goto_0

    .line 143
    :cond_4
    new-instance v1, Lcom/beizi/fusion/work/a/a$5;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/work/a/a$5;-><init>(Lcom/beizi/fusion/work/a/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 8

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aR()V

    .line 145
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->L:Z

    .line 148
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    .line 149
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_2

    .line 150
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setNativeRuleUuid(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 153
    aget-object v3, p1, v3

    aget-object v4, p1, v0

    const/4 v0, 0x2

    aget-object v5, p1, v0

    const/4 v0, 0x3

    aget-object p1, p1, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/beizi/fusion/work/a/a$6;

    invoke-direct {v7, p0}, Lcom/beizi/fusion/work/a/a$6;-><init>(Lcom/beizi/fusion/work/a/a;)V

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

    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .locals 8

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aR()V

    .line 105
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->L:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->L:Z

    .line 108
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    .line 109
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_2

    .line 110
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setNativeRuleUuid(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 113
    aget-object v3, p1, v3

    aget-object v4, p1, v0

    const/4 v0, 0x2

    aget-object v5, p1, v0

    const/4 v0, 0x3

    aget-object p1, p1, v0

    new-instance v7, Lcom/beizi/fusion/work/a/a$12;

    invoke-direct {v7, p0}, Lcom/beizi/fusion/work/a/a$12;-><init>(Lcom/beizi/fusion/work/a/a;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/beizi/fusion/work/a/a;->H:Z

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

    .line 122
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

    .line 123
    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 125
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

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    new-array v8, v10, [I

    .line 128
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    mul-int v3, v3, v5

    .line 129
    div-int/lit8 v3, v3, 0x64

    mul-int v6, v6, v0

    .line 130
    div-int/lit8 v6, v6, 0x64

    const/4 v0, 0x0

    aget v1, v8, v0

    add-int/2addr v1, v3

    aget v0, v8, v9

    add-int/2addr v0, v6

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aput-object v3, v7, v2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 134
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

    .line 135
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

    .line 136
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v6

    :goto_2
    return-object v7
.end method

.method static synthetic a(Lcom/beizi/fusion/work/a/a;Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/beizi/fusion/work/a/a;->a(Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private aA()V
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/work/a/a$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/a/a$7;-><init>(Lcom/beizi/fusion/work/a/a;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->af:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdResponse;

    .line 7
    .line 8
    return-void
.end method

.method private aB()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/beizi/ad/e;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/beizi/ad/e;->i()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-lt v2, v3, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    return-object v0
.end method

.method private aC()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/beizi/ad/e;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/beizi/ad/e;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/beizi/ad/e;->i()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x2

    .line 41
    if-lt v2, v3, :cond_0

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    move-object v0, v1

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    return-object v0
.end method

.method private aD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

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
    invoke-interface {v0}, Lcom/beizi/ad/e;->p()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private aE()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/e;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/beizi/ad/e;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method private aF()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

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

.method private aG()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->ah:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/beizi/fusion/work/a/a;->T:J

    .line 11
    .line 12
    sget-object v0, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->H:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 21
    .line 22
    const-string v1, "1"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v0, p0, Lcom/beizi/fusion/work/a/a;->I:J

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    cmp-long v4, v0, v2

    .line 32
    .line 33
    if-lez v4, :cond_1

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-wide v2, p0, Lcom/beizi/fusion/work/a/a;->I:J

    .line 40
    .line 41
    sub-long/2addr v0, v2

    .line 42
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->ah:Z

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x2

    .line 67
    if-eq v0, v1, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a/a;->f()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->ah:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->B()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->C()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ac()V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->aj:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-interface {v0}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;->onADExposed()V

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aQ()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aS()V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aH()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private aH()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

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
    move-result v0

    .line 17
    if-gtz v0, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    new-instance v1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/beizi/fusion/work/a/a$9;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/beizi/fusion/work/a/a$9;-><init>(Lcom/beizi/fusion/work/a/a;)V

    .line 28
    .line 29
    .line 30
    int-to-long v3, v0

    .line 31
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private aI()V
    .locals 8

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->L:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x2

    .line 20
    new-array v2, v1, [I

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 35
    .line 36
    .line 37
    div-int/2addr v0, v1

    .line 38
    div-int/2addr v3, v1

    .line 39
    invoke-static {v0, v3}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v3, 0x4

    .line 44
    new-array v3, v3, [Ljava/lang/String;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    aget v5, v0, v4

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    aput-object v5, v3, v4

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    aget v6, v0, v5

    .line 57
    .line 58
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    aput-object v6, v3, v5

    .line 63
    .line 64
    aget v6, v0, v4

    .line 65
    .line 66
    aget v7, v2, v4

    .line 67
    .line 68
    add-int/2addr v6, v7

    .line 69
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    aput-object v6, v3, v1

    .line 74
    .line 75
    aget v0, v0, v5

    .line 76
    .line 77
    aget v1, v2, v5

    .line 78
    .line 79
    add-int/2addr v0, v1

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x3

    .line 85
    aput-object v0, v3, v1

    .line 86
    .line 87
    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/work/a/a;->a([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method

.method private aJ()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "1"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "2"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/beizi/fusion/work/a/a;->aq:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iput v2, p0, Lcom/beizi/fusion/work/a/a;->ap:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iput v1, p0, Lcom/beizi/fusion/work/a/a;->ap:I

    .line 46
    .line 47
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->aj:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;->onADStatusChanged()V

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aT()V

    .line 55
    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/beizi/fusion/work/a/a;->L:Z

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->W:Z

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aR()V

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->x:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->E()V

    .line 88
    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->x:Z

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->y:Z

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v2, 0x2

    .line 108
    if-eq v0, v2, :cond_6

    .line 109
    .line 110
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a/a;->f()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/c/e;->d(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->D()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ad()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->aj:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    invoke-interface {v0}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdEventListener;->onADClicked()V

    .line 130
    .line 131
    .line 132
    :cond_7
    iget v0, p0, Lcom/beizi/fusion/work/a/a;->B:I

    .line 133
    .line 134
    if-nez v0, :cond_8

    .line 135
    .line 136
    return-void

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    .line 138
    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->C:Landroid/view/View;

    .line 142
    .line 143
    if-nez v2, :cond_9

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_9
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ad;->c()V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->C:Landroid/view/View;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_a
    :goto_1
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :goto_2
    return-void
.end method

.method private aK()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->E:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    const/16 v2, 0x11

    .line 21
    .line 22
    const/4 v3, -0x2

    .line 23
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/beizi/ad/e;->k()Lcom/beizi/ad/internal/d/a$a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v4, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v4, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    const/high16 v6, 0x41880000    # 17.0f

    .line 48
    .line 49
    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/beizi/ad/e;->j()Lcom/beizi/ad/internal/d/a$a;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v5, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v5, v1}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .line 72
    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    .line 84
    const/4 v6, 0x5

    .line 85
    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 86
    .line 87
    .line 88
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 94
    .line 95
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    const/16 v5, 0x55

    .line 98
    .line 99
    invoke-direct {v2, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 112
    .line 113
    const/high16 v3, 0x40c00000    # 6.0f

    .line 114
    .line 115
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v1, v4, v4, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void
.end method

.method private aL()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/beizi/ad/e;->k()Lcom/beizi/ad/internal/d/a$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a$a;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-object v1
.end method

.method private aM()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

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

.method private aN()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

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

.method private aO()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->F:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-interface {v0}, Lcom/beizi/ad/e;->m()Lcom/beizi/ad/lance/ApkBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/beizi/ad/internal/c/d;->a(Landroid/content/Context;Lcom/beizi/ad/e;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    div-int/lit8 v1, v1, 0x3

    .line 40
    .line 41
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    const/4 v3, -0x2

    .line 44
    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .line 54
    const/16 v4, 0x33

    .line 55
    .line 56
    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
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

.method private aP()Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/beizi/ad/e;->m()Lcom/beizi/ad/lance/ApkBean;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getApkName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppDeveloper()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppVersion()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPrivacyUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_4
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppintro()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_5
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsDesc()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_6
    new-instance v2, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;

    .line 88
    .line 89
    invoke-direct {v2}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getApkName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;->setAppName(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppVersion()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;->setAppVersion(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppDeveloper()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;->setAppDeveloper(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_7

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;->setAppPermission(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsDesc()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_8

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;->setAppPermission(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    :goto_0
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPrivacyUrl()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_9

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPrivacyUrl()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;->setAppPrivacy(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_9
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppintro()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;->setAppIntro(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    return-object v2

    .line 165
    :catch_0
    move-exception v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    return-object v0
.end method

.method private aQ()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->M:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->X:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    new-instance v1, Lcom/beizi/fusion/work/a/a$13;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/a/a$13;-><init>(Lcom/beizi/fusion/work/a/a;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->al:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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

.method private aR()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->al:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->al:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/beizi/fusion/work/a/a;->Q:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->aa:Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;
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

.method private aS()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

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
    iget-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->Y:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->Z:Z

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
    iget-object v5, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

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
    iput-object v5, p0, Lcom/beizi/fusion/work/a/a;->aa:Landroid/view/ViewGroup;

    .line 88
    .line 89
    if-nez v5, :cond_6

    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    iget-object v5, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v5}, Lcom/beizi/fusion/tool/au;->m(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iget-object v6, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v6}, Lcom/beizi/fusion/tool/au;->n(Landroid/content/Context;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    iget-object v7, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    iget-object v8, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

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
    iget-object v10, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

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
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 225
    .line 226
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    iput-object v1, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .line 233
    invoke-direct {v1, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, v4, v5, v7, v11}, Lcom/beizi/fusion/work/a/a;->a(Ljava/lang/String;III)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-direct {p0, v0, v13, v8, v9}, Lcom/beizi/fusion/work/a/a;->b(Ljava/lang/String;III)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 261
    .line 262
    int-to-float v1, v1

    .line 263
    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 267
    .line 268
    int-to-float v0, v0

    .line 269
    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->X:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->aa:Landroid/view/ViewGroup;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

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
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ab:Landroid/widget/FrameLayout;

    .line 294
    .line 295
    new-instance v2, Lcom/beizi/fusion/work/a/a$3;

    .line 296
    .line 297
    invoke-direct {v2, p0, v0}, Lcom/beizi/fusion/work/a/a$3;-><init>(Lcom/beizi/fusion/work/a/a;[F)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

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

.method private aT()V
    .locals 3

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "2"

    .line 12
    .line 13
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->an:Lcom/beizi/fusion/tool/ab;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/beizi/fusion/tool/ab;->a(Landroid/content/Context;)Lcom/beizi/fusion/tool/ab;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->an:Lcom/beizi/fusion/tool/ab;

    .line 46
    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->n:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->o:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/beizi/fusion/work/a/a$a;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-direct {v1, p0, v2}, Lcom/beizi/fusion/work/a/a$a;-><init>(Lcom/beizi/fusion/work/a/a;Lcom/beizi/fusion/work/a/a$1;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/beizi/fusion/work/a/a;->ao:Lcom/beizi/fusion/work/a/a$a;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->an:Lcom/beizi/fusion/tool/ab;

    .line 71
    .line 72
    invoke-virtual {v2, v1, v0}, Lcom/beizi/fusion/tool/ab;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method private aU()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->an:Lcom/beizi/fusion/tool/ab;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->ao:Lcom/beizi/fusion/work/a/a$a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ab;->a(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->an:Lcom/beizi/fusion/tool/ab;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->ao:Lcom/beizi/fusion/work/a/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    return-void
.end method

.method private aV()V
    .locals 0

    return-void
.end method

.method private az()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Z()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    .line 10
    .line 11
    sget-object v1, Lcom/beizi/fusion/c/g;->a:Lcom/beizi/fusion/c/g;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aA()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a/a;->f()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->af:Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdResponse;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdResponse;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v1, Lcom/beizi/fusion/c/g;->b:Lcom/beizi/fusion/c/g;

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "other worker shown,"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a/a;->f()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " remove"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/work/a/a;->z:I

    return p1
.end method

.method private b(Ljava/lang/String;III)I
    .locals 2

    .line 39
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    const-string v0, "top"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "center"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le p2, p3, :cond_2

    sub-int/2addr p2, p3

    .line 42
    div-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr p4, p2

    goto :goto_2

    :cond_2
    sub-int/2addr p3, p2

    .line 43
    div-int/lit8 p3, p3, 0x2

    :goto_1
    add-int/2addr p4, p3

    goto :goto_2

    :cond_3
    const-string v0, "bottom"

    .line 44
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

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return p4
.end method

.method static synthetic b(Lcom/beizi/fusion/work/a/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/work/a/a;->K:J

    return-wide p1
.end method

.method static synthetic b(Lcom/beizi/fusion/work/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/work/a/a;->aq:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->az()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->P()V

    :goto_0
    return-void
.end method

.method private b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z
    .locals 6

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->v:Ljava/lang/String;

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

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/fusion/work/a/a$11;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/work/a/a$11;-><init>(Lcom/beizi/fusion/work/a/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    iget-object p1, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 13
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 14
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/tool/ap;->a()Lcom/beizi/fusion/tool/ap;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ap;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->H:Z

    return p0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/a/a;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/beizi/fusion/work/a/a;->ak:Z

    return p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/work/a/a;->A:I

    return p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/a/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/work/a/a;->ac:J

    return-wide p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic c(Lcom/beizi/fusion/work/a/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/work/a/a;->L:Z

    return p1
.end method

.method static synthetic d(Lcom/beizi/fusion/work/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/work/a/a;->ap:I

    return p1
.end method

.method static synthetic d(Lcom/beizi/fusion/work/a/a;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/beizi/fusion/work/a/a;->I:J

    return-wide v0
.end method

.method static synthetic d(Lcom/beizi/fusion/work/a/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/work/a/a;->V:Z

    return p1
.end method

.method static synthetic e(Lcom/beizi/fusion/work/a/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/work/a/a;->P:I

    return p1
.end method

.method static synthetic e(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic e(Lcom/beizi/fusion/work/a/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/work/a/a;->w:Z

    return p1
.end method

.method static synthetic f(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic f(Lcom/beizi/fusion/work/a/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/work/a/a;->R:Z

    return p1
.end method

.method static synthetic g(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/ad/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    return-object p0
.end method

.method static synthetic i(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->ar:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->b()V

    return-void
.end method

.method static synthetic k(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aB()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aC()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aD()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aE()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/beizi/fusion/work/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aL()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic p(Lcom/beizi/fusion/work/a/a;)Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aP()Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdDownloadAppInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic q(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aF()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic r(Lcom/beizi/fusion/work/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/a/a;->ap:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lcom/beizi/fusion/work/a/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a/a;->ag:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aK()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aO()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lcom/beizi/fusion/work/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/a/a;->z:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lcom/beizi/fusion/work/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/a/a;->A:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->Y:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Lcom/beizi/fusion/work/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/a/a;->Z:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lcom/beizi/fusion/work/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aJ()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 5

    const-string v0, "auctionExt"

    const-string v1, "highestLossPrice"

    const-string v2, "adnId"

    const-string v3, "winPrice"

    .line 75
    :try_start_0
    iget-object v4, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    if-nez v4, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {v4, p1}, Lcom/beizi/ad/v2/a/a;->a(Ljava/util/Map;)V

    .line 77
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 79
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 80
    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v4, v3}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 86
    check-cast v2, Ljava/lang/String;

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 89
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 91
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 92
    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setHighestLossPrice(Ljava/lang/String;)V

    .line 95
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 97
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 98
    check-cast p1, Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setSecondPrice(Ljava/lang/String;)V

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 102
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

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

.method public b(Ljava/util/Map;)V
    .locals 4

    const-string v0, "lossReason"

    const-string v1, "adnId"

    const-string v2, "winPrice"

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    if-nez v3, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {v3, p1}, Lcom/beizi/ad/v2/a/a;->b(Ljava/util/Map;)V

    .line 18
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 24
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 30
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 32
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setLossReason(Ljava/lang/String;)V

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 37
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 6

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

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getNativeOptimize()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getNativeUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/fusion/work/a/a;->U:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getAdSlide()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getRandomNum()I

    move-result v2

    .line 12
    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/beizi/fusion/work/a/a;->M:Z

    .line 13
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getNeedTime()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/beizi/fusion/work/a/a;->N:J

    .line 14
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getDistance()I

    move-result v1

    iput v1, p0, Lcom/beizi/fusion/work/a/a;->O:I

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getCloseClickNum()I

    move-result v1

    .line 16
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->W:Z

    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getTouchDownNum()I

    move-result v1

    .line 18
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->Y:Z

    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getHoldSlideNum()I

    move-result v1

    .line 20
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->Z:Z

    .line 21
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getAddClickNum()I

    move-result v0

    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->ad:Z

    :cond_2
    const/4 v0, 0x1

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategy()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 25
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a/a;->x:Z

    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;

    const-string v4, "290.300"

    .line 28
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getEventCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getRate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/work/a/a;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {v1}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a;->a(Ljava/lang/String;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_5

    .line 33
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->s()V

    .line 34
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->t()V

    .line 35
    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->u()V

    .line 37
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":requestAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/beizi/fusion/work/a/a;->ae:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v1, p0, Lcom/beizi/fusion/work/a/a;->ae:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 40
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 41
    :cond_6
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->u()I

    move-result v1

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 42
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a/a;->k()V

    :cond_7
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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

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

    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->t:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getClkremove()I

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/work/a/a;->B:I

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->s:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->D:Ljava/lang/String;

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cool_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->v:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/beizi/ad/v2/d/c;

    iget-object v1, p0, Lcom/beizi/fusion/work/a/a;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    new-instance v3, Lcom/beizi/fusion/work/a/a$1;

    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/a/a$1;-><init>(Lcom/beizi/fusion/work/a/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/beizi/ad/v2/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/d;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->a(Z)V

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventBean;->clone()Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v2, v0}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/events/EventBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    iget-wide v2, p0, Lcom/beizi/fusion/work/a/a;->J:J

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Lcom/beizi/ad/v2/a/a;->a(I)V

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V

    const-string v0, "S2S"

    .line 16
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/beizi/ad/v2/a/a;->c(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v2, v0}, Lcom/beizi/ad/v2/a/a;->b(Ljava/lang/String;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_2

    .line 23
    iget-object v2, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->C()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/beizi/ad/v2/a/a;->c(Ljava/util/Map;)V

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v2}, Lcom/beizi/fusion/c/e;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/beizi/ad/v2/a/a;->d(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->b(Z)V

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->c()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->r:Lcom/beizi/ad/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/beizi/ad/e;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->f()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ad;->c()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aR()V

    .line 9
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aU()V

    .line 10
    invoke-direct {p0}, Lcom/beizi/fusion/work/a/a;->aV()V

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->u:Lcom/beizi/fusion/tool/ad;

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

.method protected z()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/a/a;->q:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ag()V

    :cond_0
    return-void
.end method
