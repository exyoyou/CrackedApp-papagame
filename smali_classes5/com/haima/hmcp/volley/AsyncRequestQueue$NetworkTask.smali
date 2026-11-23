.class Lcom/haima/hmcp/volley/AsyncRequestQueue$NetworkTask;
.super Lcom/haima/hmcp/volley/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/haima/hmcp/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/volley/AsyncRequestQueue;Lcom/haima/hmcp/volley/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/haima/hmcp/volley/AsyncRequestQueue;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/haima/hmcp/volley/RequestTask;-><init>(Lcom/haima/hmcp/volley/Request;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestTask;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/volley/Request;->isCanceled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestTask;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 10
    .line 11
    const-string v1, "network-discard-cancelled"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/volley/Request;->finish(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestTask;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/haima/hmcp/volley/Request;->notifyListenerResponseNotUsable()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/volley/RequestTask;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 27
    .line 28
    const-string v3, "network-queue-take"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/haima/hmcp/volley/AsyncRequestQueue;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/haima/hmcp/volley/AsyncRequestQueue;->access$600(Lcom/haima/hmcp/volley/AsyncRequestQueue;)Lcom/haima/hmcp/volley/AsyncNetwork;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/haima/hmcp/volley/RequestTask;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 40
    .line 41
    new-instance v4, Lcom/haima/hmcp/volley/AsyncRequestQueue$NetworkTask$1;

    .line 42
    .line 43
    invoke-direct {v4, p0, v0, v1}, Lcom/haima/hmcp/volley/AsyncRequestQueue$NetworkTask$1;-><init>(Lcom/haima/hmcp/volley/AsyncRequestQueue$NetworkTask;J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/volley/AsyncNetwork;->performRequest(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
