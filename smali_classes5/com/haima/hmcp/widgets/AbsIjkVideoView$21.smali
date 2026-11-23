.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initIME(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCallbackLocalKeyboardShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackLocalKeyboardShow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCheckImeType(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGetCloudImeTransaction:Lcom/haima/hmcp/business/GetCloudImeTransaction;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIMEConfig:Lcom/haima/hmcp/beans/IMEConfig;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v2, v0}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeType(Lcom/haima/hmcp/listeners/GetCloudIMECallback;Lcom/haima/hmcp/beans/IMEConfig;Lcom/haima/hmcp/business/IWebSocket;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCheckImeTypeFinished(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGetCloudImeTransaction:Lcom/haima/hmcp/business/GetCloudImeTransaction;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->removeCallback(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onInputHide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2000(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onKeyboardEvent(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u952e\u76d8 \u53d1\u9001\u4e8b\u4ef6: keyboardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyboardValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsIjkVideoView"

    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u952e\u76d8 \u53d1\u9001\u4e8b\u4ef6: keyboardType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsIjkVideoView"

    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegisterKeyboardListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2100(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onScreenOrientationForKeyboard(Lcom/haima/hmcp/enums/ScreenOrientation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRenderView:Lcom/haima/hmcp/listeners/IRenderViewBase;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenOrientationForKeyboard(Lcom/haima/hmcp/enums/ScreenOrientation;Lcom/haima/hmcp/listeners/IRenderViewBase;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSendKeyboardHeightPercent()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "startIM  \u4fdd\u6301\u952e\u76d8-\u952e\u76d8\u9ad8\u5ea6\u8986\u76d6\u89c6\u9891 \u767e\u5206\u6bd4:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mEventContent:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "AbsIjkVideoView"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mEventContent:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyboardHeightPercent(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onSendText(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u952e\u76d8 \u53d1\u9001\u5185\u5bb9:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AbsIjkVideoView"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$21;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendToInstanceMsg(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
