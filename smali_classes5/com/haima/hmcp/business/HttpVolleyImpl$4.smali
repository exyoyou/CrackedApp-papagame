.class Lcom/haima/hmcp/business/HttpVolleyImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HttpVolleyImpl;->callStringRequest(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Ljava/lang/String;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/haima/hmcp/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

.field final synthetic val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$4;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$4;->val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/HttpVolleyImpl$4;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$4;->val$responseListener:Lcom/haima/hmcp/business/IHttp$OnResponseListener;

    invoke-interface {v0, p1}, Lcom/haima/hmcp/business/IHttp$OnResponseListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
