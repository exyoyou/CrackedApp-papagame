.class public Lcom/byazt/nys/da;
.super Lcom/byazt/bog/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ae,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nys/da$c;,
        Lcom/byazt/nys/da$ve;,
        Lcom/byazt/nys/da$tt;
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/nys/da$c;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public da:Lcom/byazt/lm/ve;

.field public i:J

.field public n:Lcom/byazt/nys/sp;

.field public final sl:Ljava/lang/Object;

.field public sp:Z

.field public volatile tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

.field public volatile uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

.field public volatile ve:Lcom/bykv/vk/openvk/api/proto/Initializer;

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/nys/da$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/nys/da$c;-><init>(Lcom/byazt/nys/da$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/nys/da;->c:Lcom/byazt/nys/da$c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/bog/c;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/nys/da;->n()Lcom/bykv/vk/openvk/api/proto/Initializer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/byazt/nys/da;->ve:Lcom/bykv/vk/openvk/api/proto/Initializer;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/nys/da;->uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/byazt/nys/da;->sp:Z

    .line 17
    .line 18
    const/high16 v0, -0x80000000

    .line 19
    .line 20
    iput v0, p0, Lcom/byazt/nys/da;->x:I

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/byazt/nys/da;->i:J

    .line 25
    .line 26
    new-instance v0, Lcom/byazt/nys/da$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/byazt/nys/da$1;-><init>(Lcom/byazt/nys/da;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/byazt/nys/da;->da:Lcom/byazt/lm/ve;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/nys/da;->sl:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method

.method private a()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/nys/da;->x()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/byazt/nys/da;->x:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public static synthetic c(Lcom/byazt/nys/da;Z)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/nys/da;->c(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method private c(Z)J
    .locals 5

    .line 66
    invoke-direct {p0}, Lcom/byazt/nys/da;->x()V

    .line 67
    iget v0, p0, Lcom/byazt/nys/da;->x:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iget-wide v3, p0, Lcom/byazt/nys/da;->i:J

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/byazt/nys/da;->a:Landroid/content/SharedPreferences;

    const-string v0, "bstlayer_init_delay_time"

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/nys/da;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    iput-wide v1, p0, Lcom/byazt/nys/da;->i:J

    .line 71
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/byazt/nys/da;->i:J

    return-wide v0

    :cond_2
    :goto_1
    return-wide v1
.end method

.method public static synthetic c(Lcom/byazt/nys/da;Lcom/byazt/nys/sp;)Lcom/byazt/nys/sp;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/nys/da;->n:Lcom/byazt/nys/sp;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/nys/da;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nys/da;Lcom/bykv/vk/openvk/api/proto/Initializer;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/nys/da;->ve:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p1
.end method

.method private c(I)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_0
    invoke-static {}, Lcom/byazt/qc/c;->instance()Lcom/byazt/qc/c;

    move-result-object p1

    return-object p1

    .line 26
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nu/ve;->instance(Landroid/content/Context;)Lcom/byazt/nu/ve;

    move-result-object p1

    return-object p1

    .line 27
    :cond_2
    invoke-static {}, Lcom/byazt/we/ve;->instance()Lcom/byazt/we/ve;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/nys/da;I)Ljava/util/function/Function;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/nys/da;->c(I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/content/Context;Lcom/byazt/rl/ve;Z)V
    .locals 4

    .line 21
    invoke-direct {p0, p3}, Lcom/byazt/nys/da;->c(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    .line 22
    invoke-static {}, Lcom/byazt/qy/c;->c()Lcom/byazt/qy/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/qy/c;->ve()Landroid/os/Handler;

    move-result-object p3

    new-instance v2, Lcom/byazt/nys/da$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/byazt/nys/da$2;-><init>(Lcom/byazt/nys/da;Lcom/byazt/rl/ve;Landroid/content/Context;)V

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-virtual {p2}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Initializer;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nys/da;Lcom/byazt/nys/sp;Lcom/byazt/rl/ve;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/byazt/nys/da;->c(Lcom/byazt/nys/sp;Lcom/byazt/rl/ve;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nys/da;Lcom/bykv/vk/openvk/api/proto/Manager;Z)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/byazt/bog/c;->c(Lcom/bykv/vk/openvk/api/proto/Manager;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/nys/da;Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/bog/c;->tt(Lcom/bykv/vk/openvk/api/proto/Result;)V

    return-void
.end method

.method private c(Lcom/byazt/nys/sp;Lcom/byazt/rl/ve;)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/byazt/nys/da;->uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nys/da;->uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p2

    .line 30
    new-instance v0, Lcom/byazt/nys/da$tt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/nys/da$tt;-><init>(Lcom/byazt/nys/da;Lcom/byazt/nys/da$1;)V

    const/16 v1, 0xf

    invoke-virtual {p2, v1, v0}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nys/da;->uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v0, :cond_2

    .line 32
    const-class v0, Lcom/byazt/nys/da$ve;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/byazt/nys/da;->uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v1, :cond_1

    .line 34
    invoke-static {}, Lcom/byazt/nys/da$ve;->c()Lcom/byazt/nys/da$ve;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/byazt/nys/da$ve;->c(Lcom/byazt/nys/da$ve;Lcom/byazt/nys/sp;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/byazt/nys/da;->uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

    .line 36
    invoke-static {v1, p1, p2}, Lcom/byazt/nys/da;->c(Lcom/bykv/vk/openvk/api/proto/Initializer;Lcom/byazt/nys/sp;Lcom/byazt/rl/ve;)V

    .line 37
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p2

    .line 38
    instance-of v0, p2, Lcom/byazt/nys/uj;

    const/16 v1, 0x106e

    if-eqz v0, :cond_3

    .line 39
    move-object v0, p2

    check-cast v0, Lcom/byazt/nys/uj;

    invoke-virtual {v0}, Lcom/byazt/nys/uj;->c()I

    move-result v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x106e

    :goto_0
    const-string v2, "_tt_ad_sdk_"

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadPl failed, code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/bog/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, p1, p2}, Lcom/byazt/nys/a;->c(ILjava/lang/String;ZLcom/byazt/nys/sp;Ljava/lang/Throwable;)V

    .line 42
    iget-boolean p1, p0, Lcom/byazt/nys/da;->sp:Z

    if-nez p1, :cond_4

    .line 43
    invoke-static {}, Lcom/byazt/rl/tt;->c()Lcom/byazt/rl/tt;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/byazt/rl/tt;->c(Z)Lcom/byazt/rl/tt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/rl/tt;->c(I)Lcom/byazt/rl/tt;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/rl/tt;->c(Ljava/lang/String;)Lcom/byazt/rl/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/tt;->tt()Lcom/bykv/vk/openvk/api/proto/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c;->tt(Lcom/bykv/vk/openvk/api/proto/Result;)V

    :cond_4
    return-void
.end method

.method private static c(Lcom/bykv/vk/openvk/api/proto/Initializer;Lcom/byazt/nys/sp;Lcom/byazt/rl/ve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/nys/uj;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/nys/sp;->c()J

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v1, 0x14

    .line 57
    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nys/sp;->c(Lorg/json/JSONObject;J)V

    const-string p1, "zeus"

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/nys/i;->c(Landroid/content/Context;)Lcom/byazt/nys/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/nys/i;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x9

    invoke-virtual {p2, v1, v0}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Initializer;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/bytedance/pangle/Zeus;->hookHuaWeiVerifier(Landroid/app/Application;)V

    :cond_0
    const-string p0, "_tt_ad_sdk_"

    const-string p1, "Initialized done"

    .line 62
    invoke-static {p0, p1}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "com.byted.pangle"

    .line 63
    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->unInstallPlugin(Ljava/lang/String;)V

    .line 64
    new-instance p1, Lcom/byazt/nys/uj;

    const/16 p2, 0x106f

    const-string v0, "Init error"

    invoke-direct {p1, p2, v0, p0}, Lcom/byazt/nys/uj;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 65
    :cond_1
    new-instance p0, Lcom/byazt/nys/uj;

    const/16 p1, 0x1069

    const-string p2, "initializer null"

    invoke-direct {p0, p1, p2}, Lcom/byazt/nys/uj;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private c(Lcom/bykv/vk/openvk/api/proto/Manager;Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 44
    instance-of v0, p1, Lcom/byazt/bog/ve;

    if-eqz v0, :cond_1

    .line 45
    check-cast p1, Lcom/byazt/bog/ve;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/bog/ve;->c(I)Ljava/util/function/Function;

    move-result-object p1

    .line 46
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_tt_ad_sdk_"

    const-string v2, "quitWork, notify bst manager to quit"

    .line 47
    invoke-static {v1, v2}, Lcom/byazt/bog/a;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/Result;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p2

    .line 49
    :goto_0
    invoke-static {v0}, Lcom/byazt/rl/ve;->c(I)Lcom/byazt/rl/ve;

    move-result-object v1

    const v2, -0x5f5e0f3

    const/16 v3, 0x10

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/byazt/rl/ve;->c(II)Lcom/byazt/rl/ve;

    move-result-object v1

    const v2, -0x5f5e0f1

    const-class v3, Ljava/lang/Void;

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    move-result-object v1

    const/16 v2, 0x11

    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/byazt/rl/ve;->c(IZ)Lcom/byazt/rl/ve;

    move-result-object v0

    const/16 v1, 0x15

    .line 53
    invoke-virtual {v0, v1, p2}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p2

    .line 54
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p2

    invoke-static {p1, p2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/byazt/nys/tt;->uj(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private static n()Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x106e

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/bog/n;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/pangle/Zeus;->setMainService(Ljava/util/function/Function;)V

    .line 4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pl_update_event_listener_"

    .line 5
    new-instance v5, Lcom/byazt/nys/i$ve;

    invoke-direct {v5}, Lcom/byazt/nys/i$ve;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "api_sdk_version"

    const/16 v5, 0x1dbb

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "boost"

    .line 7
    invoke-static {v4}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/dna/i;

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v4, v3}, Lcom/byazt/dna/i;->getInitialInstance(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v2

    goto :goto_0

    :cond_1
    const-string v3, "service null"

    move-object v4, v3

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_3

    if-nez v4, :cond_2

    const-string v4, "getNewInstance null"

    .line 9
    :cond_2
    invoke-static {v1, v4, v0, v2, v2}, Lcom/byazt/nys/a;->c(ILjava/lang/String;ZLcom/byazt/nys/sp;Ljava/lang/Throwable;)V

    .line 10
    :cond_3
    new-instance v4, Lcom/byazt/bog/uj;

    invoke-static {v3}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/byazt/bog/uj;-><init>(Ljava/util/function/Function;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v1, v4, v0, v2, v3}, Lcom/byazt/nys/a;->c(ILjava/lang/String;ZLcom/byazt/nys/sp;Ljava/lang/Throwable;)V

    const-string v0, "_tt_ad_sdk_"

    const-string v1, "Get direct initializer failed"

    .line 13
    invoke-static {v0, v1, v3}, Lcom/byazt/bog/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static synthetic n(Lcom/byazt/nys/da;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nys/da;->sp:Z

    return p0
.end method

.method private sp()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/nys/da;->x()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/byazt/nys/da;->x:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public static synthetic tt(Lcom/byazt/nys/da;Lcom/bykv/vk/openvk/api/proto/Initializer;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/nys/da;Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/bog/c;->tt(Lcom/bykv/vk/openvk/api/proto/Result;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/nys/da;)Z
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/bog/c;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/nys/da;)Lcom/byazt/nys/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nys/da;->n:Lcom/byazt/nys/sp;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nys/da;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nys/da;->uj:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p0
.end method

.method private x()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/nys/da;->x:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/nys/da;->a:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "sp_bidding_opt_libra"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/byazt/nys/da;->a:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/nys/da;->a:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-string v2, "bst_pl_exec_conf"

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/byazt/nys/da;->x:I

    .line 34
    .line 35
    if-ltz v0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/nys/da;->a:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    const-string v2, "_use_pl_"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/byazt/nys/da;->x:I

    .line 47
    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public c(ILcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "m_d_s"

    .line 72
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/dna/gu;

    if-eqz v1, :cond_2

    .line 73
    iget-object v2, p0, Lcom/byazt/nys/da;->sl:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x3

    .line 74
    :try_start_1
    invoke-interface {v1, v3}, Lcom/byazt/dna/gu;->getData(I)Ljava/lang/Object;

    move-result-object v4

    .line 75
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 76
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/byazt/dna/gu;->setData(ILjava/lang/Object;)V

    .line 78
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    const-string v2, "_tt_ad_sdk_"

    .line 79
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-ne v0, v1, :cond_4

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/byazt/nys/da;->ve:Lcom/bykv/vk/openvk/api/proto/Initializer;

    .line 81
    iget-boolean v0, p0, Lcom/byazt/nys/da;->sp:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Initializer;->getManager()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/byazt/nys/da;->c(Lcom/bykv/vk/openvk/api/proto/Manager;Lcom/bykv/vk/openvk/api/proto/Result;)V

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/byazt/nys/da;->ve:Lcom/bykv/vk/openvk/api/proto/Initializer;

    :cond_4
    return-void
.end method

.method public c(Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/byazt/bog/c;->c(Lcom/bykv/vk/openvk/api/proto/Result;)V

    .line 10
    invoke-static {}, Lcom/byazt/nys/a;->c()V

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/byazt/rl/ve;)Z
    .locals 4

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/nys/da;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "_tt_ad_sdk_"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/byazt/nys/da;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "force pl"

    .line 13
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 14
    :cond_0
    invoke-static {}, Lcom/byazt/zyp/ve;->tt()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "this device does not support arm64-v8a abi"

    .line 15
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 17
    iput-boolean v3, p0, Lcom/byazt/nys/da;->sp:Z

    .line 18
    iget-object v1, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/api/proto/Initializer;->getManager()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/byazt/bog/c;->c(Lcom/bykv/vk/openvk/api/proto/Manager;Z)V

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/nys/da;->c(Landroid/content/Context;Lcom/byazt/rl/ve;Z)V

    return v2

    .line 20
    :cond_2
    invoke-static {}, Lcom/byazt/rl/tt;->c()Lcom/byazt/rl/tt;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/byazt/rl/tt;->c(Z)Lcom/byazt/rl/tt;

    move-result-object p1

    const/16 p2, 0x106e

    invoke-virtual {p1, p2}, Lcom/byazt/rl/tt;->c(I)Lcom/byazt/rl/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/tt;->tt()Lcom/bykv/vk/openvk/api/proto/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c;->tt(Lcom/bykv/vk/openvk/api/proto/Result;)V

    return v3
.end method

.method public tt(Landroid/content/Context;Lcom/byazt/rl/ve;)V
    .locals 3

    const-string v0, "async init"

    const-string v1, "_tt_ad_sdk_"

    .line 11
    invoke-static {v1, v0}, Lcom/byazt/bog/a;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lcom/byazt/nys/da;->sp:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    const-string p1, "lower 26"

    .line 13
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/nys/da;->n:Lcom/byazt/nys/sp;

    const-string v2, "wait_asyn_cost"

    invoke-virtual {v0, v2}, Lcom/byazt/nys/sp;->tt(Ljava/lang/String;)J

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nys/i;->c(Landroid/content/Context;)Lcom/byazt/nys/i;

    move-result-object v0

    new-instance v2, Lcom/byazt/nys/da$3;

    invoke-direct {v2, p0, p2}, Lcom/byazt/nys/da$3;-><init>(Lcom/byazt/nys/da;Lcom/byazt/rl/ve;)V

    invoke-virtual {v0, v2}, Lcom/byazt/nys/i;->c(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    .line 16
    invoke-static {}, Lcom/byazt/zyp/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "start load pl."

    .line 17
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/nys/da;->n:Lcom/byazt/nys/sp;

    invoke-direct {p0, p1, p2}, Lcom/byazt/nys/da;->c(Lcom/byazt/nys/sp;Lcom/byazt/rl/ve;)V

    return-void

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/byazt/nys/da;->sp()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "force boost, dont load pl"

    .line 20
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/nys/da;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "start load pl.."

    .line 22
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/byazt/nys/da;->n:Lcom/byazt/nys/sp;

    invoke-direct {p0, p1, p2}, Lcom/byazt/nys/da;->c(Lcom/byazt/nys/sp;Lcom/byazt/rl/ve;)V

    return-void

    :cond_3
    const-string p1, "no pl"

    .line 24
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tt()Z
    .locals 2

    .line 25
    invoke-static {}, Lcom/byazt/bog/n;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/nys/da;->tt:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public tt(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)Z
    .locals 2

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/bog/c;->tt(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)Z

    const-string p1, "duration"

    .line 5
    invoke-static {p1}, Lcom/byazt/nys/sp;->c(Ljava/lang/String;)Lcom/byazt/nys/sp;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/nys/da;->n:Lcom/byazt/nys/sp;

    const/4 p1, 0x1

    const/4 p3, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/android/openliveplugin/process/LiveProcessUtils;->inLiveProcess(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return p3

    :catch_0
    move-exception v0

    new-array v1, p1, [Ljava/lang/Object;

    aput-object v0, v1, p3

    const-string v0, "_tt_ad_sdk_"

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/bog/a;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/bog/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/byazt/rl/tt;->c()Lcom/byazt/rl/tt;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/byazt/rl/tt;->c(Z)Lcom/byazt/rl/tt;

    move-result-object p1

    const/16 p2, 0x106c

    invoke-virtual {p1, p2}, Lcom/byazt/rl/tt;->c(I)Lcom/byazt/rl/tt;

    move-result-object p1

    const-string p2, "Only support >= 7.0"

    invoke-virtual {p1, p2}, Lcom/byazt/rl/tt;->c(Ljava/lang/String;)Lcom/byazt/rl/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/tt;->tt()Lcom/bykv/vk/openvk/api/proto/Result;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c;->tt(Lcom/bykv/vk/openvk/api/proto/Result;)V

    return p3

    .line 10
    :cond_1
    invoke-static {p2}, Lcom/byazt/nys/a;->c(Lcom/bytedance/sdk/openadsdk/AdConfig;)V

    return p1
.end method

.method public uj()Lcom/byazt/lm/ve;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nys/da;->da:Lcom/byazt/lm/ve;

    return-object v0
.end method

.method public ve()Lcom/byazt/bog/c$ve;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/nys/da;->c:Lcom/byazt/nys/da$c;

    return-object v0
.end method
