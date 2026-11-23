.class public Lcom/haima/hmcp/business/DownloadFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadedSize:J

.field private filePath:Ljava/lang/String;

.field private fileSize:J

.field private interval:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->fileSize:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->downloadedSize:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->filePath:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->url:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p7, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->interval:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getContentTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->contentTypeList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->downloadedSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->fileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->interval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setContentTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->contentTypeList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->downloadedSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->fileSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->interval:J

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/DownloadFileInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
