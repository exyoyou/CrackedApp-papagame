.class public interface abstract Lcom/haima/hmcp/listeners/JoystickInputModelListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V
.end method

.method public abstract onEventSend(Ljava/lang/String;)Z
.end method

.method public abstract onGamePadModeDpadEvent(Landroid/view/KeyEvent;I)V
.end method

.method public abstract onGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onGamePadStart(Landroid/view/InputDevice;)V
.end method

.method public abstract onInputType()I
.end method

.method public abstract onMappingProcessKey(Landroid/view/KeyEvent;I)V
.end method

.method public abstract onMorePointIsRun()Z
.end method

.method public abstract onMouseInputEvent(FF)V
.end method

.method public abstract onMoveSpeed()F
.end method

.method public abstract onProcessDpadKey(Landroid/view/KeyEvent;)V
.end method

.method public abstract onProcessKey2(Landroid/view/KeyEvent;I)Z
.end method

.method public abstract onProcessMouseMove(Landroid/view/KeyEvent;)V
.end method

.method public abstract onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPutMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRemoveDownEventMap(Ljava/lang/String;)V
.end method

.method public abstract onRemoveMapModeEvent(Ljava/lang/String;)V
.end method

.method public abstract onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
.end method

.method public abstract onTrackBallRMove()Z
.end method

.method public abstract onTrackBallRZ()Lcom/haima/hmcp/beans/PointCoord;
.end method
