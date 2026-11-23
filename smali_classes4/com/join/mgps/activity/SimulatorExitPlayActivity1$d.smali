.class Lcom/join/mgps/activity/SimulatorExitPlayActivity1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->bindTTAdStreamListener(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SimulatorExitPlayActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$d;->a:Lcom/join/mgps/activity/SimulatorExitPlayActivity1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$d;->a:Lcom/join/mgps/activity/SimulatorExitPlayActivity1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->reward_ad:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
