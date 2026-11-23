.class public Lcom/haima/hmcp/device/input/operate/SameKeyCodeOperate;
.super Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/haima/hmcp/device/input/operate/SameKeyCodeOperate;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/device/input/operate/SameKeyCodeOperate;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->isDelListen:Z

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->interceptKey(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p2, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 22
    .line 23
    const-string v0, "keyDown"

    .line 24
    .line 25
    invoke-virtual {p2, v0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v0, "1"

    .line 40
    .line 41
    invoke-virtual {p1, v0, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x43

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->isDelListen:Z

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->interceptKey(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p2, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 23
    .line 24
    const-string v0, "keyUp"

    .line 25
    .line 26
    invoke-virtual {p2, v0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v0, "0"

    .line 41
    .line 42
    invoke-virtual {p1, v0, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return v1
.end method
