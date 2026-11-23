.class public Lcom/join/mgps/dto/RomArchived;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private archivedImagePath:Ljava/lang/String;

.field private archivedPath:Ljava/lang/String;

.field private archivedTime:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private size:J


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
.method public getArchivedImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->archivedImagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchivedPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->archivedPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArchivedTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->archivedTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RomArchived;->md5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RomArchived;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setArchivedImagePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archivedImagePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->archivedImagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchivedPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archivedPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->archivedPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setArchivedTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archivedTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->archivedTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "md5"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RomArchived;->md5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RomArchived;->size:J

    .line 2
    .line 3
    return-void
.end method
