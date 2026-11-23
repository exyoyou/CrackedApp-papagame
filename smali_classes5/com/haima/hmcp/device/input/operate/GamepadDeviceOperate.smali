.class public Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;
.super Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GamepadDeviceOperate"


# instance fields
.field private gamepadEventDetected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-array v0, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v3, ""

    .line 10
    .line 11
    aput-object v3, v0, v1

    .line 12
    .line 13
    const-string v3, "startGamePad%s:"

    .line 14
    .line 15
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v3, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iput-boolean v3, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "1,msg:"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ",sendResult:"

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v3, "13001"

    .line 55
    .line 56
    invoke-static {v3, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_0
    if-ge v1, v0, :cond_1

    .line 64
    .line 65
    iget-object v3, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 66
    .line 67
    invoke-virtual {v3, p1, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 74
    .line 75
    const/4 v1, -0x1

    .line 76
    invoke-virtual {v0, p1, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 77
    .line 78
    .line 79
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "---"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 27
    .line 28
    iget p1, p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 41
    .line 42
    iget p1, p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    const/4 v1, 0x0

    .line 46
    if-ne p1, v0, :cond_1

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    new-array p1, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    aput-object v2, p1, v1

    .line 58
    .line 59
    const-string v2, "startGamePad%s:"

    .line 60
    .line 61
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->sendMessageToInstance(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput-boolean v2, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "1,msg:"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p1, ",sendResult:"

    .line 85
    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-boolean p1, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 90
    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v2, "13001"

    .line 99
    .line 100
    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 104
    .line 105
    invoke-virtual {p1, p2, v0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, "---"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 27
    .line 28
    iget p1, p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 41
    .line 42
    iget p1, p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    const/4 v1, 0x0

    .line 46
    if-ne p1, v0, :cond_1

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    new-array p1, p1, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    aput-object v0, p1, v1

    .line 58
    .line 59
    const-string v0, "startGamePad%s:"

    .line 60
    .line 61
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendData(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "0,msg:"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, ",sendResult:"

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean p1, p0, Lcom/haima/hmcp/device/input/operate/GamepadDeviceOperate;->gamepadEventDetected:Z

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "13001"

    .line 101
    .line 102
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/operate/AbstractDeviceOperate;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 106
    .line 107
    const/4 v0, 0x2

    .line 108
    invoke-virtual {p1, p2, v0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 109
    .line 110
    .line 111
    :cond_1
    return v1
.end method
