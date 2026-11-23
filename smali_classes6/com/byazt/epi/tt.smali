.class public Lcom/byazt/epi/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x675,
        0xd
    }
.end annotation


# static fields
.field public static volatile uj:Lcom/byazt/gs/c;


# instance fields
.field public c:Lcom/byazt/vb/n;

.field public tt:Landroid/content/Context;

.field public ve:Lcom/byazt/vb/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/vb/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/epi/tt;->c(Lcom/byazt/vb/n;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public static synthetic c(Lcom/byazt/epi/tt;)Lcom/byazt/vb/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    return-object p0
.end method

.method private c(IZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 25
    iget-object p1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/xm/tt;->c(Lcom/byazt/vb/n;Z)V

    :cond_1
    return-void

    .line 26
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/xm/c;->c(Lcom/byazt/vb/n;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/epi/tt;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/epi/tt;->c(IZ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/epi/tt;Lcom/byazt/vb/tt;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/epi/tt;->c(Lcom/byazt/vb/tt;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/epi/tt;Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/epi/tt;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/epi/tt;Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/byazt/epi/tt;->c(Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V

    return-void
.end method

.method private c(Lcom/byazt/vb/tt;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 28
    iget-object p2, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/xm/tt;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)V

    :cond_1
    return-void

    .line 29
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/xm/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)V

    return-void
.end method

.method private c(Ljava/lang/String;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/xm/c;->c(Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 59
    iget-object p2, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/xm/tt;->c(Ljava/lang/String;Lcom/byazt/vb/n;)V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 44
    iget-object p4, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/byazt/xm/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/vb/n;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const/4 p5, 0x1

    if-ne p4, p5, :cond_1

    .line 45
    iget-object p4, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {p1, p2, p3, p4}, Lcom/byazt/xm/tt;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/vb/n;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/vb/uj;)Z
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p2}, Lcom/byazt/vb/uj;->da()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 10
    invoke-interface {p2}, Lcom/byazt/vb/uj;->u()Z

    move-result p1

    return p1

    .line 11
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static n()Lcom/byazt/gs/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/epi/tt;->uj:Lcom/byazt/gs/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/epi/tt;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/epi/tt;->uj:Lcom/byazt/gs/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/ke/c;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/ke/c;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/epi/tt;->uj:Lcom/byazt/gs/c;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/epi/tt;->uj:Lcom/byazt/gs/c;

    .line 25
    .line 26
    return-object v0
.end method

.method private tt(Lcom/byazt/vb/tt;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    if-nez v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 9
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->sl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/byazt/epi/tt;->c(Landroid/content/Context;Lcom/byazt/vb/uj;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    invoke-interface {v0, p1}, Lcom/byazt/vb/i;->c(Lcom/byazt/vb/tt;)V

    return-void

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/byazt/epi/tt;->a()Z

    .line 14
    invoke-direct {p0}, Lcom/byazt/epi/tt;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/byazt/epi/tt$2;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/byazt/epi/tt$2;-><init>(Lcom/byazt/epi/tt;Ljava/lang/String;Lcom/byazt/vb/tt;Lcom/byazt/vb/uj;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 16
    :cond_3
    invoke-interface {v0}, Lcom/byazt/vb/uj;->da()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/epi/tt;->c(Lcom/byazt/vb/tt;I)V

    return-void

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    invoke-interface {v0, p1}, Lcom/byazt/vb/i;->c(Lcom/byazt/vb/tt;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p1, "log_error"

    const-string v0, "dispatch event configManager is null"

    .line 18
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/byazt/vb/i;->c()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/vb/a;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lcom/byazt/shi/tt;->c:Lcom/byazt/shi/tt;

    :cond_0
    invoke-interface {v0, p1}, Lcom/byazt/vb/n;->c(Lcom/byazt/vb/a;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/vb/n;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/epi/tt;->tt(Lcom/byazt/vb/n;)V

    return-void
.end method

.method public c(Lcom/byazt/vb/tt;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/byazt/epi/tt;->tt(Lcom/byazt/vb/tt;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    const-string p1, "log_error"

    const-string v1, "trackFailedUrls configManager is null"

    .line 47
    invoke-static {p1, v1, v0}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 48
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 49
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {v0}, Lcom/byazt/vb/uj;->a()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 51
    :cond_2
    invoke-interface {v0}, Lcom/byazt/vb/uj;->da()I

    move-result v1

    if-nez v1, :cond_3

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->sl()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/byazt/epi/tt;->c(Landroid/content/Context;Lcom/byazt/vb/uj;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 54
    :cond_4
    invoke-direct {p0}, Lcom/byazt/epi/tt;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/byazt/epi/tt$4;

    const-string v3, "trackFailed"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/byazt/epi/tt$4;-><init>(Lcom/byazt/epi/tt;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/uj;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 56
    :cond_5
    invoke-interface {v0}, Lcom/byazt/vb/uj;->da()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/epi/tt;->c(Ljava/lang/String;I)V

    return-void

    .line 57
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {v0}, Lcom/byazt/pvs/c;->c(Lcom/byazt/vb/n;)Lcom/byazt/pvs/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/pvs/tt;->c(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    .line 30
    iget-object v0, v8, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    const-string v0, "log_error"

    const-string v1, "track configManager is null"

    .line 31
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 33
    iget-object v0, v8, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 34
    :cond_1
    invoke-interface {v6}, Lcom/byazt/vb/uj;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 35
    :cond_2
    invoke-interface {v6}, Lcom/byazt/vb/uj;->da()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    .line 36
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    return-void

    .line 37
    :cond_4
    invoke-interface {v6}, Lcom/byazt/vb/uj;->da()I

    move-result v0

    if-nez v0, :cond_6

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return-void

    .line 39
    :cond_6
    iget-object v0, v8, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->sl()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v8, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/byazt/epi/tt;->c(Landroid/content/Context;Lcom/byazt/vb/uj;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 40
    :cond_7
    invoke-direct {p0}, Lcom/byazt/epi/tt;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    invoke-interface {v6}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Lcom/byazt/epi/tt$3;

    const-string v2, "trackFailed"

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/byazt/epi/tt$3;-><init>(Lcom/byazt/epi/tt;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/byazt/vb/uj;Lorg/json/JSONObject;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 42
    :cond_8
    invoke-interface {v6}, Lcom/byazt/vb/uj;->da()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/byazt/epi/tt;->c(Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V

    return-void

    .line 43
    :cond_9
    :goto_0
    iget-object v0, v8, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-static {v0}, Lcom/byazt/pvs/c;->c(Lcom/byazt/vb/n;)Lcom/byazt/pvs/tt;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/byazt/pvs/tt;->c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->sl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/byazt/epi/tt;->c(Landroid/content/Context;Lcom/byazt/vb/uj;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    iget-object v0, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/vb/i;->c(Z)V

    :cond_2
    return-void

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/byazt/epi/tt;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/byazt/epi/tt$1;

    const-string v3, "start"

    invoke-direct {v2, p0, v3, v0, p1}, Lcom/byazt/epi/tt$1;-><init>(Lcom/byazt/epi/tt;Ljava/lang/String;Lcom/byazt/vb/uj;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 22
    :cond_4
    invoke-interface {v0}, Lcom/byazt/vb/uj;->da()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/byazt/epi/tt;->c(IZ)V

    return-void

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    if-eqz v0, :cond_6

    .line 24
    invoke-interface {v0, p1}, Lcom/byazt/vb/i;->c(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public tt()Lcom/byazt/vb/n;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public tt(Lcom/byazt/vb/n;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    .line 2
    invoke-interface {p1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/epi/tt;->tt:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/byazt/mv/tt;

    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    invoke-direct {p1, v0}, Lcom/byazt/mv/tt;-><init>(Lcom/byazt/vb/n;)V

    iput-object p1, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/vb/n;->c(Z)V

    :cond_0
    return-void
.end method

.method public uj()Lcom/byazt/vb/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/epi/tt;->c:Lcom/byazt/vb/n;

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
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ve()Lcom/byazt/vb/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/epi/tt;->ve:Lcom/byazt/vb/i;

    .line 2
    .line 3
    return-object v0
.end method
