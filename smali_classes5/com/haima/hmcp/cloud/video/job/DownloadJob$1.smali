.class Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/DownloadResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/video/job/DownloadJob;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$000()Ljava/lang/String;

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
    const-string v2, "download-file: file download error: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$300(Lcom/haima/hmcp/cloud/video/job/DownloadJob;I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$200(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1, p1, p2}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    const-string p1, "12630"

    .line 55
    .line 56
    invoke-static {p1, p3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$000()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$300(Lcom/haima/hmcp/cloud/video/job/DownloadJob;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$200(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onDownloaded(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 37
    .line 38
    .line 39
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
    invoke-static {}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$000()Ljava/lang/String;

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
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "12630"

    .line 30
    .line 31
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$402(Lcom/haima/hmcp/cloud/video/job/DownloadJob;J)J

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$200(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-wide v3, p1

    .line 27
    move-wide v5, p3

    .line 28
    invoke-interface/range {v1 .. v6}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onProgress(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;JJ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onRetry(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$200(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1, p1, p2}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onRetry(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$000()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$100(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadJob$1;->this$0:Lcom/haima/hmcp/cloud/video/job/DownloadJob;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/haima/hmcp/cloud/video/job/DownloadJob;->access$200(Lcom/haima/hmcp/cloud/video/job/DownloadJob;)Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onDownload(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
