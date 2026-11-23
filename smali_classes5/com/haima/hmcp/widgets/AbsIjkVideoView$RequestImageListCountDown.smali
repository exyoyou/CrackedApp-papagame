.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$RequestImageListCountDown;
.super Lcom/haima/hmcp/cloud/CountDownTimerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestImageListCountDown"
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
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RequestImageListCountDown;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RequestImageListCountDown;->onTimeOut(Ljava/lang/String;)V

    return-void
.end method

.method protected onTimeOut(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RequestImageListCountDown;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isRequestImageListTimeout:Z

    const-string p1, "12626"

    const-string v0, "request image list time out"

    .line 3
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud-file: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AbsIjkVideoView"

    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$RequestImageListCountDown;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudImageListListener:Lcom/haima/hmcp/listeners/OnCloudImageListListener;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/OnCloudImageListListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
