.class Lcom/haima/hmcp/cloud/UploadTask$Uploading;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/cloud/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Uploading"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATCH_EXCEPTION:I = 0x66

.field private static final FILE_NOT_EXISTS:I = 0x64

.field private static final FILE_UPLOAD_COMPLETE:I = 0x67

.field private static final WEB_SOCKET_NULL:I = 0x65


# instance fields
.field private costTime:J

.field private final files:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field private interval:I

.field private isStop:Z

.field private mFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

.field final synthetic this$0:Lcom/haima/hmcp/cloud/UploadTask;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/cloud/UploadTask;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->files:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->isStop:Z

    .line 15
    .line 16
    iput p2, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->interval:I

    .line 17
    .line 18
    const/16 p1, 0x64

    .line 19
    .line 20
    if-lez p2, :cond_0

    .line 21
    .line 22
    if-le p2, p1, :cond_1

    .line 23
    .line 24
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->interval:I

    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 14

    .line 2
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground, isStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->isStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-boolean p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->isStop:Z

    if-nez p1, :cond_14

    .line 4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->isStop:Z

    .line 6
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cloud-file: stop waiting for file to upload because is canceled."

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->files:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->files:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/haima/hmcp/cloud/InternalCloudFile;

    iput-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->mFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    if-nez p1, :cond_2

    const-wide/16 v2, -0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-wide v2, p1, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    :goto_1
    const/4 v4, 0x0

    if-nez p1, :cond_3

    move-object p1, v4

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_2
    iget-object v5, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->mFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    if-nez v5, :cond_4

    move-object v5, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 13
    :goto_3
    iget-object v6, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->mFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    const/16 v7, 0x64

    const-string v8, "cloud-file: "

    if-eqz v6, :cond_10

    const-wide/16 v9, 0x400

    cmp-long v6, v2, v9

    if-ltz v6, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_10

    .line 14
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file size: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v0, [Ljava/lang/Integer;

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file is null when uploading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$1500(Lcom/haima/hmcp/cloud/UploadTask;)I

    move-result p1

    int-to-long v9, p1

    cmp-long p1, v2, v9

    if-gez p1, :cond_7

    long-to-int p1, v2

    .line 21
    new-array p1, p1, [B

    goto :goto_4

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    invoke-static {p1}, Lcom/haima/hmcp/cloud/UploadTask;->access$1500(Lcom/haima/hmcp/cloud/UploadTask;)I

    move-result p1

    new-array p1, p1, [B

    :goto_4
    const/16 v5, 0x66

    const/16 v7, 0x67

    .line 23
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    invoke-virtual {v9, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    :cond_8
    :goto_5
    if-lez v4, :cond_c

    .line 26
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 27
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v2, "cloud-file: file uploading is stop running because is canceled."

    invoke-static {p1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    new-array v0, v0, [Ljava/lang/Integer;

    .line 31
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-object p1

    .line 32
    :cond_9
    :try_start_3
    iget-object v12, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    invoke-static {v12}, Lcom/haima/hmcp/cloud/UploadTask;->access$1600(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/business/IWebSocket;

    move-result-object v12

    if-nez v12, :cond_a

    new-array p1, v0, [Ljava/lang/Integer;

    const/16 v4, 0x65

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 34
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->isStop:Z

    goto :goto_7

    .line 35
    :cond_a
    iget-object v12, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    invoke-static {v12}, Lcom/haima/hmcp/cloud/UploadTask;->access$1600(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/business/IWebSocket;

    move-result-object v12

    sget-object v13, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_UPLOAD:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    invoke-interface {v12, v13, p1}, Lcom/haima/hmcp/business/IWebSocket;->sendBinaryMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;[B)V

    add-int/2addr v6, v4

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uploading file data size: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget v4, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->interval:I

    if-ltz v4, :cond_b

    int-to-long v12, v4

    .line 39
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 40
    :cond_b
    invoke-virtual {v9, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_8

    .line 41
    array-length v12, p1

    if-ge v4, v12, :cond_8

    .line 42
    new-array v12, v4, [B

    .line 43
    invoke-static {p1, v1, v12, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v12

    goto/16 :goto_5

    .line 44
    :cond_c
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    iput-wide v12, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->costTime:J

    .line 45
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cloud-file: file upload finish, cost time: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->costTime:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "file_segment_coefficient"

    .line 47
    iget-object v6, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    invoke-static {v6}, Lcom/haima/hmcp/cloud/UploadTask;->access$1700(Lcom/haima/hmcp/cloud/UploadTask;)Lcom/haima/hmcp/beans/CloudFileConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/haima/hmcp/beans/CloudFileConfig;->getFileSegmentCoefficient()I

    move-result v6

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "file_segment_size"

    .line 48
    iget-object v6, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->this$0:Lcom/haima/hmcp/cloud/UploadTask;

    invoke-static {v6}, Lcom/haima/hmcp/cloud/UploadTask;->access$1500(Lcom/haima/hmcp/cloud/UploadTask;)I

    move-result v6

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "file_size"

    .line 49
    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "upload_cost"

    .line 50
    iget-wide v3, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->costTime:J

    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v2

    .line 51
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    const-string v2, "12607"

    .line 52
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 53
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    new-array p1, v0, [Ljava/lang/Integer;

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    move-object v4, v9

    goto :goto_e

    :catch_3
    move-exception p1

    move-object v4, v9

    goto :goto_a

    :catch_4
    move-exception p1

    move-object v4, v9

    goto :goto_c

    :catchall_1
    move-exception p1

    goto :goto_e

    :catch_5
    move-exception p1

    .line 56
    :goto_a
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-array p1, v0, [Ljava/lang/Integer;

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_d

    .line 58
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_b

    :catch_6
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_b
    new-array p1, v0, [Ljava/lang/Integer;

    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_7
    move-exception p1

    .line 61
    :goto_c
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-array p1, v0, [Ljava/lang/Integer;

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_e

    .line 63
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_d

    :catch_8
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_d
    new-array p1, v0, [Ljava/lang/Integer;

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    :goto_e
    if-eqz v4, :cond_f

    .line 66
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_f

    :catch_9
    move-exception v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    new-array v0, v0, [Ljava/lang/Integer;

    .line 68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 69
    throw p1

    .line 70
    :cond_10
    :goto_10
    iget-object v2, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->mFile:Lcom/haima/hmcp/cloud/InternalCloudFile;

    if-nez v2, :cond_11

    const-string p1, "mFile is null when get from list"

    goto :goto_12

    .line 71
    :cond_11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_11

    :cond_12
    const-string p1, "file size is not validate when get from list"

    goto :goto_12

    :cond_13
    :goto_11
    const-string p1, "fileName is null or filePath is null when get from list"

    .line 72
    :goto_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_c
    const-string v3, "error_action"

    const-string v4, "Uploading doInBackground"

    .line 73
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "error_msg"

    .line 74
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_13

    :catch_a
    move-exception v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :goto_13
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Integer;

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_14
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cloud-file: uploading task is finish"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->isStop:Z

    return-void
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->isStop:Z

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x68

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    const/16 v0, 0x6c

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 7
    iput v0, p1, Landroid/os/Message;->what:I

    const-string v0, "file io exception"

    .line 8
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x65

    .line 12
    iput v0, p1, Landroid/os/Message;->what:I

    const-string v0, "uploading-> web-socket is not available"

    .line 13
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 17
    iput v0, p1, Landroid/os/Message;->what:I

    const-string v0, "uploading-> file is not exists"

    .line 18
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/haima/hmcp/cloud/UploadTask;->access$200()Lcom/haima/hmcp/cloud/UploadTask$UploadHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method push(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/UploadTask$Uploading;->files:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
