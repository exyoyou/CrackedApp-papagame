.class Lcom/windmill/sdk/custom/Native2OtherManger$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/ViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/Native2OtherManger;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/HashMap;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

.field final synthetic b:Lcom/windmill/sdk/custom/Native2OtherManger;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/Native2OtherManger;Lcom/windmill/sdk/custom/WMCustomSplashAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalSplashAdapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$2;->b:Lcom/windmill/sdk/custom/Native2OtherManger;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/Native2OtherManger$2;->a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

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
    .locals 0

    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$2;->a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdClosed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 0

    return-void
.end method

.method public onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    return-void
.end method
