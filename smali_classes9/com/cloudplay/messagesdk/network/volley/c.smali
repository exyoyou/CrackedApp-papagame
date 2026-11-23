.class public Lcom/cloudplay/messagesdk/network/volley/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/network/volley/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloudplay/messagesdk/network/volley/c$a;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/cloudplay/messagesdk/network/volley/c$a;-><init>(Lcom/cloudplay/messagesdk/network/volley/c;Landroid/os/Handler;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/c;->a:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public postError(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Lcom/cloudplay/messagesdk/network/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "post-error"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/cloudplay/messagesdk/network/volley/Response;->a(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)Lcom/cloudplay/messagesdk/network/volley/Response;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/c;->a:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    new-instance v1, Lcom/cloudplay/messagesdk/network/volley/c$b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, p2, v2}, Lcom/cloudplay/messagesdk/network/volley/c$b;-><init>(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public postResponse(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloudplay/messagesdk/network/volley/c;->postResponse(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->v()V

    const-string v0, "post-response"

    .line 3
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/c;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/cloudplay/messagesdk/network/volley/c$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/cloudplay/messagesdk/network/volley/c$b;-><init>(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
