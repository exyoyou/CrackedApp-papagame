.class Lcom/haima/hmcp/cloud/job/DownloadHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/DownloadResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/job/DownloadHelper;->download(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/job/DownloadHelper;

.field final synthetic val$cloudFile:Lcom/haima/hmcp/beans/CloudFile;

.field final synthetic val$downloadListener:Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;

.field final synthetic val$mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/job/DownloadHelper;Lcom/haima/hmcp/listeners/CloudOperationListener;Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->this$0:Lcom/haima/hmcp/cloud/job/DownloadHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$downloadListener:Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/job/DownloadHelper;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "download-file: file download error: "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "12615"

    .line 26
    .line 27
    invoke-static {p1, p3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "detailInfo="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-interface {p1, p2, p3}, Lcom/haima/hmcp/listeners/CloudOperationListener;->onError(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/job/DownloadHelper;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "download-file: file download is complete"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "12616"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/CloudOperationListener;->onFinish(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onHeaders(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/job/DownloadHelper;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "download-file: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onProgress(JJ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/job/DownloadHelper;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "download-file: file download progress: fileSize="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", downloadedSize="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    cmp-long v0, p1, p3

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string p1, "12612"

    .line 38
    .line 39
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 47
    .line 48
    iget-object p3, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 49
    .line 50
    invoke-interface {p1, p2, p3}, Lcom/haima/hmcp/listeners/CloudOperationListener;->onSuccess(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/job/DownloadHelper$1;->val$downloadListener:Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/haima/hmcp/cloud/job/DownloadHelper$onDownloadListener;->onSuccess()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public onRetry(J)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/job/DownloadHelper;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "download-file: request download file success"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
