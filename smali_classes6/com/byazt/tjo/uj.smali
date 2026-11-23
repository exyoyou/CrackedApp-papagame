.class public Lcom/byazt/tjo/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0xf
    }
.end annotation


# static fields
.field public static volatile c:Z

.field public static volatile tt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile uj:Z

.field public static volatile ve:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile x:Z


# instance fields
.field public a:Lcom/byazt/omf/ve;

.field public n:Lcom/byazt/fb/ve;

.field public sp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/tjo/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    sput-boolean v1, Lcom/byazt/tjo/uj;->x:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/lkb/c;)Lcom/byazt/yf/c;
    .locals 3

    .line 39
    new-instance v0, Lcom/byazt/yf/c$c;

    invoke-direct {v0}, Lcom/byazt/yf/c$c;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Ljava/lang/String;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->tt(Ljava/lang/String;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->uj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Z)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->ve(Ljava/lang/String;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->tt(Z)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->nu()Lcom/byazt/je/ve;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/tjo/ve;->c(Lcom/byazt/je/ve;)Lcom/byazt/yf/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Lcom/byazt/yf/a;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->rh()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Ljava/util/Map;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->yp()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Ljava/util/Map;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->my()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->ve(Z)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->gt()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Lorg/json/JSONObject;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->uj(Z)Lcom/byazt/yf/c$c;

    move-result-object v0

    new-instance v1, Lcom/byazt/yf/t$c;

    invoke-direct {v1}, Lcom/byazt/yf/t$c;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->sp()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/t$c;->c(Z)Lcom/byazt/yf/t$c;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/t$c;->tt(Ljava/lang/String;)Lcom/byazt/yf/t$c;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/t$c;->c(Ljava/lang/String;)Lcom/byazt/yf/t$c;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->da()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/t$c;->c(I)Lcom/byazt/yf/t$c;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->sl()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/t$c;->tt(Z)Lcom/byazt/yf/t$c;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->u()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/t$c;->c([I)Lcom/byazt/yf/t$c;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->rh()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/tjo/ve;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/t$c;->c(Ljava/util/Map;)Lcom/byazt/yf/t$c;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/byazt/yf/t$c;->c()Lcom/byazt/yf/t;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Lcom/byazt/yf/t;)Lcom/byazt/yf/c$c;

    move-result-object v0

    new-instance v1, Lcom/byazt/yf/x$c;

    invoke-direct {v1}, Lcom/byazt/yf/x$c;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->qy()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/x$c;->c(Z)Lcom/byazt/yf/x$c;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->rl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/x$c;->c(Ljava/lang/String;)Lcom/byazt/yf/x$c;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->gu()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/x$c;->tt(Z)Lcom/byazt/yf/x$c;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->gr()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/yf/x$c;->ve(Z)Lcom/byazt/yf/x$c;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/byazt/yf/x$c;->c()Lcom/byazt/yf/x;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/yf/c$c;->c(Lcom/byazt/yf/x;)Lcom/byazt/yf/c$c;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/byazt/lkb/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/yf/c$c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/yf/c$c;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/byazt/yf/c$c;->c()Lcom/byazt/yf/c;

    move-result-object p1

    return-object p1
.end method

.method private c(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/byazt/tjo/uj;->x:Z

    .line 35
    sget-object v1, Lcom/byazt/tjo/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    sget-object v1, Lcom/byazt/tjo/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/byazt/tjo/uj;->tt(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "TMe"

    const-string p2, "\u901a\u77e5\u6210\u529f\u6216\u5931\u8d25\u4e86\u4e0d\u5728\u901a\u77e5"

    .line 38
    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tjo/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tjo/uj;->tt()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tjo/uj;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/tjo/uj;->c(ILjava/lang/String;)V

    return-void
.end method

.method private tt()V
    .locals 3

    .line 2
    sget-object v0, Lcom/byazt/tjo/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "TMe"

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/byazt/tjo/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u901a\u77e5\u6210\u529f=----notifySdkSuccess"

    .line 4
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/byazt/tjo/uj$3;

    invoke-direct {v0, p0}, Lcom/byazt/tjo/uj$3;-><init>(Lcom/byazt/tjo/uj;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "\u901a\u77e5\u6210\u529f\u6216\u5931\u8d25\u4e86\u4e0d\u5728\u901a\u77e5"

    .line 6
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private tt(ILjava/lang/String;)V
    .locals 2

    const v0, 0x9c44

    const-string v1, "TMe"

    if-ne p1, v0, :cond_0

    const-string p1, "sdk init call code is 40004 callback success"

    .line 7
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/byazt/tjo/uj;->ve()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/tjo/uj;->n:Lcom/byazt/fb/ve;

    if-eqz v0, :cond_1

    const-string v0, "sdk init call callback fail"

    .line 10
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/byazt/yxi/n;->c()Lcom/byazt/yxi/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/yxi/n;->c(Z)Lcom/byazt/yxi/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/yxi/n;->c(I)Lcom/byazt/yxi/n;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/yxi/n;->c(Ljava/lang/String;)Lcom/byazt/yxi/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/n;->tt()Landroid/util/SparseArray;

    move-result-object p1

    sput-object p1, Lcom/byazt/tjo/uj;->ve:Landroid/util/SparseArray;

    .line 12
    iget-object p1, p0, Lcom/byazt/tjo/uj;->n:Lcom/byazt/fb/ve;

    sget-object p2, Lcom/byazt/tjo/uj;->ve:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, p2}, Lcom/byazt/fb/ve;->c(ILandroid/util/SparseArray;)V

    .line 13
    invoke-static {}, Lcom/byazt/sx/uj;->ve()V

    :cond_1
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/tjo/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tjo/uj;->ve()V

    return-void
.end method

.method private uj()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/dc/n;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ve()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/tjo/uj;->n:Lcom/byazt/fb/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/byazt/tjo/uj;->uj:Z

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/byazt/tjo/uj;->sp:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-wide v3, p0, Lcom/byazt/tjo/uj;->sp:J

    .line 21
    .line 22
    sub-long v3, v1, v3

    .line 23
    .line 24
    sput-wide v3, Lcom/byazt/tjo/a;->tt:J

    .line 25
    .line 26
    sget-wide v3, Lcom/byazt/tjo/a;->x:J

    .line 27
    .line 28
    sub-long/2addr v1, v3

    .line 29
    sput-wide v1, Lcom/byazt/tjo/a;->uj:J

    .line 30
    .line 31
    :cond_0
    const-string v1, "TMe"

    .line 32
    .line 33
    const-string v2, "sdk init call callback success"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/byazt/yxi/n;->c()Lcom/byazt/yxi/n;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Lcom/byazt/yxi/n;->c(Z)Lcom/byazt/yxi/n;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/byazt/tjo/uj;->a:Lcom/byazt/omf/ve;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget v1, Lcom/byazt/omf/p;->uj:I

    .line 51
    .line 52
    const/16 v2, 0x1d4c

    .line 53
    .line 54
    if-ge v1, v2, :cond_1

    .line 55
    .line 56
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/byazt/tjo/uj;->a:Lcom/byazt/omf/ve;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/byazt/omf/ve;->getReuseServiceMap()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/16 v3, 0x17

    .line 67
    .line 68
    invoke-virtual {v1, v3, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/n;->c(Landroid/util/SparseArray;)Lcom/byazt/yxi/n;

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/yxi/n;->tt()Landroid/util/SparseArray;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/byazt/tjo/uj;->ve:Landroid/util/SparseArray;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/byazt/tjo/uj;->n:Lcom/byazt/fb/ve;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    sget-object v2, Lcom/byazt/tjo/uj;->ve:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/byazt/fb/ve;->c(ILandroid/util/SparseArray;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/byazt/sx/uj;->ve()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/byazt/tjo/uj;->uj()V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/lkb/c;Lcom/byazt/fb/ve;JLcom/byazt/omf/ve;JLorg/json/JSONObject;)V
    .locals 2

    .line 3
    iput-object p3, p0, Lcom/byazt/tjo/uj;->n:Lcom/byazt/fb/ve;

    .line 4
    iput-wide p4, p0, Lcom/byazt/tjo/uj;->sp:J

    .line 5
    iput-object p6, p0, Lcom/byazt/tjo/uj;->a:Lcom/byazt/omf/ve;

    const-string p4, "TMe"

    if-eqz p2, :cond_4

    .line 6
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p5

    invoke-virtual {p2}, Lcom/byazt/lkb/c;->n()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/byazt/bp/c;->ve(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p5

    invoke-virtual {p5}, Lcom/byazt/omf/x;->lr()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 8
    invoke-static {p2}, Lcom/byazt/jj/a;->c(Lcom/byazt/lkb/c;)V

    .line 9
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "init csjm "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/byazt/tjo/uj;->c:Z

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-boolean p5, Lcom/byazt/tjo/uj;->c:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p5, :cond_1

    .line 11
    invoke-static {p4, p6}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sput-boolean v0, Lcom/byazt/tjo/uj;->c:Z

    .line 13
    sget-object p3, Lcom/byazt/tjo/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/vq/c;->tt()V

    .line 15
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object p3

    new-instance p4, Lcom/byazt/tjo/uj$1;

    invoke-direct {p4, p0}, Lcom/byazt/tjo/uj$1;-><init>(Lcom/byazt/tjo/uj;)V

    invoke-virtual {p3, p4}, Lcom/byazt/vq/c;->c(Lcom/byazt/vq/tt;)V

    .line 16
    invoke-direct {p0, p2}, Lcom/byazt/tjo/uj;->c(Lcom/byazt/lkb/c;)Lcom/byazt/yf/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/yf/da;->c(Landroid/content/Context;Lcom/byazt/yf/c;)V

    :try_start_0
    const-string p1, "0-init"

    .line 17
    sget-wide p2, Lcom/byazt/tjo/a;->a:J

    sget-wide p4, Lcom/byazt/tjo/a;->n:J

    sub-long/2addr p2, p4

    invoke-virtual {p9, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "0-start"

    .line 18
    sget-wide p2, Lcom/byazt/tjo/a;->sp:J

    sget-wide p4, Lcom/byazt/tjo/a;->n:J

    sub-long/2addr p2, p4

    invoke-virtual {p9, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "s-csj"

    .line 19
    sget-wide p2, Lcom/byazt/tjo/a;->sp:J

    sub-long/2addr p7, p2

    invoke-virtual {p9, p1, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "s-m_init_end"

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sget-wide p4, Lcom/byazt/tjo/a;->sp:J

    sub-long/2addr p2, p4

    invoke-virtual {p9, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 22
    :goto_0
    invoke-static {p9}, Lcom/byazt/yf/da;->c(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    const-string p1, "init csjm already"

    .line 23
    invoke-static {p4, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 24
    sget-boolean p1, Lcom/byazt/tjo/uj;->x:Z

    if-eqz p1, :cond_2

    .line 25
    sput-boolean v1, Lcom/byazt/tjo/uj;->x:Z

    .line 26
    sget-object p1, Lcom/byazt/tjo/uj;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object p1

    new-instance p2, Lcom/byazt/tjo/uj$2;

    invoke-direct {p2, p0}, Lcom/byazt/tjo/uj$2;-><init>(Lcom/byazt/tjo/uj;)V

    invoke-virtual {p1, p2}, Lcom/byazt/vq/c;->c(Lcom/byazt/vq/tt;)V

    .line 28
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/qe/tt;->c(I)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 29
    sget-object p1, Lcom/byazt/tjo/uj;->ve:Landroid/util/SparseArray;

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/byazt/tjo/uj;->uj:Z

    if-eqz p1, :cond_3

    .line 30
    sget-object p1, Lcom/byazt/tjo/uj;->ve:Landroid/util/SparseArray;

    invoke-virtual {p3, v1, p1}, Lcom/byazt/fb/ve;->c(ILandroid/util/SparseArray;)V

    return-void

    :cond_3
    const-string p1, "sdk\u6b63\u5728\u521d\u59cb\u5316...."

    .line 31
    invoke-static {p4, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "init csjm configValueSet is null"

    .line 32
    invoke-static {p4, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/byazt/tjo/uj;->uj:Z

    return v0
.end method
