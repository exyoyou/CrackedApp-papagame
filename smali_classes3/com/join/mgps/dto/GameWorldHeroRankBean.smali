.class public Lcom/join/mgps/dto/GameWorldHeroRankBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private fighting:I

.field private rank:I

.field private winning_count:I

.field private winning_rate:I


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
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFighting()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->fighting:I

    .line 2
    .line 3
    return v0
.end method

.method public getRank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->rank:I

    .line 2
    .line 3
    return v0
.end method

.method public getWinning_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getWinning_rate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_rate:I

    .line 2
    .line 3
    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFighting(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fighting"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->fighting:I

    .line 2
    .line 3
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rank"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->rank:I

    .line 2
    .line 3
    return-void
.end method

.method public setWinning_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "winning_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setWinning_rate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "winning_rate"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldHeroRankBean;->winning_rate:I

    .line 2
    .line 3
    return-void
.end method
