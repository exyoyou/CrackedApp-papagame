.class public Lcom/haima/hmcp/model/DpadInputModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DpadInputModel"


# instance fields
.field private dpadKeyDown:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dpadPoint:Lcom/haima/hmcp/beans/FPoint;

.field private dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

.field private listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadKeyDown:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/haima/hmcp/beans/FPoint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/model/DpadInputModel;)Lcom/haima/hmcp/beans/FPoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/model/DpadInputModel;ILcom/haima/hmcp/beans/FPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/DpadInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onCacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "cacheModeMapEvent fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private cleanDpadTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->setListener(Lcom/haima/hmcp/listeners/DpadTimerListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private getMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "getMapPointCoord fail"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "getMappingEvent fail"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private getMappingVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onMappingVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getMappingVersion fail"

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

.method private getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

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

.method private isNativeDpadGame()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onIsNativeDpadGame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

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

.method private sendKeyboardEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onSendKeyboardEvent(Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    const-string p2, "sendKeyboardEvent fail"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onSendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    const-string p2, "sendKeyboardEvent fail"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/DpadInputModelListener;->onSendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "sendMotionEvent fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private startDpadTimer(ILcom/haima/hmcp/beans/PointCoord;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/DpadInputModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===startTimer ===="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

    .line 13
    .line 14
    const-wide/16 v3, 0x50

    .line 15
    .line 16
    const-wide/16 v5, 0x14

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/haima/hmcp/model/DpadInputModel;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    move-object v1, v0

    .line 23
    move-object v2, p0

    .line 24
    move v7, p1

    .line 25
    move-object v8, p2

    .line 26
    invoke-direct/range {v1 .. v9}, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;-><init>(Lcom/haima/hmcp/model/DpadInputModel;JJILcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

    .line 30
    .line 31
    new-instance p1, Lcom/haima/hmcp/model/DpadInputModel$1;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/haima/hmcp/model/DpadInputModel$1;-><init>(Lcom/haima/hmcp/model/DpadInputModel;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->setListener(Lcom/haima/hmcp/listeners/DpadTimerListener;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadtimer:Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public clearDpadMapDownEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadKeyDown:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "keyUp"

    .line 24
    .line 25
    invoke-direct {p0, v2, v1}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadKeyDown:Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public getDpadPoint()Lcom/haima/hmcp/beans/FPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public processDpadInput(IILcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/beans/FPoint;)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    new-instance p4, Lcom/haima/hmcp/beans/FPoint;

    .line 9
    .line 10
    iget v0, p3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 11
    .line 12
    iget v2, p3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 13
    .line 14
    invoke-direct {p4, v0, v2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p2, p4}, Lcom/haima/hmcp/model/DpadInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2, v1, v1, p3}, Lcom/haima/hmcp/model/DpadInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/haima/hmcp/model/DpadInputModel;->cleanDpadTimer()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/haima/hmcp/model/DpadInputModel;->startDpadTimer(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    if-ne p2, v0, :cond_2

    .line 32
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_0
    invoke-direct {p0}, Lcom/haima/hmcp/model/DpadInputModel;->cleanDpadTimer()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    invoke-direct {p0, p1, p4}, Lcom/haima/hmcp/model/DpadInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p2, p4}, Lcom/haima/hmcp/model/DpadInputModel;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p2, v1, v1, p3}, Lcom/haima/hmcp/model/DpadInputModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processDpadKey(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/model/DpadInputModel;->getMappingVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/haima/hmcp/model/DpadInputModel;->isNativeDpadGame()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/DpadInputModel;->getMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/DpadInputModel;->getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    if-nez v1, :cond_4

    .line 31
    .line 32
    invoke-static {v0}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string p1, "keyDown"

    .line 45
    .line 46
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "1"

    .line 59
    .line 60
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const-string p1, "keyUp"

    .line 67
    .line 68
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "0"

    .line 81
    .line 82
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :cond_4
    iget v0, v1, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, v0, v1, p1}, Lcom/haima/hmcp/model/DpadInputModel;->sendDpadKey(IILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public sendDpadKey(IILjava/lang/String;)V
    .locals 0

    .line 1
    if-lez p1, :cond_3

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/utils/KeyMapUtil;->androidKeyCode2PASSKey(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p2, "keyDown"

    .line 12
    .line 13
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadKeyDown:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "1"

    .line 27
    .line 28
    invoke-direct {p0, p1, p3}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string p2, "keyUp"

    .line 35
    .line 36
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/haima/hmcp/model/DpadInputModel;->dpadKeyDown:Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string p1, "0"

    .line 50
    .line 51
    invoke-direct {p0, p1, p3}, Lcom/haima/hmcp/model/DpadInputModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/DpadInputModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/DpadInputModel;->listener:Lcom/haima/hmcp/listeners/DpadInputModelListener;

    .line 2
    .line 3
    return-void
.end method
