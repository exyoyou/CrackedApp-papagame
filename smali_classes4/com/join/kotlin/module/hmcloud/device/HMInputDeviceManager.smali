.class public Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/core/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;
    }
.end annotation


# instance fields
.field mControllerMonitor:Lcom/papa/controller/core/d;

.field mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->n(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->o(Landroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public getInputDeviceCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->p()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getInputDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method varargs log([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    aget-object v0, p1, v1

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " "

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public onKeyDown(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "padKeyEvent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onKeyPressure(IFLcom/papa/controller/core/PadKeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "pressure",
            "padKeyEvent"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, p1, p3}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onKeyUp(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "padKeyEvent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onLeftStick(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "padMotionEvent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p3}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;->onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onRightStick(FFLcom/papa/controller/core/PadMotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "padMotionEvent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p3}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;->onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onStateEvent(Lcom/papa/controller/core/PadStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padStateEvent"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadStateEvent;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->log([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method setControllerDeviceListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$1;-><init>(Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->v(Lcom/papa/controller/core/ControllerManager$d;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setOnInputDeviceListener(Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mOnInputDeviceListener:Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$OnInputDeviceListener;

    .line 2
    .line 3
    return-void
.end method

.method setVibrate(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intensityL",
            "intensityR"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/papa/controller/core/d;->y(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public startMonitor(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/controller/core/d;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/papa/controller/core/d;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 11
    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/papa/controller/core/d;->w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->setControllerDeviceListener()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa/controller/core/d;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public startVibrate()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/device/EaseBreathInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/device/EaseBreathInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0xff

    .line 8
    .line 9
    filled-new-array {v1, v2}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-wide/16 v2, 0x4b0

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager$2;-><init>(Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public stopMonitor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/device/HMInputDeviceManager;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->F()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
