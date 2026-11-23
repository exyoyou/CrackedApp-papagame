.class public Lcom/papa/controller/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static q:Lcom/papa/controller/core/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/controller/core/c;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/papa/controller/core/ControllerManager;

.field private j:Lcom/papa/controller/core/ControllerManager$d;

.field private k:Landroid/os/Handler;

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/papa/controller/core/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/papa/controller/core/d;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->e:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/papa/controller/core/d;->f:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->g:Z

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/papa/controller/core/d;->h:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/papa/controller/core/d;->j:Lcom/papa/controller/core/ControllerManager$d;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/papa/controller/core/d;->k:Landroid/os/Handler;

    .line 31
    .line 32
    iput v1, p0, Lcom/papa/controller/core/d;->l:I

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    iput v0, p0, Lcom/papa/controller/core/d;->m:I

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    iput v0, p0, Lcom/papa/controller/core/d;->n:I

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    iput v0, p0, Lcom/papa/controller/core/d;->o:I

    .line 42
    .line 43
    iput-object p1, p0, Lcom/papa/controller/core/d;->b:Landroid/content/Context;

    .line 44
    .line 45
    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/core/d;->b:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    new-instance v1, Lcom/papa/controller/core/ControllerManager;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/papa/controller/core/ControllerManager;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 27
    .line 28
    new-instance v0, Lcom/papa/controller/core/d$a;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/papa/controller/core/d$a;-><init>(Lcom/papa/controller/core/d;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/papa/controller/core/d;->k:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, Lcom/papa/controller/core/d$b;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/papa/controller/core/d$b;-><init>(Lcom/papa/controller/core/d;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/papa/controller/core/ControllerManager;->c(Lcom/papa/controller/core/ControllerManager$d;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->u()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/papa/controller/core/e;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/papa/controller/core/e;->y()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/papa/controller/core/d;->D(Lcom/papa/controller/core/e;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v1}, Lcom/papa/controller/core/e;->x()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-direct {p0, v1}, Lcom/papa/controller/core/d;->D(Lcom/papa/controller/core/e;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-void
.end method

.method private D(Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->m(Lcom/papa/controller/core/e;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/papa/controller/core/e;

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/papa/controller/core/d;->H(Lcom/papa/controller/core/e;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method private H(Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->n()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->K()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/ControllerManager$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->j:Lcom/papa/controller/core/ControllerManager$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/core/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/d;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/papa/controller/core/d;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->d:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/papa/controller/core/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/d;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/papa/controller/core/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/core/d;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/papa/controller/core/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/papa/controller/core/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->m(Lcom/papa/controller/core/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic i(Lcom/papa/controller/core/d;)Lcom/papa/controller/core/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->D(Lcom/papa/controller/core/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/papa/controller/core/d;Lcom/papa/controller/core/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/core/d;->H(Lcom/papa/controller/core/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/papa/controller/core/d;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/core/d;->k:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private m(Lcom/papa/controller/core/e;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->u()Lcom/papa/controller/component/bluetooth/spp/a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "mocute"

    .line 12
    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/papa/controller/core/e;->u()Lcom/papa/controller/component/bluetooth/spp/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->G()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    aget-object v1, v1, v0

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return v0
.end method

.method public static r(Landroid/content/Context;)Lcom/papa/controller/core/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/core/d;->q:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/controller/core/d;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/controller/core/d;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/controller/core/d;->q:Lcom/papa/controller/core/d;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/papa/controller/core/d;->q:Lcom/papa/controller/core/d;

    .line 13
    .line 14
    return-object p0
.end method

.method private t(ILjava/lang/String;IFF)Lcom/papa/controller/core/PadMotionEvent;
    .locals 9

    .line 1
    :try_start_0
    new-instance v8, Lcom/papa/controller/core/PadMotionEvent;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    move-object v0, v8

    .line 8
    move v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    move v7, p5

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadMotionEvent;-><init>(JILjava/lang/String;IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    :goto_0
    return-object v8
.end method

.method private z(Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/papa/controller/core/e;

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/papa/controller/core/e;->H(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->e:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa/controller/core/d;->A()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa/controller/core/d;->C()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/controller/core/d;->e:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa/controller/core/d;->E()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa/controller/core/d;->G()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)Z
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v9, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v10

    .line 20
    const/16 v0, 0x11

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    const/16 v0, 0x12

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    new-instance v13, Lcom/papa/controller/core/PadKeyEvent;

    .line 45
    .line 46
    const/16 v5, 0x68

    .line 47
    .line 48
    move-object v0, v13

    .line 49
    move v3, v8

    .line 50
    move-object v4, v10

    .line 51
    move v7, v11

    .line 52
    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 56
    .line 57
    const/16 v1, 0x68

    .line 58
    .line 59
    invoke-interface {v0, v1, v11, v13}, Lcom/papa/controller/core/c;->onKeyPressure(IFLcom/papa/controller/core/PadKeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    new-instance v11, Lcom/papa/controller/core/PadKeyEvent;

    .line 80
    .line 81
    const/16 v5, 0x69

    .line 82
    .line 83
    move-object v0, v11

    .line 84
    move v3, v8

    .line 85
    move-object v4, v10

    .line 86
    move v7, v12

    .line 87
    invoke-direct/range {v0 .. v7}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 91
    .line 92
    const/16 v1, 0x69

    .line 93
    .line 94
    invoke-interface {v0, v1, v12, v11}, Lcom/papa/controller/core/c;->onKeyPressure(IFLcom/papa/controller/core/PadKeyEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    and-int/lit16 v0, v0, 0xff

    .line 107
    .line 108
    const/4 v1, 0x2

    .line 109
    if-ne v0, v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    :try_start_2
    iget-object v11, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 121
    .line 122
    if-eqz v11, :cond_2

    .line 123
    .line 124
    const/16 v3, 0xc8

    .line 125
    .line 126
    move-object v0, p0

    .line 127
    move v1, v8

    .line 128
    move-object v2, v10

    .line 129
    move v4, v6

    .line 130
    move v5, v7

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/papa/controller/core/d;->t(ILjava/lang/String;IFF)Lcom/papa/controller/core/PadMotionEvent;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v11, v6, v7, v0}, Lcom/papa/controller/core/c;->onLeftStick(FFLcom/papa/controller/core/PadMotionEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_2
    const/16 v0, 0xb

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    const/16 v0, 0xe

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    :try_start_3
    iget-object v7, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 156
    .line 157
    if-eqz v7, :cond_3

    .line 158
    .line 159
    const/16 v3, 0xc9

    .line 160
    .line 161
    move-object v0, p0

    .line 162
    move v1, v8

    .line 163
    move-object v2, v10

    .line 164
    move v4, v6

    .line 165
    move v5, p1

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/papa/controller/core/d;->t(ILjava/lang/String;IFF)Lcom/papa/controller/core/PadMotionEvent;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v7, v6, p1, v0}, Lcom/papa/controller/core/c;->onRightStick(FFLcom/papa/controller/core/PadMotionEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catchall_3
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_3
    return v9
.end method

.method public o(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    iget v6, p0, Lcom/papa/controller/core/d;->h:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const-string v1, ""

    .line 39
    .line 40
    :goto_1
    move-object v7, v1

    .line 41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    xor-int/lit8 v9, v0, 0x1

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    const/high16 v10, 0x3f800000    # 1.0f

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    :goto_2
    new-instance v1, Lcom/papa/controller/core/PadKeyEvent;

    .line 57
    .line 58
    move-object v3, v1

    .line 59
    move v8, p1

    .line 60
    invoke-direct/range {v3 .. v10}, Lcom/papa/controller/core/PadKeyEvent;-><init>(JILjava/lang/String;IIF)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 64
    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-interface {v3, p1, v1}, Lcom/papa/controller/core/c;->onKeyDown(ILcom/papa/controller/core/PadKeyEvent;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    invoke-interface {v3, p1, v1}, Lcom/papa/controller/core/c;->onKeyUp(ILcom/papa/controller/core/PadKeyEvent;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    :goto_3
    return v2
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->e()I

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

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->i:Lcom/papa/controller/core/ControllerManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/ControllerManager;->f()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method s(Landroid/view/MotionEvent;)I
    .locals 4

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/high16 v2, -0x40800000    # -1.0f

    .line 16
    .line 17
    cmpl-float v3, v0, v2

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x15

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    cmpl-float v0, v0, v1

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x16

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    cmpl-float v2, p1, v2

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    or-int/lit8 v0, v0, 0x13

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    cmpl-float p1, p1, v1

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    or-int/lit8 v0, v0, 0x14

    .line 44
    .line 45
    :cond_3
    :goto_1
    return v0
.end method

.method public u()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/papa/controller/core/d;->d:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/papa/controller/core/d;->h:I

    .line 8
    .line 9
    return-void
.end method

.method public v(Lcom/papa/controller/core/ControllerManager$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/d;->j:Lcom/papa/controller/core/ControllerManager$d;

    .line 2
    .line 3
    return-void
.end method

.method public w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/d;->c:Lcom/papa/controller/core/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/controller/core/d;->d:Landroid/os/Handler;

    .line 4
    .line 5
    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/controller/core/d;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public y(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/d;->p:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/papa/controller/core/e;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/papa/controller/core/e;->q()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {p0, v1, p1, p2}, Lcom/papa/controller/core/d;->z(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
