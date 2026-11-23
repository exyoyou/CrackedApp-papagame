.class public Lcom/haima/hmcp/device/input/manager/DeviceInputManager;
.super Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInputManager"


# instance fields
.field private mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lcom/haima/hmcp/device/input/listener/DeviceInputListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/haima/hmcp/device/input/listener/DeviceInputListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    .line 5
    .line 6
    new-instance v0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;-><init>(Ljava/util/HashMap;Lcom/haima/hmcp/device/input/listener/DeviceInputListener;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getCurrentInputMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/haima/hmcp/device/input/interfaces/IDeviceInput;->getCurrentInputMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/device/input/interfaces/IDeviceInput;->onDestroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    .line 10
    .line 11
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    const-string v0, "\u8bbe\u5907\u7c7b\u578b"

    .line 16
    .line 17
    const-string v2, "\u624b\u67c4\u6447\u6746"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->sendInputDevice(II)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v3, 0x2002

    .line 32
    .line 33
    and-int/2addr v0, v3

    .line 34
    if-ne v0, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v2, v1}, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->sendInputDevice(II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->isMorePointIsRun()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return p1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onkeydown inputdevice\uff1a"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/device/input/interfaces/IDeviceInput;->setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setButtonMappingMode(ZI)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/interfaces/IDeviceInput;->setButtonMappingMode(ZI)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setWebSocket(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;->mDeviceOperateManager:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/device/input/interfaces/IDeviceInput;->setWebSocket(Lcom/haima/hmcp/business/IWebSocket;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
