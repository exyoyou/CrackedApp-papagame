.class public Lcom/join/mgps/dto/GameWorldTrophyItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:I

.field private key:Ljava/lang/String;

.field private scale:I

.field private score:I

.field private trophy_rank:I


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
.method public getData()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->data:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->scale:I

    .line 2
    .line 3
    return v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->score:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrophy_rank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->trophy_rank:I

    .line 2
    .line 3
    return v0
.end method

.method public setData(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->data:I

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScale(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->scale:I

    .line 2
    .line 3
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->score:I

    .line 2
    .line 3
    return-void
.end method

.method public setTrophy_rank(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trophy_rank"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyItem;->trophy_rank:I

    .line 2
    .line 3
    return-void
.end method
