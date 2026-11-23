.class public Lcom/join/mgps/activity/search/SearchIndexData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

.field private ad_info_v2:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private game_zone_entry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchGameZoneBean;",
            ">;"
        }
    .end annotation
.end field

.field private guess_you_like_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_search_ad_info:Lcom/join/mgps/activity/search/SearchHotAdInfo;

.field private hot_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private net_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private search_key:Ljava/lang/String;

.field private simulator_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private standalone_search_ranking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
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
.method public getAd_info()Lcom/join/mgps/dto/SearchResultAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAd_info_v2()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->ad_info_v2:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_zone_entry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchGameZoneBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->game_zone_entry:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGuess_you_like_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->guess_you_like_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHot_search_ad_info()Lcom/join/mgps/activity/search/SearchHotAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->hot_search_ad_info:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHot_search_ranking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->hot_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNet_search_ranking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->net_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSearch_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->search_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSimulator_search_ranking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->simulator_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStandalone_search_ranking()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchIndexData;->standalone_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAd_info(Lcom/join/mgps/dto/SearchResultAdinfo;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->ad_info:Lcom/join/mgps/dto/SearchResultAdinfo;

    .line 2
    .line 3
    return-void
.end method

.method public setAd_info_v2(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_info_v2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->ad_info_v2:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_zone_entry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_zone_entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchGameZoneBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->game_zone_entry:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGuess_you_like_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guess_you_like_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->guess_you_like_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setHot_search_ad_info(Lcom/join/mgps/activity/search/SearchHotAdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hot_search_ad_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->hot_search_ad_info:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setHot_search_ranking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hot_search_ranking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->hot_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setNet_search_ranking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "net_search_ranking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->net_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSearch_key(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search_key"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->search_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSimulator_search_ranking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simulator_search_ranking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->simulator_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setStandalone_search_ranking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "standalone_search_ranking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchIndexData;->standalone_search_ranking:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
