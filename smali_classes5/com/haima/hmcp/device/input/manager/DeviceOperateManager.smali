.class public Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/device/input/interfaces/IDeviceOperateManager;


# static fields
.field public static final ACTION_DEFAULT_TYPE:I = 0x0

.field public static final ACTION_DOWN_TYPE:I = 0x1

.field public static final ACTION_MOVE_TYPE:I = 0x3

.field public static final ACTION_UP_TYPE:I = 0x2

.field public static final CACHE_EVENT_TRACKBALL_RIGHT_MOVE:Ljava/lang/String; = "trackBallRMove"

.field public static final KEYBOARD_DOWN:Ljava/lang/String; = "keyDown"

.field public static final KEYBOARD_DOWN_FLAG:Ljava/lang/String; = "1"

.field public static final KEYBOARD_UP:Ljava/lang/String; = "keyUp"

.field public static final KEYBOARD_UP_FLAG:Ljava/lang/String; = "0"

.field public static final OPERATE_KEY_DOWN:I = 0x1

.field public static final OPERATE_KEY_UP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeviceOperateManager"


# instance fields
.field private deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

.field private final deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

.field private gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

.field private sameKeyCodeOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->initMappingConfig(Ljava/util/HashMap;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->setDeviceInputListener(Lcom/haima/hmcp/device/input/listener/DeviceInputListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getCurrentInputMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 2
    .line 3
    iget v0, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 4
    .line 5
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->onDestroy()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->clearInstance()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 9
    .line 10
    iget v0, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 32
    .line 33
    iget v0, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 34
    .line 35
    if-eq v0, v1, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->sameKeyCodeOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Lcom/haima/hmcp/device/input/operate/SameKeyCodeOperate;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/operate/SameKeyCodeOperate;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->sameKeyCodeOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->sameKeyCodeOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 49
    .line 50
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 54
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 9
    .line 10
    iget v0, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->gamepadDeviceOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 32
    .line 33
    iget v0, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 34
    .line 35
    if-eq v0, v1, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->sameKeyCodeOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Lcom/haima/hmcp/device/input/operate/SameKeyCodeOperate;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/operate/SameKeyCodeOperate;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->sameKeyCodeOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->sameKeyCodeOperate:Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;

    .line 49
    .line 50
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/interfaces/IDeviceOperate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 54
    return p1
.end method

.method public setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setButtonMappingMode(ZI)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->isMorePointIsRun()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 16
    .line 17
    iput p2, p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public setWebSocket(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/DeviceOperateManager;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->setSendWebSocket(Lcom/haima/hmcp/business/IWebSocket;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
