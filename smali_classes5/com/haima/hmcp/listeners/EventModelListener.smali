.class public interface abstract Lcom/haima/hmcp/listeners/EventModelListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isInterceptKey(I)Z
.end method

.method public abstract onArmMouseHandleTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onBattleHandleEvent(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onEventSend(Ljava/lang/String;)Z
.end method

.method public abstract onGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onGamePadStart(Landroid/view/InputDevice;)V
.end method

.method public abstract onInputDeviceSend(II)V
.end method

.method public abstract onInputType()I
.end method

.method public abstract onKeyboardEvent(Ljava/lang/String;I)V
.end method

.method public abstract onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onKeyboardMode()I
.end method

.method public abstract onListenHover()Z
.end method

.method public abstract onMouseBackEvent()V
.end method

.method public abstract onMouseInputEvent(FF)V
.end method

.method public abstract onNativeDpadGame()Z
.end method

.method public abstract onPlayState()I
.end method

.method public abstract onProcessMouseMove(Landroid/view/MotionEvent;I)V
.end method

.method public abstract onProcessMouseMove(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRemoveDownEventMap(Ljava/lang/String;)V
.end method

.method public abstract onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
.end method

.method public abstract onSightBeadButtonClick()V
.end method
