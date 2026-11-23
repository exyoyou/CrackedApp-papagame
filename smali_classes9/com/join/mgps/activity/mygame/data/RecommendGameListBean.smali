.class public Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_info:Lcom/join/mgps/dto/RecommendGameAdInfo;

.field private fixed_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_count:I

.field private recommend_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
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
.method public getAd_info()Lcom/join/mgps/dto/RecommendGameAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->ad_info:Lcom/join/mgps/dto/RecommendGameAdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFixed_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->fixed_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->game_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getRecommend_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->recommend_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/RecommendGameAdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->ad_info:Lcom/join/mgps/dto/RecommendGameAdInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setFixed_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->fixed_list:Ljava/util/List;

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
            "gameCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->game_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/data/RecommendGameListBean;->recommend_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
