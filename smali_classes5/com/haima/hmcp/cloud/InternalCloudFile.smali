.class public Lcom/haima/hmcp/cloud/InternalCloudFile;
.super Lcom/haima/hmcp/beans/CloudFile;
.source "SourceFile"


# instance fields
.field public cloudFile:Lcom/haima/hmcp/beans/CloudFile;

.field fileSize:J

.field public isSaveToGallery:Z

.field public md5:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->isSaveToGallery:Z

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->isSaveToGallery:Z

    .line 5
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getImageType()I

    move-result p1

    iput p1, p0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    return-void
.end method


# virtual methods
.method copy()Lcom/haima/hmcp/cloud/InternalCloudFile;
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/cloud/InternalCloudFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/cloud/InternalCloudFile;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    .line 15
    .line 16
    iput v1, v0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->type:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/haima/hmcp/cloud/InternalCloudFile;->type:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 27
    .line 28
    iput-wide v1, v0, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 29
    .line 30
    return-object v0
.end method

.method public getFileSuffix()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "."

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-le v2, v3, :cond_2

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_3
    :goto_0
    return-object v1
.end method

.method isAvailable(Lcom/haima/hmcp/enums/CloudOperation;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->type:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    xor-int/2addr p1, v1

    .line 54
    return p1
.end method

.method makeCloudFile()Lcom/haima/hmcp/beans/CloudFile;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/CloudFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/CloudFile;->setImageType(I)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "InternalCloudFile{md5=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", fileSize="

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v2, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", type=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/haima/hmcp/cloud/InternalCloudFile;->type:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", name=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/beans/CloudFile;->name:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ", path=\'"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/beans/CloudFile;->path:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", imageType="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lcom/haima/hmcp/beans/CloudFile;->imageType:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v1, 0x7d

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
