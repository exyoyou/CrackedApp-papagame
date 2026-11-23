.class Lcom/haima/hmcp/business/HttpVolleyImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HttpVolleyImpl;->callJsonRequest(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Ljava/lang/String;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

.field final synthetic val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

.field final synthetic val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestPolicy()Lcom/haima/hmcp/business/IRequestPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestPolicy()Lcom/haima/hmcp/business/IRequestPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/haima/hmcp/business/HttpVolleyImpl;->access$000(Lcom/haima/hmcp/business/HttpVolleyImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/haima/hmcp/business/HttpVolleyImpl;->access$100(Lcom/haima/hmcp/business/HttpVolleyImpl;)Lcom/haima/hmcp/volley/RequestQueue;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestTag()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v0, v1, v2, v3}, Lcom/haima/hmcp/business/IRequestPolicy;->onGetResponse(Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/volley/RequestQueue;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$2;->val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;

    .line 39
    .line 40
    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/business/HttpVolleyImpl;->access$200(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$OnResponseListener;Lcom/haima/hmcp/volley/VolleyError;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
