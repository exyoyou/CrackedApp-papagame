.class public Lcom/join/mgps/dto/Filepath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private allsize:J

.field private available:J

.field private islocal:Z

.field private pathHome:Ljava/lang/String;

.field private pathRoot:Ljava/lang/String;


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
.method public getAllsize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/Filepath;->allsize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAvailable()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/Filepath;->available:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPathHome()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Filepath;->pathHome:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPathRoot()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/Filepath;->pathRoot:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isIslocal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/Filepath;->islocal:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAllsize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allsize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/Filepath;->allsize:J

    .line 2
    .line 3
    return-void
.end method

.method public setAvailable(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/Filepath;->available:J

    .line 2
    .line 3
    return-void
.end method

.method public setIslocal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "islocal"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/Filepath;->islocal:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPathHome(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathHome"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Filepath;->pathHome:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPathRoot(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathRoot"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/Filepath;->pathRoot:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
