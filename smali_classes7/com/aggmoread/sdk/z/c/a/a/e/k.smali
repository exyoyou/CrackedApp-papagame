.class public Lcom/aggmoread/sdk/z/c/a/a/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/c/a/a/e/k$b;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/aggmoread/sdk/z/c/a/a/e/k;


# instance fields
.field private final a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg_task"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a:Landroid/os/HandlerThread;

    return-void
.end method

.method public static a()Lcom/aggmoread/sdk/z/c/a/a/e/k;
    .locals 2

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->c:Lcom/aggmoread/sdk/z/c/a/a/e/k;

    if-nez v0, :cond_1

    const-class v0, Lcom/aggmoread/sdk/z/c/a/a/e/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/k;->c:Lcom/aggmoread/sdk/z/c/a/a/e/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aggmoread/sdk/z/c/a/a/e/k;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/c/a/a/e/k;-><init>()V

    sput-object v1, Lcom/aggmoread/sdk/z/c/a/a/e/k;->c:Lcom/aggmoread/sdk/z/c/a/a/e/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->c:Lcom/aggmoread/sdk/z/c/a/a/e/k;

    return-object v0
.end method

.method private a(Lcom/aggmoread/sdk/z/c/a/a/e/k$b;Ljava/lang/String;)V
    .locals 0

    .line 3
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/k$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/e/k;Lcom/aggmoread/sdk/z/c/a/a/e/k$b;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Lcom/aggmoread/sdk/z/c/a/a/e/k$b;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RCH_TAG"

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler$Callback;Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->b()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executeTask task "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RCH_TAG"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/e/k;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/k$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/e/k$b;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "UTF-8"

    const-string v1, "application/json"

    :try_start_0
    const-string v2, "rcv"

    invoke-static {v2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-type"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Accept"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tt"

    const-string v4, "1"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/b;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;

    invoke-direct {v0, p0, v4, v5, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/k$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/e/k;JLcom/aggmoread/sdk/z/c/a/a/e/k$b;)V

    invoke-static {v2, p1, v3, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/d;->a(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "req err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RCH_TAG"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/k;->a(Lcom/aggmoread/sdk/z/c/a/a/e/k$b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
