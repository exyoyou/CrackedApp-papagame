.class Lcom/join/mgps/activity/SimulatorExitPlayActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SimulatorExitPlayActivity;->bindTTAdStreamListener(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field final synthetic b:Lcom/join/mgps/activity/SimulatorExitPlayActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adTmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity$c;->b:Lcom/join/mgps/activity/SimulatorExitPlayActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity$c;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "value",
            "enforce"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity$c;->b:Lcom/join/mgps/activity/SimulatorExitPlayActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SimulatorExitPlayActivity;->adapter:Lcom/join/mgps/adapter/o7;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity$c;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/o7;->O(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
