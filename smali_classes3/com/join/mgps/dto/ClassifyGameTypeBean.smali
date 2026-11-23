.class public Lcom/join/mgps/dto/ClassifyGameTypeBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private describe:Ljava/lang/String;

.field private game_count:I

.field private ico_remote:Ljava/lang/String;

.field private id:I

.field private show_index:I

.field private title:Ljava/lang/String;


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
.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->game_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getShow_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->show_index:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "describe"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->game_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ico_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setShow_index(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show_index"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->show_index:I

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ClassifyGameTypeBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
