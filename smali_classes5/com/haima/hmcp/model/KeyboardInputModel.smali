.class public Lcom/haima/hmcp/model/KeyboardInputModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyboardInputModel"


# instance fields
.field private aIsDefault:Z

.field private dIsDefault:Z

.field private eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

.field private fX:F

.field private fY:F

.field private fnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

.field private keyboardX:I

.field private keyboardY:I

.field private listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

.field private mFnDown:Z

.field private sIsDefault:Z

.field private wIsDefault:Z


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
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardX:I

    .line 13
    .line 14
    iput v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardY:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fX:F

    .line 18
    .line 19
    iput v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fY:F

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->wIsDefault:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->aIsDefault:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->sIsDefault:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->dIsDefault:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 31
    .line 32
    return-void
.end method

.method private KeyboardEventMapIsEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "KeyboardEventMapIsEmpty fail, eventMappingModel is null"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v1, 0x1

    .line 27
    :cond_2
    return v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/model/KeyboardInputModel;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fX:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/model/KeyboardInputModel;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fY:F

    .line 2
    .line 3
    return p0
.end method

.method private cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/listeners/KeyboardInputModelListener;->onCacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

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

.method private cacheModeMapEvent2(IFFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/listeners/KeyboardInputModelListener;->onCacheModeMapEvent2(IFFI)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "cacheModeMapEvent2 fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private cleanFnModeMapEvent(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/KeyboardInputModelListener;->onCleanFnModeMapEvent(IZ)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "cleanFnModeMapEvent fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private clickSightBeadButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/KeyboardInputModelListener;->onSightBeadButtonClick()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

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

.method private convertFPoint(Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/beans/FPoint;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 6
    .line 7
    iget v1, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 8
    .line 9
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private getKeyboardDirection()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "getKeyboardDirection fail, eventMappingModel is null"

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
    const/16 v1, 0x378

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingKeyboardEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private getMappingKeyboardEvent(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "getMappingKeyboardEvent fail, eventMappingModel is null"

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
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingKeyboardEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private getSightBeadCoord()Lcom/haima/hmcp/beans/PointCoord;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "getSightBeadCoord fail, eventMappingModel is null"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v1

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
    sget-object v0, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "getSightBeadCoord fail, buttonMappingUtil is null"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    iget-object v0, v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;->mSightbBeadCoord:Lcom/haima/hmcp/beans/PointCoord;

    .line 29
    .line 30
    return-object v0
.end method

.method private isMorePointRun()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/KeyboardInputModelListener;->onMorePointRun()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "isMorePointRun fail"

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

.method private sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/haima/hmcp/model/KeyboardInputModel;->convertFPoint(Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/beans/FPoint;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/haima/hmcp/model/KeyboardInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    :cond_0
    return v0
.end method

.method private sendKeyboardEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->convertFPoint(Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/beans/FPoint;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v1, p1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/haima/hmcp/model/KeyboardInputModel;->cacheModeMapEvent2(IFFI)V

    :cond_0
    return v0
.end method

.method private sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/KeyboardInputModelListener;->onSendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string p2, "sendMorePointEvent fail"

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

.method private sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/MotionEventUtil;->getSendMotionEventContent(ILcom/haima/hmcp/beans/FPoint;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "==sendEventContent = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/KeyboardInputModelListener;->onEventSend(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private startKeyboardDirectionTimer(Lcom/haima/hmcp/beans/PointCoord;II)V
    .locals 13

    .line 1
    move-object v11, p0

    .line 2
    iget-object v0, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v12, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 7
    .line 8
    const-wide/16 v2, 0xfa

    .line 9
    .line 10
    const-wide/16 v4, 0x32

    .line 11
    .line 12
    iget v9, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->fX:F

    .line 13
    .line 14
    iget v10, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->fY:F

    .line 15
    .line 16
    move-object v0, v12

    .line 17
    move-object v1, p0

    .line 18
    move-object v6, p1

    .line 19
    move v7, p2

    .line 20
    move/from16 v8, p3

    .line 21
    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;-><init>(Lcom/haima/hmcp/model/KeyboardInputModel;JJLcom/haima/hmcp/beans/PointCoord;IIFF)V

    .line 23
    .line 24
    .line 25
    iput-object v12, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 26
    .line 27
    invoke-virtual {v12, p0}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->setListener(Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 37
    .line 38
    .line 39
    iget-object v0, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->setListener(Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    :cond_1
    new-instance v12, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 52
    .line 53
    const-wide/16 v2, 0xfa

    .line 54
    .line 55
    const-wide/16 v4, 0x32

    .line 56
    .line 57
    iget v9, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->fX:F

    .line 58
    .line 59
    iget v10, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->fY:F

    .line 60
    .line 61
    move-object v0, v12

    .line 62
    move-object v1, p0

    .line 63
    move-object v6, p1

    .line 64
    move v7, p2

    .line 65
    move/from16 v8, p3

    .line 66
    .line 67
    invoke-direct/range {v0 .. v10}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;-><init>(Lcom/haima/hmcp/model/KeyboardInputModel;JJLcom/haima/hmcp/beans/PointCoord;IIFF)V

    .line 68
    .line 69
    .line 70
    iput-object v12, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 71
    .line 72
    invoke-virtual {v12, p0}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->setListener(Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v11, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardTimer:Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearKeyDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 8
    .line 9
    return-void
.end method

.method public onEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpdatePoint(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fY:F

    .line 4
    .line 5
    return-void
.end method

.method public processKeyboard(Landroid/view/KeyEvent;I)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1c

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->KeyboardEventMapIsEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " : "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "processKeyboard"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->getKeyboardDirection()Lcom/haima/hmcp/beans/PointCoord;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->isJoyPadKey(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v3, 0x1

    .line 58
    if-eqz p1, :cond_e

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    return v1

    .line 63
    :cond_1
    iget p1, v2, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    cmpl-float p1, p1, v4

    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    sget p1, Lcom/haima/hmcp/Constants;->KEYBOARD_RX:F

    .line 71
    .line 72
    iput p1, v2, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 73
    .line 74
    :cond_2
    iget p1, v2, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 75
    .line 76
    cmpl-float p1, p1, v4

    .line 77
    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    sget p1, Lcom/haima/hmcp/Constants;->KEYBOARD_RY:F

    .line 81
    .line 82
    iput p1, v2, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 83
    .line 84
    :cond_3
    const/16 p1, 0x1d

    .line 85
    .line 86
    const/4 v5, 0x3

    .line 87
    const/4 v6, 0x2

    .line 88
    if-eq v0, p1, :cond_a

    .line 89
    .line 90
    const/16 p1, 0x20

    .line 91
    .line 92
    if-eq v0, p1, :cond_8

    .line 93
    .line 94
    const/16 p1, 0x2f

    .line 95
    .line 96
    if-eq v0, p1, :cond_6

    .line 97
    .line 98
    const/16 p1, 0x33

    .line 99
    .line 100
    if-eq v0, p1, :cond_4

    .line 101
    .line 102
    :goto_0
    const/4 p1, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-boolean p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->wIsDefault:Z

    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    if-ne p2, v6, :cond_5

    .line 109
    .line 110
    return v1

    .line 111
    :cond_5
    mul-int/lit8 p2, p2, 0x2

    .line 112
    .line 113
    sub-int/2addr p2, v5

    .line 114
    add-int/2addr p2, v1

    .line 115
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->wIsDefault:Z

    .line 116
    .line 117
    move p1, p2

    .line 118
    goto :goto_1

    .line 119
    :cond_6
    iget-boolean p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->sIsDefault:Z

    .line 120
    .line 121
    if-eqz p1, :cond_7

    .line 122
    .line 123
    if-ne p2, v6, :cond_7

    .line 124
    .line 125
    return v1

    .line 126
    :cond_7
    mul-int/lit8 p2, p2, 0x2

    .line 127
    .line 128
    rsub-int/lit8 p1, p2, 0x3

    .line 129
    .line 130
    add-int/2addr p1, v1

    .line 131
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->sIsDefault:Z

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_8
    iget-boolean p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->dIsDefault:Z

    .line 135
    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    if-ne p2, v6, :cond_9

    .line 139
    .line 140
    return v1

    .line 141
    :cond_9
    mul-int/lit8 p2, p2, 0x2

    .line 142
    .line 143
    rsub-int/lit8 p1, p2, 0x3

    .line 144
    .line 145
    add-int/2addr p1, v1

    .line 146
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->dIsDefault:Z

    .line 147
    .line 148
    move v1, p1

    .line 149
    goto :goto_0

    .line 150
    :cond_a
    iget-boolean p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->aIsDefault:Z

    .line 151
    .line 152
    if-eqz p1, :cond_b

    .line 153
    .line 154
    if-ne p2, v6, :cond_b

    .line 155
    .line 156
    return v1

    .line 157
    :cond_b
    mul-int/lit8 p2, p2, 0x2

    .line 158
    .line 159
    sub-int/2addr p2, v5

    .line 160
    add-int/2addr p2, v1

    .line 161
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->aIsDefault:Z

    .line 162
    .line 163
    move v1, p2

    .line 164
    goto :goto_0

    .line 165
    :goto_1
    iget p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardX:I

    .line 166
    .line 167
    if-nez p2, :cond_c

    .line 168
    .line 169
    iget p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardY:I

    .line 170
    .line 171
    if-nez p2, :cond_c

    .line 172
    .line 173
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/KeyboardInputModel;->convertFPoint(Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/beans/FPoint;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-direct {p0, v3, p2}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 178
    .line 179
    .line 180
    :cond_c
    iget p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardX:I

    .line 181
    .line 182
    add-int/2addr p2, v1

    .line 183
    iput p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardX:I

    .line 184
    .line 185
    iget v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardY:I

    .line 186
    .line 187
    add-int/2addr v0, p1

    .line 188
    iput v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardY:I

    .line 189
    .line 190
    invoke-direct {p0, v2, p2, v0}, Lcom/haima/hmcp/model/KeyboardInputModel;->startKeyboardDirectionTimer(Lcom/haima/hmcp/beans/PointCoord;II)V

    .line 191
    .line 192
    .line 193
    iget p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardX:I

    .line 194
    .line 195
    if-nez p1, :cond_d

    .line 196
    .line 197
    iget p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardY:I

    .line 198
    .line 199
    if-nez p1, :cond_d

    .line 200
    .line 201
    iput v4, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fX:F

    .line 202
    .line 203
    iput v4, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fY:F

    .line 204
    .line 205
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/KeyboardInputModel;->convertFPoint(Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/beans/FPoint;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, v5, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, v2}, Lcom/haima/hmcp/model/KeyboardInputModel;->convertFPoint(Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/beans/FPoint;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, v6, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 217
    .line 218
    .line 219
    :cond_d
    return v3

    .line 220
    :cond_e
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->getSightBeadCoord()Lcom/haima/hmcp/beans/PointCoord;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    if-eqz p1, :cond_f

    .line 225
    .line 226
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 227
    .line 228
    if-ne v0, p1, :cond_f

    .line 229
    .line 230
    if-ne p2, v3, :cond_f

    .line 231
    .line 232
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->clickSightBeadButton()V

    .line 233
    .line 234
    .line 235
    return v1

    .line 236
    :cond_f
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/KeyboardInputModel;->getMappingKeyboardEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-nez p1, :cond_10

    .line 241
    .line 242
    iget-boolean v2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 243
    .line 244
    if-nez v2, :cond_10

    .line 245
    .line 246
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 247
    .line 248
    const-string p2, "processKeyboard coord is null"

    .line 249
    .line 250
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return v1

    .line 254
    :cond_10
    if-eqz p1, :cond_14

    .line 255
    .line 256
    iget-boolean v2, p1, Lcom/haima/hmcp/beans/PointCoord;->isFn:Z

    .line 257
    .line 258
    if-eqz v2, :cond_14

    .line 259
    .line 260
    if-ne p2, v3, :cond_11

    .line 261
    .line 262
    iput-boolean v3, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 263
    .line 264
    iget-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 274
    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v2, "onKeyDown -----------add fn "

    .line 281
    .line 282
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_11
    iget-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-lez p1, :cond_12

    .line 303
    .line 304
    iget-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    check-cast p1, Ljava/lang/Integer;

    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-ne p1, v0, :cond_12

    .line 317
    .line 318
    iget-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    invoke-direct {p0, v0, v3}, Lcom/haima/hmcp/model/KeyboardInputModel;->cleanFnModeMapEvent(IZ)V

    .line 324
    .line 325
    .line 326
    :cond_12
    iget-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_13

    .line 333
    .line 334
    iput-boolean v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 335
    .line 336
    :cond_13
    sget-object p1, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 337
    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v2, "onKeyDown -----------remove fn "

    .line 344
    .line 345
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_2
    return v1

    .line 359
    :cond_14
    sget-object v2, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 360
    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v5, "onKeyDown -----------actionType "

    .line 367
    .line 368
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v5, " keyCode"

    .line 375
    .line 376
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v5, " mFnDown"

    .line 383
    .line 384
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    iget-boolean v5, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 388
    .line 389
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    if-ne p2, v3, :cond_19

    .line 400
    .line 401
    iget-boolean v2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 402
    .line 403
    if-eqz v2, :cond_18

    .line 404
    .line 405
    iget-object v2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    const/4 v4, 0x0

    .line 412
    :goto_3
    if-lez v2, :cond_17

    .line 413
    .line 414
    iget-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fnList:Ljava/util/ArrayList;

    .line 415
    .line 416
    add-int/lit8 v5, v2, -0x1

    .line 417
    .line 418
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    check-cast p1, Ljava/lang/Integer;

    .line 423
    .line 424
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    mul-int/lit16 p1, p1, 0x3e8

    .line 429
    .line 430
    add-int/2addr p1, v0

    .line 431
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->getMappingKeyboardEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    if-eqz v5, :cond_16

    .line 436
    .line 437
    iget-object v6, v5, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    .line 438
    .line 439
    if-eqz v6, :cond_15

    .line 440
    .line 441
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-lez v6, :cond_15

    .line 446
    .line 447
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->isMorePointRun()Z

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    if-nez v6, :cond_15

    .line 452
    .line 453
    invoke-direct {p0, v5, p2}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z

    .line 454
    .line 455
    .line 456
    goto :goto_4

    .line 457
    :cond_15
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->isMorePointRun()Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-nez v6, :cond_16

    .line 462
    .line 463
    sget-object v4, Lcom/haima/hmcp/model/KeyboardInputModel;->TAG:Ljava/lang/String;

    .line 464
    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    const-string v7, "onKeyDown -----------sendKeboardEvent actionType:"

    .line 471
    .line 472
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v7, " code :"

    .line 479
    .line 480
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    invoke-static {v4, v6}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-direct {p0, v5, p2, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendKeyboardEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 494
    .line 495
    .line 496
    const/4 v4, 0x1

    .line 497
    :cond_16
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 498
    .line 499
    move-object p1, v5

    .line 500
    goto :goto_3

    .line 501
    :cond_17
    if-nez v4, :cond_1a

    .line 502
    .line 503
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->isMorePointRun()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-nez v0, :cond_1a

    .line 508
    .line 509
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 510
    .line 511
    .line 512
    move-result p1

    .line 513
    return p1

    .line 514
    :cond_18
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    return p1

    .line 519
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    const-string v4, "up action type"

    .line 525
    .line 526
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iget-boolean v2, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->mFnDown:Z

    .line 540
    .line 541
    if-eqz v2, :cond_1b

    .line 542
    .line 543
    invoke-direct {p0}, Lcom/haima/hmcp/model/KeyboardInputModel;->isMorePointRun()Z

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    if-nez p1, :cond_1a

    .line 548
    .line 549
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/model/KeyboardInputModel;->cleanFnModeMapEvent(IZ)V

    .line 550
    .line 551
    .line 552
    :cond_1a
    return v1

    .line 553
    :cond_1b
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/model/KeyboardInputModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    return p1

    .line 558
    :cond_1c
    :goto_5
    return v1
.end method

.method public setEventMappingModel(Lcom/haima/hmcp/model/EventMappingModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->eventMappingModel:Lcom/haima/hmcp/model/EventMappingModel;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyboardDirectionDefault()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->wIsDefault:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->aIsDefault:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->sIsDefault:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->dIsDefault:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardX:I

    .line 12
    .line 13
    iput v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->keyboardY:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fX:F

    .line 17
    .line 18
    iput v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->fY:F

    .line 19
    .line 20
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/KeyboardInputModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel;->listener:Lcom/haima/hmcp/listeners/KeyboardInputModelListener;

    .line 2
    .line 3
    return-void
.end method
