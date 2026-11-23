.class Lcom/windmill/sdk/custom/Native2OtherManger$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/BannerViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/Native2OtherManger;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

.field final synthetic b:Lcom/windmill/sdk/custom/Native2OtherManger;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/Native2OtherManger;Lcom/windmill/sdk/custom/WMCustomBannerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bannerAdapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->b:Lcom/windmill/sdk/custom/Native2OtherManger;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClick()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdClosed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdRenderError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdRenderSuccess(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->b:Lcom/windmill/sdk/custom/Native2OtherManger;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/windmill/sdk/custom/Native2OtherManger;->bannerView:Landroid/view/View;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 13
    .line 14
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "onAdRenderSuccess view is null  "

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$4;->a:Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callBannerAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
