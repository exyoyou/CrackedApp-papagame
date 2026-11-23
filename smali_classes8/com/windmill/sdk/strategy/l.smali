.class public Lcom/windmill/sdk/strategy/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/l$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/windmill/sdk/common/l;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Lcom/windmill/sdk/strategy/s$d;

.field private final h:I

.field private i:J

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Landroid/os/Handler;

.field private m:Lcom/windmill/sdk/WindMillAdRequest;

.field private n:Lcom/windmill/sdk/strategy/l$a;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/common/l;Ljava/util/List;Ljava/util/List;ILcom/windmill/sdk/strategy/s$d;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseAdController",
            "normalStrategyList",
            "ctcStrategyList",
            "max_concurrent_count",
            "strategyListener",
            "windMillAdRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/common/l;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;I",
            "Lcom/windmill/sdk/strategy/s$d;",
            "Lcom/windmill/sdk/WindMillAdRequest;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/windmill/sdk/strategy/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/strategy/l;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/windmill/sdk/strategy/l;->h:I

    .line 14
    .line 15
    const-wide/16 v0, 0xbb8

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/windmill/sdk/strategy/l;->i:J

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/windmill/sdk/strategy/l;->j:Ljava/util/Map;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    .line 28
    .line 29
    new-instance v0, Lcom/windmill/sdk/strategy/l$1;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/windmill/sdk/strategy/l$1;-><init>(Lcom/windmill/sdk/strategy/l;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/windmill/sdk/strategy/l;->l:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v0, Lcom/windmill/sdk/strategy/l$2;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/windmill/sdk/strategy/l$2;-><init>(Lcom/windmill/sdk/strategy/l;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/windmill/sdk/strategy/l;->n:Lcom/windmill/sdk/strategy/l$a;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/windmill/sdk/strategy/l;->b:Lcom/windmill/sdk/common/l;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    .line 50
    .line 51
    iput-object p3, p0, Lcom/windmill/sdk/strategy/l;->d:Ljava/util/List;

    .line 52
    .line 53
    iput p4, p0, Lcom/windmill/sdk/strategy/l;->e:I

    .line 54
    .line 55
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/windmill/sdk/strategy/l;->f:I

    .line 60
    .line 61
    iput-object p5, p0, Lcom/windmill/sdk/strategy/l;->g:Lcom/windmill/sdk/strategy/s$d;

    .line 62
    .line 63
    if-eqz p6, :cond_0

    .line 64
    .line 65
    iput-object p6, p0, Lcom/windmill/sdk/strategy/l;->m:Lcom/windmill/sdk/WindMillAdRequest;

    .line 66
    .line 67
    invoke-virtual {p6}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 p2, 0x2

    .line 72
    if-eq p1, p2, :cond_0

    .line 73
    .line 74
    const-wide/16 p1, 0x3a98

    .line 75
    .line 76
    iput-wide p1, p0, Lcom/windmill/sdk/strategy/l;->i:J

    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/strategy/l$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/l;->n:Lcom/windmill/sdk/strategy/l$a;

    return-object p0
.end method

.method private a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 10
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

    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->b:Lcom/windmill/sdk/common/l;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->n()Lcom/windmill/sdk/strategy/s;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const-string v1, "error"

    const-string v2, "ready"

    .line 32
    iget-object v3, p0, Lcom/windmill/sdk/strategy/l;->m:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {p2}, Lcom/windmill/sdk/base/WMAdapterError;->getErrorCode()I

    move-result v6

    invoke-virtual {p2}, Lcom/windmill/sdk/base/WMAdapterError;->getExternalErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/windmill/sdk/base/WMAdapterError;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/windmill/sdk/strategy/l$3;

    invoke-direct {v9, p0}, Lcom/windmill/sdk/strategy/l$3;-><init>(Lcom/windmill/sdk/strategy/l;)V

    move-object v4, p1

    invoke-static/range {v1 .. v9}, Lcom/windmill/sdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s;ILjava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/utils/m$a;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/strategy/l;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/strategy/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method static synthetic b(Lcom/windmill/sdk/strategy/l;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->j(Z)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/strategy/l;->b:Lcom/windmill/sdk/common/l;

    invoke-virtual {v1}, Lcom/windmill/sdk/common/l;->m()Lcom/windmill/sdk/common/u;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/windmill/sdk/common/u;->a()Lcom/windmill/sdk/models/WMFilter;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-static {p1, v1}, Lcom/windmill/sdk/strategy/r;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/windmill/sdk/strategy/l;->n:Lcom/windmill/sdk/strategy/l$a;

    if-eqz v2, :cond_1

    .line 9
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    const-string v1, "load"

    invoke-interface {v2, p1, v0, v1}, Lcom/windmill/sdk/strategy/l$a;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/strategy/l;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/strategy/l;->l:Landroid/os/Handler;

    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ab()I

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/windmill/sdk/strategy/l;->l:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ab()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/windmill/sdk/strategy/l;->l:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/windmill/sdk/strategy/l;->i:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->g:Lcom/windmill/sdk/strategy/s$d;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/l;->d()Lcom/windmill/sdk/strategy/l$a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/windmill/sdk/strategy/s$d;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/l$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/windmill/sdk/strategy/l;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/l;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/common/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/l;->b:Lcom/windmill/sdk/common/l;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/sdk/strategy/l;)Lcom/windmill/sdk/WindMillAdRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/strategy/l;->m:Lcom/windmill/sdk/WindMillAdRequest;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 3
    iget v0, p0, Lcom/windmill/sdk/strategy/l;->e:I

    iget v1, p0, Lcom/windmill/sdk/strategy/l;->f:I

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/windmill/sdk/strategy/l;->e:I

    iget v2, p0, Lcom/windmill/sdk/strategy/l;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/windmill/sdk/strategy/l;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    iget v1, p0, Lcom/windmill/sdk/strategy/l;->k:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/strategy/a;

    .line 10
    iget-object v3, p0, Lcom/windmill/sdk/strategy/l;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-direct {p0, v1}, Lcom/windmill/sdk/strategy/l;->b(Lcom/windmill/sdk/strategy/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------\u7b49\u5f85ctc\u6267\u884c\u7ed3\u679cloadBackupStrategy-----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/windmill/sdk/strategy/l;->e:I

    iget v3, p0, Lcom/windmill/sdk/strategy/l;->f:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized a(Lcom/windmill/sdk/strategy/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    iget v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget p1, p0, Lcom/windmill/sdk/strategy/l;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/windmill/sdk/strategy/l;->f:I

    .line 16
    :cond_0
    iget p1, p0, Lcom/windmill/sdk/strategy/l;->e:I

    iget v0, p0, Lcom/windmill/sdk/strategy/l;->f:I

    if-le p1, v0, :cond_3

    .line 17
    iput v1, p0, Lcom/windmill/sdk/strategy/l;->k:I

    const/4 p1, 0x0

    .line 18
    :goto_0
    iget v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    if-ge p1, v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/sdk/strategy/a;

    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/strategy/l;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p0, v0}, Lcom/windmill/sdk/strategy/l;->b(Lcom/windmill/sdk/strategy/a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    iget v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 24
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " WMPreloadManager loadBackupStrategy backupIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/windmill/sdk/strategy/l;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    .line 26
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->j:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2
    invoke-direct {p0, p1}, Lcom/windmill/sdk/strategy/l;->b(Lcom/windmill/sdk/strategy/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/windmill/sdk/strategy/l;->k:I

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->j:Ljava/util/Map;

    return-object v0
.end method

.method public d()Lcom/windmill/sdk/strategy/l$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->n:Lcom/windmill/sdk/strategy/l$a;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/l;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
