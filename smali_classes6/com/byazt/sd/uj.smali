.class public Lcom/byazt/sd/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/s/x;
.implements Lcom/byazt/c/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d6,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 22
    invoke-static {}, Lcom/byazt/di/n;->c()Lcom/byazt/di/n;

    move-result-object v0

    new-instance v1, Lcom/byazt/sd/uj$1;

    invoke-direct {v1, p0}, Lcom/byazt/sd/uj$1;-><init>(Lcom/byazt/sd/uj;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/di/n;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;IZ)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nn/a;->tt()V

    .line 3
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getFailedResumeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dd/tt;->ve(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->d()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0, v2}, Lcom/byazt/dd/tt;->ve(I)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "download_id"

    .line 9
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "name"

    .line 10
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    .line 11
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "download_time"

    .line 12
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getDownloadTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "download_status"

    .line 13
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "cur_bytes"

    .line 14
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "total_bytes"

    .line 15
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "only_wifi"

    .line 16
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "chunk_count"

    .line 17
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "launch_resumed"

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    .line 18
    :goto_2
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "failed_resume_count"

    .line 19
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getFailedResumeCount()I

    move-result p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    const-string p2, "embeded_ad"

    const-string p3, "download_uncompleted"

    invoke-virtual {p1, p2, p3, v1, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/sd/uj;->c(Lcom/byazt/t/DownloadInfo;IZ)V

    return-void
.end method
