.class Lcom/sigmob/sdk/base/network/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/network/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/network/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/windad/WindAdRequest;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Ljava/lang/String;)V
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
            "val$trackingType",
            "val$adRequest",
            "val$requestId"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/b$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/b$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/b$1;->c:Lcom/sigmob/windad/WindAdRequest;

    iput-object p4, p0, Lcom/sigmob/sdk/base/network/b$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/b$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/b$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/network/b$1;->c:Lcom/sigmob/windad/WindAdRequest;

    iget-object v3, p0, Lcom/sigmob/sdk/base/network/b$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/sigmob/sdk/base/network/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/czhj/volley/NetworkResponse;Ljava/lang/String;)V

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

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/b$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/b$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/network/b$1;->c:Lcom/sigmob/windad/WindAdRequest;

    iget-object v3, p0, Lcom/sigmob/sdk/base/network/b$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/sigmob/sdk/base/network/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/czhj/volley/NetworkResponse;Ljava/lang/String;)V

    return-void
.end method
