.class Lcom/windmill/sdk/common/t$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/s$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/s$a;

.field final synthetic b:Lcom/windmill/sdk/WMAdSourceStatusListener;

.field final synthetic c:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/s$a;Lcom/windmill/sdk/WMAdSourceStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$biddingListener",
            "val$adSourceStatusListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$21;->c:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$21;->a:Lcom/windmill/sdk/strategy/s$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$21;->b:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "strategy",
            "code",
            "message"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/t$21;->a:Lcom/windmill/sdk/strategy/s$a;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/t$21;->b:Lcom/windmill/sdk/WMAdSourceStatusListener;

    if-eqz p2, :cond_1

    .line 10
    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p4, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p4}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p4

    const-string v0, "adapterLoadBidToken is null"

    invoke-direct {p3, p4, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1, p3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "strategy",
            "headerBiddingParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/models/AdInfo;",
            "Lcom/windmill/sdk/strategy/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_1

    .line 1
    iget-object p3, p0, Lcom/windmill/sdk/common/t$21;->a:Lcom/windmill/sdk/strategy/s$a;

    const-string v0, "adapterLoadBidToken is null"

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p3, p1, p2, v1, v0}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/common/t$21;->b:Lcom/windmill/sdk/WMAdSourceStatusListener;

    if-eqz p2, :cond_2

    .line 4
    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    invoke-direct {p3, v1, v0}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1, p3}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$21;->a:Lcom/windmill/sdk/strategy/s$a;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/windmill/sdk/strategy/s$a;->a(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method
