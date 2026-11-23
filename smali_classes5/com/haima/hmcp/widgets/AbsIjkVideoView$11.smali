.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/EventModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->init(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isInterceptKey(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->interceptKey(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onArmMouseHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/ArmMouseModel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onBattleHandleEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/model/TvBattleModel;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onEventSend(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/TvBattleModel;->getGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public onGamePadStart(Landroid/view/InputDevice;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getWebSocket()Lcom/haima/hmcp/business/IWebSocket;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/haima/hmcp/business/GamePadManager;->sendStartGamepad(Lcom/haima/hmcp/business/IWebSocket;Landroid/view/InputDevice;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onInputDeviceSend(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1100(Lcom/haima/hmcp/widgets/AbsIjkVideoView;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onInputType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$600(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/MappingInputTypeModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->getmCurrentInputMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onKeyboardEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyboardMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$600(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/MappingInputTypeModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->getmCurrentKeyboardMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onListenHover()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/ArmMouseModel;->isListenHover()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onMouseBackEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/model/ArmMouseModel;->setUnlockMode()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onMouseInputEvent(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/model/ArmMouseModel;->processJoystickInput(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onNativeDpadGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNativeDpadGame()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onPlayState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 4
    .line 5
    return v0
.end method

.method public onProcessMouseMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/model/ArmMouseModel;->processMouseMove(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onProcessMouseMove(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/ArmMouseModel;->processMouseMove(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onRemoveDownEventMap(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 4
    .line 5
    return-object v0
.end method

.method public onSightBeadButtonClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$11;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/ArmMouseModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/ArmMouseModel;->clickSightBeadButton()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
