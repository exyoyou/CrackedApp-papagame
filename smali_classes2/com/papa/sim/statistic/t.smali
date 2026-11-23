.class public Lcom/papa/sim/statistic/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Lcom/papa/sim/statistic/t;

.field private static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/papa/sim/statistic/s;

.field private d:Ly7/a;

.field e:Lcom/papa/sim/statistic/j;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    const-wide/16 v3, 0x1f4

    .line 6
    .line 7
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 12
    .line 13
    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 16
    .line 17
    .line 18
    sput-object v7, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    sput-object v0, Lcom/papa/sim/statistic/t;->h:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "1280*720"

    .line 25
    .line 26
    sput-object v0, Lcom/papa/sim/statistic/t;->k:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "$##$"

    .line 29
    .line 30
    sput-object v0, Lcom/papa/sim/statistic/t;->l:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/papa/sim/statistic/t;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/papa/sim/statistic/t;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/papa/sim/statistic/t;->f:I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p1}, Ly7/a;->o(Landroid/content/Context;)Ly7/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/papa/sim/statistic/t;->d:Ly7/a;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->m(Landroid/content/Context;)Lcom/papa/sim/statistic/s;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 28
    .line 29
    return-void
.end method

.method private M2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$r3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$r3;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/papa/sim/statistic/t;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;)Lcom/papa/sim/statistic/StatDataCenterReq;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/sim/statistic/t;->m(Lcom/papa/sim/statistic/Event;)Lcom/papa/sim/statistic/StatDataCenterReq;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->j:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/t;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/sim/statistic/t;->j:Lcom/papa/sim/statistic/t;

    .line 11
    .line 12
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "*"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sput-object p0, Lcom/papa/sim/statistic/t;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    :catch_0
    :cond_0
    sget-object p0, Lcom/papa/sim/statistic/t;->j:Lcom/papa/sim/statistic/t;

    .line 57
    .line 58
    return-object p0
.end method

.method private m(Lcom/papa/sim/statistic/Event;)Lcom/papa/sim/statistic/StatDataCenterReq;
    .locals 5

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/StatDataCenterReq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatDataCenterReq;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    const-wide/16 v3, 0x3e8

    .line 18
    .line 19
    div-long/2addr v1, v3

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatDataCenterReq;->setGame_time(J)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/papa/sim/statistic/u;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setDid(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa/sim/statistic/m;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setAdv_id(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setOs(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setPhone(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setModel(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setMfr(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/papa/sim/statistic/t;->k:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setRes(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/papa/sim/statistic/t;->f:I

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setIs_test(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/papa/sim/statistic/u;->f(Landroid/content/Context;)Lcom/papa/sim/statistic/u;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/papa/sim/statistic/u;->q()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/StatDataCenterReq;->setApp_version(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$c0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$c0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public A0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$i3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$i3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public A1(Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->memberClickRegister:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public A2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$j4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$j4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$j3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$j3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public B0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$l3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$l3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public B1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v9, Lcom/papa/sim/statistic/t$u0;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move/from16 v5, p6

    .line 10
    .line 11
    move-object v6, p4

    .line 12
    move-object v7, p3

    .line 13
    move v8, p5

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/t$u0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;IILjava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public B2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$e;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$e;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 10
    .line 11
    sget-object v1, Lcom/papa/sim/statistic/Event;->articleClickPraise:Lcom/papa/sim/statistic/Event;

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0, p2}, Lcom/papa/sim/statistic/s;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public C0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 16

    .line 1
    const/4 v13, 0x0

    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-wide/from16 v3, p3

    .line 9
    .line 10
    move/from16 v5, p5

    .line 11
    .line 12
    move-object/from16 v6, p6

    .line 13
    .line 14
    move-wide/from16 v7, p7

    .line 15
    .line 16
    move/from16 v9, p9

    .line 17
    .line 18
    move/from16 v10, p10

    .line 19
    .line 20
    move-object/from16 v11, p11

    .line 21
    .line 22
    move/from16 v12, p12

    .line 23
    .line 24
    move-object/from16 v14, p13

    .line 25
    .line 26
    move-object/from16 v15, p14

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v15}, Lcom/papa/sim/statistic/t;->D0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public C1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/papa/sim/statistic/StatJsonRawData;

    .line 10
    .line 11
    invoke-virtual {v0, p2, v1}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/papa/sim/statistic/StatJsonRawData;

    .line 16
    .line 17
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    .line 19
    new-instance v1, Lcom/papa/sim/statistic/t$l2;

    .line 20
    .line 21
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/t$l2;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/StatJsonRawData;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public C2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$b;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$f1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$f1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public D0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-object/from16 v6, p6

    move-wide/from16 v10, p7

    move/from16 v14, p9

    move/from16 v16, p10

    move-object/from16 v4, p11

    move/from16 v13, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v15, p15

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v17, v1

    new-instance v1, Lcom/papa/sim/statistic/t$h2;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/papa/sim/statistic/t$h2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;IILcom/papa/sim/statistic/Ext;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public D1(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchFinish:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/s;->H(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public D2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$c;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$c;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$e1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/t$e1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public E0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    const/4 v14, 0x0

    .line 1
    invoke-virtual/range {v0 .. v16}, Lcom/papa/sim/statistic/t;->F0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method public E1(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$e2;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p4

    .line 8
    move-object v4, p1

    .line 9
    move-wide v5, p2

    .line 10
    move-object v7, p5

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$e2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public E2(ILjava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$m4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/t$m4;-><init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$a1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/t$a1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public F0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move-object/from16 v6, p6

    move-object/from16 v13, p7

    move-wide/from16 v11, p8

    move/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v4, p12

    move/from16 v14, p13

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    move-object/from16 v15, p16

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object/from16 v18, v1

    new-instance v1, Lcom/papa/sim/statistic/t$i2;

    move-object/from16 v19, v0

    move-object v0, v1

    move-object/from16 v20, v1

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lcom/papa/sim/statistic/t$i2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILcom/papa/sim/statistic/Ext;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public F1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->netBattleMatchStart:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public F2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$d;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickLocalNetBattleJoinRoomBtn:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public G0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIILjava/lang/String;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v13, Lcom/papa/sim/statistic/t$f2;

    .line 4
    .line 5
    move-object v1, v13

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object/from16 v4, p2

    .line 9
    .line 10
    move-wide/from16 v5, p3

    .line 11
    .line 12
    move/from16 v7, p5

    .line 13
    .line 14
    move-object/from16 v8, p6

    .line 15
    .line 16
    move/from16 v9, p7

    .line 17
    .line 18
    move/from16 v10, p8

    .line 19
    .line 20
    move/from16 v11, p9

    .line 21
    .line 22
    move-object/from16 v12, p10

    .line 23
    .line 24
    invoke-direct/range {v1 .. v12}, Lcom/papa/sim/statistic/t$f2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public G1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$d2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/t$d2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public G2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$f;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$l1;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$l1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public H0(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 15

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v14, Lcom/papa/sim/statistic/t$g2;

    .line 4
    .line 5
    move-object v1, v14

    .line 6
    move-object v2, p0

    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    move-object/from16 v4, p2

    .line 10
    .line 11
    move-wide/from16 v5, p3

    .line 12
    .line 13
    move/from16 v7, p5

    .line 14
    .line 15
    move-object/from16 v8, p6

    .line 16
    .line 17
    move-object/from16 v9, p7

    .line 18
    .line 19
    move/from16 v10, p8

    .line 20
    .line 21
    move/from16 v11, p9

    .line 22
    .line 23
    move/from16 v12, p10

    .line 24
    .line 25
    move-object/from16 v13, p11

    .line 26
    .line 27
    invoke-direct/range {v1 .. v13}, Lcom/papa/sim/statistic/t$g2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public H1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->netMatchBtnClick:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public H2(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$k3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$k3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$m1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$m1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public I0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$v2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$v2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public I1(Lcom/papa/sim/statistic/Ext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$q0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$q0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public I2(ZLjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/s;->r0(Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->d:Ly7/a;

    .line 20
    .line 21
    invoke-virtual {p1}, Ly7/a;->a()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [Ljava/lang/Class;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const-class v3, Lcom/papa/sim/statistic/db/EMUApkTable;

    .line 37
    .line 38
    aput-object v3, v1, v2

    .line 39
    .line 40
    const-class v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, p2, v0}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/List;

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object p2, p0, Lcom/papa/sim/statistic/t;->d:Ly7/a;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ly7/a;->u(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    nop

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$g0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$g0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public J0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$j2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$j2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public J1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->newbieGuideLoad:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public J2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/s;->s0(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$c1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/t$c1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public K0(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$m3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$m3;-><init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public K1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->newbieGuidePlay:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public K2(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/s;->t0(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$o4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$o4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public L0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$a3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$a3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public L1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->newbieGuidePlayGame:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public L2(Lcom/papa/sim/statistic/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t;->e:Lcom/papa/sim/statistic/j;

    .line 2
    .line 3
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$h4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$h4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public M0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$f3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$f3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public M1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$k0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$k0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$p4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$p4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public N0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$b3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$b3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public N1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$y1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$y1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public N2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$v1;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p1

    .line 9
    move-object v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$v1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public O(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$y3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$y3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public O0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$w2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$w2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public O1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$m2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$m2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public O2(ILjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method updateLiveStat() called.step="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->m()Lcom/papa/sim/statistic/pref/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "liveStat="

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/a;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/a;->a()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    cmp-long v5, v3, v1

    .line 53
    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/t;->M2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Lcom/papa/sim/statistic/pref/a;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/papa/sim/statistic/pref/a;-><init>()V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/a;->f(B)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    invoke-virtual {p1, v3, v4}, Lcom/papa/sim/statistic/pref/a;->g(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/pref/a;->e(J)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {p2}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/pref/b;->G(Lcom/papa/sim/statistic/pref/a;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_2
    const/4 v3, 0x1

    .line 91
    const-string v4, ";liveStat="

    .line 92
    .line 93
    const-string v5, "step="

    .line 94
    .line 95
    if-ne p1, v3, :cond_3

    .line 96
    .line 97
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->m()Lcom/papa/sim/statistic/pref/a;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/a;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/pref/a;->e(J)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->G(Lcom/papa/sim/statistic/pref/a;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v0, p2}, Lcom/papa/sim/statistic/t;->M2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    const/4 v3, 0x2

    .line 151
    if-ne p1, v3, :cond_4

    .line 152
    .line 153
    iget-object v3, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {v3}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/b;->m()Lcom/papa/sim/statistic/pref/a;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_4

    .line 164
    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/a;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v4

    .line 190
    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/a;->a()J

    .line 191
    .line 192
    .line 193
    move-result-wide v6

    .line 194
    sub-long/2addr v4, v6

    .line 195
    const-wide/32 v6, 0x493e0

    .line 196
    .line 197
    .line 198
    cmp-long p1, v4, v6

    .line 199
    .line 200
    if-lez p1, :cond_4

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/papa/sim/statistic/pref/a;->a()J

    .line 203
    .line 204
    .line 205
    move-result-wide v4

    .line 206
    cmp-long p1, v4, v1

    .line 207
    .line 208
    if-lez p1, :cond_4

    .line 209
    .line 210
    invoke-direct {p0, v3, p2}, Lcom/papa/sim/statistic/t;->M2(Lcom/papa/sim/statistic/pref/a;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance p1, Lcom/papa/sim/statistic/pref/a;

    .line 214
    .line 215
    invoke-direct {p1}, Lcom/papa/sim/statistic/pref/a;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v1

    .line 222
    invoke-virtual {p1, v1, v2}, Lcom/papa/sim/statistic/pref/a;->g(J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/a;->f(B)V

    .line 226
    .line 227
    .line 228
    iget-object p2, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 229
    .line 230
    invoke-static {p2}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {p2, p1}, Lcom/papa/sim/statistic/pref/b;->G(Lcom/papa/sim/statistic/pref/a;)V

    .line 235
    .line 236
    .line 237
    :cond_4
    :goto_1
    return-void
.end method

.method public P(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$n4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$n4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public P0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$c3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$c3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public P1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$o2;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$o2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public P2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$q3;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$q3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Q(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$x3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$x3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Q0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$d3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$d3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Q1(Lcom/papa/sim/statistic/Event;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$i4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$i4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public R0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$z2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$z2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$l0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$l0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$j;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$j;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public S0(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$p3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$p3;-><init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public S1(Lcom/papa/sim/statistic/Event;ILjava/lang/String;II)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$t0;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p5

    .line 10
    move-object v6, p3

    .line 11
    move v7, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$t0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;IILjava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$g;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$g;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public T0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$h3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$h3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public T1(Lcom/papa/sim/statistic/Event;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$m0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$m0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$h;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$h;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public U0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$u2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$u2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public U1(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$n3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/t$n3;-><init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$a;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public V0(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameOut:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-wide v3, p2

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/s;->H(Lcom/papa/sim/statistic/Event;Ljava/lang/String;JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public V1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$w0;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p3

    .line 9
    move v5, p5

    .line 10
    move-object v6, p2

    .line 11
    move-object v7, p4

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$w0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;IILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$i;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$i;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public W0(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$z1;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p4

    .line 8
    move-object v4, p1

    .line 9
    move-object v5, p5

    .line 10
    move-wide v6, p2

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$z1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$x0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$x0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public X(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$s0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$s0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public X0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$h0;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p2

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$h0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public X1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$b4;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    move v6, p3

    .line 11
    move v7, p2

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$b4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Y(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$z0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/t$z0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Data;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Event;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$f0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/papa/sim/statistic/t$f0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Y1(Ljava/lang/String;III)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$c4;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p3

    .line 9
    move v5, p2

    .line 10
    move v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$c4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;III)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$r0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$r0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Z0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v6, ""

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/papa/sim/statistic/t;->a1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public Z1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$j0;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$j0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public a0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$w3;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$w3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public a1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v9, Lcom/papa/sim/statistic/t$i0;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p2

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/t$i0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public a2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$k;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$k;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$v3;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$v3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b1(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$i1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$i1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b2(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->startApp2:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$t3;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$t3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$r1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$r1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->startDownloadPlug:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v0, v6, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 6
    .line 7
    const-string v8, ""

    .line 8
    .line 9
    invoke-virtual {v0, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "/wufan91/aidlservice"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, v6, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v3, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v3, v6, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    move-object v9, v0

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    const/16 v2, 0x17

    .line 82
    .line 83
    if-lt v0, v2, :cond_1

    .line 84
    .line 85
    iget-object v0, v6, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    const-string v2, "android.permission-group.STORAGE"

    .line 90
    .line 91
    invoke-static {v0, v2}, Landroidx/core/app/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v2, Ljava/io/File;

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, "/mgpapa/aidlservice"

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v9}, Lcom/papa/sim/statistic/g;->b(Ljava/io/File;Ljava/io/File;)Z

    .line 128
    .line 129
    .line 130
    new-instance v2, Ljava/io/File;

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v9}, Lcom/papa/sim/statistic/g;->b(Ljava/io/File;Ljava/io/File;)Z

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_2

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    if-nez v10, :cond_3

    .line 172
    .line 173
    return-void

    .line 174
    :cond_3
    array-length v11, v10

    .line 175
    const/4 v0, 0x0

    .line 176
    const/4 v12, 0x0

    .line 177
    :goto_1
    if-ge v12, v11, :cond_9

    .line 178
    .line 179
    aget-object v0, v10, v12

    .line 180
    .line 181
    new-instance v13, Ljava/io/File;

    .line 182
    .line 183
    invoke-direct {v13, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v2, "game_start15"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    const/4 v2, 0x3

    .line 197
    const/4 v3, 0x2

    .line 198
    const-string v4, "_"

    .line 199
    .line 200
    if-eqz v1, :cond_4

    .line 201
    .line 202
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    aget-object v1, v1, v3

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    aget-object v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    move-object/from16 v14, p2

    .line 215
    .line 216
    :try_start_1
    invoke-virtual {v6, v1, v0, v7, v14}, Lcom/papa/sim/statistic/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :catch_0
    move-object/from16 v14, p2

    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :cond_4
    move-object/from16 v14, p2

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const-string v5, "game_startbattle15"

    .line 235
    .line 236
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_5

    .line 241
    .line 242
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    aget-object v1, v1, v3

    .line 247
    .line 248
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    aget-object v0, v0, v2

    .line 253
    .line 254
    invoke-virtual {v6, v1, v0}, Lcom/papa/sim/statistic/t;->e2(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const-string v5, "game_start160"

    .line 267
    .line 268
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    const/4 v5, 0x4

    .line 273
    if-eqz v1, :cond_6

    .line 274
    .line 275
    :try_start_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    aget-object v1, v1, v3

    .line 280
    .line 281
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    aget-object v2, v3, v2

    .line 286
    .line 287
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    aget-object v0, v0, v5

    .line 292
    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-virtual {v6, v1, v2, v0, v7}, Lcom/papa/sim/statistic/t;->i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    const-string v15, "play_time_"

    .line 309
    .line 310
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_7

    .line 315
    .line 316
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    aget-object v1, v1, v3

    .line 321
    .line 322
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    aget-object v2, v3, v2

    .line 327
    .line 328
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    aget-object v0, v0, v5

    .line 333
    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/papa/sim/statistic/t;->P1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 361
    .line 362
    .line 363
    goto :goto_2

    .line 364
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v15, "game_out_"

    .line 369
    .line 370
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_8

    .line 375
    .line 376
    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    aget-object v1, v1, v3

    .line 381
    .line 382
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    aget-object v2, v3, v2

    .line 387
    .line 388
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    aget-object v4, v0, v5

    .line 393
    .line 394
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 395
    .line 396
    .line 397
    move-result-wide v2

    .line 398
    move-object/from16 v0, p0

    .line 399
    .line 400
    move-object/from16 v5, p1

    .line 401
    .line 402
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->W0(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 406
    .line 407
    .line 408
    :catch_1
    :cond_8
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 409
    .line 410
    goto/16 :goto_1

    .line 411
    .line 412
    :cond_9
    :goto_3
    return-void
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$d1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/t$d1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRemove1:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$o1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$o1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->d:Ly7/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly7/a;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->downloadPlugCompleted:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameRemove2:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$u1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$u1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->joystickConfigChanged:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$p1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$p1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f1(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v12, Lcom/papa/sim/statistic/t$a2;

    .line 4
    .line 5
    move-object v1, v12

    .line 6
    move-object v2, p0

    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    move v5, p2

    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move/from16 v7, p6

    .line 15
    .line 16
    move-object/from16 v8, p8

    .line 17
    .line 18
    move-object/from16 v9, p7

    .line 19
    .line 20
    move-object/from16 v10, p9

    .line 21
    .line 22
    move-object v11, p1

    .line 23
    invoke-direct/range {v1 .. v11}, Lcom/papa/sim/statistic/t$a2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public f2(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$a4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$a4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/JoyStickConfig;->setType(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/JoyStickConfig;->setFile(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa/sim/statistic/t;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->m(Landroid/content/Context;)Lcom/papa/sim/statistic/s;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Lcom/papa/sim/statistic/Event;->joyStickConfigPost:Lcom/papa/sim/statistic/Event;

    .line 26
    .line 27
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->nonDefaultMapper()Lcom/papa/sim/statistic/JsonMapper;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p3, v0}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/papa/sim/statistic/s;->E(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public g0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$c2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$c2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public g1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 9

    .line 1
    const/4 v8, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    move-object/from16 v7, p7

    .line 10
    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/papa/sim/statistic/t;->h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$b2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$b2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$w1;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p1

    .line 9
    move-object v5, p3

    .line 10
    move-wide v6, p4

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$w1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->setemuerror:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v11, Lcom/papa/sim/statistic/t$v;

    .line 4
    .line 5
    move-object v1, v11

    .line 6
    move-object v2, p0

    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p8

    .line 12
    .line 13
    move-object/from16 v6, p7

    .line 14
    .line 15
    move-object v7, p1

    .line 16
    move-object v8, p2

    .line 17
    move-object v9, p3

    .line 18
    move/from16 v10, p4

    .line 19
    .line 20
    invoke-direct/range {v1 .. v10}, Lcom/papa/sim/statistic/t$v;-><init>(Lcom/papa/sim/statistic/t;IILcom/papa/sim/statistic/Ext;Ljava/lang/String;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public h2(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$n2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$n2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$s3;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$s3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$y0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/t$y0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Data;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Event;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    move v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/papa/sim/statistic/t;->h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public i2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->unzipIOFailed:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$g1;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$g1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public j0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$b1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/papa/sim/statistic/t$b1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public j1(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameStart:Lcom/papa/sim/statistic/Event;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move v6, p5

    .line 9
    move-object v7, p6

    .line 10
    move-object/from16 v8, p7

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v8}, Lcom/papa/sim/statistic/t;->h1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->unzipIndexFailed:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->startLocalNetBattleSuccess:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$n0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$n0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public k1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->gameUnlockSp:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/s;->E(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k2(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;BB)V
    .locals 11

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v10, Lcom/papa/sim/statistic/t$z3;

    .line 4
    .line 5
    move-object v1, v10

    .line 6
    move-object v2, p0

    .line 7
    move v3, p4

    .line 8
    move-object/from16 v4, p5

    .line 9
    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    move/from16 v8, p6

    .line 14
    .line 15
    move/from16 v9, p7

    .line 16
    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/papa/sim/statistic/t$z3;-><init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZBB)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public l0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$m;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$m;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l1(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$u3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$u3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$y;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$y;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$e4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$e4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public m1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$e0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/papa/sim/statistic/t$e0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public m2(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickHomePageEvent:Lcom/papa/sim/statistic/Event;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/papa/sim/statistic/t;->s2(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public n()Lcom/papa/sim/statistic/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->e:Lcom/papa/sim/statistic/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public n0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$p;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/t$p;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$o0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$o0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$x;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$x;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$d4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$d4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$p0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$p0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o2(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v1, Lcom/papa/sim/statistic/Event;->VMGameStart:Lcom/papa/sim/statistic/Event;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move v6, p5

    .line 9
    move-object v7, p6

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/papa/sim/statistic/t;->g1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$q4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$q4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public p0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$l;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$l;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public p1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v9, Lcom/papa/sim/statistic/t$x1;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/t$x1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public p2(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v1, Lcom/papa/sim/statistic/Event;->VMGameStartAfterStatus:Lcom/papa/sim/statistic/Event;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move v6, p5

    .line 9
    move-object v7, p6

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/papa/sim/statistic/t;->g1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public q(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$l4;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p4

    .line 10
    move-object v6, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$l4;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public q0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$n;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/t$n;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$q1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$q1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public q2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$a0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$a0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v9, Lcom/papa/sim/statistic/t$p2;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p4

    .line 10
    move-object v6, p3

    .line 11
    move-object v7, p5

    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/t$p2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public r0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$o;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/t$o;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public r1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->insufficientStorage:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public r2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v9, Lcom/papa/sim/statistic/t$w;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/papa/sim/statistic/t$w;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public s(Lcom/papa/sim/statistic/f;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$r2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$r2;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/f;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$t;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$t;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v8, Lcom/papa/sim/statistic/t$v0;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p5

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p1

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/papa/sim/statistic/t$v0;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Data;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Event;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public s2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$z;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$z;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$q2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$q2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$s;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$s;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$j1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$j1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$y2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$y2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$t2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$t2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public u0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$q;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/t$q;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public u1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$h1;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$h1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public u2(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$s1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$s1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$k2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$k2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public v0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$r;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/t$r;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public v1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->joinLocalNetBattleRoomSuccess:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v7, ""

    .line 2
    .line 3
    const-string v8, ""

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object/from16 v5, p5

    .line 11
    .line 12
    move-object/from16 v6, p6

    .line 13
    .line 14
    move-object/from16 v9, p7

    .line 15
    .line 16
    move-object/from16 v10, p8

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v10}, Lcom/papa/sim/statistic/t;->w2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public w(Lcom/papa/sim/statistic/f;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$s2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/papa/sim/statistic/t$s2;-><init>(Lcom/papa/sim/statistic/t;ZLcom/papa/sim/statistic/f;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public w0(Ljava/lang/String;II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$o3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/papa/sim/statistic/t$o3;-><init>(Lcom/papa/sim/statistic/t;ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public w1(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/papa/sim/statistic/t$k1;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/papa/sim/statistic/t$k1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public w2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 v11, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    move-object/from16 v10, p10

    .line 19
    .line 20
    invoke-virtual/range {v0 .. v11}, Lcom/papa/sim/statistic/t;->x2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public x(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$d0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa/sim/statistic/t$d0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public x0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$g3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$g3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public x1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$n1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$n1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public x2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;)V
    .locals 15

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v14, Lcom/papa/sim/statistic/t$t1;

    .line 4
    .line 5
    move-object v1, v14

    .line 6
    move-object v2, p0

    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    move-object/from16 v6, p4

    .line 14
    .line 15
    move-object/from16 v7, p5

    .line 16
    .line 17
    move-object/from16 v8, p6

    .line 18
    .line 19
    move-object/from16 v9, p7

    .line 20
    .line 21
    move-object/from16 v10, p9

    .line 22
    .line 23
    move-object/from16 v11, p8

    .line 24
    .line 25
    move-object/from16 v12, p11

    .line 26
    .line 27
    move-object/from16 v13, p10

    .line 28
    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/papa/sim/statistic/t$t1;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$u;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/papa/sim/statistic/t$u;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public y0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$x2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$x2;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public y1(Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/t;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    sget-object v1, Lcom/papa/sim/statistic/Event;->joystickJoinApp:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/papa/sim/statistic/s;->A(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public y2(Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$f4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$f4;-><init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Where;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$b0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$b0;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public z0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$e3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/papa/sim/statistic/t$e3;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public z1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$g4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$g4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public z2(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/t;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/papa/sim/statistic/t$k4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/papa/sim/statistic/t$k4;-><init>(Lcom/papa/sim/statistic/t;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
