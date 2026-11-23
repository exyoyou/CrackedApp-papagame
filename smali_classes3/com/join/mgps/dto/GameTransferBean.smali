.class public Lcom/join/mgps/dto/GameTransferBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field filePath:Ljava/lang/String;

.field fileType:Ljava/lang/String;

.field gameName:Ljava/lang/String;

.field iconUrl:Ljava/lang/String;

.field id:Ljava/lang/String;

.field progerss:I

.field selectedTransfer:Z

.field size:Ljava/lang/String;

.field transferStatus:I


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
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTransferBean;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTransferBean;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTransferBean;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTransferBean;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTransferBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgerss()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameTransferBean;->progerss:I

    .line 2
    .line 3
    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameTransferBean;->size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransferStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameTransferBean;->transferStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public isSelectedTransfer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameTransferBean;->selectedTransfer:Z

    .line 2
    .line 3
    return v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTransferBean;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTransferBean;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTransferBean;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTransferBean;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameTransferBean;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProgerss(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progerss"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameTransferBean;->progerss:I

    .line 2
    .line 3
    return-void
.end method

.method public setSelectedTransfer(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedTransfer"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameTransferBean;->selectedTransfer:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GameTransferBean;->size:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTransferStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferStatus"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameTransferBean;->transferStatus:I

    .line 2
    .line 3
    return-void
.end method
