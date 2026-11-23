.class public Lorg/repackage/com/vivo/identifier/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Z = false

.field private static B:I = 0xd

.field private static C:Lorg/repackage/com/vivo/identifier/d; = null

.field private static D:Lorg/repackage/com/vivo/identifier/d; = null

.field private static E:Lorg/repackage/com/vivo/identifier/d; = null

.field private static F:Lorg/repackage/com/vivo/identifier/d; = null

.field private static G:Landroid/os/HandlerThread; = null

.field private static H:Landroid/os/Handler; = null

.field private static I:Ljava/lang/String; = null

.field private static J:Ljava/lang/String; = null

.field private static K:Ljava/lang/String; = null

.field private static L:Ljava/lang/String; = null

.field private static M:Ljava/lang/String; = null

.field private static N:Ljava/lang/String; = null

.field private static O:Ljava/lang/String; = null

.field private static volatile P:Lorg/repackage/com/vivo/identifier/c; = null

.field private static volatile Q:Lorg/repackage/com/vivo/identifier/b; = null

.field private static R:I = 0x0

.field private static S:I = 0x0

.field private static T:I = 0x0

.field private static U:I = 0x0

.field private static V:I = 0x0

.field private static W:I = 0x0

.field private static X:I = 0x0

.field private static Y:I = 0x0

.field private static Z:I = 0x0

.field private static a0:I = 0x0

.field private static final b:Ljava/lang/String; = "VMS_SDK_Client"

.field private static b0:I = 0x0

.field private static final c:Ljava/lang/String; = "content://com.vivo.vms.IdProvider/IdentifierId"

.field private static c0:I = 0x0

.field private static final d:Ljava/lang/String; = "persist.sys.identifierid.supported"

.field public static final e:Ljava/lang/String; = "persist.sys.identifierid"

.field private static final f:Ljava/lang/String; = "com.vivo.vms"

.field private static final g:Ljava/lang/String; = "appid"

.field private static final h:Ljava/lang/String; = "type"

.field private static final i:Ljava/lang/String; = "OAID"

.field private static final j:Ljava/lang/String; = "VAID"

.field private static final k:Ljava/lang/String; = "OAIDSTATUS"

.field private static l:Ljava/lang/Object; = null

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:I = 0x5

.field private static final s:I = 0x6

.field private static final t:I = 0x7

.field private static final u:I = 0x8

.field private static final v:I = 0x9

.field private static final w:I = 0xa

.field private static final x:I = 0xb

.field private static final y:I = 0x7d0

.field private static z:Landroid/content/Context;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->l:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->d()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/repackage/com/vivo/identifier/b;

    .line 8
    .line 9
    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lorg/repackage/com/vivo/identifier/b;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->Q:Lorg/repackage/com/vivo/identifier/b;

    .line 15
    .line 16
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/c;->w(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lorg/repackage/com/vivo/identifier/c;->a:I

    .line 23
    .line 24
    return-void
.end method

.method static synthetic A(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->U:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->L:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private D(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/repackage/com/vivo/identifier/c;->l(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->V:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic G(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->M:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private H(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/repackage/com/vivo/identifier/c;->l(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const-wide/16 v1, 0x7d0

    .line 12
    .line 13
    :try_start_1
    sget-object v3, Lorg/repackage/com/vivo/identifier/c;->l:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    sub-long/2addr v3, p1

    .line 23
    cmp-long p1, v3, v1

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw p1
.end method

.method static synthetic I(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->W:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic K(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->N:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->X:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic N(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->Y:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic P(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->Z:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic R(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->a0:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic T(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->b0:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic V()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->R:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic W(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->c0:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic X()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->S:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic Y()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->X:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic Z()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->a0:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic a0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->T:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->l:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->U:I

    .line 2
    .line 3
    return v0
.end method

.method private c()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lorg/repackage/com/vivo/identifier/c$a;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Lorg/repackage/com/vivo/identifier/c$a;-><init>(Lorg/repackage/com/vivo/identifier/c;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v3, 0x258

    .line 12
    .line 13
    const-wide/16 v5, 0x258

    .line 14
    .line 15
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static synthetic c0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->Z:I

    .line 2
    .line 3
    return v0
.end method

.method private static d()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "SqlWorkThread"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->G:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/repackage/com/vivo/identifier/c$b;

    .line 14
    .line 15
    sget-object v1, Lorg/repackage/com/vivo/identifier/c;->G:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lorg/repackage/com/vivo/identifier/c$b;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->H:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic d0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->V:I

    .line 2
    .line 3
    return v0
.end method

.method private static e()V
    .locals 3

    .line 1
    const-string v0, "persist.sys.identifierid.supported"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/repackage/com/vivo/identifier/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "persist.sys.identifierid"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lorg/repackage/com/vivo/identifier/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    sput-boolean v0, Lorg/repackage/com/vivo/identifier/c;->A:Z

    .line 34
    .line 35
    return-void
.end method

.method static synthetic e0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->W:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic f(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->R:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->b0:I

    .line 2
    .line 3
    return v0
.end method

.method private g(IIII)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7
    .line 8
    .line 9
    const-string p1, ","

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string p2, ";"

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method static synthetic g0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->c0:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h0()I
    .locals 1

    .line 1
    sget v0, Lorg/repackage/com/vivo/identifier/c;->Y:I

    .line 2
    .line 3
    return v0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "get"

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v0, v4, v5

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    aput-object v0, v4, v6

    .line 19
    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-array v2, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p0, v2, v5

    .line 27
    .line 28
    const-string p0, "0"

    .line 29
    .line 30
    aput-object p0, v2, v6

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    return-object p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "getProperty: invoke is error"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :catchall_0
    return-object p1
.end method

.method static synthetic i0()Lorg/repackage/com/vivo/identifier/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->Q:Lorg/repackage/com/vivo/identifier/b;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic j(Lorg/repackage/com/vivo/identifier/c;IIII)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/repackage/com/vivo/identifier/c;->g(IIII)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static k(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/c;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object p0, v0

    .line 17
    :goto_0
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 18
    .line 19
    :cond_2
    sget-object p0, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 20
    .line 21
    if-nez p0, :cond_4

    .line 22
    .line 23
    const-class p0, Lorg/repackage/com/vivo/identifier/c;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    new-instance v0, Lorg/repackage/com/vivo/identifier/c;

    .line 31
    .line 32
    invoke-direct {v0}, Lorg/repackage/com/vivo/identifier/c;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 36
    .line 37
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 38
    .line 39
    invoke-direct {v0}, Lorg/repackage/com/vivo/identifier/c;->c()V

    .line 40
    .line 41
    .line 42
    :cond_3
    monitor-exit p0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v0

    .line 47
    :cond_4
    :goto_1
    sget-object p0, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 48
    .line 49
    return-object p0
.end method

.method static synthetic k0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private static declared-synchronized m(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lorg/repackage/com/vivo/identifier/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    :try_start_0
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->E:Lorg/repackage/com/vivo/identifier/d;

    .line 16
    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    new-instance p1, Lorg/repackage/com/vivo/identifier/d;

    .line 20
    .line 21
    sget-object v3, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 22
    .line 23
    invoke-direct {p1, v3, v2, p2}, Lorg/repackage/com/vivo/identifier/d;-><init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->E:Lorg/repackage/com/vivo/identifier/d;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "content://com.vivo.vms.IdProvider/IdentifierId/"

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->E:Lorg/repackage/com/vivo/identifier/d;

    .line 58
    .line 59
    invoke-virtual {p1, p0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->D:Lorg/repackage/com/vivo/identifier/d;

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    new-instance p1, Lorg/repackage/com/vivo/identifier/d;

    .line 68
    .line 69
    sget-object v3, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 70
    .line 71
    invoke-direct {p1, v3, v2, p2}, Lorg/repackage/com/vivo/identifier/d;-><init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->D:Lorg/repackage/com/vivo/identifier/d;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v2, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    .line 86
    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->D:Lorg/repackage/com/vivo/identifier/d;

    .line 102
    .line 103
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/d;

    .line 108
    .line 109
    if-nez p1, :cond_3

    .line 110
    .line 111
    new-instance p1, Lorg/repackage/com/vivo/identifier/d;

    .line 112
    .line 113
    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->P:Lorg/repackage/com/vivo/identifier/c;

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-direct {p1, p2, v1, v3}, Lorg/repackage/com/vivo/identifier/d;-><init>(Lorg/repackage/com/vivo/identifier/c;ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sput-object p1, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/d;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 126
    .line 127
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-object p2, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/d;

    .line 132
    .line 133
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_0
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    monitor-exit v0

    .line 140
    throw p0
.end method

.method static n()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/repackage/com/vivo/identifier/c;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-boolean v0, Lorg/repackage/com/vivo/identifier/c;->A:Z

    .line 9
    .line 10
    return v0
.end method

.method static synthetic p(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->S:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static t(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/c;
    .locals 1

    .line 1
    invoke-static {}, Lorg/repackage/com/vivo/identifier/c;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Lorg/repackage/com/vivo/identifier/c;->k(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/c;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method static synthetic u(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v(I)I
    .locals 0

    .line 1
    sput p0, Lorg/repackage/com/vivo/identifier/c;->T:I

    .line 2
    .line 3
    return p0
.end method

.method private static w(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "com.vivo.vms"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method static synthetic y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static z(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    if-eq p0, v0, :cond_5

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_3

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget p0, Lorg/repackage/com/vivo/identifier/c;->c0:I

    .line 16
    .line 17
    add-int/2addr p0, v0

    .line 18
    sput p0, Lorg/repackage/com/vivo/identifier/c;->c0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget p0, Lorg/repackage/com/vivo/identifier/c;->b0:I

    .line 22
    .line 23
    add-int/2addr p0, v0

    .line 24
    sput p0, Lorg/repackage/com/vivo/identifier/c;->b0:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_1
    if-nez p1, :cond_1

    .line 28
    .line 29
    sget p0, Lorg/repackage/com/vivo/identifier/c;->a0:I

    .line 30
    .line 31
    add-int/2addr p0, v0

    .line 32
    sput p0, Lorg/repackage/com/vivo/identifier/c;->a0:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget p0, Lorg/repackage/com/vivo/identifier/c;->Z:I

    .line 36
    .line 37
    add-int/2addr p0, v0

    .line 38
    sput p0, Lorg/repackage/com/vivo/identifier/c;->Z:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    if-nez p1, :cond_2

    .line 42
    .line 43
    sget p0, Lorg/repackage/com/vivo/identifier/c;->Y:I

    .line 44
    .line 45
    add-int/2addr p0, v0

    .line 46
    sput p0, Lorg/repackage/com/vivo/identifier/c;->Y:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget p0, Lorg/repackage/com/vivo/identifier/c;->X:I

    .line 50
    .line 51
    add-int/2addr p0, v0

    .line 52
    sput p0, Lorg/repackage/com/vivo/identifier/c;->X:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    if-nez p1, :cond_4

    .line 56
    .line 57
    sget p0, Lorg/repackage/com/vivo/identifier/c;->W:I

    .line 58
    .line 59
    add-int/2addr p0, v0

    .line 60
    sput p0, Lorg/repackage/com/vivo/identifier/c;->W:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    sget p0, Lorg/repackage/com/vivo/identifier/c;->V:I

    .line 64
    .line 65
    add-int/2addr p0, v0

    .line 66
    sput p0, Lorg/repackage/com/vivo/identifier/c;->V:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    if-nez p1, :cond_6

    .line 70
    .line 71
    sget p0, Lorg/repackage/com/vivo/identifier/c;->U:I

    .line 72
    .line 73
    add-int/2addr p0, v0

    .line 74
    sput p0, Lorg/repackage/com/vivo/identifier/c;->U:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    sget p0, Lorg/repackage/com/vivo/identifier/c;->T:I

    .line 78
    .line 79
    add-int/2addr p0, v0

    .line 80
    sput p0, Lorg/repackage/com/vivo/identifier/c;->T:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_7
    if-nez p1, :cond_8

    .line 84
    .line 85
    sget p0, Lorg/repackage/com/vivo/identifier/c;->S:I

    .line 86
    .line 87
    add-int/2addr p0, v0

    .line 88
    sput p0, Lorg/repackage/com/vivo/identifier/c;->S:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_8
    sget p0, Lorg/repackage/com/vivo/identifier/c;->R:I

    .line 92
    .line 93
    add-int/2addr p0, v0

    .line 94
    sput p0, Lorg/repackage/com/vivo/identifier/c;->R:I

    .line 95
    .line 96
    :goto_0
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method B()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->D(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/d;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->m(Landroid/content/Context;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

.method F()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "vivo"

    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->H(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->D:Lorg/repackage/com/vivo/identifier/d;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->m(Landroid/content/Context;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method

.method J()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "vivo"

    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->D(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->D:Lorg/repackage/com/vivo/identifier/d;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->m(Landroid/content/Context;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->J:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method

.method M()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "vivo"

    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->H(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->E:Lorg/repackage/com/vivo/identifier/d;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->m(Landroid/content/Context;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method

.method O()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "vivo"

    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->D(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->E:Lorg/repackage/com/vivo/identifier/d;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v2, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->m(Landroid/content/Context;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->K:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method

.method Q()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->H(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->M:Ljava/lang/String;

    .line 7
    .line 8
    return-object v0
.end method

.method S()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->N:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x5

    .line 7
    const-string v1, "vivo"

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->H(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->N:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method U()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->N:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x5

    .line 7
    const-string v1, "vivo"

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->D(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->N:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method l(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->H:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq p1, v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    if-ne p1, v2, :cond_1

    .line 29
    .line 30
    :cond_0
    const-string p1, "appid"

    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->H:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method o(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/repackage/com/vivo/identifier/c;->a:I

    .line 2
    .line 3
    sget v1, Lorg/repackage/com/vivo/identifier/c;->B:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    if-eqz p1, :cond_4

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [Landroid/content/ContentValues;

    .line 23
    .line 24
    new-instance v1, Ljava/util/Date;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 34
    .line 35
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v3, v4, :cond_3

    .line 50
    .line 51
    new-instance v4, Landroid/content/ContentValues;

    .line 52
    .line 53
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    const-string v6, ":"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    array-length v6, v5

    .line 69
    const/4 v7, 0x2

    .line 70
    if-ne v6, v7, :cond_2

    .line 71
    .line 72
    aget-object v6, v5, v2

    .line 73
    .line 74
    const/4 v7, 0x1

    .line 75
    aget-object v5, v5, v7

    .line 76
    .line 77
    const-string v7, "packageName"

    .line 78
    .line 79
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v6, "uid"

    .line 83
    .line 84
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v5, "value"

    .line 88
    .line 89
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    aput-object v4, v0, v3

    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return v2

    .line 98
    :cond_3
    sget-object p1, Lorg/repackage/com/vivo/identifier/c;->Q:Lorg/repackage/com/vivo/identifier/b;

    .line 99
    .line 100
    const-string v1, "vivo"

    .line 101
    .line 102
    const/4 v3, 0x6

    .line 103
    invoke-virtual {p1, v3, v1, v0}, Lorg/repackage/com/vivo/identifier/b;->c(ILjava/lang/String;[Landroid/content/ContentValues;)Z

    .line 104
    .line 105
    .line 106
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return p1

    .line 108
    :catch_0
    :cond_4
    :goto_1
    return v2
.end method

.method q()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->L:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x3

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1}, Lorg/repackage/com/vivo/identifier/c;->H(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->L:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method s(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/repackage/com/vivo/identifier/c;->a:I

    .line 2
    .line 3
    sget v1, Lorg/repackage/com/vivo/identifier/c;->B:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    if-eqz p1, :cond_4

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_3

    .line 30
    .line 31
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, ":"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    array-length v5, v4

    .line 44
    const/4 v6, 0x2

    .line 45
    if-ne v5, v6, :cond_2

    .line 46
    .line 47
    aget-object v5, v4, v1

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    aget-object v4, v4, v6

    .line 51
    .line 52
    sget-object v6, Lorg/repackage/com/vivo/identifier/c;->Q:Lorg/repackage/com/vivo/identifier/b;

    .line 53
    .line 54
    const-string v7, "vivo"

    .line 55
    .line 56
    const/4 v8, 0x6

    .line 57
    invoke-virtual {v6, v8, v7, v5, v4}, Lorg/repackage/com/vivo/identifier/b;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return-object v0

    .line 72
    :catch_0
    :cond_4
    :goto_1
    return-object v2
.end method

.method x()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->H(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->C:Lorg/repackage/com/vivo/identifier/d;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lorg/repackage/com/vivo/identifier/c;->z:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Lorg/repackage/com/vivo/identifier/c;->m(Landroid/content/Context;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/repackage/com/vivo/identifier/c;->z(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lorg/repackage/com/vivo/identifier/c;->I:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method
