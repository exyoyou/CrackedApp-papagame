.class public Lcom/windmill/sdk/common/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/WMAdSourceStatusListener;


# instance fields
.field private a:Lcom/windmill/sdk/WMAdSourceStatusListener;


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


# virtual methods
.method public a(Lcom/windmill/sdk/WMAdSourceStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mAdSourceStatusListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/g;->a:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "errorMessage"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/g;->a:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/g;->a:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdSourceBiddingSuccess(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/g;->a:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceBiddingSuccess(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdSourceLoadFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "errorMessage"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/g;->a:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadFailed(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/g;->a:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdSourceLoadSuccess(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/g;->a:Lcom/windmill/sdk/WMAdSourceStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/windmill/sdk/WMAdSourceStatusListener;->onAdSourceLoadSuccess(Lcom/windmill/sdk/models/AdInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
