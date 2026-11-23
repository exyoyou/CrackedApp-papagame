.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$HangUpDownCountDown;
.super Lcom/haima/hmcp/cloud/CountDownTimerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HangUpDownCountDown"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haima/hmcp/cloud/CountDownTimerWrapper<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HangUpDownCountDown;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/CountDownTimerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic onTimeOut(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HangUpDownCountDown;->onTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method protected onTimeOut(Ljava/lang/String;)V
    .locals 4

    const-string p1, "12617"

    const-string v0, "hang up time out"

    .line 2
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cloud-file: download task hang up is time out"

    const-string v0, "AbsIjkVideoView"

    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HangUpDownCountDown;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    if-eqz p1, :cond_0

    .line 5
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    invoke-virtual {p1, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->getHandUpContent(Lcom/haima/hmcp/enums/CloudOperation;)Lcom/haima/hmcp/beans/CloudFile;

    const-string p1, "cloud-file: clean hang up content"

    .line 6
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HangUpDownCountDown;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object v1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    if-eqz v1, :cond_1

    .line 8
    sget-object v2, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    const-string v3, "download task is time out"

    invoke-virtual {p1, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/haima/hmcp/listeners/CloudOperationListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V

    const-string p1, "cloud-file: callback app to stop task"

    .line 9
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
