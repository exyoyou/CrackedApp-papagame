.class Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/AsyncCache$OnGetCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask$1;->this$1:Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGetComplete(Lcom/haima/hmcp/volley/Cache$Entry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask$1;->this$1:Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/volley/AsyncRequestQueue$CacheTask;->this$0:Lcom/haima/hmcp/volley/AsyncRequestQueue;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/volley/RequestTask;->mRequest:Lcom/haima/hmcp/volley/Request;

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lcom/haima/hmcp/volley/AsyncRequestQueue;->access$300(Lcom/haima/hmcp/volley/AsyncRequestQueue;Lcom/haima/hmcp/volley/Cache$Entry;Lcom/haima/hmcp/volley/Request;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
