.class public final Lcom/kwad/sdk/core/b/a/hp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/components/core/innerEc/live/config/net/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Lcom/kwad/components/core/innerEc/live/config/net/b;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/i;

    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/i;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ug:Lcom/kwad/components/core/innerEc/live/config/net/i;

    const-string v1, "webSocketLiveServer"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/d;

    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/d;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

    const-string v1, "commonData"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 6
    new-instance v0, Lcom/kwad/components/core/innerEc/live/config/net/e;

    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/config/net/e;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ui:Lcom/kwad/components/core/innerEc/live/config/net/e;

    const-string p0, "livePlayData"

    .line 7
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static b(Lcom/kwad/components/core/innerEc/live/config/net/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ug:Lcom/kwad/components/core/innerEc/live/config/net/i;

    const-string v1, "webSocketLiveServer"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    const-string v0, "commonData"

    .line 4
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    const-string v0, "livePlayData"

    .line 5
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Ui:Lcom/kwad/components/core/innerEc/live/config/net/e;

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/live/config/net/b;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/hp;->a(Lcom/kwad/components/core/innerEc/live/config/net/b;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/live/config/net/b;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/hp;->b(Lcom/kwad/components/core/innerEc/live/config/net/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
