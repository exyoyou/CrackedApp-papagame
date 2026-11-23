.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initGyroscopeHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->lambda$onAngleChanged$0(FF)V

    return-void
.end method

.method private synthetic lambda$onAngleChanged$0(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGyroscopeActivateMode:Lcom/haima/hmcp/enums/GyroscopeActivateMode;

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/enums/GyroscopeActivateMode;->NO_CURSOR:Lcom/haima/hmcp/enums/GyroscopeActivateMode;

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCursorShowOrHide:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGamePadToMouse()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string p1, "AbsIjkVideoView"

    .line 25
    .line 26
    const-string p2, "gyroscopeActivateMode is no_cursor & mCursorShowOrHide is true"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 33
    .line 34
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenWidth:I

    .line 35
    .line 36
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenHeight:I

    .line 37
    .line 38
    invoke-static {p1, p2, v1, v0}, Lcom/haima/hmcp/business/GyroscopeHelper;->convertAngleToScreenCoords(FFII)Landroid/graphics/Point;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    iget-object v0, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTouchUtil:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget-object p2, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGyroscopeHelper:Lcom/haima/hmcp/business/GyroscopeHelper;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 55
    .line 56
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/haima/hmcp/business/GyroscopeHelper;->isXAxisReverse()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGyroscopeHelper:Lcom/haima/hmcp/business/GyroscopeHelper;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/haima/hmcp/business/GyroscopeHelper;->isYAxisReverse()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseMoveGyroscope(IIZZ)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method


# virtual methods
.method public onAngleChanged(FFF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "=sensorSend=onAngleChanged: xDegrees="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " yDegrees="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " zDegrees="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string v0, "AbsIjkVideoView"

    .line 35
    .line 36
    invoke-static {v0, p3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 40
    .line 41
    iget-object p3, p3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v0, Lcom/haima/hmcp/widgets/s;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/widgets/s;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$13;FF)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
