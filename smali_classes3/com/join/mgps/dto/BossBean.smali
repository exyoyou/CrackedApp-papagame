.class public Lcom/join/mgps/dto/BossBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private boos:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private index:Ljava/lang/Integer;

.field isSelected:Z

.field private level:Ljava/lang/String;


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
.method public getBoos()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BossBean;->boos:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BossBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BossBean;->index:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BossBean;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/BossBean;->isSelected:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBoos(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boos"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BossBean;->boos:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BossBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIndex(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BossBean;->index:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BossBean;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/BossBean;->isSelected:Z

    .line 2
    .line 3
    return-void
.end method
