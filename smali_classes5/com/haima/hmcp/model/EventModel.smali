.class public Lcom/haima/hmcp/model/EventModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/model/EventModel$MorePointThread;
    }
.end annotation


# static fields
.field public static final KEYBOARDPAD_MODE_INPUT:I = 0x1

.field public static final KEYBOARDPAD_MODE_MAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EventModel"


# instance fields
.field private dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

.field private eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

.field private fnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private joystickInputModel:Lcom/haima/hmcp/model/JoystickInputModel;

.field private keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

.field private listener:Lcom/haima/hmcp/listeners/EventModelListener;

.field private ltDown:Z

.field private ltKeyDownHandled:Z

.field private ltMotionHandled:Z

.field private mFnDown:Z

.field private mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

.field private mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

.field private morePointIsRun:Z

.field private rtDown:Z

.field private rtKeyDownHandled:Z

.field private rtMotionHandled:Z


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
    new-instance v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->mFnDown:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->ltDown:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->rtDown:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->ltMotionHandled:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->rtMotionHandled:Z

    .line 34
    .line 35
    new-instance v0, Lcom/haima/hmcp/model/DpadInputModel;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/haima/hmcp/model/DpadInputModel;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 41
    .line 42
    new-instance v1, Lcom/haima/hmcp/model/EventModel$1;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/haima/hmcp/model/EventModel$1;-><init>(Lcom/haima/hmcp/model/EventModel;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/DpadInputModel;->setListener(Lcom/haima/hmcp/listeners/DpadInputModelListener;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 56
    .line 57
    new-instance v1, Lcom/haima/hmcp/model/EventModel$2;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/haima/hmcp/model/EventModel$2;-><init>(Lcom/haima/hmcp/model/EventModel;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->setListener(Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/haima/hmcp/model/KeyboardInputModel;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 71
    .line 72
    new-instance v1, Lcom/haima/hmcp/model/EventModel$3;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/haima/hmcp/model/EventModel$3;-><init>(Lcom/haima/hmcp/model/EventModel;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/KeyboardInputModel;->setListener(Lcom/haima/hmcp/listeners/KeyboardInputModelListener;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/haima/hmcp/model/JoystickInputModel;

    .line 81
    .line 82
    invoke-direct {v0}, Lcom/haima/hmcp/model/JoystickInputModel;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/haima/hmcp/model/EventModel;->joystickInputModel:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 86
    .line 87
    new-instance v1, Lcom/haima/hmcp/model/EventModel$4;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/haima/hmcp/model/EventModel$4;-><init>(Lcom/haima/hmcp/model/EventModel;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->setListener(Lcom/haima/hmcp/listeners/JoystickInputModelListener;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->resetTriggerKeyHandledState()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/MapModeEventCacheModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/PointCoord;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/FPoint;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getDpadPoint()Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/model/EventModel;Lcom/haima/hmcp/beans/PointCoord;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/model/EventModel;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1600(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/EventMappingModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lcom/haima/hmcp/model/EventModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1800(Lcom/haima/hmcp/model/EventModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->clickSightBeadButton()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1900(Lcom/haima/hmcp/model/EventModel;Lcom/haima/hmcp/beans/PointCoord;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2000(Lcom/haima/hmcp/model/EventModel;IFFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/model/EventModel;->cacheModeMapEvent2(IFFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2100(Lcom/haima/hmcp/model/EventModel;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2200(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2300(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->processKey2(Landroid/view/KeyEvent;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2400(Lcom/haima/hmcp/model/EventModel;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->mouseInputEvent(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2500(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2600(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2700(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->removeDownEventMap(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2800(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/DpadInputModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2900(Lcom/haima/hmcp/model/EventModel;Landroid/view/InputDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/model/EventModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getMappingVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$3000(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->processMouseMove(Landroid/view/KeyEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3100(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3200(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->gamePadModeDpadEvent(Landroid/view/KeyEvent;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/haima/hmcp/model/EventModel;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isNativeDpadGame()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/model/EventModel;I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->getMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/model/EventModel;I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->sendEvent(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private armMouseHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventModelListener;->onArmMouseHandleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "armMouseHandleTouchEvent fail"

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

.method private cacheModeMapEvent2(IFFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->cacheModeMapEvent2(IFFI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private clearAllFnModeMapEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->clearAllFnModeMapEvent()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private clearAllMapModeEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->clearAllMapModeEvent()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private clearDpadMapDownEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/model/DpadInputModel;->clearDpadMapDownEvent()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private clickSightBeadButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/EventModelListener;->onSightBeadButtonClick()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "clickSightBeadButton fail"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private gamePadModeDpadEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeMap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->processDpadKey(Landroid/view/KeyEvent;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeInput()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->clearDpadMapDownEvent()V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string p1, "keyDown"

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "getButtonDirection fail, eventMappingModel is null"

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
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private getCurrentButtonMappings()Lcom/haima/hmcp/beans/ButtonMappings;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private getDpadPoint()Lcom/haima/hmcp/beans/FPoint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/model/DpadInputModel;->getDpadPoint()Lcom/haima/hmcp/beans/FPoint;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getDpadPoint fail"

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

.method private getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventModelListener;->onGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/EventModelListener;->onInputType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private getKeyboardMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/EventModelListener;->onKeyboardMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getKeyboardMode fail"

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

.method private getMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "getMapPointCoord fail, eventMappingModel is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/EventMappingModel;->getCurrentButtonMappingsPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "getMappingEvent fail, eventMappingModel is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private getMappingVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/EventModelListener;->onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private handleJoyStickTrigger(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "motion event handle trigger event"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/16 v2, 0x11

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/16 v3, 0x12

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/16 v2, 0x17

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/16 v3, 0x16

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v2, 0x0

    .line 57
    move-object v1, v2

    .line 58
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v2, :cond_9

    .line 71
    .line 72
    if-eqz v1, :cond_9

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "ltAxis = "

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, ", rtAxis = "

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "1"

    .line 119
    .line 120
    const-string v4, "KEYCODE_BUTTON_L2"

    .line 121
    .line 122
    const-string v5, "0"

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    const/4 v7, 0x1

    .line 126
    const/4 v8, 0x0

    .line 127
    cmpl-float v2, v2, v6

    .line 128
    .line 129
    if-lez v2, :cond_5

    .line 130
    .line 131
    iget-boolean v2, p0, Lcom/haima/hmcp/model/EventModel;->ltDown:Z

    .line 132
    .line 133
    if-nez v2, :cond_4

    .line 134
    .line 135
    iget-boolean v2, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 136
    .line 137
    if-nez v2, :cond_4

    .line 138
    .line 139
    iput-boolean v7, p0, Lcom/haima/hmcp/model/EventModel;->ltDown:Z

    .line 140
    .line 141
    iput-boolean v7, p0, Lcom/haima/hmcp/model/EventModel;->ltMotionHandled:Z

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v9, "LT is down (motion event), ltKeyDownHandled: "

    .line 149
    .line 150
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-boolean v9, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 154
    .line 155
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v1, v4, v3}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v4, "LT motion event skipped, ltDown: "

    .line 175
    .line 176
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-boolean v4, p0, Lcom/haima/hmcp/model/EventModel;->ltDown:Z

    .line 180
    .line 181
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v4, ", ltKeyDownHandled: "

    .line 185
    .line 186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-boolean v4, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 190
    .line 191
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_5
    iget-boolean v2, p0, Lcom/haima/hmcp/model/EventModel;->ltDown:Z

    .line 203
    .line 204
    if-eqz v2, :cond_6

    .line 205
    .line 206
    iget-boolean v2, p0, Lcom/haima/hmcp/model/EventModel;->ltMotionHandled:Z

    .line 207
    .line 208
    if-eqz v2, :cond_6

    .line 209
    .line 210
    iput-boolean v8, p0, Lcom/haima/hmcp/model/EventModel;->ltDown:Z

    .line 211
    .line 212
    iput-boolean v8, p0, Lcom/haima/hmcp/model/EventModel;->ltMotionHandled:Z

    .line 213
    .line 214
    const-string v2, "LT is up (motion event), complete click cycle, reset state"

    .line 215
    .line 216
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-direct {p0, v5, v4, v3}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_6
    :goto_1
    const-string v2, "KEYCODE_BUTTON_R2"

    .line 223
    .line 224
    cmpl-float p1, p1, v6

    .line 225
    .line 226
    if-lez p1, :cond_8

    .line 227
    .line 228
    iget-boolean p1, p0, Lcom/haima/hmcp/model/EventModel;->rtDown:Z

    .line 229
    .line 230
    if-nez p1, :cond_7

    .line 231
    .line 232
    iget-boolean p1, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 233
    .line 234
    if-nez p1, :cond_7

    .line 235
    .line 236
    iput-boolean v7, p0, Lcom/haima/hmcp/model/EventModel;->rtDown:Z

    .line 237
    .line 238
    iput-boolean v7, p0, Lcom/haima/hmcp/model/EventModel;->rtMotionHandled:Z

    .line 239
    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v4, "RT is down (motion event), rtKeyDownHandled: "

    .line 246
    .line 247
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-boolean v4, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 251
    .line 252
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {p0, v1, v2, v3}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v1, "RT motion event skipped, rtDown: "

    .line 272
    .line 273
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget-boolean v1, p0, Lcom/haima/hmcp/model/EventModel;->rtDown:Z

    .line 277
    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v1, ", rtKeyDownHandled: "

    .line 282
    .line 283
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    iget-boolean v1, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 287
    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_8
    iget-boolean p1, p0, Lcom/haima/hmcp/model/EventModel;->rtDown:Z

    .line 300
    .line 301
    if-eqz p1, :cond_9

    .line 302
    .line 303
    iget-boolean p1, p0, Lcom/haima/hmcp/model/EventModel;->rtMotionHandled:Z

    .line 304
    .line 305
    if-eqz p1, :cond_9

    .line 306
    .line 307
    iput-boolean v8, p0, Lcom/haima/hmcp/model/EventModel;->rtDown:Z

    .line 308
    .line 309
    iput-boolean v8, p0, Lcom/haima/hmcp/model/EventModel;->rtMotionHandled:Z

    .line 310
    .line 311
    const-string p1, "RT is up (motion event), complete click cycle, reset state"

    .line 312
    .line 313
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-direct {p0, v5, v2, v3}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_9
    :goto_2
    return-void
.end method

.method private hasKeyboardMappingEvent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method private hasMappingEvent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method private hasSightBeadCoord()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "hasSightBeadCoord fail, eventMappingModel is null"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getButtonMappingUtil()Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "hasSightBeadCoord fail, ButtonMappingUtil is null"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getButtonMappingUtil()Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mSightbBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1
.end method

.method private interceptKey(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventModelListener;->isInterceptKey(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "interceptKey fail"

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

.method private isBattleHandleEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/EventModelListener;->onBattleHandleEvent(ILandroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string p2, "isBattleHandleEvent fail"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private isKeyboardPadModeInput()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getKeyboardMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method private isKeyboardPadModeMap()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getKeyboardMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private isListenHover()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/EventModelListener;->onListenHover()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "isListenHover fail"

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

.method private isNativeDpadGame()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/EventModelListener;->onNativeDpadGame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "isNativeDpadGame fail"

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

.method private mappingProcessKey(Landroid/view/KeyEvent;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getMappingVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getMappingVersion()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->processKey(Landroid/view/KeyEvent;I)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->processKey2(Landroid/view/KeyEvent;I)Z

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private mouseBackEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/EventModelListener;->onMouseBackEvent()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "mouseBackEvent fail"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private mouseInputEvent(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/EventModelListener;->onMouseInputEvent(FF)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/DpadInputModel;->processDpadKey(Landroid/view/KeyEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->joystickInputModel:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private processKey(Landroid/view/KeyEvent;I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getCurrentButtonMappings()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_7

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonFn:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, p1, :cond_2

    .line 23
    .line 24
    if-ne p2, v1, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/haima/hmcp/model/EventModel;->mFnDown:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput-boolean v2, p0, Lcom/haima/hmcp/model/EventModel;->mFnDown:Z

    .line 30
    .line 31
    :goto_0
    return v1

    .line 32
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->getMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    if-nez v3, :cond_5

    .line 45
    .line 46
    if-ne p2, v1, :cond_4

    .line 47
    .line 48
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 49
    .line 50
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 51
    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    iget v2, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 55
    .line 56
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->oX:F

    .line 57
    .line 58
    iget v3, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 59
    .line 60
    iput v3, v1, Lcom/haima/hmcp/beans/PointCoord;->oY:F

    .line 61
    .line 62
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 63
    .line 64
    iput v3, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 65
    .line 66
    iput p1, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/4 v3, 0x2

    .line 70
    if-ne p2, v3, :cond_5

    .line 71
    .line 72
    iget-object v3, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 73
    .line 74
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 75
    .line 76
    if-ne v5, p1, :cond_5

    .line 77
    .line 78
    iput v2, v3, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 79
    .line 80
    new-instance p1, Lcom/haima/hmcp/beans/FPoint;

    .line 81
    .line 82
    iget v0, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 83
    .line 84
    iget v2, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 85
    .line 86
    invoke-direct {p1, v0, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 93
    .line 94
    iget v0, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 95
    .line 96
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 97
    .line 98
    invoke-virtual {p0, p2, v0, p1, v4}, Lcom/haima/hmcp/model/EventModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 99
    .line 100
    .line 101
    return v1

    .line 102
    :cond_5
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/haima/hmcp/model/EventModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 109
    .line 110
    iget v2, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 111
    .line 112
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 113
    .line 114
    invoke-virtual {v1, p2, v2, v0, v4}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    return p1

    .line 118
    :cond_7
    :goto_2
    return v2
.end method

.method private processKey2(Landroid/view/KeyEvent;I)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_d

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->hasMappingEvent()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "processKey2 return, coord is null, keyCode is not mapping"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    iget-boolean v2, v0, Lcom/haima/hmcp/beans/PointCoord;->isFn:Z

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v2, :cond_5

    .line 38
    .line 39
    if-ne p2, v3, :cond_2

    .line 40
    .line 41
    iput-boolean v3, p0, Lcom/haima/hmcp/model/EventModel;->mFnDown:Z

    .line 42
    .line 43
    iget-object p2, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object p2, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-lez p2, :cond_3

    .line 60
    .line 61
    iget-object p2, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-ne p2, p1, :cond_3

    .line 74
    .line 75
    iget-object p2, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v3}, Lcom/haima/hmcp/model/EventModel;->cleanFnModeMapEvent(IZ)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/haima/hmcp/model/EventModel;->mFnDown:Z

    .line 92
    .line 93
    :cond_4
    :goto_0
    return v1

    .line 94
    :cond_5
    if-ne p2, v3, :cond_b

    .line 95
    .line 96
    iget-boolean v2, p0, Lcom/haima/hmcp/model/EventModel;->mFnDown:Z

    .line 97
    .line 98
    if-eqz v2, :cond_9

    .line 99
    .line 100
    iget-object v2, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const/4 v4, 0x0

    .line 107
    :goto_1
    if-lez v2, :cond_8

    .line 108
    .line 109
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->fnList:Ljava/util/ArrayList;

    .line 110
    .line 111
    add-int/lit8 v5, v2, -0x1

    .line 112
    .line 113
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    mul-int/lit16 v0, v0, 0x3e8

    .line 124
    .line 125
    add-int/2addr v0, p1

    .line 126
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-eqz v5, :cond_6

    .line 131
    .line 132
    iget-object v6, v5, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    .line 133
    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-lez v6, :cond_6

    .line 141
    .line 142
    iget-boolean v6, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 143
    .line 144
    if-nez v6, :cond_6

    .line 145
    .line 146
    invoke-direct {p0, v5, p2}, Lcom/haima/hmcp/model/EventModel;->sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iget-boolean v6, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 151
    .line 152
    if-nez v6, :cond_7

    .line 153
    .line 154
    invoke-direct {p0, v5, p2, v0}, Lcom/haima/hmcp/model/EventModel;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 155
    .line 156
    .line 157
    const/4 v4, 0x1

    .line 158
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 159
    .line 160
    move-object v0, v5

    .line 161
    goto :goto_1

    .line 162
    :cond_8
    if-nez v4, :cond_c

    .line 163
    .line 164
    iget-boolean v2, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 165
    .line 166
    if-nez v2, :cond_c

    .line 167
    .line 168
    invoke-direct {p0, v0, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_9
    iget-object p1, v0, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    .line 173
    .line 174
    if-eqz p1, :cond_a

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-lez p1, :cond_a

    .line 181
    .line 182
    iget-boolean p1, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 183
    .line 184
    if-nez p1, :cond_a

    .line 185
    .line 186
    invoke-direct {p0, v0, p2}, Lcom/haima/hmcp/model/EventModel;->sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_a
    iget-boolean p1, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 191
    .line 192
    if-nez p1, :cond_c

    .line 193
    .line 194
    iget p1, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 195
    .line 196
    invoke-direct {p0, v0, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_b
    iget-boolean p2, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 201
    .line 202
    if-nez p2, :cond_c

    .line 203
    .line 204
    invoke-virtual {p0, p1, v1}, Lcom/haima/hmcp/model/EventModel;->cleanFnModeMapEvent(IZ)V

    .line 205
    .line 206
    .line 207
    :cond_c
    :goto_3
    return v1

    .line 208
    :cond_d
    :goto_4
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 209
    .line 210
    const-string p2, "processKey2 return, not mapping"

    .line 211
    .line 212
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return v1
.end method

.method private processMouseMove(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventModelListener;->onProcessMouseMove(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    const-string v0, "processMouseMove(KeyEvent) fail"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processMouseMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/EventModelListener;->onProcessMouseMove(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    const-string p2, "processMouseMove(KeyEvent, historyPos) fail"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private putDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/EventModelListener;->onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private removeDownEventMap(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventModelListener;->onRemoveDownEventMap(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private resetTriggerKeyHandledState()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "resetTriggerKeyHandledState: reset all LT/RT key states"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->ltMotionHandled:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->rtMotionHandled:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->ltDown:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->rtDown:Z

    .line 20
    .line 21
    return-void
.end method

.method private sendDpadKey(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/haima/hmcp/model/DpadInputModel;->sendDpadKey(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private sendEvent(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventModelListener;->onEventSend(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventModelListener;->onGamePadStart(Landroid/view/InputDevice;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private sendInputDevice(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/EventModelListener;->onInputDeviceSend(II)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

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

.method private sendKeyboardEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/EventModelListener;->onKeyboardEvent(Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    const-string p2, "sendKeyboardEvent fail"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/EventModelListener;->onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    const-string p2, "sendKeyboardEvent fail"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/listeners/EventModelListener;->onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    const-string p2, "sendKeyboardEvent fail"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onKeyDown -----------:cleanFnModeMapEvent 0"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " coord: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " actionType"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " mTrackBallR==null\uff1a"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x1

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v2, 0x0

    .line 48
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    if-ne p2, v4, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 69
    .line 70
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 75
    .line 76
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->oX:F

    .line 77
    .line 78
    iget v3, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 79
    .line 80
    iput v3, v1, Lcom/haima/hmcp/beans/PointCoord;->oY:F

    .line 81
    .line 82
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 83
    .line 84
    iput v3, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 85
    .line 86
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 87
    .line 88
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/4 v1, 0x2

    .line 92
    if-ne p2, v1, :cond_2

    .line 93
    .line 94
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 95
    .line 96
    iget v2, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 97
    .line 98
    iget v5, p1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 99
    .line 100
    if-ne v2, v5, :cond_2

    .line 101
    .line 102
    iput v3, v1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 103
    .line 104
    new-instance v2, Lcom/haima/hmcp/beans/FPoint;

    .line 105
    .line 106
    iget v3, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 107
    .line 108
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 109
    .line 110
    invoke-direct {v2, v3, v1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p2, v2}, Lcom/haima/hmcp/model/EventModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/haima/hmcp/model/EventModel;->mTrackBallRZ:Lcom/haima/hmcp/beans/PointCoord;

    .line 119
    .line 120
    iget v3, v2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 121
    .line 122
    iget v2, v2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-virtual {v1, p2, v3, v2, v5}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 126
    .line 127
    .line 128
    iget v1, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 129
    .line 130
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 131
    .line 132
    invoke-direct {p0, p2, v1, p1, p3}, Lcom/haima/hmcp/model/EventModel;->cacheModeMapEvent2(IFFI)V

    .line 133
    .line 134
    .line 135
    const-string p1, "cacheModeMapEvent cacheModeMapEvent2"

    .line 136
    .line 137
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return v4

    .line 141
    :cond_2
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_3

    .line 146
    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    iget v2, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 150
    .line 151
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 152
    .line 153
    invoke-direct {p0, p2, v2, p1, p3}, Lcom/haima/hmcp/model/EventModel;->cacheModeMapEvent2(IFFI)V

    .line 154
    .line 155
    .line 156
    const-string p1, "cacheModeMapEvent2"

    .line 157
    .line 158
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    return v1
.end method

.method private sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/model/EventModel;->setMorePointIsRun(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->clearAllMapModeEvent()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->clearAllFnModeMapEvent()V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/haima/hmcp/model/EventModel$MorePointThread;

    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lcom/haima/hmcp/model/EventModel$MorePointThread;-><init>(Lcom/haima/hmcp/model/EventModel;Lcom/haima/hmcp/beans/PointCoord;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/model/EventModel$MorePointThread;->setMapModeEventCacheModel(Lcom/haima/hmcp/model/MapModeEventCacheModel;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getSendMotionEventContent(ILcom/haima/hmcp/beans/FPoint;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->sendEvent(Ljava/lang/String;)Z

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
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/model/EventModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    const-string p2, "sendMotionEvent fail, PointCoord is null"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public cleanFnModeMapEvent(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->cleanFnModeMapEvent(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearKeyDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->clearAllMapModeEvent()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->mapModeEventCacheModel:Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->clearAllFnModeMapEvent()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/model/KeyboardInputModel;->clearKeyDown()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->resetTriggerKeyHandledState()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public isMorePointIsRun()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 2
    .line 3
    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, " onGenericMotionEvent event#"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->getInstance()Lcom/haima/hmcp/business/SwitchControllerManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->reportGamePadDeviceInfo(Landroid/view/InputEvent;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v2, 0x2002

    .line 35
    .line 36
    and-int/2addr v1, v2

    .line 37
    const/4 v3, 0x2

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne v1, v2, :cond_0

    .line 40
    .line 41
    invoke-direct {p0, v3, v4}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-boolean v1, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    return v2

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v5, 0x7

    .line 55
    const/4 v6, -0x1

    .line 56
    if-ne v1, v5, :cond_3

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isListenHover()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    const-string v1, "=============onGenericMotionEvent--------processMouseMove"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    :goto_0
    if-ge v2, v0, :cond_2

    .line 74
    .line 75
    invoke-direct {p0, p1, v2}, Lcom/haima/hmcp/model/EventModel;->processMouseMove(Landroid/view/MotionEvent;I)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/haima/hmcp/model/EventModel;->processMouseMove(Landroid/view/MotionEvent;I)V

    .line 82
    .line 83
    .line 84
    return v4

    .line 85
    :cond_3
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-ne v0, v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 102
    .line 103
    .line 104
    const/4 v0, 0x3

    .line 105
    invoke-direct {p0, v0, v4}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    :goto_1
    if-ge v2, v0, :cond_4

    .line 113
    .line 114
    invoke-direct {p0, p1, v2}, Lcom/haima/hmcp/model/EventModel;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/haima/hmcp/model/EventModel;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-ne v4, v0, :cond_5

    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->handleJoyStickTrigger(Landroid/view/MotionEvent;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    return v4

    .line 133
    :cond_6
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onKeyDown -----------: "

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
    const-string v3, ", "

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, "\n event: "

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, "\n characters: "

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, "\n unicode: "

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, "\n source: "

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, "\n string: "

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, "\n scan: "

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, "\n number: "

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getNumber()C

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, " mCurrentInputMode, "

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, 0x7

    .line 150
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/4 v3, 0x0

    .line 155
    if-ne v1, v2, :cond_0

    .line 156
    .line 157
    return v3

    .line 158
    :cond_0
    const/4 v1, 0x3

    .line 159
    const/4 v2, 0x2

    .line 160
    const/4 v4, 0x4

    .line 161
    const/16 v5, 0x2002

    .line 162
    .line 163
    const/4 v6, 0x1

    .line 164
    if-ne p1, v4, :cond_3

    .line 165
    .line 166
    invoke-static {p2}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_1

    .line 171
    .line 172
    invoke-direct {p0, v1, v6}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    and-int/2addr v1, v5

    .line 182
    if-ne v1, v5, :cond_2

    .line 183
    .line 184
    invoke-direct {p0, v2, v6}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_2
    invoke-direct {p0, v6, v6}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v8, "onkeydown inputdevice1 "

    .line 199
    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v8, " name:"

    .line 211
    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    if-eqz v8, :cond_4

    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    goto :goto_0

    .line 230
    :cond_4
    const-string v8, ""

    .line 231
    .line 232
    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v8, "onkeydown inputdevice2 "

    .line 248
    .line 249
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_5

    .line 271
    .line 272
    invoke-direct {p0, v1, v6}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/InputDeviceUtil;->isRemoteControlDevice(ILandroid/view/KeyEvent;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_6

    .line 281
    .line 282
    invoke-direct {p0, v6, v6}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_6
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/InputDeviceUtil;->isMouseOrKeyboardDevice(ILandroid/view/KeyEvent;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_7

    .line 291
    .line 292
    invoke-direct {p0, v2, v6}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_7
    const/16 v1, 0x9

    .line 297
    .line 298
    invoke-direct {p0, v1, v6}, Lcom/haima/hmcp/model/EventModel;->sendInputDevice(II)V

    .line 299
    .line 300
    .line 301
    :goto_1
    const/16 v1, 0x17

    .line 302
    .line 303
    if-eq p1, v4, :cond_9

    .line 304
    .line 305
    const/16 v5, 0x6f

    .line 306
    .line 307
    if-eq p1, v5, :cond_8

    .line 308
    .line 309
    packed-switch p1, :pswitch_data_0

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_8
    return v3

    .line 314
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    and-int/2addr v7, v5

    .line 319
    if-ne v7, v5, :cond_a

    .line 320
    .line 321
    const/16 v7, 0x3df

    .line 322
    .line 323
    invoke-direct {p0, v7}, Lcom/haima/hmcp/model/EventModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isNativeDpadGame()Z

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    if-eqz v8, :cond_a

    .line 332
    .line 333
    if-eqz v7, :cond_a

    .line 334
    .line 335
    iget p1, v7, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 336
    .line 337
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-direct {p0, p1, v3, p2}, Lcom/haima/hmcp/model/EventModel;->sendDpadKey(IILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string p2, "hmcprequest ==sendEventContent = \u9f20\u6807\u53f3\u952e\u6620\u5c04---down "

    .line 350
    .line 351
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget p2, v7, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 355
    .line 356
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return v6

    .line 367
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    and-int/2addr v7, v5

    .line 372
    if-ne v7, v5, :cond_c

    .line 373
    .line 374
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->hasSightBeadCoord()Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-nez p1, :cond_b

    .line 379
    .line 380
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->clickSightBeadButton()V

    .line 381
    .line 382
    .line 383
    :cond_b
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->mouseBackEvent()V

    .line 384
    .line 385
    .line 386
    return v6

    .line 387
    :cond_c
    :pswitch_0
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    if-ne v5, v4, :cond_d

    .line 392
    .line 393
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-gtz v5, :cond_d

    .line 398
    .line 399
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->isDirectionKey(I)Z

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-eqz v5, :cond_d

    .line 404
    .line 405
    iget-object v5, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 406
    .line 407
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getDpadPoint()Lcom/haima/hmcp/beans/FPoint;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/haima/hmcp/model/DpadInputModel;->processDpadInput(IILcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/FPoint;)V

    .line 416
    .line 417
    .line 418
    :cond_d
    :goto_2
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v8, "keyCodeToSend:"

    .line 428
    .line 429
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v8, " mCurrentInputMode: "

    .line 436
    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    invoke-static {v0, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    const-string v8, "keyDown"

    .line 459
    .line 460
    if-ne v7, v4, :cond_14

    .line 461
    .line 462
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-eqz v2, :cond_e

    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/EventModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 473
    .line 474
    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v2, "onKeyDown -----------:KeyEvent.isGamepadButton(keyCode) "

    .line 481
    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-direct {p0, p2, v6}, Lcom/haima/hmcp/model/EventModel;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_5

    .line 499
    .line 500
    :cond_e
    invoke-static {p2}, Lcom/haima/hmcp/utils/KeyMapUtil;->isDpadNumKey(Landroid/view/KeyEvent;)Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-nez v0, :cond_11

    .line 505
    .line 506
    if-ne p1, v1, :cond_f

    .line 507
    .line 508
    goto :goto_3

    .line 509
    :cond_f
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getKeyboardMode()I

    .line 510
    .line 511
    .line 512
    move-result p1

    .line 513
    if-nez p1, :cond_10

    .line 514
    .line 515
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 516
    .line 517
    invoke-virtual {p1, p2, v6}, Lcom/haima/hmcp/model/KeyboardInputModel;->processKeyboard(Landroid/view/KeyEvent;I)Z

    .line 518
    .line 519
    .line 520
    goto/16 :goto_5

    .line 521
    .line 522
    :cond_10
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getKeyboardMode()I

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    if-ne p1, v6, :cond_27

    .line 527
    .line 528
    if-eqz v5, :cond_27

    .line 529
    .line 530
    invoke-direct {p0, v8, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_5

    .line 534
    .line 535
    :cond_11
    :goto_3
    invoke-static {p2}, Lcom/haima/hmcp/utils/KeyMapUtil;->isKeyboardEvent(Landroid/view/KeyEvent;)Z

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    if-eqz p1, :cond_13

    .line 540
    .line 541
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getKeyboardMode()I

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    if-nez p1, :cond_12

    .line 546
    .line 547
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 548
    .line 549
    invoke-virtual {p1, p2, v6}, Lcom/haima/hmcp/model/KeyboardInputModel;->processKeyboard(Landroid/view/KeyEvent;I)Z

    .line 550
    .line 551
    .line 552
    goto/16 :goto_5

    .line 553
    .line 554
    :cond_12
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getKeyboardMode()I

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-ne p1, v6, :cond_27

    .line 559
    .line 560
    if-eqz v5, :cond_27

    .line 561
    .line 562
    invoke-direct {p0, v8, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_5

    .line 566
    .line 567
    :cond_13
    invoke-direct {p0, p2, v6}, Lcom/haima/hmcp/model/EventModel;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_5

    .line 571
    .line 572
    :cond_14
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    if-ne v4, v2, :cond_18

    .line 577
    .line 578
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-eqz v2, :cond_15

    .line 583
    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    const-string v2, "onKeyDown -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) "

    .line 590
    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const/16 v0, 0x60

    .line 605
    .line 606
    if-ne p1, v0, :cond_27

    .line 607
    .line 608
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 609
    .line 610
    .line 611
    move-result p1

    .line 612
    if-nez p1, :cond_27

    .line 613
    .line 614
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/EventModel;->processMouseMove(Landroid/view/KeyEvent;)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_5

    .line 618
    .line 619
    :cond_15
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->isDirectionKey(I)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_27

    .line 624
    .line 625
    if-eq p1, v1, :cond_16

    .line 626
    .line 627
    const/16 v0, 0x42

    .line 628
    .line 629
    if-ne p1, v0, :cond_17

    .line 630
    .line 631
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    if-nez p1, :cond_27

    .line 636
    .line 637
    :cond_17
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/EventModel;->processMouseMove(Landroid/view/KeyEvent;)V

    .line 638
    .line 639
    .line 640
    goto/16 :goto_5

    .line 641
    .line 642
    :cond_18
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    const/4 v2, 0x5

    .line 647
    if-ne v1, v2, :cond_1b

    .line 648
    .line 649
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    if-eqz p1, :cond_19

    .line 654
    .line 655
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 660
    .line 661
    .line 662
    :cond_19
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeMap()Z

    .line 663
    .line 664
    .line 665
    move-result p1

    .line 666
    if-eqz p1, :cond_1a

    .line 667
    .line 668
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/EventModel;->processDpadKey(Landroid/view/KeyEvent;)V

    .line 669
    .line 670
    .line 671
    goto/16 :goto_5

    .line 672
    .line 673
    :cond_1a
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeInput()Z

    .line 674
    .line 675
    .line 676
    move-result p1

    .line 677
    if-eqz p1, :cond_27

    .line 678
    .line 679
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->clearDpadMapDownEvent()V

    .line 680
    .line 681
    .line 682
    if-eqz v5, :cond_27

    .line 683
    .line 684
    invoke-direct {p0, v8, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_5

    .line 688
    .line 689
    :cond_1b
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    const/4 v2, 0x6

    .line 694
    const-string v4, "1"

    .line 695
    .line 696
    if-ne v1, v2, :cond_1e

    .line 697
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->isBattleHandleEvent(ILandroid/view/KeyEvent;)Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-nez v0, :cond_27

    .line 703
    .line 704
    if-eqz v5, :cond_1d

    .line 705
    .line 706
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->interceptKey(I)Z

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    if-eqz p1, :cond_1c

    .line 711
    .line 712
    return v3

    .line 713
    :cond_1c
    invoke-direct {p0, v8, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_5

    .line 717
    .line 718
    :cond_1d
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 731
    .line 732
    .line 733
    move-result p2

    .line 734
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object p2

    .line 738
    invoke-direct {p0, v4, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_5

    .line 742
    .line 743
    :cond_1e
    if-eqz v5, :cond_20

    .line 744
    .line 745
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->interceptKey(I)Z

    .line 746
    .line 747
    .line 748
    move-result p1

    .line 749
    if-eqz p1, :cond_1f

    .line 750
    .line 751
    return v3

    .line 752
    :cond_1f
    invoke-direct {p0, v8, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 753
    .line 754
    .line 755
    goto :goto_5

    .line 756
    :cond_20
    const/16 v1, 0x69

    .line 757
    .line 758
    const/16 v2, 0x68

    .line 759
    .line 760
    if-eq p1, v2, :cond_22

    .line 761
    .line 762
    if-ne p1, v1, :cond_21

    .line 763
    .line 764
    goto :goto_4

    .line 765
    :cond_21
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 766
    .line 767
    .line 768
    move-result-object p1

    .line 769
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 778
    .line 779
    .line 780
    move-result p2

    .line 781
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object p2

    .line 785
    invoke-direct {p0, v4, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    goto :goto_5

    .line 789
    :cond_22
    :goto_4
    if-ne p1, v2, :cond_23

    .line 790
    .line 791
    iget-boolean v5, p0, Lcom/haima/hmcp/model/EventModel;->ltMotionHandled:Z

    .line 792
    .line 793
    if-eqz v5, :cond_24

    .line 794
    .line 795
    :cond_23
    if-ne p1, v1, :cond_26

    .line 796
    .line 797
    iget-boolean v1, p0, Lcom/haima/hmcp/model/EventModel;->rtMotionHandled:Z

    .line 798
    .line 799
    if-nez v1, :cond_26

    .line 800
    .line 801
    :cond_24
    const-string v1, "key event handle trigger event down"

    .line 802
    .line 803
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    invoke-virtual {v1, v5}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 819
    .line 820
    .line 821
    move-result p2

    .line 822
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object p2

    .line 826
    invoke-direct {p0, v4, p2, v1}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    if-ne p1, v2, :cond_25

    .line 830
    .line 831
    iput-boolean v6, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 832
    .line 833
    const-string p1, "LT key down handled by onKeyDown"

    .line 834
    .line 835
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    goto :goto_5

    .line 839
    :cond_25
    iput-boolean v6, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 840
    .line 841
    const-string p1, "RT key down handled by onKeyDown"

    .line 842
    .line 843
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    goto :goto_5

    .line 847
    :cond_26
    const-string p1, "key event LT/RT already handled by motion event, skip key event"

    .line 848
    .line 849
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    :cond_27
    :goto_5
    return v3

    .line 853
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onKeyUp -----------: "

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
    const/4 v1, 0x7

    .line 24
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    return v3

    .line 32
    :cond_0
    const/16 v1, 0x17

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq p1, v2, :cond_2

    .line 37
    .line 38
    const/16 v5, 0x6f

    .line 39
    .line 40
    if-eq p1, v5, :cond_1

    .line 41
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return v3

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/16 v6, 0x2002

    .line 52
    .line 53
    and-int/2addr v5, v6

    .line 54
    if-ne v5, v6, :cond_3

    .line 55
    .line 56
    const/16 v5, 0x3df

    .line 57
    .line 58
    invoke-direct {p0, v5}, Lcom/haima/hmcp/model/EventModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isNativeDpadGame()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    iget p1, v5, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 71
    .line 72
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-direct {p0, p1, v1, p2}, Lcom/haima/hmcp/model/EventModel;->sendDpadKey(IILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string p2, "hmcprequest ==sendEventContent = \u9f20\u6807\u53f3\u952e\u6620\u5c04---up "

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget p2, v5, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :cond_3
    :pswitch_0
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-ne v5, v2, :cond_4

    .line 108
    .line 109
    iget-object v5, p0, Lcom/haima/hmcp/model/EventModel;->dpadInputModel:Lcom/haima/hmcp/model/DpadInputModel;

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getDpadPoint()Lcom/haima/hmcp/beans/FPoint;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v5, p1, v4, v6, v7}, Lcom/haima/hmcp/model/DpadInputModel;->processDpadInput(IILcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/FPoint;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    const-string v7, "keyUp"

    .line 131
    .line 132
    if-ne v6, v2, :cond_b

    .line 133
    .line 134
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/EventModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 145
    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v2, "onKeyup -----------:KeyEvent.isGamepadButton(keyCode) "

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, p2, v4}, Lcom/haima/hmcp/model/EventModel;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_5
    invoke-static {p2}, Lcom/haima/hmcp/utils/KeyMapUtil;->isDpadNumKey(Landroid/view/KeyEvent;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_8

    .line 177
    .line 178
    if-ne p1, v1, :cond_6

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_6
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeMap()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_7

    .line 186
    .line 187
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 188
    .line 189
    invoke-virtual {p1, p2, v4}, Lcom/haima/hmcp/model/KeyboardInputModel;->processKeyboard(Landroid/view/KeyEvent;I)Z

    .line 190
    .line 191
    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :cond_7
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeInput()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_1c

    .line 199
    .line 200
    if-eqz v5, :cond_1c

    .line 201
    .line 202
    invoke-direct {p0, v7, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :cond_8
    :goto_1
    const-string p1, "onKeyup  isNumKey(keyCode) -----------: mCurrentInputMode == GAMEPAD_MODE_MAP"

    .line 208
    .line 209
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {p2}, Lcom/haima/hmcp/utils/KeyMapUtil;->isKeyboardEvent(Landroid/view/KeyEvent;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_a

    .line 217
    .line 218
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeMap()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_9

    .line 223
    .line 224
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 225
    .line 226
    invoke-virtual {p1, p2, v4}, Lcom/haima/hmcp/model/KeyboardInputModel;->processKeyboard(Landroid/view/KeyEvent;I)Z

    .line 227
    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_9
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeInput()Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_1c

    .line 236
    .line 237
    if-eqz v5, :cond_1c

    .line 238
    .line 239
    invoke-direct {p0, v7, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :cond_a
    invoke-direct {p0, p2, v4}, Lcom/haima/hmcp/model/EventModel;->mappingProcessKey(Landroid/view/KeyEvent;I)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_b
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-ne v1, v4, :cond_d

    .line 254
    .line 255
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_c

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v2, "onKeyup -----------:KeyEvent.GAMEPAD_MODE_MOUSE(keyCode) "

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const/16 v0, 0x60

    .line 282
    .line 283
    if-ne p1, v0, :cond_1c

    .line 284
    .line 285
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/EventModel;->processMouseMove(Landroid/view/KeyEvent;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :cond_c
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->isDirectionKey(I)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_1c

    .line 295
    .line 296
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/EventModel;->processMouseMove(Landroid/view/KeyEvent;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :cond_d
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    const/4 v2, 0x5

    .line 306
    if-ne v1, v2, :cond_10

    .line 307
    .line 308
    invoke-static {p1}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_e

    .line 313
    .line 314
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->sendGamePadStart(Landroid/view/InputDevice;)V

    .line 319
    .line 320
    .line 321
    :cond_e
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeMap()Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_f

    .line 326
    .line 327
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/EventModel;->processDpadKey(Landroid/view/KeyEvent;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_3

    .line 331
    .line 332
    :cond_f
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isKeyboardPadModeInput()Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_1c

    .line 337
    .line 338
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->clearDpadMapDownEvent()V

    .line 339
    .line 340
    .line 341
    if-eqz v5, :cond_1c

    .line 342
    .line 343
    invoke-direct {p0, v7, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_3

    .line 347
    .line 348
    :cond_10
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->getInputType()I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    const/4 v2, 0x6

    .line 353
    const-string v4, "0"

    .line 354
    .line 355
    if-ne v1, v2, :cond_13

    .line 356
    .line 357
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->isBattleHandleEvent(ILandroid/view/KeyEvent;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_1c

    .line 362
    .line 363
    if-eqz v5, :cond_12

    .line 364
    .line 365
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->interceptKey(I)Z

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-eqz p1, :cond_11

    .line 370
    .line 371
    return v3

    .line 372
    :cond_11
    invoke-direct {p0, v7, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_3

    .line 376
    .line 377
    :cond_12
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 390
    .line 391
    .line 392
    move-result p2

    .line 393
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    invoke-direct {p0, v4, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :cond_13
    if-eqz v5, :cond_15

    .line 403
    .line 404
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->interceptKey(I)Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-eqz p1, :cond_14

    .line 409
    .line 410
    return v3

    .line 411
    :cond_14
    invoke-direct {p0, v7, v5}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 412
    .line 413
    .line 414
    goto :goto_3

    .line 415
    :cond_15
    const/16 v1, 0x69

    .line 416
    .line 417
    const/16 v2, 0x68

    .line 418
    .line 419
    if-eq p1, v2, :cond_17

    .line 420
    .line 421
    if-ne p1, v1, :cond_16

    .line 422
    .line 423
    goto :goto_2

    .line 424
    :cond_16
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 437
    .line 438
    .line 439
    move-result p2

    .line 440
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-direct {p0, v4, p2, p1}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto :goto_3

    .line 448
    :cond_17
    :goto_2
    if-ne p1, v2, :cond_18

    .line 449
    .line 450
    iget-boolean v5, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 451
    .line 452
    if-nez v5, :cond_19

    .line 453
    .line 454
    :cond_18
    if-ne p1, v1, :cond_1b

    .line 455
    .line 456
    iget-boolean v1, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 457
    .line 458
    if-eqz v1, :cond_1b

    .line 459
    .line 460
    :cond_19
    const-string v1, "key event handle trigger event up"

    .line 461
    .line 462
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    invoke-virtual {v1, v5}, Lcom/haima/hmcp/business/GamePadManager;->getGamePadNum(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 478
    .line 479
    .line 480
    move-result p2

    .line 481
    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    invoke-direct {p0, v4, p2, v1}, Lcom/haima/hmcp/model/EventModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    if-ne p1, v2, :cond_1a

    .line 489
    .line 490
    iput-boolean v3, p0, Lcom/haima/hmcp/model/EventModel;->ltKeyDownHandled:Z

    .line 491
    .line 492
    const-string p1, "LT key up handled by onKeyUp, complete click cycle, reset state"

    .line 493
    .line 494
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    goto :goto_3

    .line 498
    :cond_1a
    iput-boolean v3, p0, Lcom/haima/hmcp/model/EventModel;->rtKeyDownHandled:Z

    .line 499
    .line 500
    const-string p1, "RT key up handled by onKeyUp, complete click cycle, reset state"

    .line 501
    .line 502
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    goto :goto_3

    .line 506
    :cond_1b
    const-string p1, "key event LT/RT not handled by key down, skip key up"

    .line 507
    .line 508
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :cond_1c
    :goto_3
    return v3

    .line 512
    nop

    .line 513
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const/16 v0, 0x3de

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x2002

    .line 12
    .line 13
    and-int/2addr v1, v2

    .line 14
    if-ne v1, v2, :cond_2

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventModel;->isNativeDpadGame()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x17

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget p1, v0, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {p0, p1, v1, v2}, Lcom/haima/hmcp/model/EventModel;->sendDpadKey(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v2, "hmcprequest ==sendEventContent = \u9f20\u6807\u5de6\u952e\u6620\u5c04---down "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ne p1, v3, :cond_1

    .line 73
    .line 74
    iget p1, v0, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 75
    .line 76
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-direct {p0, p1, v3, v1}, Lcom/haima/hmcp/model/EventModel;->sendDpadKey(IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lcom/haima/hmcp/model/EventModel;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "hmcprequest ==sendEventContent = \u9f20\u6807\u5de6\u952e\u6620\u5c04---up "

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_0
    return v3

    .line 108
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventModel;->armMouseHandleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    return p1
.end method

.method public sendGamepadKeyEvent(IIFFFF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->joystickInputModel:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/model/JoystickInputModel;->sendGamepadKeyEvent(IIFFFF)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setEventMappingModel(Lcom/haima/hmcp/model/EventMappingModel;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->setEventMappingModel(Lcom/haima/hmcp/model/EventMappingModel;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->joystickInputModel:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/JoystickInputModel;->setEventMappingModel(Lcom/haima/hmcp/model/EventMappingModel;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setKeyboardDirectionDefault()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel;->keyboardInputModel:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/model/KeyboardInputModel;->setKeyboardDirectionDefault()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/EventModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel;->listener:Lcom/haima/hmcp/listeners/EventModelListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMorePointIsRun(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/model/EventModel;->morePointIsRun:Z

    .line 2
    .line 3
    return-void
.end method
