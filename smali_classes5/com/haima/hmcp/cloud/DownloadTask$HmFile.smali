.class Lcom/haima/hmcp/cloud/DownloadTask$HmFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/cloud/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HmFile"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private romMd5:Ljava/lang/String;

.field private tempFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/haima/hmcp/cloud/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/cloud/DownloadTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->this$0:Lcom/haima/hmcp/cloud/DownloadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "cm_file.tmp"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->tempFile:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->path:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->name:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->romMd5:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Ljava/io/File;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->tempFile:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/cloud/DownloadTask$HmFile;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public exists()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRomMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->romMd5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public releaseFile()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 3
    .line 4
    return-void
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
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
    const-string v1, "HmFile{, file="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->file:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", path=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->path:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", name=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->name:Ljava/lang/String;

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
    const-string v2, ", romMd5=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->romMd5:Ljava/lang/String;

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
    const-string v2, ", tempFile=\'"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/cloud/DownloadTask$HmFile;->tempFile:Ljava/lang/String;

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
    const/16 v1, 0x7d

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method
