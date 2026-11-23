.class public Lcom/haima/hmcp/business/CustomStringRequest;
.super Lcom/haima/hmcp/volley/toolbox/StringRequest;
.source "SourceFile"


# instance fields
.field private final eventData:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/haima/hmcp/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/haima/hmcp/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/haima/hmcp/business/CustomStringRequest;->eventData:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/business/CustomStringRequest;->eventData:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method
