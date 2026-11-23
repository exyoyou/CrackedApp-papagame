.class Lcom/join/mgps/activity/HandShankBaseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/core/ControllerManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankBaseActivity;->setControllerDeviceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HandShankBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankBaseActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity$a;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onControllerDeviceAdded(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity$a;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onControllerDeviceChanged(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onControllerDeviceRemoved(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity$a;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onControllerDeviceChanged(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
