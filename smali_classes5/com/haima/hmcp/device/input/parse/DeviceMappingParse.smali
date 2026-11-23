.class public Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CID_DATA:Ljava/lang/String; = "encryption"

.field public static final GAMEPAD_MODE_DPAD:I = 0x5

.field public static final GAMEPAD_MODE_MAP:I = 0x4

.field public static final GAMEPAD_MODE_MOUSE:I = 0x2

.field public static final GAMEPAD_MODE_NONE:I = 0x1

.field protected static final INPUT_STATUS_VIRTUAL_GAMEPAD_CONNECTED:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "DeviceMappingParse"

.field private static deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;


# instance fields
.field public final GAME_PAD_EVENT_ABS:Ljava/lang/String;

.field public final GAME_PAD_EVENT_TRACKBALL:Ljava/lang/String;

.field public final GAME_PAD_EVENT_TRACKBALR:Ljava/lang/String;

.field public buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

.field protected buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

.field private contents:Ljava/lang/String;

.field public currentKeyboardShow:Z

.field private deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

.field protected fnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected gamepadEventDetected:Z

.field protected mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

.field public mCurrentInputMode:I

.field protected mFnDown:Z

.field protected mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

.field protected mLastHatX:F

.field protected mLastHatY:F

.field protected mLastRZ:F

.field protected mLastX:F

.field protected mLastY:F

.field protected mLastZ:F

.field private mMetaInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

.field protected mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

.field protected mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

.field protected mTrackBallRightMove:Z

.field private mTrackBallTask:Lcom/haima/hmcp/device/input/timer/TrackBallTask;

.field protected mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end field

.field protected mappingVersion:Ljava/lang/String;

.field private morePointIsRun:Z

.field protected moveSpeed:F

.field protected moveThread:Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;

.field protected nativeDpadGame:Z

.field protected pointCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "gamePadTrackBallL"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->GAME_PAD_EVENT_TRACKBALL:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "gamePadTrackBallR"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->GAME_PAD_EVENT_TRACKBALR:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "gamePadABS"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->GAME_PAD_EVENT_ABS:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastX:F

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastY:F

    .line 20
    .line 21
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastZ:F

    .line 22
    .line 23
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastRZ:F

    .line 24
    .line 25
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastHatX:F

    .line 26
    .line 27
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastHatY:F

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->gamepadEventDetected:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mFnDown:Z

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    iput v2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 55
    .line 56
    iput-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 59
    .line 60
    new-instance v2, Lcom/haima/hmcp/beans/PointCoord;

    .line 61
    .line 62
    invoke-direct {v2}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 68
    .line 69
    const v1, 0x3d23d70a    # 0.04f

    .line 70
    .line 71
    .line 72
    iput v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveSpeed:F

    .line 73
    .line 74
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->pointCode:I

    .line 75
    .line 76
    new-instance v1, Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mMetaInfos:Ljava/util/HashMap;

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    .line 84
    .line 85
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 90
    .line 91
    return-void
.end method

.method public static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-gez p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    cmpl-float p1, p2, p1

    .line 31
    .line 32
    if-lez p1, :cond_1

    .line 33
    .line 34
    return p0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public static getInstance()Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 13
    .line 14
    return-object v0
.end method

.method private getMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x61

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x63

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x64

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    packed-switch p1, :pswitch_data_1

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonUp:Lcom/haima/hmcp/beans/PointCoord;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_2
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_3
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_4
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonR2:Lcom/haima/hmcp/beans/PointCoord;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_5
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonL2:Lcom/haima/hmcp/beans/PointCoord;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_6
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonR1:Lcom/haima/hmcp/beans/PointCoord;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_7
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonL1:Lcom/haima/hmcp/beans/PointCoord;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonY:Lcom/haima/hmcp/beans/PointCoord;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonX:Lcom/haima/hmcp/beans/PointCoord;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonB:Lcom/haima/hmcp/beans/PointCoord;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonA:Lcom/haima/hmcp/beans/PointCoord;

    .line 83
    .line 84
    :goto_0
    return-object p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :pswitch_data_1
    .packed-switch 0x3e2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==getMetaInfoByKey===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getMetaInfoByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMetaInfoByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==getMetaInfoByKey====key==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===value==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mMetaInfos:Ljava/util/HashMap;

    const-string v2, "value is null"

    const-string v3, "getMetaInfoByKey::key = "

    const-string v4, "bw_check_large_file_url"

    const-string v5, ""

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mMetaInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "==getMetaInfoByKey====mMetaInfos == null"

    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prompt_network_unavailable"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "revolveTime"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 12
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 14
    :cond_2
    :goto_1
    invoke-static {v5, p2}, Lcom/haima/hmcp/utils/StringUtils;->replaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==getMetaInfoByKey====tip==value="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private initButtonMappings(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->initButtonMappings(Ljava/lang/String;)Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getVersion()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingVersion:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getButtonMapping()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    const/16 v0, 0x3e7

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/haima/hmcp/beans/PointCoord;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    const/16 v0, 0x3e6

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/haima/hmcp/beans/PointCoord;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    const/16 v0, 0x3e1

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/haima/hmcp/beans/PointCoord;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 105
    .line 106
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 112
    .line 113
    cmpl-float p1, p1, v0

    .line 114
    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    sget-object p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 118
    .line 119
    const-string v1, "init mTrackBallL.rx"

    .line 120
    .line 121
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 125
    .line 126
    const v1, 0x3dcccccd    # 0.1f

    .line 127
    .line 128
    .line 129
    iput v1, p1, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 130
    .line 131
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 132
    .line 133
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 134
    .line 135
    cmpl-float p1, p1, v0

    .line 136
    .line 137
    if-nez p1, :cond_3

    .line 138
    .line 139
    sget-object p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 140
    .line 141
    const-string v1, "init mTrackBallL.ry"

    .line 142
    .line 143
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 147
    .line 148
    const v1, 0x3e3851ec    # 0.18f

    .line 149
    .line 150
    .line 151
    iput v1, p1, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 152
    .line 153
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 154
    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->sp:F

    .line 158
    .line 159
    cmpl-float v0, p1, v0

    .line 160
    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    const/4 p1, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 169
    .line 170
    iput p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveSpeed:F

    .line 171
    .line 172
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public MappingEventMapIsEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public cancelTimer(Lcom/haima/hmcp/widgets/CountDownTimer;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public cleanFnModeMapEvent(IZ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cleanFnModeMapEvent keycode:"

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
    const-string v2, " isfn"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->mapFnModeEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    div-int/lit16 v3, v2, 0x3e8

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    rem-int/lit16 v3, v2, 0x3e8

    .line 70
    .line 71
    :goto_1
    if-ne p1, v3, :cond_0

    .line 72
    .line 73
    if-nez p2, :cond_0

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/4 p2, 0x1

    .line 88
    if-ge p1, p2, :cond_3

    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 116
    .line 117
    iget-object v3, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    .line 118
    .line 119
    iget-object p2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    move-object v4, p2

    .line 130
    check-cast v4, Lcom/haima/hmcp/beans/PointCoord;

    .line 131
    .line 132
    const/4 v5, 0x2

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    return-void
.end method

.method public clearInstance()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceMappingParse:Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;

    .line 3
    .line 4
    return-void
.end method

.method public initMappingConfig(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mMetaInfos:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string p1, "key_map_content_tv"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->contents:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->initButtonMappings(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public isMorePointIsRun()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNativeDpadGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->nativeDpadGame:Z

    .line 2
    .line 3
    return v0
.end method

.method public mappingProcessDpad(FF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x2

    .line 9
    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    .line 10
    .line 11
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string p2, "mappingProcessDpad but mCurrentButtonMappings is null"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    float-to-double v7, p1

    .line 28
    const/4 p1, 0x0

    .line 29
    cmpl-double v9, v7, v5

    .line 30
    .line 31
    if-lez v9, :cond_1

    .line 32
    .line 33
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    cmpg-double v9, v7, v3

    .line 37
    .line 38
    if-gez v9, :cond_2

    .line 39
    .line 40
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v7, p1

    .line 44
    :goto_0
    float-to-double v8, p2

    .line 45
    cmpl-double p2, v8, v5

    .line 46
    .line 47
    if-lez p2, :cond_3

    .line 48
    .line 49
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    cmpg-double p2, v8, v3

    .line 53
    .line 54
    if-gez p2, :cond_4

    .line 55
    .line 56
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonUp:Lcom/haima/hmcp/beans/PointCoord;

    .line 57
    .line 58
    :cond_4
    :goto_1
    if-eqz v7, :cond_6

    .line 59
    .line 60
    iget-object p2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 61
    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 65
    .line 66
    invoke-virtual {v0, v2, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 70
    .line 71
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 72
    .line 73
    invoke-virtual {p1, v1, v7}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 74
    .line 75
    .line 76
    iput-object v7, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_6
    iget-object p2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 80
    .line 81
    if-eqz p2, :cond_e

    .line 82
    .line 83
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 84
    .line 85
    invoke-virtual {v0, v2, p2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_7
    float-to-double v7, p1

    .line 92
    const/4 p1, 0x0

    .line 93
    cmpl-double v0, v7, v5

    .line 94
    .line 95
    if-lez v0, :cond_8

    .line 96
    .line 97
    const/16 v0, 0x3e2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_8
    cmpg-double v0, v7, v3

    .line 101
    .line 102
    if-gez v0, :cond_9

    .line 103
    .line 104
    const/16 v0, 0x3e3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_9
    const/4 v0, 0x0

    .line 108
    :goto_2
    float-to-double v7, p2

    .line 109
    cmpl-double p2, v7, v5

    .line 110
    .line 111
    if-lez p2, :cond_a

    .line 112
    .line 113
    const/16 v0, 0x3e4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_a
    cmpg-double p2, v7, v3

    .line 117
    .line 118
    if-gez p2, :cond_b

    .line 119
    .line 120
    const/16 v0, 0x3e5

    .line 121
    .line 122
    :cond_b
    :goto_3
    if-eqz v0, :cond_d

    .line 123
    .line 124
    iget p2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->pointCode:I

    .line 125
    .line 126
    if-eqz p2, :cond_c

    .line 127
    .line 128
    invoke-virtual {p0, p2, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processKey2(II)V

    .line 129
    .line 130
    .line 131
    iput p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->pointCode:I

    .line 132
    .line 133
    :cond_c
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processKey2(II)V

    .line 134
    .line 135
    .line 136
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->pointCode:I

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_d
    iget p2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->pointCode:I

    .line 140
    .line 141
    if-eqz p2, :cond_e

    .line 142
    .line 143
    invoke-virtual {p0, p2, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processKey2(II)V

    .line 144
    .line 145
    .line 146
    iput p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->pointCode:I

    .line 147
    .line 148
    :cond_e
    :goto_4
    return-void
.end method

.method public mappingProcessKey(Landroid/view/KeyEvent;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onKeyDown -----------:mappingProcessKey  mappingVersion"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingVersion:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingVersion:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processKey(Landroid/view/KeyEvent;I)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processKey2(Landroid/view/KeyEvent;I)Z

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    invoke-static {v1, v3, v4, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/16 v6, 0xf

    .line 20
    .line 21
    invoke-static {v1, v3, v6, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/16 v7, 0xb

    .line 26
    .line 27
    invoke-static {v1, v3, v7, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/4 v8, 0x1

    .line 32
    invoke-static {v1, v3, v8, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    const/16 v10, 0x10

    .line 37
    .line 38
    invoke-static {v1, v3, v10, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    const/16 v11, 0xe

    .line 43
    .line 44
    invoke-static {v1, v3, v11, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentInputMode:I

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    const/4 v11, 0x2

    .line 52
    const/4 v12, 0x3

    .line 53
    const/4 v13, 0x0

    .line 54
    if-ne v2, v3, :cond_12

    .line 55
    .line 56
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    aput-object v14, v3, v4

    .line 65
    .line 66
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    aput-object v14, v3, v8

    .line 71
    .line 72
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    aput-object v14, v3, v11

    .line 77
    .line 78
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    aput-object v14, v3, v12

    .line 83
    .line 84
    const-string v14, "mode map:%.4f:%.4f:%.4f:%.4f"

    .line 85
    .line 86
    invoke-static {v2, v14, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    sget-object v3, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v14, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v15, "processJoystickInput: "

    .line 98
    .line 99
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    invoke-static {v3, v14}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v14, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 113
    .line 114
    if-eqz v14, :cond_6

    .line 115
    .line 116
    cmpl-float v15, v5, v13

    .line 117
    .line 118
    if-nez v15, :cond_1

    .line 119
    .line 120
    cmpl-float v15, v9, v13

    .line 121
    .line 122
    if-nez v15, :cond_1

    .line 123
    .line 124
    iget v2, v14, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 125
    .line 126
    if-ne v2, v8, :cond_6

    .line 127
    .line 128
    iput v11, v14, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 129
    .line 130
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 131
    .line 132
    invoke-virtual {v2, v12, v14}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 133
    .line 134
    .line 135
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallTask:Lcom/haima/hmcp/device/input/timer/TrackBallTask;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->cancelTimer(Lcom/haima/hmcp/widgets/CountDownTimer;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Lcom/haima/hmcp/device/input/timer/TrackBallTask;

    .line 141
    .line 142
    sget v5, Lcom/haima/hmcp/Constants;->TRACK_BALL_TASK_TIMER:I

    .line 143
    .line 144
    int-to-long v14, v5

    .line 145
    int-to-long v11, v5

    .line 146
    iget-object v5, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 147
    .line 148
    iget-object v9, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 149
    .line 150
    move-wide v15, v14

    .line 151
    move-object v14, v2

    .line 152
    move-wide/from16 v17, v11

    .line 153
    .line 154
    move-object/from16 v19, v5

    .line 155
    .line 156
    move-object/from16 v20, v9

    .line 157
    .line 158
    invoke-direct/range {v14 .. v20}, Lcom/haima/hmcp/device/input/timer/TrackBallTask;-><init>(JJLcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;)V

    .line 159
    .line 160
    .line 161
    iput-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallTask:Lcom/haima/hmcp/device/input/timer/TrackBallTask;

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_1
    iget v11, v14, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 169
    .line 170
    if-eq v11, v8, :cond_4

    .line 171
    .line 172
    new-instance v11, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v12, "mAxisStatus == ACTION_DOWN_TYPE: "

    .line 178
    .line 179
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const-string v11, "ButtonMapp"

    .line 190
    .line 191
    invoke-static {v11, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v5, v9}, Lcom/haima/hmcp/utils/TrackBallUtil;->distencePC(FF)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_2

    .line 199
    .line 200
    invoke-static {v5, v9}, Lcom/haima/hmcp/utils/TrackBallUtil;->getPCdistence(FF)[Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    aget-object v5, v2, v4

    .line 205
    .line 206
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    aget-object v2, v2, v8

    .line 211
    .line 212
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    :cond_2
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    sget-object v11, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 223
    .line 224
    if-ne v2, v11, :cond_3

    .line 225
    .line 226
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 227
    .line 228
    new-instance v11, Lcom/haima/hmcp/beans/FPoint;

    .line 229
    .line 230
    iget-object v12, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 231
    .line 232
    iget v14, v12, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 233
    .line 234
    iget v15, v12, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 235
    .line 236
    mul-float v15, v15, v9

    .line 237
    .line 238
    add-float/2addr v14, v15

    .line 239
    iget v9, v12, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 240
    .line 241
    iget v12, v12, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 242
    .line 243
    mul-float v12, v12, v5

    .line 244
    .line 245
    sub-float/2addr v9, v12

    .line 246
    invoke-direct {v11, v14, v9}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 247
    .line 248
    .line 249
    const/4 v5, 0x3

    .line 250
    invoke-virtual {v2, v5, v11}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_3
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 255
    .line 256
    new-instance v11, Lcom/haima/hmcp/beans/FPoint;

    .line 257
    .line 258
    iget-object v12, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 259
    .line 260
    iget v14, v12, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 261
    .line 262
    iget v15, v12, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 263
    .line 264
    mul-float v15, v15, v5

    .line 265
    .line 266
    add-float/2addr v14, v15

    .line 267
    iget v5, v12, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 268
    .line 269
    iget v12, v12, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 270
    .line 271
    mul-float v12, v12, v9

    .line 272
    .line 273
    add-float/2addr v5, v12

    .line 274
    invoke-direct {v11, v14, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 275
    .line 276
    .line 277
    const/4 v5, 0x3

    .line 278
    invoke-virtual {v2, v5, v11}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :cond_4
    invoke-static {v5, v9}, Lcom/haima/hmcp/utils/TrackBallUtil;->distencePC(FF)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eqz v2, :cond_5

    .line 287
    .line 288
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 289
    .line 290
    new-instance v11, Lcom/haima/hmcp/beans/FPoint;

    .line 291
    .line 292
    iget-object v12, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 293
    .line 294
    iget v14, v12, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 295
    .line 296
    iget v15, v12, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 297
    .line 298
    mul-float v15, v15, v5

    .line 299
    .line 300
    add-float/2addr v14, v15

    .line 301
    iget v5, v12, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 302
    .line 303
    iget v12, v12, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 304
    .line 305
    mul-float v12, v12, v9

    .line 306
    .line 307
    add-float/2addr v5, v12

    .line 308
    invoke-direct {v11, v14, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 309
    .line 310
    .line 311
    const/4 v5, 0x3

    .line 312
    invoke-virtual {v2, v5, v11}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 313
    .line 314
    .line 315
    goto :goto_0

    .line 316
    :cond_5
    invoke-static {v5, v9}, Lcom/haima/hmcp/utils/TrackBallUtil;->getPCdistence(FF)[Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    aget-object v5, v2, v4

    .line 321
    .line 322
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    aget-object v2, v2, v8

    .line 327
    .line 328
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    iget-object v9, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 333
    .line 334
    new-instance v11, Lcom/haima/hmcp/beans/FPoint;

    .line 335
    .line 336
    iget-object v12, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 337
    .line 338
    iget v14, v12, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 339
    .line 340
    iget v15, v12, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 341
    .line 342
    mul-float v15, v15, v5

    .line 343
    .line 344
    add-float/2addr v14, v15

    .line 345
    iget v5, v12, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 346
    .line 347
    iget v12, v12, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 348
    .line 349
    mul-float v12, v12, v2

    .line 350
    .line 351
    add-float/2addr v5, v12

    .line 352
    invoke-direct {v11, v14, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 353
    .line 354
    .line 355
    const/4 v2, 0x3

    .line 356
    invoke-virtual {v9, v2, v11}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 357
    .line 358
    .line 359
    :cond_6
    :goto_0
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 360
    .line 361
    if-eqz v2, :cond_e

    .line 362
    .line 363
    cmpl-float v5, v7, v13

    .line 364
    .line 365
    if-nez v5, :cond_8

    .line 366
    .line 367
    cmpl-float v5, v1, v13

    .line 368
    .line 369
    if-nez v5, :cond_8

    .line 370
    .line 371
    iget v3, v2, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 372
    .line 373
    if-ne v3, v8, :cond_e

    .line 374
    .line 375
    const/4 v3, 0x2

    .line 376
    iput v3, v2, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 377
    .line 378
    iget-boolean v5, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 379
    .line 380
    if-eqz v5, :cond_7

    .line 381
    .line 382
    invoke-virtual {v0, v4, v7, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->sendTrackBallRMove(ZFF)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :cond_7
    iget-object v5, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 388
    .line 389
    const/4 v9, 0x3

    .line 390
    invoke-virtual {v5, v9, v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 391
    .line 392
    .line 393
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 394
    .line 395
    iget-object v5, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 396
    .line 397
    invoke-virtual {v2, v3, v5}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 398
    .line 399
    .line 400
    iget-object v14, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 401
    .line 402
    iget-object v15, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 403
    .line 404
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 405
    .line 406
    const/16 v17, 0x2

    .line 407
    .line 408
    const/16 v18, 0x0

    .line 409
    .line 410
    const/16 v19, 0x0

    .line 411
    .line 412
    move-object/from16 v16, v2

    .line 413
    .line 414
    move-object/from16 v20, v2

    .line 415
    .line 416
    invoke-virtual/range {v14 .. v20}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :cond_8
    iget v5, v2, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 422
    .line 423
    if-eq v5, v8, :cond_a

    .line 424
    .line 425
    iput v8, v2, Lcom/haima/hmcp/beans/PointCoord;->actionType:I

    .line 426
    .line 427
    iget-boolean v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 428
    .line 429
    if-nez v3, :cond_9

    .line 430
    .line 431
    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 432
    .line 433
    invoke-virtual {v3, v8, v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 434
    .line 435
    .line 436
    iget-object v14, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 437
    .line 438
    iget-object v15, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 439
    .line 440
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 441
    .line 442
    const/16 v17, 0x1

    .line 443
    .line 444
    const/16 v18, 0x0

    .line 445
    .line 446
    const/16 v19, 0x0

    .line 447
    .line 448
    move-object/from16 v16, v2

    .line 449
    .line 450
    move-object/from16 v20, v2

    .line 451
    .line 452
    invoke-virtual/range {v14 .. v20}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 453
    .line 454
    .line 455
    goto :goto_1

    .line 456
    :cond_9
    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 457
    .line 458
    invoke-virtual {v3, v8, v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v8, v7, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->sendTrackBallRMove(ZFF)V

    .line 462
    .line 463
    .line 464
    iget-object v14, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 465
    .line 466
    iget-object v15, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 467
    .line 468
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 469
    .line 470
    const/16 v17, 0x1

    .line 471
    .line 472
    const/16 v18, 0x0

    .line 473
    .line 474
    const/16 v19, 0x0

    .line 475
    .line 476
    move-object/from16 v16, v2

    .line 477
    .line 478
    move-object/from16 v20, v2

    .line 479
    .line 480
    invoke-virtual/range {v14 .. v20}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 481
    .line 482
    .line 483
    goto :goto_1

    .line 484
    :cond_a
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 485
    .line 486
    const v5, 0x3e3851ec    # 0.18f

    .line 487
    .line 488
    .line 489
    cmpl-float v2, v2, v13

    .line 490
    .line 491
    if-nez v2, :cond_b

    .line 492
    .line 493
    const-string v2, "init mTrackBallR.rx"

    .line 494
    .line 495
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 499
    .line 500
    iput v5, v2, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 501
    .line 502
    :cond_b
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 503
    .line 504
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 505
    .line 506
    cmpl-float v2, v2, v13

    .line 507
    .line 508
    if-nez v2, :cond_c

    .line 509
    .line 510
    const-string v2, "init mTrackBallR.ry"

    .line 511
    .line 512
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 516
    .line 517
    iput v5, v2, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 518
    .line 519
    :cond_c
    iget-boolean v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 520
    .line 521
    if-eqz v2, :cond_d

    .line 522
    .line 523
    invoke-virtual {v0, v8, v7, v1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->sendTrackBallRMove(ZFF)V

    .line 524
    .line 525
    .line 526
    goto :goto_1

    .line 527
    :cond_d
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 528
    .line 529
    new-instance v3, Lcom/haima/hmcp/beans/FPoint;

    .line 530
    .line 531
    iget-object v5, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 532
    .line 533
    iget v9, v5, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 534
    .line 535
    iget v11, v5, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 536
    .line 537
    mul-float v11, v11, v7

    .line 538
    .line 539
    add-float/2addr v9, v11

    .line 540
    iget v11, v5, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 541
    .line 542
    iget v5, v5, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 543
    .line 544
    mul-float v5, v5, v1

    .line 545
    .line 546
    add-float/2addr v11, v5

    .line 547
    invoke-direct {v3, v9, v11}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 548
    .line 549
    .line 550
    const/4 v5, 0x3

    .line 551
    invoke-virtual {v2, v5, v3}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 552
    .line 553
    .line 554
    :cond_e
    :goto_1
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    .line 555
    .line 556
    if-eqz v2, :cond_11

    .line 557
    .line 558
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 559
    .line 560
    if-eqz v2, :cond_11

    .line 561
    .line 562
    cmpl-float v2, v1, v13

    .line 563
    .line 564
    if-nez v2, :cond_f

    .line 565
    .line 566
    cmpl-float v2, v7, v13

    .line 567
    .line 568
    if-nez v2, :cond_f

    .line 569
    .line 570
    goto :goto_3

    .line 571
    :cond_f
    invoke-static {v7, v1}, Lcom/haima/hmcp/utils/TrackBallUtil;->distencePC(FF)Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v2, :cond_10

    .line 576
    .line 577
    goto :goto_2

    .line 578
    :cond_10
    invoke-static {v7, v1}, Lcom/haima/hmcp/utils/TrackBallUtil;->getPCdistence(FF)[Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    aget-object v2, v1, v4

    .line 583
    .line 584
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 585
    .line 586
    .line 587
    move-result v7

    .line 588
    aget-object v1, v1, v8

    .line 589
    .line 590
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    :goto_2
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    .line 595
    .line 596
    iget v3, v2, Lcom/haima/hmcp/beans/PointCoord;->oX:F

    .line 597
    .line 598
    const v4, 0x3d75c28f    # 0.06f

    .line 599
    .line 600
    .line 601
    mul-float v7, v7, v4

    .line 602
    .line 603
    add-float/2addr v3, v7

    .line 604
    iput v3, v2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 605
    .line 606
    iget v4, v2, Lcom/haima/hmcp/beans/PointCoord;->oY:F

    .line 607
    .line 608
    const v5, 0x3de147ae    # 0.11f

    .line 609
    .line 610
    .line 611
    mul-float v1, v1, v5

    .line 612
    .line 613
    add-float/2addr v4, v1

    .line 614
    iput v4, v2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 615
    .line 616
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 617
    .line 618
    new-instance v2, Lcom/haima/hmcp/beans/FPoint;

    .line 619
    .line 620
    invoke-direct {v2, v3, v4}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 621
    .line 622
    .line 623
    const/4 v3, 0x3

    .line 624
    invoke-virtual {v1, v3, v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 625
    .line 626
    .line 627
    :cond_11
    :goto_3
    invoke-virtual {v0, v6, v10}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingProcessDpad(FF)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_9

    .line 631
    .line 632
    :cond_12
    if-ne v2, v8, :cond_1f

    .line 633
    .line 634
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 635
    .line 636
    invoke-virtual {v2}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getSendWebSocket()Lcom/haima/hmcp/business/IWebSocket;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    if-eqz v2, :cond_1f

    .line 641
    .line 642
    iget v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastX:F

    .line 643
    .line 644
    cmpl-float v2, v2, v5

    .line 645
    .line 646
    if-eqz v2, :cond_13

    .line 647
    .line 648
    iput v5, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastX:F

    .line 649
    .line 650
    const/4 v2, 0x1

    .line 651
    goto :goto_4

    .line 652
    :cond_13
    const/4 v2, 0x0

    .line 653
    :goto_4
    iget v11, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastY:F

    .line 654
    .line 655
    cmpl-float v11, v11, v9

    .line 656
    .line 657
    if-eqz v11, :cond_14

    .line 658
    .line 659
    iput v9, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastY:F

    .line 660
    .line 661
    const/4 v2, 0x1

    .line 662
    :cond_14
    iget v11, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastZ:F

    .line 663
    .line 664
    cmpl-float v11, v11, v7

    .line 665
    .line 666
    if-eqz v11, :cond_15

    .line 667
    .line 668
    iput v7, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastZ:F

    .line 669
    .line 670
    const/4 v11, 0x1

    .line 671
    goto :goto_5

    .line 672
    :cond_15
    const/4 v11, 0x0

    .line 673
    :goto_5
    iget v12, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastRZ:F

    .line 674
    .line 675
    cmpl-float v12, v12, v1

    .line 676
    .line 677
    if-eqz v12, :cond_16

    .line 678
    .line 679
    iput v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastRZ:F

    .line 680
    .line 681
    const/4 v11, 0x1

    .line 682
    :cond_16
    if-nez v2, :cond_17

    .line 683
    .line 684
    if-eqz v11, :cond_1b

    .line 685
    .line 686
    :cond_17
    iget-object v12, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 687
    .line 688
    invoke-virtual {v12, v5, v9, v7, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendGamePadMoveEvent(FFFF)V

    .line 689
    .line 690
    .line 691
    const-string v12, "gamePadTrackBallL"

    .line 692
    .line 693
    const-string v14, "gamePad:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f"

    .line 694
    .line 695
    if-eqz v2, :cond_18

    .line 696
    .line 697
    cmpl-float v15, v5, v13

    .line 698
    .line 699
    if-nez v15, :cond_18

    .line 700
    .line 701
    cmpl-float v15, v9, v13

    .line 702
    .line 703
    if-nez v15, :cond_18

    .line 704
    .line 705
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 706
    .line 707
    iget-object v2, v2, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 708
    .line 709
    invoke-virtual {v2, v12}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    goto :goto_6

    .line 713
    :cond_18
    if-eqz v2, :cond_19

    .line 714
    .line 715
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 716
    .line 717
    new-array v15, v3, [Ljava/lang/Object;

    .line 718
    .line 719
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 720
    .line 721
    .line 722
    move-result-object v16

    .line 723
    aput-object v16, v15, v4

    .line 724
    .line 725
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 726
    .line 727
    .line 728
    move-result-object v16

    .line 729
    aput-object v16, v15, v8

    .line 730
    .line 731
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 732
    .line 733
    .line 734
    move-result-object v16

    .line 735
    const/16 v17, 0x2

    .line 736
    .line 737
    aput-object v16, v15, v17

    .line 738
    .line 739
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 740
    .line 741
    .line 742
    move-result-object v16

    .line 743
    const/16 v17, 0x3

    .line 744
    .line 745
    aput-object v16, v15, v17

    .line 746
    .line 747
    invoke-static {v2, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    iget-object v15, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 752
    .line 753
    iget-object v15, v15, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 754
    .line 755
    invoke-virtual {v15, v12, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    :cond_19
    :goto_6
    const-string v2, "gamePadTrackBallR"

    .line 759
    .line 760
    if-eqz v11, :cond_1a

    .line 761
    .line 762
    cmpl-float v7, v7, v13

    .line 763
    .line 764
    if-nez v7, :cond_1a

    .line 765
    .line 766
    cmpl-float v1, v1, v13

    .line 767
    .line 768
    if-nez v1, :cond_1a

    .line 769
    .line 770
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 771
    .line 772
    iget-object v1, v1, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 773
    .line 774
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    goto :goto_7

    .line 778
    :cond_1a
    if-eqz v11, :cond_1b

    .line 779
    .line 780
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 781
    .line 782
    new-array v3, v3, [Ljava/lang/Object;

    .line 783
    .line 784
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    aput-object v5, v3, v4

    .line 789
    .line 790
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    aput-object v5, v3, v8

    .line 795
    .line 796
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    const/4 v7, 0x2

    .line 801
    aput-object v5, v3, v7

    .line 802
    .line 803
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 804
    .line 805
    .line 806
    move-result-object v5

    .line 807
    const/4 v7, 0x3

    .line 808
    aput-object v5, v3, v7

    .line 809
    .line 810
    invoke-static {v1, v14, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 815
    .line 816
    iget-object v3, v3, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 817
    .line 818
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    :cond_1b
    :goto_7
    iget v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastHatX:F

    .line 822
    .line 823
    cmpl-float v1, v1, v6

    .line 824
    .line 825
    if-eqz v1, :cond_1c

    .line 826
    .line 827
    iput v6, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastHatX:F

    .line 828
    .line 829
    const/4 v4, 0x1

    .line 830
    :cond_1c
    iget v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastHatY:F

    .line 831
    .line 832
    cmpl-float v1, v1, v10

    .line 833
    .line 834
    if-eqz v1, :cond_1d

    .line 835
    .line 836
    iput v10, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mLastHatY:F

    .line 837
    .line 838
    goto :goto_8

    .line 839
    :cond_1d
    move v8, v4

    .line 840
    :goto_8
    if-eqz v8, :cond_1f

    .line 841
    .line 842
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 843
    .line 844
    invoke-virtual {v1, v6, v10}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendGamePadHatEvent(FF)V

    .line 845
    .line 846
    .line 847
    const-string v1, "gamePadABS"

    .line 848
    .line 849
    cmpl-float v2, v10, v13

    .line 850
    .line 851
    if-nez v2, :cond_1e

    .line 852
    .line 853
    cmpl-float v2, v6, v13

    .line 854
    .line 855
    if-nez v2, :cond_1e

    .line 856
    .line 857
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 858
    .line 859
    iget-object v2, v2, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 860
    .line 861
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    goto :goto_9

    .line 865
    :cond_1e
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 866
    .line 867
    iget-object v2, v2, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 868
    .line 869
    const-string v3, ""

    .line 870
    .line 871
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    :cond_1f
    :goto_9
    return-void
.end method

.method public processKey(Landroid/view/KeyEvent;I)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 19
    .line 20
    iget v0, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonFn:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    if-ne p2, v2, :cond_1

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mFnDown:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mFnDown:Z

    .line 31
    .line 32
    :goto_0
    return v2

    .line 33
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->getMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    return v1

    .line 40
    :cond_3
    iget-object v3, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 41
    .line 42
    if-nez v3, :cond_5

    .line 43
    .line 44
    if-ne p2, v2, :cond_4

    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    .line 47
    .line 48
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 49
    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    iget v2, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 53
    .line 54
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->oX:F

    .line 55
    .line 56
    iget v3, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 57
    .line 58
    iput v3, v1, Lcom/haima/hmcp/beans/PointCoord;->oY:F

    .line 59
    .line 60
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 61
    .line 62
    iput v3, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 63
    .line 64
    iput p1, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 v3, 0x2

    .line 68
    if-ne p2, v3, :cond_5

    .line 69
    .line 70
    iget-object v3, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    .line 71
    .line 72
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 73
    .line 74
    if-ne v4, p1, :cond_5

    .line 75
    .line 76
    iput v1, v3, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 77
    .line 78
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 79
    .line 80
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 81
    .line 82
    iget v1, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 83
    .line 84
    iget v3, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 85
    .line 86
    invoke-direct {v0, v1, v3}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 93
    .line 94
    iget-object v5, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 95
    .line 96
    iget-object v6, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    .line 99
    .line 100
    iget v8, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 101
    .line 102
    iget v9, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    move v7, p2

    .line 106
    invoke-virtual/range {v4 .. v10}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 111
    .line 112
    invoke-virtual {p1, p2, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    iget-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 123
    .line 124
    iget v5, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 125
    .line 126
    iget v6, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    move v4, p2

    .line 130
    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->cacheModeMapEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    return p1

    .line 134
    :cond_7
    :goto_2
    return v1
.end method

.method public processKey2(II)V
    .locals 1

    .line 30
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 31
    invoke-virtual {p0, v0, p2}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->processKey2(Landroid/view/KeyEvent;I)Z

    return-void
.end method

.method public processKey2(Landroid/view/KeyEvent;I)Z
    .locals 14

    move-object v0, p0

    move/from16 v8, p2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->MappingEventMapIsEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/haima/hmcp/beans/PointCoord;

    if-nez v5, :cond_1

    return v9

    .line 4
    :cond_1
    iget-boolean v1, v5, Lcom/haima/hmcp/beans/PointCoord;->isFn:Z

    const/4 v11, 0x1

    if-eqz v1, :cond_5

    if-ne v8, v11, :cond_2

    .line 5
    iput-boolean v11, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mFnDown:Z

    .line 6
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 8
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_3

    .line 9
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v10, v11}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->cleanFnModeMapEvent(IZ)V

    .line 11
    :cond_3
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iput-boolean v9, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mFnDown:Z

    :cond_4
    :goto_0
    return v9

    :cond_5
    if-ne v8, v11, :cond_c

    .line 13
    iget-boolean v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mFnDown:Z

    if-eqz v1, :cond_a

    .line 14
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v12, v1

    const/4 v1, 0x0

    :goto_1
    if-lez v12, :cond_9

    .line 15
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->fnList:Ljava/util/ArrayList;

    add-int/lit8 v3, v12, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int v7, v2, v10

    .line 16
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/haima/hmcp/beans/PointCoord;

    if-eqz v13, :cond_6

    .line 18
    iget-object v2, v13, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-boolean v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    if-nez v2, :cond_6

    .line 19
    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v4, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    invoke-virtual {v2, v3, v4, v13, v8}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;I)V

    goto :goto_2

    .line 20
    :cond_6
    iget-boolean v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    if-nez v2, :cond_7

    .line 21
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v4, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    move-object v5, v13

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;II)Z

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    move-object v5, v13

    :cond_8
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_9
    if-nez v1, :cond_d

    .line 22
    iget-boolean v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    if-nez v1, :cond_d

    .line 23
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v4, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    move/from16 v6, p2

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;II)Z

    goto :goto_4

    .line 24
    :cond_a
    iget-object v1, v5, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    iget-boolean v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    if-nez v1, :cond_b

    .line 25
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    invoke-virtual {v1, v2, v3, v5, v8}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;I)V

    goto :goto_4

    .line 26
    :cond_b
    iget-boolean v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    if-nez v1, :cond_d

    .line 27
    iget-object v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    iget-object v2, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v3, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    iget-object v4, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightFn:Lcom/haima/hmcp/beans/PointCoord;

    iget v7, v5, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/PointCoord;II)Z

    goto :goto_4

    .line 28
    :cond_c
    iget-boolean v1, v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    if-nez v1, :cond_d

    .line 29
    invoke-virtual {p0, v10, v9}, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->cleanFnModeMapEvent(IZ)V

    :cond_d
    :goto_4
    return v9
.end method

.method public sendTrackBallRMove(ZFF)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveThread:Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 10
    .line 11
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 12
    .line 13
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    .line 16
    .line 17
    iget v3, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveSpeed:F

    .line 18
    .line 19
    invoke-direct {p1, v1, v0, v2, v3}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;-><init>(FFZF)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveThread:Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;

    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->setMoveSp(FF)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveThread:Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->setMoveSp(FF)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveThread:Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->setIsSend(Z)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveThread:Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;

    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/haima/hmcp/beans/ButtonMappings;->trackBallL:Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->trackBallR:Lcom/haima/hmcp/beans/PointCoord;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 21
    .line 22
    cmpl-float v0, v0, p1

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "init mTrackBallL.rx"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 34
    .line 35
    const v1, 0x3dcccccd    # 0.1f

    .line 36
    .line 37
    .line 38
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 41
    .line 42
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 43
    .line 44
    cmpl-float v0, v0, p1

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    sget-object v0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v1, "init mTrackBallL.ry"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 56
    .line 57
    const v1, 0x3e3851ec    # 0.18f

    .line 58
    .line 59
    .line 60
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->sp:F

    .line 67
    .line 68
    cmpl-float p1, v0, p1

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->mTrackBallRightMove:Z

    .line 78
    .line 79
    iput v0, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->moveSpeed:F

    .line 80
    .line 81
    :cond_3
    :goto_0
    return-void
.end method

.method public setMorePointIsRun(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/parse/DeviceMappingParse;->morePointIsRun:Z

    .line 2
    .line 3
    return-void
.end method
