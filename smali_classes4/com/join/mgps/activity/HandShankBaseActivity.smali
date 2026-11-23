.class public Lcom/join/mgps/activity/HandShankBaseActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/papa/controller/core/c;


# instance fields
.field mControllerMonitor:Lcom/papa/controller/core/d;

.field private spp4CheckInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->n(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    or-int/2addr v1, v0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    or-int/2addr p1, v1

    .line 16
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/papa/controller/core/d;->o(Landroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    or-int/2addr v1, v0

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    or-int/2addr p1, v1

    .line 26
    return p1
.end method

.method getStickLeftXEvent(FI)Landroid/view/KeyEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "action"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x15

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    cmpl-float p1, p1, v0

    .line 10
    .line 11
    if-lez p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x16

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 18
    .line 19
    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method getStickLeftYEvent(FI)Landroid/view/KeyEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "action"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/16 p1, 0x13

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    cmpl-float p1, p1, v0

    .line 10
    .line 11
    if-lez p1, :cond_1

    .line 12
    .line 13
    const/16 p1, 0x14

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    .line 18
    .line 19
    invoke-direct {v0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method protected getValidDevice(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/HandShankBaseActivity;->inBlackList(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/papa/controller/core/ControllerManager$c;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_1
    return-object v0
.end method

.method protected getValidDeviceCount(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->getValidDevice(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->getValidDevice(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method protected inBlackList(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method protected isBlueEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public onControllerDeviceChanged(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "controllerDevices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/papa/controller/core/ControllerManager$c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onKeyDown(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 0
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
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
    invoke-virtual {p0, p1, p3}, Lcom/join/mgps/activity/HandShankBaseActivity;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onKeyUp(ILcom/papa/controller/core/PadKeyEvent;)V
    .locals 0
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/HandShankBaseActivity;->onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->startMonitor()V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p3}, Lcom/join/mgps/activity/HandShankBaseActivity;->onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 2
    .line 3
    .line 4
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

    return-void
.end method

.method protected onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->stopMonitor()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method padEvent2KeyEvent(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->y()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->w()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/papa/controller/core/PadKeyEvent;->A()F

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->b()I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/papa/controller/core/BaseEvent;->d()J

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/view/KeyEvent;

    .line 19
    .line 20
    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method setControllerDeviceListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/join/mgps/activity/HandShankBaseActivity$a;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/HandShankBaseActivity$a;-><init>(Lcom/join/mgps/activity/HandShankBaseActivity;)V

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

.method public setSpp4CheckInfo(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spp4CheckInfo"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->spp4CheckInfo:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVibrate(II)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

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

.method startMonitor()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/controller/core/d;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/controller/core/d;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Lcom/papa/controller/core/d;->w(Lcom/papa/controller/core/c;Landroid/os/Handler;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->setControllerDeviceListener()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->spp4CheckInfo:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/papa/controller/core/d;->x(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/papa/controller/core/d;->B()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public startVibrate()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/joystick/EaseBreathInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/joystick/EaseBreathInterpolator;-><init>()V

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
    new-instance v0, Lcom/join/mgps/activity/HandShankBaseActivity$b;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HandShankBaseActivity$b;-><init>(Lcom/join/mgps/activity/HandShankBaseActivity;)V

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

.method stopMonitor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity;->mControllerMonitor:Lcom/papa/controller/core/d;

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
