.class public Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private big_img:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private month_best:Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;

.field private num:I

.field private rank_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;",
            ">;"
        }
    .end annotation
.end field


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
.method public getBig_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->big_img:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMonth_best()Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->month_best:Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->num:I

    .line 2
    .line 3
    return v0
.end method

.method public getRank_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->rank_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBig_img(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "big_img"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->big_img:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMonth_best(Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month_best"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->month_best:Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;

    .line 2
    .line 3
    return-void
.end method

.method public setNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->num:I

    .line 2
    .line 3
    return-void
.end method

.method public setRank_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rank_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryPaiweiGameRankBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryPaiweiGameDetailBean;->rank_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
