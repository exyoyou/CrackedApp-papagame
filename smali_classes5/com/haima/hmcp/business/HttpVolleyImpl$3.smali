.class Lcom/haima/hmcp/business/HttpVolleyImpl$3;
.super Lcom/haima/hmcp/business/CharsetJsonRequest;
.source "SourceFile"


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


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HttpVolleyImpl;ILjava/lang/String;Lorg/json/JSONObject;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$3;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move-object v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/CharsetJsonRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Charset"

    .line 7
    .line 8
    const-string v2, "UTF-8"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "Accept"

    .line 14
    .line 15
    const-string v2, "application/json"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "Content-Type"

    .line 21
    .line 22
    const-string v2, "text/plain"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
