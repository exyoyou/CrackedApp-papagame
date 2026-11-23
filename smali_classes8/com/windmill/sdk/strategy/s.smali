.class public Lcom/windmill/sdk/strategy/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/s$c;,
        Lcom/windmill/sdk/strategy/s$a;,
        Lcom/windmill/sdk/strategy/s$d;,
        Lcom/windmill/sdk/strategy/s$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z

.field private static x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile A:Z

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/windmill/sdk/common/l;

.field private final e:Lcom/windmill/sdk/strategy/s$d;

.field private f:Lcom/windmill/sdk/strategy/r;

.field private g:Lcom/windmill/sdk/strategy/q;

.field private h:Lcom/windmill/sdk/WindMillAdRequest;

.field private final i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/czhj/sdk/common/models/HeaderBidding;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/windmill/sdk/models/Waterfall;

.field private p:Z

.field private final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/base/WMAdapterError;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private final s:Landroid/os/Handler;

.field private final t:Lcom/windmill/sdk/strategy/s$b;

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private final w:Lcom/windmill/sdk/strategy/s$c;

.field private y:Lcom/windmill/sdk/strategy/l;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/strategy/s;->a:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/windmill/sdk/strategy/s;->b:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/windmill/sdk/strategy/s;->x:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/strategy/s$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseAdController",
            "strategyListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/windmill/sdk/strategy/s;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/windmill/sdk/strategy/s;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/windmill/sdk/strategy/s;->p:Z

    .line 41
    .line 42
    new-instance v1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/windmill/sdk/strategy/s;->r:Z

    .line 50
    .line 51
    new-instance v1, Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    .line 57
    .line 58
    new-instance v1, Lcom/windmill/sdk/strategy/s$1;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, p0, v2}, Lcom/windmill/sdk/strategy/s$1;-><init>(Lcom/windmill/sdk/strategy/s;Landroid/os/Looper;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->s:Landroid/os/Handler;

    .line 68
    .line 69
    new-instance v1, Lcom/windmill/sdk/strategy/s$2;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/windmill/sdk/strategy/s$2;-><init>(Lcom/windmill/sdk/strategy/s;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->t:Lcom/windmill/sdk/strategy/s$b;

    .line 75
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->u:Ljava/util/List;

    .line 82
    .line 83
    new-instance v1, Lcom/windmill/sdk/strategy/s$6;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/windmill/sdk/strategy/s$6;-><init>(Lcom/windmill/sdk/strategy/s;)V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    .line 89
    .line 90
    iput-boolean v0, p0, Lcom/windmill/sdk/strategy/s;->A:Z

    .line 91
    .line 92
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s;->d:Lcom/windmill/sdk/common/l;

    .line 93
    .line 94
    iput-object p2, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/windmill/sdk/strategy/s;->r:Z

    .line 97
    .line 98
    return-void
.end method

.method public static a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t1",
            "t2"
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Lcom/windmill/sdk/strategy/a;->h:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x9

    if-eqz v0, :cond_2

    iget-boolean v4, p1, Lcom/windmill/sdk/strategy/a;->h:Z

    if-eqz v4, :cond_2

    .line 64
    iget v0, p0, Lcom/windmill/sdk/strategy/a;->i:I

    iget v4, p1, Lcom/windmill/sdk/strategy/a;->i:I

    invoke-static {v0, v4}, Lcom/windmill/sdk/common/l;->a(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 67
    invoke-static {v0, v4}, Lcom/windmill/sdk/common/l;->a(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p1

    if-ne p1, v3, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p0

    if-ne p0, v3, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    if-eqz v0, :cond_3

    return v2

    .line 70
    :cond_3
    iget-boolean v0, p1, Lcom/windmill/sdk/strategy/a;->h:Z

    if-eqz v0, :cond_4

    return v1

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 73
    invoke-static {v0, v4}, Lcom/windmill/sdk/common/l;->a(II)I

    move-result v0

    if-nez v0, :cond_6

    .line 74
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p1

    if-ne p1, v3, :cond_5

    return v1

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result p0

    if-ne p0, v3, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/Waterfall;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s;->o:Lcom/windmill/sdk/models/Waterfall;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/strategy/l;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s;->y:Lcom/windmill/sdk/strategy/l;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    return-object p0
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/q;)Lcom/windmill/sdk/strategy/q;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    return-object p1
.end method

.method private a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    const/16 v0, 0x3eb

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/windmill/sdk/strategy/s;->a(II)V

    return-void
.end method

.method private a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "timeout"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->z:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 181
    iput p1, v0, Landroid/os/Message;->what:I

    .line 182
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 183
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s;->z:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adRequest"
        }
    .end annotation

    .line 157
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/common/h;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    sget-object v0, Lcom/windmill/sdk/common/h;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;

    const-string v3, "platform_aggre_init"

    .line 161
    new-instance v4, Lcom/windmill/sdk/strategy/s$8;

    invoke-direct {v4, p0, v2, p1}, Lcom/windmill/sdk/strategy/s$8;-><init>(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;Lcom/windmill/sdk/WindMillAdRequest;)V

    const/4 v2, 0x0

    invoke-static {v3, p1, v2, p0, v4}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "error"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;)V

    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Lcom/windmill/sdk/strategy/s$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/windmill/sdk/strategy/s$3;-><init>(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    const-string p2, "bid_c2c"

    invoke-static {p2, v0, p1, p0, v1}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/utils/m$a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/s;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/s;->c(Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Ljava/util/List;Z)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/strategy/s;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 76
    instance-of v0, p0, Lcom/windmill/sdk/point/PointEntityWind;

    if-eqz v0, :cond_0

    .line 77
    check-cast p0, Lcom/windmill/sdk/point/PointEntityWind;

    const-string v0, "1"

    .line 78
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExecution_scene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sign"
        }
    .end annotation

    .line 16
    :try_start_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------sendBackStrategyRequest---------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/windmill/sdk/strategy/f;

    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/windmill/sdk/strategy/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;ILcom/windmill/sdk/strategy/f$a;)V

    .line 19
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/f;->a(Ljava/util/HashMap;)V

    .line 20
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "WMStrategyManager"

    .line 21
    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/windmill/sdk/common/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sign",
            "adController"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/windmill/sdk/strategy/s;->a(ZZJ)V

    .line 23
    new-instance v1, Lcom/windmill/sdk/strategy/t;

    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/windmill/sdk/strategy/t;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)V

    .line 24
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/t;->a(Ljava/util/Map;)V

    if-eqz p2, :cond_1

    .line 25
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    const-string v3, "1"

    invoke-virtual {p2, v2, v3}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/lang/String;)V

    .line 26
    :cond_1
    sget-object p2, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------sendFirstStrategyRequest---------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p1

    if-nez p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_NETWORK:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string v1, "RequestQueue is null"

    invoke-interface {p1, v0, v0, p2, v1}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    return-void

    .line 29
    :cond_2
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 30
    iget-object p2, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v0, v1, p1}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategyList",
            "isRecord"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;Z)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p2}, Lcom/windmill/sdk/strategy/s;->a(Z)V

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 194
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/strategy/a;

    .line 196
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->L()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 198
    invoke-virtual {v3, v2}, Lcom/windmill/sdk/strategy/a;->m(I)V

    .line 199
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->d:Lcom/windmill/sdk/common/l;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->d:Lcom/windmill/sdk/common/l;

    invoke-virtual {v2}, Lcom/windmill/sdk/common/l;->g()Lcom/windmill/sdk/WMAdSourceStatusListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 201
    new-instance v5, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {v5, v3}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 202
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v5, v3}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 203
    invoke-interface {v2, v5}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingSuccess(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_1
    move v2, v4

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v1, :cond_3

    .line 205
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    invoke-interface {v1, v0, v2}, Lcom/windmill/sdk/strategy/s$d;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/q;)V

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->d:Lcom/windmill/sdk/common/l;

    if-nez v0, :cond_4

    move-object v0, p2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->m()Lcom/windmill/sdk/common/u;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 207
    invoke-interface {v0}, Lcom/windmill/sdk/common/u;->a()Lcom/windmill/sdk/models/WMFilter;

    move-result-object p2

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    iget v1, v0, Lcom/windmill/sdk/strategy/q;->g:I

    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_7

    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    goto :goto_2

    .line 209
    :cond_6
    new-instance v0, Lcom/windmill/sdk/strategy/p;

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    invoke-direct {v0, v1, p1, p2}, Lcom/windmill/sdk/strategy/p;-><init>(Lcom/windmill/sdk/strategy/s$d;Ljava/util/List;Lcom/windmill/sdk/models/WMFilter;)V

    iput-object v0, p0, Lcom/windmill/sdk/strategy/s;->f:Lcom/windmill/sdk/strategy/r;

    goto :goto_2

    .line 210
    :cond_7
    new-instance v1, Lcom/windmill/sdk/strategy/o;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    iget v0, v0, Lcom/windmill/sdk/strategy/q;->a:I

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/windmill/sdk/strategy/o;-><init>(Lcom/windmill/sdk/strategy/s$d;Ljava/util/List;ILcom/windmill/sdk/models/WMFilter;)V

    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->f:Lcom/windmill/sdk/strategy/r;

    goto :goto_2

    .line 211
    :cond_8
    new-instance v1, Lcom/windmill/sdk/strategy/n;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    iget v0, v0, Lcom/windmill/sdk/strategy/q;->a:I

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/windmill/sdk/strategy/n;-><init>(Lcom/windmill/sdk/strategy/s$d;Ljava/util/List;ILcom/windmill/sdk/models/WMFilter;)V

    iput-object v1, p0, Lcom/windmill/sdk/strategy/s;->f:Lcom/windmill/sdk/strategy/r;

    .line 212
    :goto_2
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/s;->h()V

    return-void

    .line 213
    :cond_9
    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NO_FILL:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->copy()Lcom/windmill/sdk/WindMillError;

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v0, :cond_a

    .line 215
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method private a(ZZJ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isSplash",
            "isPre",
            "timeDelay"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->z:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3eb

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6\u6d88\u606f\u5df2\u5b58\u5728\uff0c\u8df3\u8fc7\u91cd\u590d\u8bbe\u7f6e"

    .line 165
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----LoadStrategy--sendEmptyMessageDelayed-- isSplash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->loadAdTimeout(Ljava/lang/String;)J

    move-result-wide v0

    if-eqz p1, :cond_2

    const/16 p1, 0x1388

    goto :goto_0

    :cond_2
    const p1, 0xafc8

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz p2, :cond_4

    cmp-long p2, p3, v2

    if-lez p2, :cond_3

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6(\u9884\u7f6e)---\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6---"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    long-to-int p1, p3

    .line 169
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/s;->a(I)V

    goto :goto_1

    .line 170
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6\uff08\u9884\u7f6e\u83b7\u53d6\u4e3a0\u8d70\u9ed8\u8ba4\uff09---\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6---"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/s;->a(I)V

    goto :goto_1

    :cond_4
    cmp-long p2, p3, v2

    if-lez p2, :cond_5

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6\uff08\u7f13\u5b58\uff09---\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6---"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    long-to-int p1, p3

    .line 173
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/s;->a(I)V

    goto :goto_1

    :cond_5
    cmp-long p2, v0, v2

    if-nez p2, :cond_6

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6\uff08\u9ed8\u8ba4\uff09---\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6---"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/s;->a(I)V

    goto :goto_1

    .line 176
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6\uff08\u4e0a\u6b21\uff09---\u8bbe\u7f6e\u7b2c\u4e00\u9636\u6bb5\u8d85\u65f6---"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    long-to-int p1, v0

    .line 177
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/s;->a(I)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/s;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/windmill/sdk/strategy/s;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    const/16 v0, 0x3ec

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/windmill/sdk/strategy/s;->a(II)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 3
    instance-of v0, p0, Lcom/windmill/sdk/point/PointEntityWind;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lcom/windmill/sdk/point/PointEntityWind;

    const-string v0, "1"

    .line 5
    invoke-virtual {p0, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExecution_scene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/windmill/sdk/strategy/s;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->s:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingStart for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " placementID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    new-instance v1, Lcom/windmill/sdk/strategy/s$7;

    invoke-direct {v1, p0, p1}, Lcom/windmill/sdk/strategy/s$7;-><init>(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/strategy/a;)V

    invoke-interface {v0, p1, v1}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/windmill/sdk/strategy/s;->b(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/windmill/sdk/strategy/s;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    return-object p0
.end method

.method static synthetic f(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/s$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->t:Lcom/windmill/sdk/strategy/s$b;

    return-object p0
.end method

.method static synthetic g(Lcom/windmill/sdk/strategy/s;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/windmill/sdk/strategy/s;->p:Z

    return p0
.end method

.method static synthetic h(Lcom/windmill/sdk/strategy/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/common/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->d:Lcom/windmill/sdk/common/l;

    return-object p0
.end method

.method static synthetic j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    return-object p0
.end method

.method static synthetic k(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->y:Lcom/windmill/sdk/strategy/l;

    return-object p0
.end method

.method static synthetic l(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic m(Lcom/windmill/sdk/strategy/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/s;->r()V

    return-void
.end method

.method static synthetic n(Lcom/windmill/sdk/strategy/s;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic o(Lcom/windmill/sdk/strategy/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/s;->p()V

    return-void
.end method

.method private o()Z
    .locals 7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    iget-boolean v2, v1, Lcom/windmill/sdk/strategy/q;->s:Z

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/windmill/sdk/strategy/q;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 4
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/s;->e()Ljava/util/Map;

    move-result-object v1

    const-string v2, "success"

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "fail"

    .line 7
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 8
    sget-object v3, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------------isInterruptNextStrategyRequest---------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 10
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 11
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v5, v3}, Lcom/windmill/sdk/strategy/a;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v5, 0x2

    if-lez v2, :cond_2

    .line 16
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, p0, Lcom/windmill/sdk/strategy/s;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {p0, v4, v2}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/a;Ljava/util/List;)I

    move-result v6

    .line 18
    invoke-interface {v2, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v4, 0x0

    .line 19
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 20
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v6, v0}, Lcom/windmill/sdk/strategy/a;->i(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    :cond_1
    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    if-eqz v4, :cond_5

    .line 22
    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {v4, v1}, Lcom/windmill/sdk/strategy/q;->a(Ljava/util/List;)V

    .line 23
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    iget-object v6, p0, Lcom/windmill/sdk/strategy/s;->o:Lcom/windmill/sdk/models/Waterfall;

    invoke-interface {v1, v5, v2, v4, v6}, Lcom/windmill/sdk/strategy/s$c;->a(ILjava/util/List;Lcom/windmill/sdk/strategy/q;Lcom/windmill/sdk/models/Waterfall;)V

    return v3

    .line 24
    :cond_2
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    if-eqz v2, :cond_5

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v4, v0}, Lcom/windmill/sdk/strategy/a;->i(I)V

    .line 27
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    invoke-virtual {v4, v1}, Lcom/windmill/sdk/strategy/q;->a(Ljava/util/List;)V

    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    iget-object v6, p0, Lcom/windmill/sdk/strategy/s;->o:Lcom/windmill/sdk/models/Waterfall;

    invoke-interface {v1, v5, v2, v4, v6}, Lcom/windmill/sdk/strategy/s$c;->a(ILjava/util/List;Lcom/windmill/sdk/strategy/q;Lcom/windmill/sdk/models/Waterfall;)V

    return v3

    .line 30
    :cond_3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 31
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v4, v0}, Lcom/windmill/sdk/strategy/a;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 33
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/windmill/sdk/strategy/s;->a(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return v0
.end method

.method static synthetic p(Lcom/windmill/sdk/strategy/s;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->z:Landroid/os/Handler;

    return-object p0
.end method

.method private p()V
    .locals 8

    .line 2
    iget-boolean v0, p0, Lcom/windmill/sdk/strategy/s;->A:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "isRequestNextStrategy true"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/windmill/sdk/strategy/s;->A:Z

    .line 5
    sget-object v1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------sendNextStrategyRequest---------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 7
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/s;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/windmill/sdk/strategy/c;->a()Lcom/windmill/sdk/strategy/c;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/c;->a(Lcom/windmill/sdk/WindMillAdRequest;)V

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v2

    if-nez v2, :cond_2

    .line 10
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    sget-object v2, Lcom/windmill/sdk/WindMillError;->ERROR_NETWORK:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    const-string v3, "RequestQueue is null"

    invoke-interface {v0, v1, v1, v2, v3}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance v2, Lcom/windmill/sdk/strategy/v;

    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/WMSdkConfig;->getBiddingUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->o:Lcom/windmill/sdk/models/Waterfall;

    iget-object v5, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    iget-object v6, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/windmill/sdk/strategy/v;-><init>(Ljava/lang/String;Lcom/windmill/sdk/models/Waterfall;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)V

    .line 12
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 13
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->c()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 14
    iget-object v5, p0, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v6, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    invoke-direct {v6}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->tag(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->no_token_reason(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->build()Lcom/czhj/sdk/common/models/HeaderBidding;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/windmill/sdk/strategy/s$5;

    invoke-direct {v6, p0}, Lcom/windmill/sdk/strategy/s$5;-><init>(Lcom/windmill/sdk/strategy/s;)V

    invoke-static {v5, v4, v6}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/utils/m$a;)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Lcom/windmill/sdk/strategy/v;->a(Ljava/util/List;)V

    .line 17
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    .line 18
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    sget-object v3, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v1, v3, v0}, Lcom/windmill/sdk/strategy/s$c;->a(Ljava/util/List;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 20
    sget-object v1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------sendNextStrategyRequest-----before----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 22
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/windmill/sdk/strategy/a;

    .line 24
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 25
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/s;->c()Lcom/windmill/sdk/strategy/q;

    move-result-object v3

    iget-boolean v3, v3, Lcom/windmill/sdk/strategy/q;->j:Z

    if-eqz v3, :cond_8

    :cond_7
    iget-boolean v3, v2, Lcom/windmill/sdk/strategy/a;->a:Z

    if-eqz v3, :cond_a

    .line 26
    :cond_8
    invoke-virtual {v2}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v3

    invoke-static {v3}, Lcom/windmill/sdk/utils/l;->c(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 27
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 29
    :cond_a
    iput-boolean v0, v2, Lcom/windmill/sdk/strategy/a;->k:Z

    goto :goto_1

    .line 30
    :cond_b
    sget-object v1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------sendNextStrategyRequest-----after----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ----hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/windmill/sdk/strategy/s;->a(Ljava/util/List;Z)V

    :cond_c
    :goto_2
    return-void
.end method

.method private q()Ljava/lang/String;
    .locals 5

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/windmill/sdk/base/WMAdapterError;

    if-eqz v3, :cond_0

    .line 6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {v3}, Lcom/windmill/sdk/base/WMAdapterError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "WMStrategyManager"

    .line 10
    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic q(Lcom/windmill/sdk/strategy/s;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic r(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private r()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/windmill/sdk/strategy/s;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 5
    :goto_2
    iget-object v4, p0, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    :goto_3
    add-int/2addr v2, v3

    if-ne v0, v2, :cond_5

    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-ne v3, v1, :cond_5

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->s:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    invoke-direct {p0}, Lcom/windmill/sdk/strategy/s;->p()V

    :cond_5
    return-void
.end method

.method static synthetic s(Lcom/windmill/sdk/strategy/s;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/s;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/strategy/a;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strategy",
            "strategyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    .line 31
    :try_start_0
    iget-boolean v1, p1, Lcom/windmill/sdk/strategy/a;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 33
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 35
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/strategy/a;

    .line 36
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpg-double v1, v5, v7

    if-gez v1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v1, v5, v7

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v1, p1, v3

    if-gez v1, :cond_3

    :goto_1
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "WMStrategyManager"

    .line 39
    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/l;Landroid/os/Handler;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "adController",
            "handler"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "-----LoadStrategy--finally--"

    move-object/from16 v0, p3

    .line 79
    iput-object v0, v1, Lcom/windmill/sdk/strategy/s;->z:Landroid/os/Handler;

    .line 80
    iput-object v2, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    .line 81
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 82
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 84
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 85
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 86
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v5, 0x0

    .line 87
    iput-boolean v5, v1, Lcom/windmill/sdk/strategy/s;->p:Z

    const/4 v6, 0x0

    .line 88
    iput-object v6, v1, Lcom/windmill/sdk/strategy/s;->o:Lcom/windmill/sdk/models/Waterfall;

    .line 89
    iput-object v6, v1, Lcom/windmill/sdk/strategy/s;->y:Lcom/windmill/sdk/strategy/l;

    .line 90
    iput-boolean v5, v1, Lcom/windmill/sdk/strategy/s;->r:Z

    .line 91
    iput-boolean v5, v1, Lcom/windmill/sdk/strategy/s;->A:Z

    .line 92
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v0

    iget-object v7, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v7}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/windmill/sdk/strategy/d;->b(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-direct {v1, v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 95
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v0

    iget-object v7, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v7}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 96
    iget-object v7, v1, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_1

    .line 97
    iget-object v7, v1, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 98
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/windmill/sdk/common/l;->l()Lcom/windmill/sdk/common/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {v0}, Lcom/windmill/sdk/common/m;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v7, v1, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 101
    :cond_2
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->c()Ljava/util/List;

    move-result-object v0

    const-string v7, "0"

    const/4 v10, 0x2

    const-string v11, ""

    const/4 v12, 0x1

    if-eqz v0, :cond_c

    .line 102
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 103
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v13, "init_status"

    .line 104
    invoke-interface {v0, v13, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "1"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 106
    sget-object v0, Lcom/windmill/sdk/strategy/s;->x:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    .line 107
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->c()Ljava/util/List;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".pb"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 109
    :try_start_0
    invoke-virtual {v3, v2, v7}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 111
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object v15

    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/d;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 113
    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    sget-object v0, Lcom/windmill/sdk/models/Waterfall;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v0, v13}, Lcom/czhj/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/models/Waterfall;

    .line 115
    new-instance v14, Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    invoke-direct {v14}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->code(Ljava/lang/Integer;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    move-result-object v14

    .line 116
    invoke-virtual {v14, v11}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->error_message(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    move-result-object v14

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->uid(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->sign(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->waterfall(Lcom/windmill/sdk/models/Waterfall;)Lcom/windmill/sdk/models/WaterfallResponse$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/windmill/sdk/models/WaterfallResponse$Builder;->build()Lcom/windmill/sdk/models/WaterfallResponse;

    move-result-object v0

    .line 118
    iget-object v14, v1, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    invoke-static {v5, v0, v2, v14}, Lcom/windmill/sdk/strategy/k;->a(ILcom/windmill/sdk/models/WaterfallResponse;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)Lcom/windmill/sdk/strategy/q;

    move-result-object v6

    .line 119
    sget-object v14, Lcom/windmill/sdk/strategy/s;->x:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v15

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v8, v0, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    iget-object v8, v8, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 121
    iget-object v0, v0, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/windmill/sdk/strategy/s;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :cond_3
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v0

    if-ne v0, v10, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v6, :cond_5

    .line 124
    iget v0, v6, Lcom/windmill/sdk/strategy/q;->f:I

    int-to-long v8, v0

    goto :goto_0

    :cond_5
    const-wide/16 v8, 0x0

    .line 125
    :goto_0
    invoke-direct {v1, v5, v12, v8, v9}, Lcom/windmill/sdk/strategy/s;->a(ZZJ)V

    if-eqz v13, :cond_6

    .line 126
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 127
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v13, v6

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v13, v6

    .line 128
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v0

    if-ne v0, v10, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v6, :cond_8

    .line 131
    iget v4, v6, Lcom/windmill/sdk/strategy/q;->f:I

    int-to-long v8, v4

    goto :goto_4

    :cond_8
    const-wide/16 v8, 0x0

    .line 132
    :goto_4
    invoke-direct {v1, v0, v12, v8, v9}, Lcom/windmill/sdk/strategy/s;->a(ZZJ)V

    if-eqz v13, :cond_c

    .line 133
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 134
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 135
    :goto_5
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v0

    if-ne v0, v10, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-eqz v6, :cond_a

    .line 137
    iget v0, v6, Lcom/windmill/sdk/strategy/q;->f:I

    int-to-long v8, v0

    goto :goto_6

    :cond_a
    const-wide/16 v8, 0x0

    .line 138
    :goto_6
    invoke-direct {v1, v5, v12, v8, v9}, Lcom/windmill/sdk/strategy/s;->a(ZZJ)V

    if-eqz v13, :cond_b

    .line 139
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 140
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    :cond_b
    :goto_7
    throw v2

    .line 142
    :cond_c
    :goto_8
    invoke-static {}, Lcom/windmill/sdk/strategy/b;->a()Lcom/windmill/sdk/strategy/b;

    move-result-object v0

    iget-object v4, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    .line 143
    invoke-virtual {v4}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/windmill/sdk/strategy/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v4, "value"

    .line 144
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/windmill/sdk/models/WaterfallResponse;

    if-eqz v4, :cond_10

    const-string v6, "key"

    .line 145
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 146
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 147
    iget-object v0, v4, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/windmill/sdk/strategy/s;->a(Ljava/lang/String;Lcom/windmill/sdk/common/l;)V

    goto :goto_b

    .line 148
    :cond_d
    invoke-virtual {v3, v2, v7}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/lang/String;)V

    .line 149
    iget-object v0, v1, Lcom/windmill/sdk/strategy/s;->w:Lcom/windmill/sdk/strategy/s$c;

    invoke-static {v5, v4, v2, v0}, Lcom/windmill/sdk/strategy/k;->a(ILcom/windmill/sdk/models/WaterfallResponse;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/s$c;)Lcom/windmill/sdk/strategy/q;

    move-result-object v0

    .line 150
    iget-object v2, v1, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v2}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    move-result v2

    if-ne v2, v10, :cond_e

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    :goto_9
    if-eqz v0, :cond_f

    .line 151
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->f:I

    int-to-long v8, v0

    goto :goto_a

    :cond_f
    const-wide/16 v8, 0x0

    .line 152
    :goto_a
    invoke-direct {v1, v12, v5, v8, v9}, Lcom/windmill/sdk/strategy/s;->a(ZZJ)V

    .line 153
    iget-object v0, v4, Lcom/windmill/sdk/models/WaterfallResponse;->waterfall:Lcom/windmill/sdk/models/Waterfall;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_realtime_refresh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 154
    iget-object v0, v4, Lcom/windmill/sdk/models/WaterfallResponse;->sign:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/windmill/sdk/strategy/s;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 155
    :cond_10
    invoke-direct {v1, v11, v3}, Lcom/windmill/sdk/strategy/s;->a(Ljava/lang/String;Lcom/windmill/sdk/common/l;)V

    goto :goto_b

    .line 156
    :cond_11
    invoke-direct {v1, v11, v3}, Lcom/windmill/sdk/strategy/s;->a(Ljava/lang/String;Lcom/windmill/sdk/common/l;)V

    :cond_12
    :goto_b
    return-void
.end method

.method public a(Lcom/windmill/sdk/strategy/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->o()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double v0, v2, v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    .line 43
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_1

    goto/16 :goto_2

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v6

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_4

    .line 45
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    sget-object v2, Lcom/windmill/sdk/models/BidPrice;->USD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    iget-object v2, v2, Lcom/windmill/sdk/strategy/q;->t:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 48
    invoke-virtual {p1, v2}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Float;)V

    cmpl-double v2, v0, v4

    if-nez v2, :cond_3

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    .line 49
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/strategy/a;->a(D)V

    goto/16 :goto_3

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 51
    sget-object v6, Lcom/windmill/sdk/models/BidPrice;->CNY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 52
    :cond_5
    iget-object v6, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    iget-object v6, v6, Lcom/windmill/sdk/strategy/q;->t:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    if-eqz v6, :cond_6

    .line 53
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    .line 54
    invoke-virtual {p1, v6}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Float;)V

    goto :goto_0

    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    .line 55
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Float;)V

    :goto_0
    cmpl-double v6, v0, v4

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move-wide v2, v0

    .line 56
    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/windmill/sdk/strategy/a;->a(D)V

    goto :goto_3

    .line 57
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 58
    sget-object v2, Lcom/windmill/sdk/models/BidPrice;->USD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 59
    :cond_9
    iget-object v2, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    iget-object v2, v2, Lcom/windmill/sdk/strategy/q;->t:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 60
    invoke-virtual {p1, v2}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Float;)V

    cmpl-double v2, v0, v4

    if-nez v2, :cond_a

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 61
    :cond_a
    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/strategy/a;->a(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "WMStrategyManager"

    .line 62
    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecord"
        }
    .end annotation

    .line 184
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------recodeRespondAggreStrategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/windmill/sdk/strategy/s;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/windmill/sdk/strategy/s;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 186
    invoke-static {}, Lcom/windmill/sdk/strategy/c;->a()Lcom/windmill/sdk/strategy/c;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/c;->a(Lcom/windmill/sdk/WindMillAdRequest;)V

    :cond_1
    const-string p1, "respond_aggre_strategy"

    .line 187
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    new-instance v1, Lcom/windmill/sdk/strategy/s$9;

    invoke-direct {v1, p0}, Lcom/windmill/sdk/strategy/s$9;-><init>(Lcom/windmill/sdk/strategy/s;)V

    invoke-static {p1, v0, v1}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/utils/m$a;)V

    const/4 p1, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/windmill/sdk/strategy/s;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public b(Lcom/windmill/sdk/strategy/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->f:Lcom/windmill/sdk/strategy/r;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/windmill/sdk/strategy/q;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    return-object v0
.end method

.method public d()Lcom/windmill/sdk/strategy/s$d;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->e:Lcom/windmill/sdk/strategy/s$d;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, ":"

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "success"

    .line 5
    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fail"

    .line 6
    invoke-interface {v11, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v10, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/windmill/sdk/strategy/q;->t:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 9
    :try_start_0
    iget-object v1, v10, Lcom/windmill/sdk/strategy/s;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/windmill/sdk/strategy/a;

    .line 12
    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->l()Ljava/lang/Float;

    move-result-object v1

    .line 13
    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->m()D

    move-result-wide v2

    .line 14
    sget-object v4, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--------getCtcBidSuccessList----------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v4, v5}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "-"

    if-eqz v1, :cond_2

    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v6, v1

    mul-double v4, v4, v6

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 21
    iput-boolean v2, v15, Lcom/windmill/sdk/strategy/a;->w:Z

    .line 22
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->ah()I

    move-result v4

    int-to-double v4, v4

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 24
    :cond_1
    :goto_1
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v16, Lcom/windmill/sdk/WindMillError;->ERROR_AD_BID_PRICE_FILTER:Lcom/windmill/sdk/WindMillError;

    const-string v1, "error"

    const-string v2, "load"

    .line 26
    iget-object v3, v10, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    .line 27
    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v6

    const-string v7, ""

    .line 28
    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v17, Lcom/windmill/sdk/strategy/w;

    invoke-direct/range {v17 .. v17}, Lcom/windmill/sdk/strategy/w;-><init>()V

    move-object v4, v15

    move-object/from16 v5, p0

    move-object/from16 v18, v0

    move-object v0, v9

    move-object/from16 v9, v17

    .line 29
    invoke-static/range {v1 .. v9}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    .line 30
    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    .line 31
    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 32
    iget-object v2, v10, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move-object/from16 v18, v0

    move-object v0, v9

    .line 33
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v16, Lcom/windmill/sdk/WindMillError;->ERROR_AD_BID_CURRENCY_FILTER:Lcom/windmill/sdk/WindMillError;

    const-string v1, "error"

    const-string v2, "load"

    .line 35
    iget-object v3, v10, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    .line 36
    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v6

    const-string v7, ""

    .line 37
    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/windmill/sdk/strategy/x;

    invoke-direct {v9}, Lcom/windmill/sdk/strategy/x;-><init>()V

    move-object v4, v15

    move-object/from16 v5, p0

    .line 38
    invoke-static/range {v1 .. v9}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    .line 39
    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v2

    .line 40
    invoke-virtual/range {v16 .. v16}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 41
    iget-object v2, v10, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, v18

    goto/16 :goto_0

    .line 42
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 43
    new-instance v0, Lcom/windmill/sdk/strategy/s$4;

    invoke-direct {v0, v10}, Lcom/windmill/sdk/strategy/s$4;-><init>(Lcom/windmill/sdk/strategy/s;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    sget-boolean v0, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z

    if-eqz v0, :cond_5

    .line 45
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sort ctcBidSuccessList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "WMStrategyManager"

    .line 47
    invoke-static {v1, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v11
.end method

.method public f()I
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->h:Lcom/windmill/sdk/WindMillAdRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->g:Lcom/windmill/sdk/strategy/q;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/windmill/sdk/strategy/q;->s:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/windmill/sdk/strategy/q;->t:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/windmill/sdk/strategy/s;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->u:Ljava/util/List;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->f:Lcom/windmill/sdk/strategy/r;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/r;->a()V

    :cond_0
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->f:Lcom/windmill/sdk/strategy/r;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/r;->b()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->f:Lcom/windmill/sdk/strategy/r;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/r;->c()V

    :cond_0
    return-void
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/base/WMAdapterError;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->q:Ljava/util/Map;

    return-object v0
.end method

.method public l()Lcom/windmill/sdk/models/Waterfall;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->o:Lcom/windmill/sdk/models/Waterfall;

    return-object v0
.end method

.method public m()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->y:Lcom/windmill/sdk/strategy/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/l;->e()V

    :cond_0
    return-void
.end method

.method public n()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    return-object v0
.end method
