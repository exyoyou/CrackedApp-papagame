.class public abstract Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/device/input/interfaces/IDeviceInput;


# static fields
.field public static final INPUT_DEVICE_GAMEPAD:I = 0x3

.field public static final INPUT_DEVICE_KEY_MOUSE:I = 0x2

.field public static final INPUT_DEVICE_NONE:I = 0x0

.field public static final INPUT_DEVICE_OPERATION_TYPE_BUTTON:I = 0x1

.field public static final INPUT_DEVICE_REMOTE_CONTROL:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCurrentInputDevice:I

.field protected mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/device/input/manager/DeviceInputManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->mCurrentInputDevice:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method protected sendInputDevice(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "sendInputDevice: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " mCurrentInputDevice:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->mCurrentInputDevice:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " mListener != null:"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/AbstractDeviceInputManager;->mDeviceInputListener:Lcom/haima/hmcp/device/input/listener/DeviceInputListener;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/device/input/listener/DeviceInputListener;->onInputDevice(II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
