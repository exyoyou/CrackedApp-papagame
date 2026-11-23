.class public Lcom/haima/hmcp/beans/CloudFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE_TYPE_DEFAULT:I = 0x0

.field public static final IMAGE_TYPE_QRCODE:I = 0x1

.field public static final TARGET_TYPE_FILE:I = 0x0

.field public static final TARGET_TYPE_URL:I = 0x1


# instance fields
.field protected cloudFileProtocol:Lcom/haima/hmcp/enums/CloudFileProtocol;

.field protected cloudPath:Ljava/lang/String;

.field protected downloadTime:J

.field protected downloadedFileName:Ljava/lang/String;

.field protected fileType:Ljava/lang/String;

.field protected imageType:I

.field protected name:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected size:J

.field protected targetType:I

.field protected url:Ljava/lang/String;

.field protected videoDuration:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadTime:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadedFileName:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->cloudPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDownloadedName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadedFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOperationMode()Lcom/haima/hmcp/enums/CloudFileProtocol;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->cloudFileProtocol:Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/CloudFile;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTargetType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/CloudFile;->targetType:I

    .line 2
    .line 3
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/CloudFile;->videoDuration:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public setCloudPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudFile;->cloudPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadedName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadedFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudFile;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImageType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOperationMode(Lcom/haima/hmcp/enums/CloudFileProtocol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudFile;->cloudFileProtocol:Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 2
    .line 3
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/CloudFile;->size:J

    .line 2
    .line 3
    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/CloudFile;->targetType:I

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/CloudFile;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoDuration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/CloudFile;->videoDuration:D

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CloudFile{name="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", downloadedFileName="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadedFileName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", path="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", url="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->url:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", fileType="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->fileType:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", cloudPath="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->cloudPath:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", imageType="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", cloudFileAction="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->cloudFileProtocol:Lcom/haima/hmcp/enums/CloudFileProtocol;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", videoDuration="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-wide v1, p0, Lcom/haima/hmcp/beans/CloudFile;->videoDuration:D

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", size="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Lcom/haima/hmcp/beans/CloudFile;->size:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", downloadTime="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-wide v1, p0, Lcom/haima/hmcp/beans/CloudFile;->downloadTime:J

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", targetType="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/haima/hmcp/beans/CloudFile;->targetType:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x7d

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method
