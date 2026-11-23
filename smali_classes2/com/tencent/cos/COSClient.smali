.class public Lcom/tencent/cos/COSClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/COS;


# static fields
.field private static context:Landroid/content/Context; = null

.field private static enableLog:Z = true


# instance fields
.field private appid:Ljava/lang/String;

.field private config:Lcom/tencent/cos/COSConfig;

.field private taskManager:Lcom/tencent/cos/task/TaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p1, Lcom/tencent/cos/COSClient;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    .line 9
    .line 10
    new-instance p1, Lcom/tencent/cos/task/TaskManager;

    .line 11
    .line 12
    sget-object p2, Lcom/tencent/cos/COSClient;->context:Landroid/content/Context;

    .line 13
    .line 14
    iget-object p3, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    .line 15
    .line 16
    invoke-direct {p1, p2, p3, p4}, Lcom/tencent/cos/task/TaskManager;-><init>(Landroid/content/Context;Lcom/tencent/cos/COSConfig;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 20
    .line 21
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/COSClient;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static isEnableLog()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/tencent/cos/COSClient;->enableLog:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public cancelTask(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->cancelTask(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public createDir(Lcom/tencent/cos/model/CreateDirRequest;)Lcom/tencent/cos/model/CreateDirResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/CreateDirResult;

    .line 13
    .line 14
    return-object p1
.end method

.method public deleteObject(Lcom/tencent/cos/model/DeleteObjectRequest;)Lcom/tencent/cos/model/DeleteObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/DeleteObjectResult;

    .line 13
    .line 14
    return-object p1
.end method

.method public enableLog(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/tencent/cos/COSClient;->enableLog:Z

    .line 2
    .line 3
    return-void
.end method

.method public getConfig()Lcom/tencent/cos/COSConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getObject(Lcom/tencent/cos/model/GetObjectRequest;)Lcom/tencent/cos/model/GetObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendDownloadRequest(Lcom/tencent/cos/model/GetObjectRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/GetObjectResult;

    .line 13
    .line 14
    return-object p1
.end method

.method public getObjectMetadata(Lcom/tencent/cos/model/GetObjectMetadataRequest;)Lcom/tencent/cos/model/GetObjectMetadataResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/GetObjectMetadataResult;

    .line 13
    .line 14
    return-object p1
.end method

.method public headBucket(Lcom/tencent/cos/model/HeadBucketRequest;)Lcom/tencent/cos/model/HeadBucketResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/HeadBucketResult;

    .line 13
    .line 14
    return-object p1
.end method

.method public listDir(Lcom/tencent/cos/model/ListDirRequest;)Lcom/tencent/cos/model/ListDirResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/ListDirResult;

    .line 13
    .line 14
    return-object p1
.end method

.method public listTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/cos/task/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/task/TaskManager;->getListTask()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public pauseTask(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->pauseTask(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public putObject(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/PutObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->isSliceFlag()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendUploadSliceRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/tencent/cos/model/PutObjectResult;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendUploadRequest(Lcom/tencent/cos/model/PutObjectRequest;)Lcom/tencent/cos/model/COSResult;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/tencent/cos/model/PutObjectResult;

    .line 28
    .line 29
    return-object p1
.end method

.method public removeEmptyDir(Lcom/tencent/cos/model/RemoveEmptyDirRequest;)Lcom/tencent/cos/model/RemoveEmptyDirResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/RemoveEmptyDirResult;

    .line 13
    .line 14
    return-object p1
.end method

.method public resumeTask(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->resumeTask(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setConfig(Lcom/tencent/cos/COSConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/COSClient;->config:Lcom/tencent/cos/COSConfig;

    .line 2
    .line 3
    return-void
.end method

.method public updateObject(Lcom/tencent/cos/model/UpdateObjectRequest;)Lcom/tencent/cos/model/UpdateObjectResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->appid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/COSRequest;->setAppid(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/cos/COSClient;->taskManager:Lcom/tencent/cos/task/TaskManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/tencent/cos/task/TaskManager;->sendCmdRequest(Lcom/tencent/cos/model/COSRequest;)Lcom/tencent/cos/model/COSResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/tencent/cos/model/UpdateObjectResult;

    .line 13
    .line 14
    return-object p1
.end method
