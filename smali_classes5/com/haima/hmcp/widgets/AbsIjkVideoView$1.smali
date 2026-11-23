.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->internalDownloadX86(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$cloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

.field final synthetic val$file:Lcom/haima/hmcp/beans/CloudFile;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->val$file:Lcom/haima/hmcp/beans/CloudFile;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->val$cloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/cloud/job/CloudFileJob;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->val$file:Lcom/haima/hmcp/beans/CloudFile;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->val$cloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lcom/haima/hmcp/cloud/job/CloudFileJob;-><init>(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mDownloadJob:Lcom/haima/hmcp/cloud/job/CloudFileJob;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->val$file:Lcom/haima/hmcp/beans/CloudFile;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->val$file:Lcom/haima/hmcp/beans/CloudFile;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/CloudFile;->getCloudPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getFileDownloadData(Ljava/lang/String;Ljava/lang/String;I)[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "internalDownloadX86->sendResult="

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "AbsIjkVideoView"

    .line 55
    .line 56
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 62
    .line 63
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 64
    .line 65
    const-string v2, "download file failure,internalDownload error please retry"

    .line 66
    .line 67
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$400(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method
