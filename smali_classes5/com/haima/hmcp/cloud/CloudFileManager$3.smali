.class Lcom/haima/hmcp/cloud/CloudFileManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IWorkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/CloudFileManager;->internalExecute(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Lcom/haima/hmcp/cloud/IUpDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

.field final synthetic val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

.field final synthetic val$type:Lcom/haima/hmcp/enums/CloudOperation;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/CloudFileManager;Lcom/haima/hmcp/cloud/IUpDownloadListener;Lcom/haima/hmcp/enums/CloudOperation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$type:Lcom/haima/hmcp/enums/CloudOperation;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$type:Lcom/haima/hmcp/enums/CloudOperation;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, v0, p2}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onError(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$type:Lcom/haima/hmcp/enums/CloudOperation;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onComplete(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

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
    const-string v1, "onHangUp->socketRetryCount: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$100(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "; RETRY_MAX:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v2, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "cloud-file: "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$type:Lcom/haima/hmcp/enums/CloudOperation;

    .line 56
    .line 57
    sget-object v2, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    if-ne v0, v2, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$100(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-ge v0, v1, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$108(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$300(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ge v0, v1, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v1, 0x0

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->access$308(Lcom/haima/hmcp/cloud/CloudFileManager;)I

    .line 91
    .line 92
    .line 93
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onHangUp(Z)V

    .line 98
    .line 99
    .line 100
    :cond_3
    return v1
.end method

.method public onStop(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$type:Lcom/haima/hmcp/enums/CloudOperation;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->hasHangUpTask(Lcom/haima/hmcp/enums/CloudOperation;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "cloud-file: has hang up task and intercept stop callback"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object p1, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "cloud-file: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$type:Lcom/haima/hmcp/enums/CloudOperation;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->this$0:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 54
    .line 55
    invoke-virtual {v1, p3}, Lcom/haima/hmcp/cloud/BaseCloudFileManager;->getCloudFile(Ljava/util/List;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-interface {p1, v0, p2, p3}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$listener:Lcom/haima/hmcp/cloud/IUpDownloadListener;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/cloud/CloudFileManager$3;->val$type:Lcom/haima/hmcp/enums/CloudOperation;

    .line 25
    .line 26
    invoke-interface {p1, v1, v0}, Lcom/haima/hmcp/cloud/IUpDownloadListener;->onSuccess(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
