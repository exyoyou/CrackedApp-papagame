.class public Lcom/join/mgps/dto/PAPAMainBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSearchKeyword:Lcom/join/mgps/dto/SearchDataBean;

.field private discover_channel:Lcom/join/mgps/dto/GamerecommendBean;

.field private dynamic_module:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameinterestingBean;",
            ">;"
        }
    .end annotation
.end field

.field private fast_entry:Lcom/join/mgps/dto/FastEntry;

.field private game_bespeak:Lcom/join/mgps/dto/PapaMainGameBespeak;

.field private game_broadcast:Lcom/join/mgps/dto/GamebroadcastBean;

.field private gameinteresting:Lcom/join/mgps/dto/GameinterestingBean;

.field private guess_you_like:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_online_game:Lcom/join/mgps/dto/GameinterestingBean;

.field private live_list:Lcom/join/mgps/dto/PapaMainLive;

.field private new_daily_uv:I

.field private new_online_game:Lcom/join/mgps/dto/GameinterestingBean;

.field private recently:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private wufun_today:Lcom/join/mgps/dto/WufunNowHomeJoinBean;


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
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->banner:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultSearchKeyword()Lcom/join/mgps/dto/SearchDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->defaultSearchKeyword:Lcom/join/mgps/dto/SearchDataBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscover_channel()Lcom/join/mgps/dto/GamerecommendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->discover_channel:Lcom/join/mgps/dto/GamerecommendBean;

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
            "Lcom/join/mgps/dto/GameinterestingBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->dynamic_module:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFast_entry()Lcom/join/mgps/dto/FastEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->fast_entry:Lcom/join/mgps/dto/FastEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_bespeak()Lcom/join/mgps/dto/PapaMainGameBespeak;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->game_bespeak:Lcom/join/mgps/dto/PapaMainGameBespeak;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_broadcast()Lcom/join/mgps/dto/GamebroadcastBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->game_broadcast:Lcom/join/mgps/dto/GamebroadcastBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameinteresting()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->gameinteresting:Lcom/join/mgps/dto/GameinterestingBean;

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
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->guess_you_like:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHot_online_game()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->hot_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLive_list()Lcom/join/mgps/dto/PapaMainLive;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->live_list:Lcom/join/mgps/dto/PapaMainLive;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNew_daily_uv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->new_daily_uv:I

    .line 2
    .line 3
    return v0
.end method

.method public getNew_online_game()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->new_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecently()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->recently:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWufun_today()Lcom/join/mgps/dto/WufunNowHomeJoinBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAMainBean;->wufun_today:Lcom/join/mgps/dto/WufunNowHomeJoinBean;

    .line 2
    .line 3
    return-object v0
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
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->banner:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultSearchKeyword(Lcom/join/mgps/dto/SearchDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultSearchKeyword"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->defaultSearchKeyword:Lcom/join/mgps/dto/SearchDataBean;

    .line 2
    .line 3
    return-void
.end method

.method public setDiscover_channel(Lcom/join/mgps/dto/GamerecommendBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discover_channel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->discover_channel:Lcom/join/mgps/dto/GamerecommendBean;

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
            "Lcom/join/mgps/dto/GameinterestingBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->dynamic_module:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setFast_entry(Lcom/join/mgps/dto/FastEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fast_entry"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->fast_entry:Lcom/join/mgps/dto/FastEntry;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_bespeak(Lcom/join/mgps/dto/PapaMainGameBespeak;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_bespeak"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->game_bespeak:Lcom/join/mgps/dto/PapaMainGameBespeak;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_broadcast(Lcom/join/mgps/dto/GamebroadcastBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_broadcast"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->game_broadcast:Lcom/join/mgps/dto/GamebroadcastBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGameinteresting(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameinteresting"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->gameinteresting:Lcom/join/mgps/dto/GameinterestingBean;

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
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->guess_you_like:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setHot_online_game(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hot_online_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->hot_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    .line 2
    .line 3
    return-void
.end method

.method public setLive_list(Lcom/join/mgps/dto/PapaMainLive;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "live_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->live_list:Lcom/join/mgps/dto/PapaMainLive;

    .line 2
    .line 3
    return-void
.end method

.method public setNew_daily_uv(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "new_daily_uv"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->new_daily_uv:I

    .line 2
    .line 3
    return-void
.end method

.method public setNew_online_game(Lcom/join/mgps/dto/GameinterestingBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->new_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    .line 2
    .line 3
    return-void
.end method

.method public setRecently(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recently"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->recently:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setWufun_today(Lcom/join/mgps/dto/WufunNowHomeJoinBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wufun_today"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAMainBean;->wufun_today:Lcom/join/mgps/dto/WufunNowHomeJoinBean;

    .line 2
    .line 3
    return-void
.end method
