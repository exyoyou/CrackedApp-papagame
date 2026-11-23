.class public Lcom/haima/hmcp/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public postError(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "post-error"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/haima/hmcp/volley/Response;->error(Lcom/haima/hmcp/volley/VolleyError;)Lcom/haima/hmcp/volley/Response;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, p2, v2}, Lcom/haima/hmcp/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/Response<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/haima/hmcp/volley/ExecutorDelivery;->postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/haima/hmcp/volley/Request;->markDelivered()V

    const-string v0, "post-response"

    .line 3
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/haima/hmcp/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p1, p2, p3}, Lcom/haima/hmcp/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
