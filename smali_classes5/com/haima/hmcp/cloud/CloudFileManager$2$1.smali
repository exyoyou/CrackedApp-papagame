.class Lcom/haima/hmcp/cloud/CloudFileManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IUploadSummaryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/CloudFileManager$2;->onCheckComplete(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/CloudFileManager$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;->this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onHangUp()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onHangBatchUp->socketRetryCount: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;->this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$100(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "; RETRY_MAX:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "cloud-file: "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;->this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$100(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ge v0, v1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;->this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$108(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;->this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onHangUp(Z)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return v1
.end method

.method public onUploadComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;->this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1, p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onBatchComplete(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onUploadError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$2$1;->this$1:Lcom/haima/hmcp/cloud/CloudFileManager$2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/haima/hmcp/cloud/CloudFileManager$2;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/haima/hmcp/cloud/CloudFileManager$2;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-interface {v0, v1, p1, p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
