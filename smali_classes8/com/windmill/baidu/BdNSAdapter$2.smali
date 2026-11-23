.class final Lcom/windmill/baidu/BdNSAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/ViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/BdNSAdapter;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/BdNSAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/BdNSAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNSAdapter$2;->a:Lcom/windmill/baidu/BdNSAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNSAdapter$2;->a:Lcom/windmill/baidu/BdNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdClick()V

    return-void
.end method

.method public final onAdClose()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNSAdapter$2;->a:Lcom/windmill/baidu/BdNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdClosed()V

    return-void
.end method

.method public final onAdShow()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNSAdapter$2;->a:Lcom/windmill/baidu/BdNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShow()V

    return-void
.end method

.method public final onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/BdNSAdapter$2;->a:Lcom/windmill/baidu/BdNSAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
