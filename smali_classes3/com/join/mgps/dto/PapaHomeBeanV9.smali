.class public Lcom/join/mgps/dto/PapaHomeBeanV9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private cloud_gaming_section_id:Ljava/lang/String;

.field private dynamic_module:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeDynamicListBean;",
            ">;"
        }
    .end annotation
.end field

.field private eo_playing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private fast_entry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_section_id:Ljava/lang/String;

.field private guess_you_like:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_game_fav:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private new_online_game:Lcom/join/mgps/dto/HomeDynamicListBean;

.field private new_user:Z

.field private ranking_list:Lcom/join/mgps/dto/HomeRankingListBean;

.field private s_scrolling_txt_v2:Lcom/join/mgps/dto/SScrollingTxtDTOV2;

.field private simulator_channel:Lcom/join/mgps/dto/HomeDynamicListBean;

.field private top_channel:Lcom/join/mgps/dto/HomeTopChannelBean;


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
.method public getBanner()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->banner:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloud_gaming_section_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->cloud_gaming_section_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDynamic_module()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeDynamicListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->dynamic_module:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEo_playing()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->eo_playing:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFast_entry()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->fast_entry:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_section_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->game_section_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGuess_you_like()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->guess_you_like:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHot_game_fav()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->hot_game_fav:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNew_online_game()Lcom/join/mgps/dto/HomeDynamicListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->new_online_game:Lcom/join/mgps/dto/HomeDynamicListBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRanking_list()Lcom/join/mgps/dto/HomeRankingListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->ranking_list:Lcom/join/mgps/dto/HomeRankingListBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_scrolling_txt_v2()Lcom/join/mgps/dto/SScrollingTxtDTOV2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->s_scrolling_txt_v2:Lcom/join/mgps/dto/SScrollingTxtDTOV2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSimulator_channel()Lcom/join/mgps/dto/HomeDynamicListBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->simulator_channel:Lcom/join/mgps/dto/HomeDynamicListBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTop_channel()Lcom/join/mgps/dto/HomeTopChannelBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->top_channel:Lcom/join/mgps/dto/HomeTopChannelBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->banner:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->fast_entry:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->top_channel:Lcom/join/mgps/dto/HomeTopChannelBean;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->eo_playing:Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->guess_you_like:Ljava/util/List;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->new_online_game:Lcom/join/mgps/dto/HomeDynamicListBean;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->ranking_list:Lcom/join/mgps/dto/HomeRankingListBean;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->simulator_channel:Lcom/join/mgps/dto/HomeDynamicListBean;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->dynamic_module:Ljava/util/List;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->hot_game_fav:Ljava/util/List;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
.end method

.method public isNew_user()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->new_user:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
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
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->banner:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_gaming_section_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_gaming_section_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->cloud_gaming_section_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDynamic_module(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamic_module"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeDynamicListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->dynamic_module:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setEo_playing(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eo_playing"
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
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->eo_playing:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setFast_entry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fast_entry"
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
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->fast_entry:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_section_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_section_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->game_section_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGuess_you_like(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guess_you_like"
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
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->guess_you_like:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setHot_game_fav(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hot_game_fav"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->hot_game_fav:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setNew_online_game(Lcom/join/mgps/dto/HomeDynamicListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "new_online_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->new_online_game:Lcom/join/mgps/dto/HomeDynamicListBean;

    .line 2
    .line 3
    return-void
.end method

.method public setNew_user(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "new_user"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->new_user:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRanking_list(Lcom/join/mgps/dto/HomeRankingListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranking_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->ranking_list:Lcom/join/mgps/dto/HomeRankingListBean;

    .line 2
    .line 3
    return-void
.end method

.method public setS_scrolling_txt_v2(Lcom/join/mgps/dto/SScrollingTxtDTOV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s_scrolling_txt_v2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->s_scrolling_txt_v2:Lcom/join/mgps/dto/SScrollingTxtDTOV2;

    .line 2
    .line 3
    return-void
.end method

.method public setSimulator_channel(Lcom/join/mgps/dto/HomeDynamicListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simulator_channel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->simulator_channel:Lcom/join/mgps/dto/HomeDynamicListBean;

    .line 2
    .line 3
    return-void
.end method

.method public setTop_channel(Lcom/join/mgps/dto/HomeTopChannelBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top_channel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaHomeBeanV9;->top_channel:Lcom/join/mgps/dto/HomeTopChannelBean;

    .line 2
    .line 3
    return-void
.end method
