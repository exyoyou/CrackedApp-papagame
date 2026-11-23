.class Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/AsyncCache$OnWriteCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask$1;->this$1:Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWriteComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask$1;->this$1:Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask;->this$0:Lcom/haima/hmcp/volley/AsyncRequestQueue;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/haima/hmcp/volley/RequestTask;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/haima/hmcp/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/haima/hmcp/volley/Response;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v1, v2, v0, v3}, Lcom/haima/hmcp/volley/AsyncRequestQueue;->access$700(Lcom/haima/hmcp/volley/AsyncRequestQueue;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
