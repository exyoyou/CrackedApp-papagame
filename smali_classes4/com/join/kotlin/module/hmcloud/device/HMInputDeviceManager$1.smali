.class Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/core/ControllerManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->setControllerDeviceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;)V
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;->this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;->this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/d;->p()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;->this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "count="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "onControllerDeviceAdded"

    .line 29
    .line 30
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->log([Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;->this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;->onInputDeviceConnected()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public onControllerDeviceRemoved(Lcom/papa/controller/core/ControllerManager$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;->this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/d;->p()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;->this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "count="

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "onControllerDeviceRemoved"

    .line 29
    .line 30
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->log([Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;->this$0:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;->onInputDeviceDisconnected()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
