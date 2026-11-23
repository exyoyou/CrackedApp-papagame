.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/GamePadManager$InputChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onAttachedToWindow()V
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$32;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/view/InputDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$32;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2400(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$32;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/haima/hmcp/business/GamePadManager;->sendStartGamepad(Lcom/haima/hmcp/business/IWebSocket;Landroid/view/InputDevice;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDeviceRemoved(Landroid/view/InputDevice;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$32;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$900(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)Lcom/haima/hmcp/model/TvBattleModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/haima/hmcp/model/TvBattleModel;->needStopWhenRemoved()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v2, p1, v1}, Lcom/haima/hmcp/business/GamePadManager;->sendStopGamePad(Lcom/haima/hmcp/business/IWebSocket;Landroid/view/InputDevice;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onEvent(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$32;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
