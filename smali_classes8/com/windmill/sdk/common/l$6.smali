.class Lcom/windmill/sdk/common/l$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/czhj/sdk/common/track/TrackManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/l;->a(Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/l$6;->a:Lcom/windmill/sdk/common/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tracker",
            "error"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "------------trackingEvent------------onErrorResponse------------"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p2, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/czhj/sdk/common/track/AdTracker;ILcom/czhj/volley/NetworkResponse;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tracker",
            "response"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "----trackingEvent----onSuccess------"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0, p2}, Lcom/windmill/sdk/common/l;->a(Lcom/czhj/sdk/common/track/AdTracker;ILcom/czhj/volley/NetworkResponse;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
