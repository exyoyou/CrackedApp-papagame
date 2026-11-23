.class public Lcom/beizi/fusion/tool/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/tool/ak$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ak"

.field private static c:Landroid/hardware/SensorManager;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private d:J

.field private e:D

.field private f:D

.field private g:Z

.field private h:Z

.field private i:I

.field private j:J

.field private k:D

.field private l:D

.field private m:Lcom/beizi/fusion/widget/TwistView;

.field private r:Z

.field private s:Z

.field private t:Lcom/beizi/fusion/tool/ak$a;

.field private u:Ljava/lang/Boolean;

.field private final v:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/beizi/fusion/tool/ak;->d:J

    .line 7
    .line 8
    const-wide v0, -0x3f70c80000000000L    # -999.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcom/beizi/fusion/tool/ak;->e:D

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/beizi/fusion/tool/ak;->f:D

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ak;->g:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ak;->h:Z

    .line 21
    .line 22
    iput v0, p0, Lcom/beizi/fusion/tool/ak;->i:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ak;->r:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ak;->s:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/beizi/fusion/tool/ak;->t:Lcom/beizi/fusion/tool/ak$a;

    .line 30
    .line 31
    new-instance v0, Lcom/beizi/fusion/tool/ak$1;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/beizi/fusion/tool/ak$1;-><init>(Lcom/beizi/fusion/tool/ak;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/beizi/fusion/tool/ak;->v:Landroid/hardware/SensorEventListener;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "sensor"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/hardware/SensorManager;

    .line 51
    .line 52
    sput-object p1, Lcom/beizi/fusion/tool/ak;->c:Landroid/hardware/SensorManager;

    .line 53
    .line 54
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/ak;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/tool/ak;->e:D

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/ak;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/tool/ak;->i:I

    return p1
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/ak;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/beizi/fusion/tool/ak;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/ak;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/beizi/fusion/tool/ak;->d:J

    return-wide p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    sput-object p0, Lcom/beizi/fusion/tool/ak;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/ak;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/beizi/fusion/tool/ak;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/beizi/fusion/tool/ak;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/tool/ak;->f:D

    return-wide p1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/beizi/fusion/tool/ak;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/beizi/fusion/tool/ak;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/beizi/fusion/tool/ak;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/beizi/fusion/tool/ak;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/tool/ak;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/beizi/fusion/tool/ak;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/tool/ak;->e:D

    return-wide v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/beizi/fusion/tool/ak;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/beizi/fusion/tool/ak;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/tool/ak;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/beizi/fusion/tool/ak;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/tool/ak;->k:D

    return-wide v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/tool/ak;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/beizi/fusion/tool/ak;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/beizi/fusion/tool/ak;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/tool/ak;->r:Z

    return p1
.end method

.method static synthetic e(Lcom/beizi/fusion/tool/ak;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/tool/ak;->i:I

    return p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/tool/ak;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/tool/ak;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/beizi/fusion/tool/ak;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/beizi/fusion/tool/ak;->i()V

    return-void
.end method

.method static synthetic g(Lcom/beizi/fusion/tool/ak;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/tool/ak;->l:D

    return-wide v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/tool/ak;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/beizi/fusion/tool/ak;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/tool/ak;->f:D

    return-wide v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/tool/ak;->q:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/beizi/fusion/tool/ak;->i:I

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/widget/TwistView;->updateRollStatus(I)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/beizi/fusion/tool/ak;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/tool/ak;->h:Z

    return p0
.end method

.method static synthetic j(Lcom/beizi/fusion/tool/ak;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/tool/ak;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/beizi/fusion/tool/ak;)Lcom/beizi/fusion/tool/ak$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/tool/ak;->t:Lcom/beizi/fusion/tool/ak$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/beizi/fusion/tool/ak;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/tool/ak;->r:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 60
    sget-object v0, Lcom/beizi/fusion/tool/ak;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/beizi/fusion/tool/ak;->v:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public a(D)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/beizi/fusion/tool/ak;->k:D

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/beizi/fusion/tool/ak;->j:J

    return-void
.end method

.method public a(Landroid/view/ViewGroup;IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V
    .locals 10

    const-string v0, "enter addRollView"

    const-string v1, "BeiZis"

    .line 7
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    if-nez p4, :cond_0

    goto/16 :goto_6

    .line 9
    :cond_0
    invoke-virtual {p4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v2, Lcom/beizi/fusion/widget/TwistView;

    iget-object v3, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/beizi/fusion/widget/TwistView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterY()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getHeight()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "0"

    if-nez v5, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v2, "85%"

    .line 16
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v3, "50%"

    .line 17
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const-string v4, "340"

    .line 18
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string v0, "70"

    .line 19
    :cond_9
    iget-object v5, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/beizi/fusion/tool/au;->i(Landroid/content/Context;)F

    move-result v5

    const-string v6, "%"

    .line 20
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_a

    .line 21
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int v2, v2, p2

    div-int/lit8 v2, v2, 0x64

    goto :goto_0

    .line 22
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 23
    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 24
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int v3, v3, p3

    div-int/lit8 v3, v3, 0x64

    goto :goto_1

    .line 25
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 26
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const/16 v9, 0x190

    if-eqz v7, :cond_d

    .line 27
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/high16 v7, 0x43c80000    # 400.0f

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_c

    mul-int/lit16 v4, v4, 0x190

    .line 28
    div-int/lit8 v4, v4, 0x64

    goto :goto_2

    :cond_c
    float-to-int v5, v5

    mul-int v5, v5, v4

    .line 29
    div-int/lit8 v5, v5, 0x64

    move v9, v5

    goto :goto_3

    .line 30
    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v9, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    move v9, v4

    .line 31
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 32
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, v9

    div-int/lit8 v0, v0, 0x64

    goto :goto_4

    .line 33
    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    :goto_4
    iget-object v4, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    int-to-float v5, v9

    invoke-static {v4, v5}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v4

    .line 35
    iget-object v5, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    add-int/lit8 v0, v0, 0x5f

    int-to-float v0, v0

    invoke-static {v5, v0}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 36
    iget-object v5, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v5, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    .line 37
    iget-object v5, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    int-to-float v3, v3

    invoke-static {v5, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v3

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widthInt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",heightInt = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    const/high16 v4, 0x43aa0000    # 340.0f

    invoke-static {v0, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 40
    iget-object v4, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    const/high16 v5, 0x43250000    # 165.0f

    invoke-static {v4, v5}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v4

    .line 41
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "centerYInt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",centerXInt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",adWidthDp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",adHeightDp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_10

    .line 43
    iget-object v1, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    int-to-float p3, p3

    invoke-static {v1, p3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p3

    div-int/lit8 v3, p3, 0x2

    :cond_10
    if-nez v2, :cond_11

    .line 44
    iget-object p3, p0, Lcom/beizi/fusion/tool/ak;->b:Landroid/content/Context;

    int-to-float p2, p2

    invoke-static {p3, p2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p2

    div-int/lit8 v2, p2, 0x2

    .line 45
    :cond_11
    div-int/lit8 p2, v4, 0x2

    sub-int/2addr v3, p2

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 46
    div-int/lit8 p2, v0, 0x2

    sub-int/2addr v2, p2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 47
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    invoke-virtual {p2, v0, v4}, Lcom/beizi/fusion/widget/TwistView;->setTwistTotalLayoutWidthAndHeight(II)V

    .line 48
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    invoke-virtual {p4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getBgColor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/beizi/fusion/widget/TwistView;->setTwistTotalLayoutBg(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    invoke-virtual {p4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/beizi/fusion/widget/TwistView;->setMainTitleText(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->u:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_12

    .line 52
    invoke-virtual {p4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getSubTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 53
    :cond_12
    invoke-virtual {p4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getDownloadSubTitle()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    const-string p2, "\u4e0b\u8f7d\u5e94\u7528"

    .line 55
    :cond_13
    :goto_5
    iget-object p3, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    invoke-virtual {p3, p2}, Lcom/beizi/fusion/widget/TwistView;->setDescribeText(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    new-instance p3, Lcom/beizi/fusion/tool/ak$2;

    invoke-direct {p3, p0}, Lcom/beizi/fusion/tool/ak$2;-><init>(Lcom/beizi/fusion/tool/ak;)V

    invoke-virtual {p2, p3}, Lcom/beizi/fusion/widget/TwistView;->setJumpClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    new-instance p3, Lcom/beizi/fusion/tool/ak$3;

    invoke-direct {p3, p0}, Lcom/beizi/fusion/tool/ak$3;-><init>(Lcom/beizi/fusion/tool/ak;)V

    invoke-virtual {p2, p3}, Lcom/beizi/fusion/widget/TwistView;->setJumpOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 58
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    new-instance p3, Lcom/beizi/fusion/tool/ak$4;

    invoke-direct {p3, p0}, Lcom/beizi/fusion/tool/ak$4;-><init>(Lcom/beizi/fusion/tool/ak;)V

    invoke-virtual {p2, p3}, Lcom/beizi/fusion/widget/TwistView;->setRotationEndCallback(Lcom/beizi/fusion/widget/TwistView$a;)V

    .line 59
    iget-object p2, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    invoke-virtual {p1, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    :goto_6
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    sget-object v0, Lcom/beizi/fusion/tool/ak;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRollCoolParams getRollTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getRollTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";getRollPlusAmplitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getRollPlusAmplitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ";getRollMinusAmplitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getRollMinusAmplitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getRollTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/ak;->a(J)V

    .line 71
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getRollPlusAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/ak;->a(D)V

    .line 72
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getRollMinusAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/ak;->b(D)V

    .line 73
    iget-object v0, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolRollViewBean;->getRollTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/widget/TwistView;->setDurationAnimation(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    :try_start_0
    sget-object v0, Lcom/beizi/fusion/tool/ak;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRollParams getRollTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";getRollPlusAmplitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollPlusAmplitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ";getRollMinusAmplitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollMinusAmplitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/ak;->a(J)V

    .line 64
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollPlusAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/ak;->a(D)V

    .line 65
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollMinusAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/ak;->b(D)V

    .line 66
    iget-object v0, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$RollViewBean;->getRollTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/widget/TwistView;->setDurationAnimation(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/tool/ak$a;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/beizi/fusion/tool/ak;->t:Lcom/beizi/fusion/tool/ak$a;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/beizi/fusion/tool/ak;->u:Ljava/lang/Boolean;

    return-void
.end method

.method public b()V
    .locals 2

    .line 5
    sget-object v0, Lcom/beizi/fusion/tool/ak;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/beizi/fusion/tool/ak;->v:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/TwistView;->destroyView()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/tool/ak;->m:Lcom/beizi/fusion/widget/TwistView;

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ak;->s:Z

    .line 11
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ak;->r:Z

    return-void
.end method

.method public b(D)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/beizi/fusion/tool/ak;->l:D

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/ak;->s:Z

    return-void
.end method
