.class public Lcom/join/mgps/dto/EndGameDetailBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;
    }
.end annotation


# instance fields
.field private endgameInfo:Lcom/join/mgps/dto/EndGameBean;

.field private myRankings:Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;

.field private rankingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;",
            ">;"
        }
    .end annotation
.end field

.field private shareUrl:Ljava/lang/String;


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
.method public getEndgameInfo()Lcom/join/mgps/dto/EndGameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/EndGameDetailBean;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMyRankings()Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/EndGameDetailBean;->myRankings:Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRankingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/EndGameDetailBean;->rankingList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/EndGameDetailBean;->shareUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setEndgameInfo(Lcom/join/mgps/dto/EndGameBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgameInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/EndGameDetailBean;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMyRankings(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myRankings"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/EndGameDetailBean;->myRankings:Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;

    .line 2
    .line 3
    return-void
.end method

.method public setRankingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rankingList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/EndGameDetailBean;->rankingList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shareUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/EndGameDetailBean;->shareUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
