.class public Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;
.super Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient;
.source "SourceFile"


# static fields
.field private static final HTTP_TIME_OUT:I = 0xa

.field public static final JSON:Lcom/byazt/gqp/da;

.field private static mClient:Lcom/byazt/gqp/t;


# instance fields
.field private mCall:Lcom/byazt/gqp/tt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/gqp/da;->c(Ljava/lang/String;)Lcom/byazt/gqp/da;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->JSON:Lcom/byazt/gqp/da;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/byazt/gqp/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/gqp/tt;->uj()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/byazt/gqp/tt;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/gqp/tt;->ve()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/byazt/gqp/t;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/byazt/gqp/t;

    invoke-direct {v1}, Lcom/byazt/gqp/t;-><init>()V

    invoke-virtual {v1}, Lcom/byazt/gqp/t;->tt()Lcom/byazt/gqp/t$c;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 4
    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/gqp/t$c;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/gqp/t$c;->ve(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/gqp/t$c;->tt(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/byazt/gqp/t$c;->c()Lcom/byazt/gqp/t;

    move-result-object v1

    sput-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/byazt/gqp/t;

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lcom/byazt/gqp/yp$c;

    invoke-direct {v0}, Lcom/byazt/gqp/yp$c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v1, v2}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object p1

    .line 14
    sget-object p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/byazt/gqp/t;

    invoke-virtual {p2, p1}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/byazt/gqp/tt;

    .line 15
    new-instance p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$1;

    invoke-direct {p2, p0, p3}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$1;-><init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V

    invoke-interface {p1, p2}, Lcom/byazt/gqp/tt;->c(Lcom/byazt/gqp/ve;)V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 17
    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/byazt/gqp/t;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/byazt/gqp/t;

    invoke-direct {v1}, Lcom/byazt/gqp/t;-><init>()V

    invoke-virtual {v1}, Lcom/byazt/gqp/t;->tt()Lcom/byazt/gqp/t$c;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 20
    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/gqp/t$c;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/gqp/t$c;->ve(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/gqp/t$c;->tt(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/gqp/t$c;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/byazt/gqp/t$c;->c()Lcom/byazt/gqp/t;

    move-result-object v1

    sput-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/byazt/gqp/t;

    .line 24
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Lcom/byazt/gqp/yp$c;

    invoke-direct {v0}, Lcom/byazt/gqp/yp$c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v1, v2}, Lcom/byazt/gqp/yp$c;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p4, p2, :cond_2

    .line 30
    sget-object p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->JSON:Lcom/byazt/gqp/da;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/byazt/gqp/z;->c(Lcom/byazt/gqp/da;Ljava/lang/String;)Lcom/byazt/gqp/z;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;

    .line 32
    :cond_2
    sget-object p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/byazt/gqp/t;

    invoke-virtual {p1}, Lcom/byazt/gqp/yp$c;->tt()Lcom/byazt/gqp/yp;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/gqp/t;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/byazt/gqp/tt;

    .line 33
    new-instance p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$2;

    invoke-direct {p2, p0, p5}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$2;-><init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V

    invoke-interface {p1, p2}, Lcom/byazt/gqp/tt;->c(Lcom/byazt/gqp/ve;)V

    return-void

    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
