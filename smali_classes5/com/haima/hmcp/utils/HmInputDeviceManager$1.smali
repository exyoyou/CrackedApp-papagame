.class final Lcom/haima/hmcp/utils/HmInputDeviceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/HmInputDeviceManager;->registGamePadListener(Landroid/content/Context;Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1;->val$listener:Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 5

    .line 1
    const-string v0, "=singleGamePad= registGamePadListener onInputDeviceAdded "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$000(ILjava/lang/String;)Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1;->val$listener:Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;

    .line 14
    .line 15
    invoke-static {v1, v2, v0, p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$100(Landroid/view/InputDevice;Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$200()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "isJoyStick is false,start DoubleCheck"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$300()Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;

    .line 48
    .line 49
    invoke-direct {v2, p0, p1, v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager$1$1;-><init>(Lcom/haima/hmcp/utils/HmInputDeviceManager$1;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v3, 0x64

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1;->val$listener:Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;->onInputDeviceAdded()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$200()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "registGamePadListener onInputDeviceChanged deviceId:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$500(ILjava/util/concurrent/ConcurrentHashMap;)Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->getInstance()Lcom/haima/hmcp/business/SwitchControllerManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->removeDevice(I)Z

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->removeDevice(Lcom/haima/hmcp/beans/InputDeviceInfo;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$200()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "registGamePadListener onInputDeviceRemoved deviceId:"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ",inputDeviceInfo:"

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-static {}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->removeIndex(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1;->val$listener:Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-interface {v1, v0, p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;->deviceDisconnected(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method
