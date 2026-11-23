.class Lcom/haima/hmcp/business/HttpVolleyImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HttpVolleyImpl;->callJsonRequest(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Ljava/lang/String;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/haima/hmcp/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

.field final synthetic val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

.field final synthetic val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    invoke-virtual {v0}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestPolicy()Lcom/haima/hmcp/business/IRequestPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    invoke-virtual {v0}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestPolicy()Lcom/haima/hmcp/business/IRequestPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 4
    invoke-static {v1}, Lcom/haima/hmcp/business/HttpVolleyImpl;->access$000(Lcom/haima/hmcp/business/HttpVolleyImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    invoke-static {v2}, Lcom/haima/hmcp/business/HttpVolleyImpl;->access$100(Lcom/haima/hmcp/business/HttpVolleyImpl;)Lcom/haima/hmcp/volley/RequestQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->val$requestWrapper:Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    invoke-virtual {v3}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestTag()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v0, v1, v2, v3}, Lcom/haima/hmcp/business/IRequestPolicy;->onGetResponse(Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/volley/RequestQueue;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$1;->val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;

    invoke-interface {v0, p1}, Lcom/haima/hmcp/business/IHttp$OnResponseListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
