.class public Lcom/beizi/fusion/work/f/a;
.super Lcom/beizi/fusion/work/a;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:I

.field private D:Landroid/view/View;

.field private n:Landroid/content/Context;

.field private o:Lcom/beizi/ad/v2/h/a;

.field private p:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

.field private q:Landroid/view/ViewGroup;

.field private r:J

.field private s:Z

.field private t:J

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/beizi/fusion/tool/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;JILcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->x:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->y:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/beizi/fusion/work/f/a;->A:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->B:Z

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/beizi/fusion/work/f/a;->C:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    .line 18
    .line 19
    iput-wide p2, p0, Lcom/beizi/fusion/work/f/a;->r:J

    .line 20
    .line 21
    iput p4, p0, Lcom/beizi/fusion/work/f/a;->u:I

    .line 22
    .line 23
    iput-object p5, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 24
    .line 25
    iput-object p6, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 26
    .line 27
    iput-object p7, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->r()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic A(Lcom/beizi/fusion/work/f/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/f/a;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/tool/aq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/work/f/a;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/ad/v2/h/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
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

    .line 78
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

    .line 79
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)Lcom/beizi/fusion/unified/BZUnifiedAdResponse;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/work/f/a;->p:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    return-object p1
.end method

.method private declared-synchronized a(ILcom/beizi/ad/model/k;)V
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 42
    iput-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->w:Z

    .line 43
    :cond_1
    iput-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->v:Z

    .line 44
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Lcom/beizi/ad/v2/h/a;->a(Landroid/view/ViewGroup;Lcom/beizi/ad/model/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 19
    new-instance v1, Lcom/beizi/fusion/work/f/a$2;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/work/f/a$2;-><init>(Lcom/beizi/fusion/work/f/a;[Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v1, Lcom/beizi/fusion/work/f/a$3;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/work/f/a$3;-><init>(Lcom/beizi/fusion/work/f/a;[Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getSensorParam()I

    move-result v0

    .line 123
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCompliantAngle()I

    move-result v1

    .line 124
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->isReturnAngle()Z

    move-result p1

    .line 125
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->g()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    if-nez v3, :cond_2

    return-void

    .line 128
    :cond_2
    invoke-virtual {v3, v0, v1, p1, v2}, Lcom/beizi/fusion/tool/aq;->a(IIZLjava/util/Map;)V

    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 5

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 81
    :goto_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/tool/aq;->h(I)V

    .line 84
    :cond_1
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/work/f/a;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 87
    iget-object p2, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p2, p1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;)V

    .line 88
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p1

    .line 89
    invoke-static {p1}, Lcom/beizi/fusion/tool/ai;->b(I)I

    move-result p1

    .line 90
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/fusion/work/f/a$5;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/work/f/a$5;-><init>(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 91
    :cond_2
    iput-boolean v2, p0, Lcom/beizi/fusion/work/f/a;->B:Z

    .line 92
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    :cond_3
    :goto_1
    return-void

    .line 93
    :cond_4
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/work/f/a;->b(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 94
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/work/f/a;->C:I

    .line 95
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p1, v1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 96
    :cond_5
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getUserProtectTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/work/f/a;->c(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/work/f/a;->C:I

    .line 98
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p1, v1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 99
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/work/f/a;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 100
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 101
    iget-object p2, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p2, p1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;)V

    .line 102
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p1

    .line 103
    invoke-static {p1}, Lcom/beizi/fusion/tool/ai;->b(I)I

    move-result p1

    .line 104
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/fusion/work/f/a$6;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/work/f/a$6;-><init>(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 105
    :cond_7
    iput-boolean v2, p0, Lcom/beizi/fusion/work/f/a;->B:Z

    .line 106
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Landroid/view/View;)V
    .locals 7

    .line 107
    iget v0, p0, Lcom/beizi/fusion/work/f/a;->C:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getFeedback()I

    move-result p2

    iput p2, p0, Lcom/beizi/fusion/work/f/a;->C:I

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getFeedback()I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/work/f/a;->C:I

    .line 110
    :cond_0
    iget p1, p0, Lcom/beizi/fusion/work/f/a;->C:I

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    if-nez p1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 112
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_2

    .line 113
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    new-instance p2, Lcom/beizi/fusion/update/ShakeArcView;

    iget-object p3, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/beizi/fusion/update/ShakeArcView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x5

    .line 115
    invoke-virtual {p2, p3}, Lcom/beizi/fusion/update/ShakeArcView;->setLineRadius(I)V

    .line 116
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-double v0, p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    double-to-int p3, v0

    .line 117
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0xc

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 119
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-double v1, p3

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-double v3, p1

    const-wide v5, 0x3fb47ae147ae147bL    # 0.08

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 120
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    iget p3, p0, Lcom/beizi/fusion/work/f/a;->C:I

    invoke-virtual {p1, p2, p3}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/update/ShakeArcView;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;D)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;ILcom/beizi/ad/model/k;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/work/f/a;->a(ILcom/beizi/ad/model/k;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/f/a;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/beizi/fusion/work/f/a;->s:Z

    return p1
.end method

.method private aA()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->p()Lcom/beizi/ad/model/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/model/m;->c()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/model/m;->d()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 23
    .line 24
    if-eqz v1, :cond_a

    .line 25
    .line 26
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_b

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_b

    .line 43
    .line 44
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    new-instance v2, Lcom/beizi/fusion/tool/aq;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Lcom/beizi/fusion/tool/aq;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    .line 56
    .line 57
    :cond_3
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/work/f/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 v3, 0x0

    .line 95
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    invoke-virtual {v4, v2}, Lcom/beizi/fusion/events/EventBean;->setShakeViewUuid(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    .line 106
    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    iget-object v4, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->l()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v4, v2}, Lcom/beizi/fusion/tool/aq;->a(Ljava/lang/Boolean;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    .line 123
    .line 124
    iget-object v4, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    .line 125
    .line 126
    iget-object v5, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    .line 127
    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    int-to-float v5, v5

    .line 133
    invoke-static {v4, v5}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    iget-object v5, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    .line 138
    .line 139
    iget-object v6, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    .line 140
    .line 141
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    int-to-float v6, v6

    .line 146
    invoke-static {v5, v6}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v2, v4, v5, v6}, Lcom/beizi/fusion/tool/aq;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iput-object v2, p0, Lcom/beizi/fusion/work/f/a;->D:Landroid/view/View;

    .line 159
    .line 160
    if-eqz v2, :cond_9

    .line 161
    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 167
    .line 168
    if-eqz v4, :cond_9

    .line 169
    .line 170
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .line 172
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .line 174
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 175
    .line 176
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 177
    .line 178
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 182
    .line 183
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 184
    .line 185
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 186
    .line 187
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 188
    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->D:Landroid/view/View;

    .line 192
    .line 193
    const/4 v2, 0x4

    .line 194
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->D:Landroid/view/View;

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    .line 205
    .line 206
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->D:Landroid/view/View;

    .line 207
    .line 208
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    invoke-direct {p0, v1}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 212
    .line 213
    .line 214
    invoke-direct {p0, v3, v1}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    .line 218
    .line 219
    new-instance v2, Lcom/beizi/fusion/work/f/a$4;

    .line 220
    .line 221
    invoke-direct {v2, p0, v1}, Lcom/beizi/fusion/work/f/a$4;-><init>(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/tool/aq$a;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->D:Landroid/view/View;

    .line 228
    .line 229
    invoke-direct {p0, v3, v1, v0}, Lcom/beizi/fusion/work/f/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_a
    :goto_2
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    :cond_b
    :goto_3
    return-void
.end method

.method private aB()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/aq;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/work/f/a;->z:Lcom/beizi/fusion/tool/aq;
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
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "splashWorkers:"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Z()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    .line 31
    .line 32
    sget-object v1, Lcom/beizi/fusion/c/g;->a:Lcom/beizi/fusion/c/g;

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/beizi/fusion/work/f/a;->f()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/beizi/fusion/work/f/a;->p:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lcom/beizi/fusion/c/g;->b:Lcom/beizi/fusion/c/g;

    .line 49
    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "other worker shown,"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/beizi/fusion/work/f/a;->f()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " remove"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/f/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object p1
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->w:Z

    if-nez v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->D()V

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/beizi/fusion/work/f/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->d(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ad()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/f/a;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(J)Z
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->A:Ljava/lang/String;

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

    .line 37
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

.method private b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p2

    if-lez p2, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result p2

    if-gtz p2, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p1

    .line 43
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    move-result p2

    if-lez p2, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result p2

    if-gtz p2, :cond_2

    .line 46
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

.method static synthetic b(Lcom/beizi/fusion/work/f/a;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/beizi/fusion/work/f/a;->s:Z

    return p0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/f/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/work/f/a;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method private c(J)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/beizi/fusion/tool/au;->p(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
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

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/beizi/fusion/work/f/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/f/a;->t:J

    return-wide v0
.end method

.method static synthetic e(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic f(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic g(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/beizi/fusion/work/f/a;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Y()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/f/a;->az()V

    return-void
.end method

.method static synthetic j(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->P()V

    return-void
.end method

.method static synthetic k(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic l(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic m(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/beizi/fusion/work/f/a;)Lcom/beizi/fusion/c/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ac()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/f/a;->aA()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w(Lcom/beizi/fusion/work/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/f/a;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x(Lcom/beizi/fusion/work/f/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/f/a;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic y(Lcom/beizi/fusion/work/f/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/f/a;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic z(Lcom/beizi/fusion/work/f/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/beizi/ad/v2/h/a;->a(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setError(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setErrorCode(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->A()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 16
    invoke-direct {p0, p2}, Lcom/beizi/fusion/work/f/a;->a(Landroid/view/View;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-nez p1, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/beizi/ad/v2/h/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/beizi/fusion/unified/BZUnifiedAdActionData;)V
    .locals 9

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/beizi/ad/model/k;

    invoke-direct {v0}, Lcom/beizi/ad/model/k;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdActionData;->getType()I

    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/k;->a(I)V

    .line 25
    invoke-virtual {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdActionData;->getDownX()I

    move-result v1

    .line 26
    invoke-virtual {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdActionData;->getDownY()I

    move-result v2

    .line 27
    invoke-virtual {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdActionData;->getUpX()I

    move-result v3

    .line 28
    invoke-virtual {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdActionData;->getUpY()I

    move-result p1

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 29
    iget-object v5, p0, Lcom/beizi/fusion/work/f/a;->q:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v6, v4, v5

    add-int v7, v1, v6

    const/4 v8, 0x1

    aget v4, v4, v8

    add-int v8, v2, v4

    add-int/2addr v6, v3

    add-int/2addr v4, p1

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/k;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/k;->b(Ljava/lang/String;)V

    .line 32
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/k;->c(Ljava/lang/String;)V

    .line 33
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/k;->d(Ljava/lang/String;)V

    .line 34
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/k;->e(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/model/k;->f(Ljava/lang/String;)V

    .line 36
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/model/k;->g(Ljava/lang/String;)V

    .line 37
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/model/k;->h(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v5, v0}, Lcom/beizi/fusion/work/f/a;->a(ILcom/beizi/ad/model/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 5

    const-string v0, "auctionExt"

    const-string v1, "highestLossPrice"

    const-string v2, "adnId"

    const-string v3, "winPrice"

    .line 47
    :try_start_0
    iget-object v4, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-nez v4, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {v4, p1}, Lcom/beizi/ad/v2/a/a;->a(Ljava/util/Map;)V

    .line 49
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 51
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v4, v3}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 61
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 63
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setHighestLossPrice(Ljava/lang/String;)V

    .line 67
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 69
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setSecondPrice(Ljava/lang/String;)V

    .line 73
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 74
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

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

.method public ay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

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

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-nez v3, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {v3, p1}, Lcom/beizi/ad/v2/a/a;->b(Ljava/util/Map;)V

    .line 15
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 17
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 20
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 21
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 23
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 26
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 27
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 29
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setLossReason(Ljava/lang/String;)V

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 34
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splash_cool_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/work/f/a;->A:Ljava/lang/String;

    .line 7
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

    const/4 v0, 0x1

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategy()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 10
    iput-boolean v0, p0, Lcom/beizi/fusion/work/f/a;->x:Z

    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;

    const-string v4, "290.300"

    .line 13
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getEventCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getRate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/work/f/a;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a;->a(Ljava/lang/String;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->s()V

    .line 19
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->t()V

    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->u()V

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v1

    .line 23
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v3}, Lcom/beizi/fusion/c/e;->v()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getHotRequestDelay()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 25
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/beizi/fusion/work/f/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":requestAd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 27
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 28
    :cond_5
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->u()I

    move-result v1

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/work/f/a;->k()V

    :cond_6
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
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->p:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->p:Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    invoke-interface {v1}, Lcom/beizi/fusion/unified/BZUnifiedAdResponse;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    new-instance v0, Lcom/beizi/ad/v2/h/a;

    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    iget v3, p0, Lcom/beizi/fusion/work/f/a;->u:I

    invoke-direct {v0, v1, v2, v3}, Lcom/beizi/ad/v2/h/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    .line 5
    new-instance v1, Lcom/beizi/fusion/work/f/a$1;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/f/a$1;-><init>(Lcom/beizi/fusion/work/f/a;)V

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/h/a;->a(Lcom/beizi/ad/v2/h/b;)V

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    iget-wide v1, p0, Lcom/beizi/fusion/work/f/a;->r:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/beizi/ad/v2/a/a;->a(I)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventBean;->clone()Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/events/EventBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v0, "S2S"

    .line 11
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->c(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->b(Ljava/lang/String;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->C()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->c(Ljava/util/Map;)V

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->d(Ljava/lang/String;)V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->c()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/beizi/fusion/work/a;->l()V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->f()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/f/a;->aB()V
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

.method protected z()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/f/a;->o:Lcom/beizi/ad/v2/h/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ag()V

    :cond_0
    return-void
.end method
