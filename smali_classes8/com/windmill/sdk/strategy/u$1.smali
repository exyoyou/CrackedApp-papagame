.class Lcom/windmill/sdk/strategy/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/windmill/sdk/strategy/a;

.field final synthetic d:Lcom/windmill/sdk/WindMillAdRequest;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$trackingUrl",
            "val$tracking_type",
            "val$st",
            "val$adRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/u$1;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/strategy/u$1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/strategy/u$1;->c:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/strategy/u$1;->d:Lcom/windmill/sdk/WindMillAdRequest;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/volley/NetworkResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    const-string v0, "---------sendTracking: url onSuccess"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/windmill/sdk/strategy/u$1;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/windmill/sdk/strategy/u$1;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/windmill/sdk/strategy/u$1;->c:Lcom/windmill/sdk/strategy/a;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/windmill/sdk/strategy/u$1;->d:Lcom/windmill/sdk/WindMillAdRequest;

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3, p1}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;Lcom/czhj/volley/NetworkResponse;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    const-string v0, "---------sendTracking: url onErrorResponse"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/u$1;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/strategy/u$1;->b:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/windmill/sdk/strategy/u$1;->c:Lcom/windmill/sdk/strategy/a;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/windmill/sdk/strategy/u$1;->d:Lcom/windmill/sdk/WindMillAdRequest;

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3, p1}, Lcom/windmill/sdk/strategy/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;Lcom/czhj/volley/NetworkResponse;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
