.class public abstract Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

.field protected deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

.field protected dpadtimer:Lcom/haima/hmcp/device/input/timer/DpadTimer;

.field protected isDelListen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->isDelListen:Z

    .line 14
    .line 15
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 20
    .line 21
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method protected cleanDpadTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->dpadtimer:Lcom/haima/hmcp/device/input/timer/DpadTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mTimeOutTask"

    .line 6
    .line 7
    const-string v1, "cleanTimer"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->dpadtimer:Lcom/haima/hmcp/device/input/timer/DpadTimer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->dpadtimer:Lcom/haima/hmcp/device/input/timer/DpadTimer;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method protected interceptKey(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected sendMessageToInstance(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected startDpadTimer(ILcom/haima/hmcp/beans/PointCoord;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===startTimer ===="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->dpadtimer:Lcom/haima/hmcp/device/input/timer/DpadTimer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/haima/hmcp/device/input/timer/DpadTimer;

    .line 13
    .line 14
    const-wide/16 v2, 0x50

    .line 15
    .line 16
    const-wide/16 v4, 0x14

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move v6, p1

    .line 20
    move-object v7, p2

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/device/input/timer/DpadTimer;-><init>(JJILcom/haima/hmcp/beans/PointCoord;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->dpadtimer:Lcom/haima/hmcp/device/input/timer/DpadTimer;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
