.class public Lcom/haima/hmcp/model/ArmMouseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MOUSE_OPERATION_LOCKED:I = 0x0

.field public static final MOUSE_OPERATION_UNLOCKED:I = 0x1

.field public static final MSG_HIDE_MOUSE:I = 0x2

.field public static final MSG_MOVE_MOUSE:I = 0x3

.field public static final MSG_SHOW_MOUSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArmMouseModel"


# instance fields
.field private edgeSpeed:F

.field private isListenHover:Z

.field private listener:Lcom/haima/hmcp/listeners/ArmMouseModelListener;

.field private mAxisStatusMouse:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastMouseX:F

.field private mLastMouseY:F

.field protected mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

.field private mMouseDownRX:F

.field private mMouseDownRY:F

.field protected mMouseDownX:F

.field protected mMouseDownY:F

.field private mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

.field private mMouseMoving:Z

.field private mRZ:F

.field private mZ:F

.field private mouseX:F

.field private mouseY:F

.field private screenDisplay:Landroid/graphics/Point;

.field private sensitivityMouse:F

.field private sensitivityMouseResult:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 10
    .line 11
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    .line 13
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mouseX:F

    .line 14
    .line 15
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mouseY:F

    .line 16
    .line 17
    const v0, 0x3e99999a    # 0.3f

    .line 18
    .line 19
    .line 20
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownRX:F

    .line 21
    .line 22
    const v0, 0x3e4ccccd    # 0.2f

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownRY:F

    .line 26
    .line 27
    const v0, 0x3a83126f    # 0.001f

    .line 28
    .line 29
    .line 30
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->edgeSpeed:F

    .line 31
    .line 32
    const v0, 0x3f19999a    # 0.6f

    .line 33
    .line 34
    .line 35
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouse:F

    .line 36
    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    iput v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouseResult:F

    .line 40
    .line 41
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownX:F

    .line 42
    .line 43
    const v0, 0x3ecccccd    # 0.4f

    .line 44
    .line 45
    .line 46
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownY:F

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 52
    .line 53
    new-instance v0, Lcom/haima/hmcp/model/ArmMouseModel$1;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/model/ArmMouseModel$1;-><init>(Lcom/haima/hmcp/model/ArmMouseModel;Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/model/ArmMouseModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->showMouse()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/model/ArmMouseModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->hideMouse()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/model/ArmMouseModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->moveMouse()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clickFireButton(ILcom/haima/hmcp/beans/PointCoord;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "clickFireButton actionType"

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
    const-string v2, " coord==null? "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 40
    .line 41
    iget v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 42
    .line 43
    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 44
    .line 45
    invoke-direct {v0, v1, p2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method private getFireCoord()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->listener:Lcom/haima/hmcp/listeners/ArmMouseModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/ArmMouseModelListener;->onGetFireCoord()Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getFireCoord fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private hideMouse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setShowMouse(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private moveMouse()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mZ:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40400000    # 3.0f

    .line 8
    .line 9
    mul-float v0, v0, v1

    .line 10
    .line 11
    float-to-int v0, v0

    .line 12
    iget v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mRZ:F

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-float v2, v2, v1

    .line 19
    .line 20
    float-to-int v1, v2

    .line 21
    iget v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mZ:F

    .line 22
    .line 23
    float-to-double v3, v2

    .line 24
    const-wide v5, -0x4046666666666666L    # -0.1

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmpl-double v9, v3, v7

    .line 35
    .line 36
    if-lez v9, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 39
    .line 40
    const/16 v3, 0x16

    .line 41
    .line 42
    invoke-virtual {v2, v3, v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->dispatchKeyCodeToMouse(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    float-to-double v2, v2

    .line 47
    cmpg-double v4, v2, v5

    .line 48
    .line 49
    if-gez v4, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 52
    .line 53
    const/16 v3, 0x15

    .line 54
    .line 55
    invoke-virtual {v2, v3, v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->dispatchKeyCodeToMouse(II)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mRZ:F

    .line 59
    .line 60
    float-to-double v2, v0

    .line 61
    cmpl-double v4, v2, v7

    .line 62
    .line 63
    if-lez v4, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 66
    .line 67
    const/16 v2, 0x14

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->dispatchKeyCodeToMouse(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    float-to-double v2, v0

    .line 74
    cmpg-double v0, v2, v5

    .line 75
    .line 76
    if-gez v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 79
    .line 80
    const/16 v2, 0x13

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->dispatchKeyCodeToMouse(II)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    return-void
.end method

.method private sendInputDevice(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->listener:Lcom/haima/hmcp/listeners/ArmMouseModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/ArmMouseModelListener;->onInputDeviceSend(II)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "sendInputDevice fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private showMouse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setShowMouse(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private withinScope(FF)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    iget p2, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 4
    .line 5
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownX:F

    .line 6
    .line 7
    iget v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownRX:F

    .line 8
    .line 9
    sub-float v2, v0, v1

    .line 10
    .line 11
    cmpl-float v2, p2, v2

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    add-float/2addr v0, v1

    .line 16
    cmpg-float p2, p2, v0

    .line 17
    .line 18
    if-gez p2, :cond_0

    .line 19
    .line 20
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 21
    .line 22
    iget p2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownY:F

    .line 23
    .line 24
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownRY:F

    .line 25
    .line 26
    sub-float v1, p2, v0

    .line 27
    .line 28
    cmpl-float v1, p1, v1

    .line 29
    .line 30
    if-lez v1, :cond_0

    .line 31
    .line 32
    add-float/2addr p2, v0

    .line 33
    cmpg-float p1, p1, p2

    .line 34
    .line 35
    if-gez p1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method


# virtual methods
.method public clearFPoint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->clearFPoint()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clickSightBeadButton()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->upAndResetMouse()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->sendSceneUSBMouseMessage()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "clickSightbeadButton isListenHover "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public getMouseOperation()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 2
    .line 3
    return v0
.end method

.method public hideMouseEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->init(Landroid/view/ViewGroup;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->showMouseView()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->hideMouse()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Point;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->screenDisplay:Landroid/graphics/Point;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->screenDisplay:Landroid/graphics/Point;

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public isListenHover()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 2
    .line 3
    return v0
.end method

.method public onFirstFrameArrival()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 8
    .line 9
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 10
    .line 11
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 18
    .line 19
    .line 20
    iput v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->sendSceneUSBMouseMessage()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->upAndResetMouse()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2002

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-ne v0, v1, :cond_6

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->getFireCoord()Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x2

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v1, v4, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget p1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 36
    .line 37
    if-ne p1, v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "==sendEventContent = \u81ea\u5b9a\u4e49\u5f00\u706b\u952e down"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sget-object p1, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, "==sendEventContent = \u9f20\u6807\u5de6\u952e\u6620\u5c04\u5f00\u706b\u952e---down"

    .line 51
    .line 52
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3, v4}, Lcom/haima/hmcp/model/ArmMouseModel;->sendInputDevice(II)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v4, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->clickFireButton(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return v4

    .line 62
    :cond_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ne v1, v4, :cond_5

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget p1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 71
    .line 72
    if-ne p1, v2, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    sget-object p1, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    const-string v0, "==sendEventContent = \u81ea\u5b9a\u4e49\u5f00\u706b\u952e up"

    .line 78
    .line 79
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    :goto_2
    sget-object p1, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    const-string v1, "==sendEventContent = \u9f20\u6807\u5de6\u952e\u6620\u5c04\u5f00\u706b\u952e----up"

    .line 86
    .line 87
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v3, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->clickFireButton(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 91
    .line 92
    .line 93
    :goto_3
    return v4

    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-ne v0, v3, :cond_6

    .line 99
    .line 100
    invoke-direct {p0, v3, v4}, Lcom/haima/hmcp/model/ArmMouseModel;->sendInputDevice(II)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    const-string v1, "==processMouseMove = left mouse----down move"

    .line 106
    .line 107
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 v0, -0x1

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->processMouseMove(Landroid/view/MotionEvent;I)V

    .line 112
    .line 113
    .line 114
    return v4

    .line 115
    :cond_6
    const/4 p1, 0x0

    .line 116
    return p1
.end method

.method public processJoystickInput(FF)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mZ:F

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mRZ:F

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "processJoystickInput mRZ ---"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mZ:F

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", "

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mRZ:F

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mZ:F

    .line 40
    .line 41
    const/4 p2, 0x3

    .line 42
    const/4 v0, 0x0

    .line 43
    cmpl-float p1, p1, v0

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    iget p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mRZ:F

    .line 48
    .line 49
    cmpl-float p1, p1, v0

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseMoving:Z

    .line 55
    .line 56
    iget-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-boolean p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseMoving:Z

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseMoving:Z

    .line 68
    .line 69
    iget-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public processMouseMove(Landroid/view/MotionEvent;I)V
    .locals 12

    .line 3
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    if-eqz p2, :cond_1

    .line 6
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    iget v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    invoke-direct {v0, v1, p2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-virtual {p0, v2, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 7
    iput v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseX:F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseY:F

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 11
    invoke-static {p1, v0, v2, p2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result p1

    .line 12
    sget-object p2, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMouseMove event AXIS_X:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " AXIS_Y:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " last x: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseX:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " last y: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseY:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mAxisStatusMouse:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseX:F

    sub-float v0, v3, v0

    .line 14
    iget v4, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseY:F

    sub-float v4, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, " axisY:"

    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-nez v8, :cond_4

    cmpg-float v8, v3, v5

    if-gtz v8, :cond_3

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "left----------- axisX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "left----------- speed to left:"

    .line 16
    invoke-static {p2, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget v8, p0, Lcom/haima/hmcp/model/ArmMouseModel;->edgeSpeed:F

    neg-float v8, v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 18
    :goto_0
    iget-object v9, p0, Lcom/haima/hmcp/model/ArmMouseModel;->screenDisplay:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v2

    int-to-float v9, v9

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_5

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right----------- axisX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "right----------- speed to right:"

    .line 20
    invoke-static {p2, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget v8, p0, Lcom/haima/hmcp/model/ArmMouseModel;->edgeSpeed:F

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :cond_5
    :goto_1
    cmpl-float v9, v4, v7

    if-nez v9, :cond_7

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_6

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "top----------- axisX:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "top----------- speed to  top:"

    .line 23
    invoke-static {p2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget v5, p0, Lcom/haima/hmcp/model/ArmMouseModel;->edgeSpeed:F

    neg-float v5, v5

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    .line 25
    :goto_2
    iget-object v9, p0, Lcom/haima/hmcp/model/ArmMouseModel;->screenDisplay:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v2

    int-to-float v9, v9

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_8

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bottom----------- axisX:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "bottom----------- speed to  bottom:"

    .line 27
    invoke-static {p2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget v5, p0, Lcom/haima/hmcp/model/ArmMouseModel;->edgeSpeed:F

    neg-float v5, v5

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 29
    :cond_8
    :goto_3
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v11, "mode map:%.4f:%.4f"

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    goto/16 :goto_4

    .line 30
    :cond_9
    invoke-direct {p0, v3, p1}, Lcom/haima/hmcp/model/ArmMouseModel;->withinScope(FF)Z

    move-result v5

    if-nez v5, :cond_a

    .line 31
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->upAndResetMouse()V

    .line 32
    new-instance v5, Lcom/haima/hmcp/beans/FPoint;

    iget-object v6, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    iget v7, v6, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget v6, v6, Lcom/haima/hmcp/beans/PointCoord;->y:F

    invoke-direct {v5, v7, v6}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-virtual {p0, v2, v5}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 33
    iput v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    .line 34
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMouseMove event distance x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " distance y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v5, p0, Lcom/haima/hmcp/model/ArmMouseModel;->screenDisplay:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    iget v6, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouseResult:F

    mul-float v0, v0, v6

    .line 36
    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v4, v4, v6

    .line 37
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMouseMove event format:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    iget v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    add-float/2addr v1, v0

    iput v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 40
    iget v0, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    add-float/2addr v0, v4

    iput v0, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 41
    new-instance p2, Lcom/haima/hmcp/beans/FPoint;

    invoke-direct {p2, v1, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-virtual {p0, v9, p2}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 42
    iput v3, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseX:F

    .line 43
    iput p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseY:F

    return-void

    .line 44
    :cond_b
    :goto_4
    invoke-direct {p0, v3, p1}, Lcom/haima/hmcp/model/ArmMouseModel;->withinScope(FF)Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->upAndResetMouse()V

    .line 46
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    iget-object v4, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    iget v6, v4, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget v4, v4, Lcom/haima/hmcp/beans/PointCoord;->y:F

    invoke-direct {v0, v6, v4}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-virtual {p0, v2, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 47
    iput v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    .line 48
    :cond_c
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMouseMove event format edge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    iget v0, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouseResult:F

    mul-float v8, v8, v1

    add-float/2addr v0, v8

    iput v0, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 51
    iget v2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    mul-float v5, v5, v1

    add-float/2addr v2, v5

    iput v2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 52
    new-instance p2, Lcom/haima/hmcp/beans/FPoint;

    invoke-direct {p2, v0, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-virtual {p0, v9, p2}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 53
    iput v3, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseX:F

    .line 54
    iput p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mLastMouseY:F

    return-void
.end method

.method public processMouseMove(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x60

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->onclick(Landroid/view/View;Landroid/view/KeyEvent;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetDefaultPoint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mouseX:F

    .line 4
    .line 5
    iget v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mouseY:F

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setMousePoint(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public rotateMouseView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->getmMouseView()Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->rotateMouseView(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getSendMotionEventContent(ILcom/haima/hmcp/beans/FPoint;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "==sendEventContent = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->listener:Lcom/haima/hmcp/listeners/ArmMouseModelListener;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/ArmMouseModelListener;->onSendMotionEventContent(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public sendSceneUSBMouseMessage()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 7
    .line 8
    .line 9
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_usb_mouse_sensitivity:I

    .line 10
    .line 11
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouse:F

    .line 16
    .line 17
    float-to-double v2, v2

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 22
    .line 23
    .line 24
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_usb_mouse_operation_mode:I

    .line 25
    .line 26
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->getMouseOperation()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->listener:Lcom/haima/hmcp/listeners/ArmMouseModelListener;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lcom/haima/hmcp/business/ResourceManager;->getInstance()Lcom/haima/hmcp/business/ResourceManager;

    .line 42
    .line 43
    .line 44
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_usb_mouse_change:I

    .line 45
    .line 46
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v1, v2, v0}, Lcom/haima/hmcp/listeners/ArmMouseModelListener;->onSendSceneMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    return-void
.end method

.method public setInitMousePoint(FF)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-ltz v1, :cond_1

    .line 5
    .line 6
    cmpg-float v0, p2, v0

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpl-float v1, p1, v0

    .line 13
    .line 14
    if-gtz v1, :cond_1

    .line 15
    .line 16
    cmpl-float v0, p2, v0

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mouseX:F

    .line 22
    .line 23
    iput p2, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mouseY:F

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public setListener(Lcom/haima/hmcp/listeners/ArmMouseModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->listener:Lcom/haima/hmcp/listeners/ArmMouseModelListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMouseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "MouseBitmap"

    .line 4
    .line 5
    const-string v0, "param invalid"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setMouseBitmap(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public setMouseIcon(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setMouseIcon(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    :goto_0
    const-string p1, "MouseIcon"

    .line 22
    .line 23
    const-string p2, "param invalid"

    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setMouseMoveStep(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setMouseMoveStep(I)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "progress step:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    int-to-double v0, p1

    .line 33
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 34
    .line 35
    mul-double v0, v0, v2

    .line 36
    .line 37
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 38
    .line 39
    div-double/2addr v0, v2

    .line 40
    double-to-float p1, v0

    .line 41
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/model/ArmMouseModel;->setSensitivityMouse(F)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    return p1
.end method

.method public setMouseOffSet(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setMouseOffSet(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMouseOffSetRatio(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseManager:Lcom/haima/hmcp/device/input/manager/TcMouseManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->setMouseOffSetRatio(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSensitivityMouse(F)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_1

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouse:F

    .line 14
    .line 15
    const-wide v0, 0x3ff6666666666666L    # 1.4

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    float-to-double v2, p1

    .line 21
    mul-double v2, v2, v0

    .line 22
    .line 23
    const-wide v0, 0x3fc47ae147ae147bL    # 0.16

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    add-double/2addr v2, v0

    .line 29
    double-to-float p1, v2

    .line 30
    iput p1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouseResult:F

    .line 31
    .line 32
    sget-object p1, Lcom/haima/hmcp/model/ArmMouseModel;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "sensitivityMouseResult:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->sensitivityMouseResult:F

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public setUnlockMode()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/model/ArmMouseModel;->upAndResetMouse()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public showMouseEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public upAndResetMouse()V
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 6
    .line 7
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/model/ArmMouseModel;->sendMouseMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 17
    .line 18
    iget v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownX:F

    .line 19
    .line 20
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 21
    .line 22
    iget v1, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mMouseDownY:F

    .line 23
    .line 24
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/haima/hmcp/model/ArmMouseModel;->mAxisStatusMouse:I

    .line 28
    .line 29
    return-void
.end method
