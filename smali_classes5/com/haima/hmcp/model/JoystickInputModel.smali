.class public Lcom/haima/hmcp/model/JoystickInputModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;,
        Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;,
        Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;
    }
.end annotation


# static fields
.field public static final GAME_PAD_EVENT_ABS:Ljava/lang/String; = "gamePadABS"

.field private static final TAG:Ljava/lang/String; = "JoystickInputModel"


# instance fields
.field public final GAME_PAD_EVENT_TRACKBALL:Ljava/lang/String;

.field public final GAME_PAD_EVENT_TRACKBALR:Ljava/lang/String;

.field private downIsDown:Z

.field private eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

.field private leftIsDown:Z

.field private listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

.field private mAxisStatus:I

.field private mAxisStatusR:I

.field private mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

.field protected mLastHatX:F

.field protected mLastHatY:F

.field private mLastRZ:F

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mMouseMoving:Z

.field private mTrackBallTask:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;

.field private moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

.field private pointCode:I

.field private rightIsDown:Z

.field private upIsDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "gamePadTrackBallL"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->GAME_PAD_EVENT_TRACKBALL:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "gamePadTrackBallR"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->GAME_PAD_EVENT_TRACKBALR:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatus:I

    .line 17
    .line 18
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatusR:I

    .line 19
    .line 20
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->pointCode:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastX:F

    .line 24
    .line 25
    iput v1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastY:F

    .line 26
    .line 27
    iput v1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastZ:F

    .line 28
    .line 29
    iput v1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastRZ:F

    .line 30
    .line 31
    iput v1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    .line 32
    .line 33
    iput v1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->rightIsDown:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->leftIsDown:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->upIsDown:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->downIsDown:Z

    .line 42
    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/model/JoystickInputModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->putMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/model/JoystickInputModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/JoystickInputModel;->removeMapModeEvent(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/model/JoystickInputModel;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getMoveSpeed()F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/model/JoystickInputModel;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->isMorePointIsRun()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/model/JoystickInputModel;ILcom/haima/hmcp/beans/FPoint;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/model/JoystickInputModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatus:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/haima/hmcp/model/JoystickInputModel;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatus:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/haima/hmcp/model/JoystickInputModel;)Lcom/haima/hmcp/beans/PointCoord;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/model/JoystickInputModel;ILcom/haima/hmcp/beans/PointCoord;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/model/JoystickInputModel;IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/model/JoystickInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onCacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "cacheModeMapEvent fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private checkRange(F)F
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "sendGamepadKeyEvent checkRange value:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/high16 v1, -0x40800000    # -1.0f

    .line 30
    .line 31
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "sendGamepadKeyEvent result value:"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return p1
.end method

.method private gamePadModeDpadEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onGamePadModeDpadEvent(Landroid/view/KeyEvent;I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "mappingProcessKey fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private getActionType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method private getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/haima/hmcp/utils/MotionEventUtil;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private getCurrentButtonMappings()Lcom/haima/hmcp/beans/ButtonMappings;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "getCurrentButtonMappings fail, eventMappingModel is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getCurrentButtonMapping()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getGamePadNumInBattle fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method private getInputType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onInputType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "setInputMode fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method private getMappingVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "getMappingVersion fail, eventMappingModel is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingVersion()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private getMoveSpeed()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onMoveSpeed()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getMoveSpeed fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x3d23d70a    # 0.04f

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method private getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getScreenOrientation fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 18
    .line 19
    return-object v0
.end method

.method private getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "getTrackBallL fail, eventMappingModel is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "getTrackBallR fail, eventMappingModel is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private getTrackBallRMove()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onTrackBallRMove()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getTrackBallRMove fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private getTrackBallRZ()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onTrackBallRZ()Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getTrackBallRZ fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method private isInputType(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private isMorePointIsRun()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onMorePointIsRun()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "isMorePointIsRun fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private mappingProcessDpad(FF)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getMappingVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    .line 12
    .line 13
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 14
    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getCurrentButtonMappings()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p2, "mappingProcessDpad but mCurrentButtonMappings is null"

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    float-to-double v7, p1

    .line 32
    const/4 p1, 0x0

    .line 33
    cmpl-double v9, v7, v5

    .line 34
    .line 35
    if-lez v9, :cond_1

    .line 36
    .line 37
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    cmpg-double v9, v7, v3

    .line 41
    .line 42
    if-gez v9, :cond_2

    .line 43
    .line 44
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v7, p1

    .line 48
    :goto_0
    float-to-double v8, p2

    .line 49
    cmpl-double p2, v8, v5

    .line 50
    .line 51
    if-lez p2, :cond_3

    .line 52
    .line 53
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    cmpg-double p2, v8, v3

    .line 57
    .line 58
    if-gez p2, :cond_4

    .line 59
    .line 60
    iget-object v7, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonUp:Lcom/haima/hmcp/beans/PointCoord;

    .line 61
    .line 62
    :cond_4
    :goto_1
    if-eqz v7, :cond_6

    .line 63
    .line 64
    iget-object p2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 65
    .line 66
    if-eqz p2, :cond_5

    .line 67
    .line 68
    invoke-direct {p0, v2, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 72
    .line 73
    :cond_5
    invoke-direct {p0, v1, v7}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 74
    .line 75
    .line 76
    iput-object v7, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_6
    iget-object p2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 80
    .line 81
    if-eqz p2, :cond_e

    .line 82
    .line 83
    invoke-direct {p0, v2, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mHatCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_7
    float-to-double v7, p1

    .line 90
    const/4 p1, 0x0

    .line 91
    cmpl-double v0, v7, v5

    .line 92
    .line 93
    if-lez v0, :cond_8

    .line 94
    .line 95
    const/16 v0, 0x3e2

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_8
    cmpg-double v0, v7, v3

    .line 99
    .line 100
    if-gez v0, :cond_9

    .line 101
    .line 102
    const/16 v0, 0x3e3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_9
    const/4 v0, 0x0

    .line 106
    :goto_2
    float-to-double v7, p2

    .line 107
    cmpl-double p2, v7, v5

    .line 108
    .line 109
    if-lez p2, :cond_a

    .line 110
    .line 111
    const/16 v0, 0x3e4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_a
    cmpg-double p2, v7, v3

    .line 115
    .line 116
    if-gez p2, :cond_b

    .line 117
    .line 118
    const/16 v0, 0x3e5

    .line 119
    .line 120
    :cond_b
    :goto_3
    if-eqz v0, :cond_d

    .line 121
    .line 122
    iget p2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->pointCode:I

    .line 123
    .line 124
    if-eqz p2, :cond_c

    .line 125
    .line 126
    invoke-direct {p0, p2, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->processKey2(II)Z

    .line 127
    .line 128
    .line 129
    iput p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->pointCode:I

    .line 130
    .line 131
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->processKey2(II)Z

    .line 132
    .line 133
    .line 134
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->pointCode:I

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_d
    iget p2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->pointCode:I

    .line 138
    .line 139
    if-eqz p2, :cond_e

    .line 140
    .line 141
    invoke-direct {p0, p2, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->processKey2(II)Z

    .line 142
    .line 143
    .line 144
    iput p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->pointCode:I

    .line 145
    .line 146
    :cond_e
    :goto_4
    return-void
.end method

.method private mappingProcessKey(Landroid/view/KeyEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onMappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "mappingProcessKey fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private mouseInputEvent(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onMouseInputEvent(FF)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "mouseInputEvent fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private processDpadKey(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onProcessDpadKey(Landroid/view/KeyEvent;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "processDpadKey fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private processJoystickInput(Landroid/view/InputDevice;FFFFFF)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v4, p5

    move/from16 v9, p6

    move/from16 v10, p7

    const/4 v11, 0x2

    .line 10
    invoke-direct {v6, v11}, Lcom/haima/hmcp/model/JoystickInputModel;->isInputType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {v6, v2, v4}, Lcom/haima/hmcp/model/JoystickInputModel;->mouseInputEvent(FF)V

    goto/16 :goto_b

    :cond_0
    const/4 v0, 0x4

    .line 12
    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->isInputType(I)Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_12

    .line 13
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v11

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v15, 0x3

    aput-object v3, v0, v15

    const-string v3, "mode map:%.4f:%.4f:%.4f:%.4f"

    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v5, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processJoystickInput: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    move-result-object v1

    if-eqz v1, :cond_5

    cmpl-float v3, v2, v13

    if-nez v3, :cond_1

    cmpl-float v3, v4, v13

    if-nez v3, :cond_1

    .line 16
    iget v0, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatus:I

    if-ne v0, v14, :cond_5

    .line 17
    iput v11, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatus:I

    .line 18
    invoke-direct {v6, v15, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 19
    iget-object v0, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mTrackBallTask:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;

    invoke-virtual {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->cancelTimer(Lcom/haima/hmcp/widgets/CountDownTimer;)V

    .line 20
    new-instance v4, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;

    sget v0, Lcom/haima/hmcp/Constants;->TRACK_BALL_TASK_TIMER:I

    int-to-long v2, v0

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v12, v4

    move-object v11, v5

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;-><init>(Lcom/haima/hmcp/model/JoystickInputModel;JJ)V

    iput-object v12, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mTrackBallTask:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;

    .line 21
    invoke-virtual {v12}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    goto :goto_0

    :cond_1
    move-object v11, v5

    .line 22
    iget v3, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatus:I

    if-eq v3, v14, :cond_3

    if-nez v3, :cond_2

    .line 23
    invoke-direct {v6, v14, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 24
    invoke-direct {v6, v14, v13, v13, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 25
    :cond_2
    iput v14, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatus:I

    goto :goto_0

    :cond_3
    if-ne v3, v14, :cond_6

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAxisStatus == ACTION_DOWN_TYPE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/TrackBallUtil;->distencePC(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    iget v3, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget v5, v1, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    invoke-direct {v0, v3, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-direct {v6, v15, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    goto :goto_0

    .line 29
    :cond_4
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/TrackBallUtil;->getPCdistence(FF)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 30
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 31
    aget-object v0, v0, v14

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 32
    new-instance v3, Lcom/haima/hmcp/beans/FPoint;

    iget v4, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget v5, v1, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    mul-float v1, v1, v0

    add-float/2addr v2, v1

    invoke-direct {v3, v4, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-direct {v6, v15, v3}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    goto :goto_0

    :cond_5
    move-object v11, v5

    .line 33
    :cond_6
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    move-result-object v0

    if-eqz v0, :cond_e

    cmpl-float v1, v8, v13

    if-nez v1, :cond_8

    cmpl-float v1, v10, v13

    if-nez v1, :cond_8

    .line 34
    iget v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatusR:I

    if-ne v1, v14, :cond_e

    const/4 v1, 0x2

    .line 35
    iput v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatusR:I

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallRMove()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v8, v10, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendTrackBallRMove(ZFFLcom/haima/hmcp/beans/PointCoord;)V

    goto :goto_1

    .line 38
    :cond_7
    invoke-direct {v6, v15, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 39
    invoke-direct {v6, v1, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 40
    invoke-direct {v6, v1, v13, v13, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    goto :goto_1

    .line 41
    :cond_8
    iget v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatusR:I

    if-eq v1, v14, :cond_a

    .line 42
    iput v14, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mAxisStatusR:I

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallRMove()Z

    move-result v1

    if-nez v1, :cond_9

    .line 44
    invoke-direct {v6, v14, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 45
    invoke-direct {v6, v14, v13, v13, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    goto :goto_1

    .line 46
    :cond_9
    invoke-direct {v6, v14, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    move-result-object v1

    invoke-virtual {v6, v14, v8, v10, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->sendTrackBallRMove(ZFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 48
    invoke-direct {v6, v14, v13, v13, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    goto :goto_1

    .line 49
    :cond_a
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    const v2, 0x3e3851ec    # 0.18f

    cmpl-float v1, v1, v13

    if-nez v1, :cond_b

    const-string v1, "init mTrackBallR.rx"

    .line 50
    invoke-static {v11, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput v2, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 52
    :cond_b
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    cmpl-float v1, v1, v13

    if-nez v1, :cond_c

    const-string v1, "init mTrackBallR.ry"

    .line 53
    invoke-static {v11, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput v2, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 55
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallRMove()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    move-result-object v0

    invoke-virtual {v6, v14, v8, v10, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendTrackBallRMove(ZFFLcom/haima/hmcp/beans/PointCoord;)V

    goto :goto_1

    .line 57
    :cond_d
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    iget v2, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget v3, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    mul-float v3, v3, v8

    add-float/2addr v2, v3

    iget v3, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    mul-float v0, v0, v10

    add-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-direct {v6, v15, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 58
    :cond_e
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getTrackBallRZ()Lcom/haima/hmcp/beans/PointCoord;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 59
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    if-eqz v1, :cond_11

    cmpl-float v1, v10, v13

    if-nez v1, :cond_f

    cmpl-float v1, v8, v13

    if-nez v1, :cond_f

    goto :goto_3

    .line 60
    :cond_f
    invoke-static {v8, v10}, Lcom/haima/hmcp/utils/TrackBallUtil;->distencePC(FF)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2

    .line 61
    :cond_10
    invoke-static {v8, v10}, Lcom/haima/hmcp/utils/TrackBallUtil;->getPCdistence(FF)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 63
    aget-object v1, v1, v14

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v10, v1

    move v8, v2

    .line 64
    :goto_2
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->oX:F

    const v2, 0x3d75c28f    # 0.06f

    mul-float v8, v8, v2

    add-float/2addr v1, v8

    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 65
    iget v2, v0, Lcom/haima/hmcp/beans/PointCoord;->oY:F

    const v3, 0x3de147ae    # 0.11f

    mul-float v10, v10, v3

    add-float/2addr v2, v10

    iput v2, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 66
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    invoke-direct {v0, v1, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    invoke-direct {v6, v15, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 67
    :cond_11
    :goto_3
    invoke-direct {v6, v7, v9}, Lcom/haima/hmcp/model/JoystickInputModel;->mappingProcessDpad(FF)V

    goto/16 :goto_b

    .line 68
    :cond_12
    invoke-direct {v6, v14}, Lcom/haima/hmcp/model/JoystickInputModel;->isInputType(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x6

    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->isInputType(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_9

    :cond_13
    const/4 v0, 0x5

    .line 69
    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->isInputType(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/model/JoystickInputModel;->processTrackball(Landroid/view/InputDevice;FFFF)Ljava/lang/String;

    .line 71
    iget v0, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_14

    .line 72
    iput v7, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    const/4 v0, 0x1

    goto :goto_4

    :cond_14
    const/4 v0, 0x0

    .line 73
    :goto_4
    iget v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_15

    .line 74
    iput v9, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    const/4 v0, 0x1

    :cond_15
    if-eqz v0, :cond_23

    .line 75
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCurrentInputMode == GAMEPAD_MODE_DPAD---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    float-to-double v0, v7

    const/16 v2, 0x3e2

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v0, v10

    if-lez v5, :cond_16

    .line 76
    iput-boolean v14, v6, Lcom/haima/hmcp/model/JoystickInputModel;->rightIsDown:Z

    const/4 v0, 0x0

    goto :goto_6

    :cond_16
    const/16 v5, 0x3e3

    cmpg-double v8, v0, v3

    if-gez v8, :cond_17

    .line 77
    iput-boolean v14, v6, Lcom/haima/hmcp/model/JoystickInputModel;->leftIsDown:Z

    const/4 v0, 0x0

    :goto_5
    const/16 v2, 0x3e3

    goto :goto_6

    :cond_17
    cmpl-float v0, v7, v13

    if-nez v0, :cond_19

    .line 78
    iget-boolean v0, v6, Lcom/haima/hmcp/model/JoystickInputModel;->rightIsDown:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, v6, Lcom/haima/hmcp/model/JoystickInputModel;->rightIsDown:Z

    const/4 v0, 0x1

    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    .line 80
    iget-boolean v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->leftIsDown:Z

    if-eqz v1, :cond_19

    .line 81
    iput-boolean v0, v6, Lcom/haima/hmcp/model/JoystickInputModel;->leftIsDown:Z

    const/4 v0, 0x1

    goto :goto_5

    :cond_19
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_1a

    .line 82
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v6, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->processDpadKey(Landroid/view/KeyEvent;)V

    :cond_1a
    float-to-double v1, v9

    const/16 v5, 0x3e4

    cmpl-double v7, v1, v10

    if-lez v7, :cond_1b

    .line 83
    iput-boolean v14, v6, Lcom/haima/hmcp/model/JoystickInputModel;->downIsDown:Z

    const/16 v12, 0x3e4

    :goto_7
    const/4 v14, 0x0

    goto :goto_8

    :cond_1b
    const/16 v7, 0x3e5

    cmpg-double v8, v1, v3

    if-gez v8, :cond_1c

    .line 84
    iput-boolean v14, v6, Lcom/haima/hmcp/model/JoystickInputModel;->upIsDown:Z

    const/16 v12, 0x3e5

    goto :goto_7

    :cond_1c
    cmpl-float v1, v9, v13

    if-nez v1, :cond_1e

    .line 85
    iget-boolean v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->downIsDown:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->downIsDown:Z

    const/16 v12, 0x3e4

    goto :goto_8

    :cond_1d
    const/4 v1, 0x0

    .line 87
    iget-boolean v2, v6, Lcom/haima/hmcp/model/JoystickInputModel;->upIsDown:Z

    if-eqz v2, :cond_1e

    .line 88
    iput-boolean v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->upIsDown:Z

    const/16 v12, 0x3e5

    goto :goto_8

    :cond_1e
    move v14, v0

    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_23

    .line 89
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v14, v12}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->processDpadKey(Landroid/view/KeyEvent;)V

    goto/16 :goto_b

    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/model/JoystickInputModel;->processTrackball(Landroid/view/InputDevice;FFFF)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget v1, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_20

    .line 92
    iput v7, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    const/4 v1, 0x1

    goto :goto_a

    :cond_20
    const/4 v1, 0x0

    .line 93
    :goto_a
    iget v2, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_21

    .line 94
    iput v9, v6, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    const/4 v1, 0x1

    :cond_21
    if-eqz v1, :cond_23

    .line 95
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v14

    const-string v2, "gamePad%s:ABS_HAT0X:%.4f"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    sget-object v3, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processJoystickInput sendKeyboardEvent---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {v6, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 98
    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v14

    const-string v0, "gamePad%s:ABS_HAT0Y:%.4f"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    const-string v0, "gamePadABS"

    cmpl-float v1, v9, v13

    if-nez v1, :cond_22

    cmpl-float v1, v7, v13

    if-nez v1, :cond_22

    .line 101
    invoke-direct {v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->removeDownEventMap(Ljava/lang/String;)V

    goto :goto_b

    :cond_22
    const-string v1, ""

    .line 102
    invoke-direct {v6, v0, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_b
    return-void
.end method

.method private processKey2(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/KeyEvent;

    .line 6
    .line 7
    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 11
    .line 12
    invoke-interface {p1, v0, p2}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onProcessKey2(Landroid/view/KeyEvent;I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "processKey2 fail"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method private processMouseMove(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onProcessMouseMove(Landroid/view/KeyEvent;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "processMouseMove fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private processNoneCrossKey(FFLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "sendtext processNoneCrossKey2 xHat:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " mLastHatXGamePad:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " yHat:"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " mLastHatYGamePad:"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    .line 52
    .line 53
    const-string v1, "processJoystickInput sendKeyboardEvent---"

    .line 54
    .line 55
    const-string v2, "TelevisionVideoView"

    .line 56
    .line 57
    cmpl-float v0, v0, p1

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    invoke-direct {p0, p3}, Lcom/haima/hmcp/model/JoystickInputModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/MotionEventUtil;->getGamePadHatXEventContent(Ljava/lang/String;F)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    iput p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatX:F

    .line 91
    .line 92
    :cond_0
    iget p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    .line 93
    .line 94
    cmpl-float p1, p1, p2

    .line 95
    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    invoke-direct {p0, p3}, Lcom/haima/hmcp/model/JoystickInputModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getGamePadHatXEventContent(Ljava/lang/String;F)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-static {v2, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    iput p2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastHatY:F

    .line 128
    .line 129
    :cond_1
    return-void
.end method

.method private processTrackball(Landroid/view/InputDevice;FFFF)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    move-object/from16 v6, p1

    .line 16
    .line 17
    invoke-virtual {v5, v6}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget v6, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastX:F

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v8, 0x0

    .line 25
    cmpl-float v6, v6, v1

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    iput v1, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastX:F

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v6, 0x0

    .line 34
    :goto_0
    iget v9, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastY:F

    .line 35
    .line 36
    cmpl-float v9, v9, v3

    .line 37
    .line 38
    if-eqz v9, :cond_1

    .line 39
    .line 40
    iput v3, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastY:F

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    :cond_1
    iget v9, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastZ:F

    .line 44
    .line 45
    cmpl-float v9, v9, v2

    .line 46
    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    iput v2, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastZ:F

    .line 50
    .line 51
    const/4 v9, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v9, 0x0

    .line 54
    :goto_1
    iget v10, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastRZ:F

    .line 55
    .line 56
    cmpl-float v10, v10, v4

    .line 57
    .line 58
    if-eqz v10, :cond_3

    .line 59
    .line 60
    iput v4, v0, Lcom/haima/hmcp/model/JoystickInputModel;->mLastRZ:F

    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    :cond_3
    sget-object v10, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v11, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v12, "sendtext processJoystickInput:"

    .line 71
    .line 72
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    invoke-static {v10, v11}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    if-nez v6, :cond_4

    .line 89
    .line 90
    if-eqz v9, :cond_8

    .line 91
    .line 92
    :cond_4
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 93
    .line 94
    const/4 v11, 0x5

    .line 95
    new-array v12, v11, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-direct {v0, v5}, Lcom/haima/hmcp/model/JoystickInputModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    aput-object v13, v12, v8

    .line 102
    .line 103
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    aput-object v13, v12, v7

    .line 108
    .line 109
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    const/4 v14, 0x2

    .line 114
    aput-object v13, v12, v14

    .line 115
    .line 116
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    const/4 v15, 0x3

    .line 121
    aput-object v13, v12, v15

    .line 122
    .line 123
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    const/16 v16, 0x4

    .line 128
    .line 129
    aput-object v13, v12, v16

    .line 130
    .line 131
    const-string v13, "gamePad%s:MOVE_EVENT:%.4f:%.4f:%.4f:%.4f"

    .line 132
    .line 133
    invoke-static {v10, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-direct {v0, v12}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    const-string v12, "gamePadTrackBallL"

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    if-eqz v6, :cond_5

    .line 145
    .line 146
    cmpl-float v18, v1, v17

    .line 147
    .line 148
    if-nez v18, :cond_5

    .line 149
    .line 150
    cmpl-float v18, v3, v17

    .line 151
    .line 152
    if-nez v18, :cond_5

    .line 153
    .line 154
    invoke-direct {v0, v12}, Lcom/haima/hmcp/model/JoystickInputModel;->removeMapModeEvent(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    if-eqz v6, :cond_6

    .line 159
    .line 160
    new-array v6, v11, [Ljava/lang/Object;

    .line 161
    .line 162
    invoke-direct {v0, v5}, Lcom/haima/hmcp/model/JoystickInputModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v18

    .line 166
    aput-object v18, v6, v8

    .line 167
    .line 168
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    .line 170
    .line 171
    move-result-object v18

    .line 172
    aput-object v18, v6, v7

    .line 173
    .line 174
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    .line 176
    .line 177
    move-result-object v18

    .line 178
    aput-object v18, v6, v14

    .line 179
    .line 180
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object v18

    .line 184
    aput-object v18, v6, v15

    .line 185
    .line 186
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 187
    .line 188
    .line 189
    move-result-object v18

    .line 190
    aput-object v18, v6, v16

    .line 191
    .line 192
    invoke-static {v10, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-direct {v0, v12, v6}, Lcom/haima/hmcp/model/JoystickInputModel;->putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    :goto_2
    const-string v6, "gamePadTrackBallR"

    .line 200
    .line 201
    if-eqz v9, :cond_7

    .line 202
    .line 203
    cmpl-float v2, v2, v17

    .line 204
    .line 205
    if-nez v2, :cond_7

    .line 206
    .line 207
    cmpl-float v2, v4, v17

    .line 208
    .line 209
    if-nez v2, :cond_7

    .line 210
    .line 211
    invoke-direct {v0, v6}, Lcom/haima/hmcp/model/JoystickInputModel;->removeMapModeEvent(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_7
    if-eqz v9, :cond_8

    .line 216
    .line 217
    new-array v2, v11, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-direct {v0, v5}, Lcom/haima/hmcp/model/JoystickInputModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    aput-object v4, v2, v8

    .line 224
    .line 225
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    aput-object v1, v2, v7

    .line 230
    .line 231
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    aput-object v1, v2, v14

    .line 236
    .line 237
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    aput-object v1, v2, v15

    .line 242
    .line 243
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    aput-object v1, v2, v16

    .line 248
    .line 249
    invoke-static {v10, v13, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v6, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_8
    :goto_3
    return-object v5
.end method

.method private putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "putDownEventMap fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private putMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onPutMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "putMapModeEvent fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private removeDownEventMap(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onRemoveDownEventMap(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "removeDownEventMap fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private removeMapModeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onRemoveMapModeEvent(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "removeMapModeEvent fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private sendEvent(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onEventSend(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "sendEvent fail"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private sendGamePadStart(Landroid/view/InputDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/JoystickInputModelListener;->onGamePadStart(Landroid/view/InputDevice;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "sendGamePadStart fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getSendMotionEventContent(ILcom/haima/hmcp/beans/FPoint;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    iget v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    invoke-direct {v0, v1, p2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    const-string p2, "sendMotionEvent fail, PointCoord is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cancelTimer(Lcom/haima/hmcp/widgets/CountDownTimer;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v2

    const/16 v0, 0xf

    .line 3
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    const/16 v0, 0xb

    .line 4
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v4

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v5

    const/16 v0, 0x10

    .line 6
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v6

    const/16 v0, 0xe

    .line 7
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v7

    .line 8
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendtext processJoystickInput xHat:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " yHat:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/model/JoystickInputModel;->processJoystickInput(Landroid/view/InputDevice;FFFFFF)V

    return-void
.end method

.method public sendGamepadKeyEvent(IIFFFF)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    move v0, p1

    .line 3
    move v1, p2

    .line 4
    move v2, p3

    .line 5
    move/from16 v3, p5

    .line 6
    .line 7
    move/from16 v4, p6

    .line 8
    .line 9
    sget-object v5, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v7, "sendGamepadKeyEvent keyCode:"

    .line 17
    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v7, " actionType:"

    .line 25
    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v7, " touchX_1P:"

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v7, " touchY_1P: touchX_2P:"

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v7, " touchY_2P:"

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-gez v0, :cond_0

    .line 64
    .line 65
    const-string v6, "sendGamepadKeyEvent keyCode is invalid!"

    .line 66
    .line 67
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    .line 72
    invoke-direct {p0, p3}, Lcom/haima/hmcp/model/JoystickInputModel;->checkRange(F)F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    move v0, p4

    .line 77
    invoke-direct {p0, p4}, Lcom/haima/hmcp/model/JoystickInputModel;->checkRange(F)F

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-direct {p0, v3}, Lcom/haima/hmcp/model/JoystickInputModel;->checkRange(F)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-direct {p0, v4}, Lcom/haima/hmcp/model/JoystickInputModel;->checkRange(F)F

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/haima/hmcp/business/GamePadManager;->getmExternalDevice()Landroid/view/InputDevice;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v0, p0

    .line 100
    move v4, v5

    .line 101
    move v5, v6

    .line 102
    move v6, v9

    .line 103
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/model/JoystickInputModel;->processJoystickInput(Landroid/view/InputDevice;FFFFFF)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    const/4 v2, 0x1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    if-eq v1, v2, :cond_2

    .line 111
    .line 112
    const-string v0, "sendGamepadKeyEvent actionType is invalid!"

    .line 113
    .line 114
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    invoke-static {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isCrossKey(I)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    const/4 v4, 0x5

    .line 123
    const/4 v6, 0x4

    .line 124
    if-eqz v3, :cond_c

    .line 125
    .line 126
    const/high16 v3, -0x40800000    # -1.0f

    .line 127
    .line 128
    const/high16 v7, 0x3f800000    # 1.0f

    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    packed-switch v0, :pswitch_data_0

    .line 132
    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    :goto_0
    :pswitch_0
    const/4 v7, 0x0

    .line 136
    goto :goto_1

    .line 137
    :pswitch_1
    const/4 v3, 0x0

    .line 138
    const/high16 v7, -0x40800000    # -1.0f

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_2
    const/4 v3, 0x0

    .line 142
    goto :goto_1

    .line 143
    :pswitch_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :goto_1
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-ne v10, v6, :cond_8

    .line 151
    .line 152
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getMappingVersion()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getCurrentButtonMappings()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-nez v0, :cond_3

    .line 167
    .line 168
    const-string v0, "mappingProcessDpad but mCurrentButtonMappings is null"

    .line 169
    .line 170
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_3
    float-to-double v2, v3

    .line 175
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    .line 176
    .line 177
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 178
    .line 179
    cmpl-double v6, v2, v9

    .line 180
    .line 181
    if-lez v6, :cond_4

    .line 182
    .line 183
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getActionType(I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    iget-object v3, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 188
    .line 189
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    cmpg-double v6, v2, v4

    .line 194
    .line 195
    if-gez v6, :cond_5

    .line 196
    .line 197
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getActionType(I)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    iget-object v3, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 202
    .line 203
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 204
    .line 205
    .line 206
    :cond_5
    :goto_2
    float-to-double v2, v7

    .line 207
    cmpl-double v6, v2, v9

    .line 208
    .line 209
    if-lez v6, :cond_6

    .line 210
    .line 211
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getActionType(I)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    iget-object v0, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 216
    .line 217
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    cmpg-double v6, v2, v4

    .line 222
    .line 223
    if-gez v6, :cond_b

    .line 224
    .line 225
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getActionType(I)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget-object v0, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonUp:Lcom/haima/hmcp/beans/PointCoord;

    .line 230
    .line 231
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getActionType(I)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->processKey2(II)Z

    .line 240
    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_8
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-ne v5, v2, :cond_a

    .line 248
    .line 249
    if-nez v1, :cond_9

    .line 250
    .line 251
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/haima/hmcp/business/GamePadManager;->getmExternalDevice()Landroid/view/InputDevice;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-direct {p0, v3, v7, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->processNoneCrossKey(FFLjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_9
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/haima/hmcp/business/GamePadManager;->getmExternalDevice()Landroid/view/InputDevice;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {p0, v9, v9, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->processNoneCrossKey(FFLjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_a
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-ne v2, v4, :cond_b

    .line 296
    .line 297
    new-instance v2, Landroid/view/KeyEvent;

    .line 298
    .line 299
    invoke-direct {v2, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 300
    .line 301
    .line 302
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->processDpadKey(Landroid/view/KeyEvent;)V

    .line 303
    .line 304
    .line 305
    :cond_b
    :goto_3
    return-void

    .line 306
    :cond_c
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v7, "sendGamepadKeyEvent keyCodeToSend:"

    .line 316
    .line 317
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v7, " mCurrentInputMode:"

    .line 324
    .line 325
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-static {v5, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-ne v3, v6, :cond_e

    .line 347
    .line 348
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_d

    .line 353
    .line 354
    const/16 v2, 0x17

    .line 355
    .line 356
    if-ne v0, v2, :cond_15

    .line 357
    .line 358
    :cond_d
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v2}, Lcom/haima/hmcp/business/GamePadManager;->getmExternalDevice()Landroid/view/InputDevice;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 367
    .line 368
    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v3, " sendGamepadKeyEvent ACTION_DOWN -----------:KeyEvent.isGamepadButton(keyCode) "

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    new-instance v2, Landroid/view/KeyEvent;

    .line 390
    .line 391
    invoke-direct {v2, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 392
    .line 393
    .line 394
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->getActionType(I)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    invoke-direct {p0, v2, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_6

    .line 402
    .line 403
    :cond_e
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    const/4 v6, 0x2

    .line 408
    if-ne v3, v6, :cond_10

    .line 409
    .line 410
    const/16 v2, 0x60

    .line 411
    .line 412
    if-eq v0, v2, :cond_f

    .line 413
    .line 414
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->isDirectionKey(I)Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eqz v2, :cond_15

    .line 419
    .line 420
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v3, "sendGamepadKeyEvent ACTION_DOWN -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) "

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance v2, Landroid/view/KeyEvent;

    .line 441
    .line 442
    invoke-direct {v2, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 443
    .line 444
    .line 445
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->processMouseMove(Landroid/view/KeyEvent;)V

    .line 446
    .line 447
    .line 448
    goto :goto_6

    .line 449
    :cond_10
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getInputType()I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-ne v3, v4, :cond_11

    .line 454
    .line 455
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v3}, Lcom/haima/hmcp/business/GamePadManager;->getmExternalDevice()Landroid/view/InputDevice;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-direct {p0, v3}, Lcom/haima/hmcp/model/JoystickInputModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 464
    .line 465
    .line 466
    new-instance v3, Landroid/view/KeyEvent;

    .line 467
    .line 468
    invoke-direct {v3, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 469
    .line 470
    .line 471
    invoke-direct {p0, v3, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->gamePadModeDpadEvent(Landroid/view/KeyEvent;I)V

    .line 472
    .line 473
    .line 474
    goto :goto_6

    .line 475
    :cond_11
    if-eqz v2, :cond_13

    .line 476
    .line 477
    if-nez v1, :cond_12

    .line 478
    .line 479
    const-string v0, "keyDown"

    .line 480
    .line 481
    goto :goto_4

    .line 482
    :cond_12
    const-string v0, "keyUp"

    .line 483
    .line 484
    :goto_4
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getSendKeyboardEventContent(Ljava/lang/String;I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    goto :goto_6

    .line 492
    :cond_13
    if-nez v1, :cond_14

    .line 493
    .line 494
    const-string v1, "1"

    .line 495
    .line 496
    goto :goto_5

    .line 497
    :cond_14
    const-string v1, "0"

    .line 498
    .line 499
    :goto_5
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    invoke-virtual {v3}, Lcom/haima/hmcp/business/GamePadManager;->getmExternalDevice()Landroid/view/InputDevice;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-static {v1, v0, v2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getSendKeyboardEventContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/JoystickInputModel;->sendEvent(Ljava/lang/String;)Z

    .line 524
    .line 525
    .line 526
    :cond_15
    :goto_6
    return-void

    .line 527
    :pswitch_data_0
    .packed-switch 0x3e2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected sendTrackBallRMove(ZFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/model/JoystickInputModel;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "sendTrackBallRMove fail, trackBallR is null"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    new-instance p1, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 18
    .line 19
    iget v0, p4, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 20
    .line 21
    iget p4, p4, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 22
    .line 23
    invoke-direct {p1, p0, v0, p4}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;-><init>(Lcom/haima/hmcp/model/JoystickInputModel;FF)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 27
    .line 28
    new-instance p4, Lcom/haima/hmcp/model/JoystickInputModel$1;

    .line 29
    .line 30
    invoke-direct {p4, p0}, Lcom/haima/hmcp/model/JoystickInputModel$1;-><init>(Lcom/haima/hmcp/model/JoystickInputModel;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p4}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->setListener(Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-virtual {p1, p4, p2, p3}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->setMoveSp(Lcom/haima/hmcp/enums/ScreenOrientation;FF)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p1, p4, p2, p3}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->setMoveSp(Lcom/haima/hmcp/enums/ScreenOrientation;FF)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->setIsSend(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->setListener(Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lcom/haima/hmcp/model/JoystickInputModel;->moveThread:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 74
    .line 75
    :cond_3
    :goto_0
    return-void
.end method

.method public setEventMappingModel(Lcom/haima/hmcp/model/EventMappingModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/JoystickInputModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel;->listener:Lcom/haima/hmcp/listeners/JoystickInputModelListener;

    .line 2
    .line 3
    return-void
.end method
