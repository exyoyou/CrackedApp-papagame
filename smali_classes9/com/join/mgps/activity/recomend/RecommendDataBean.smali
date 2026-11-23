.class public Lcom/join/mgps/activity/recomend/RecommendDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private doomsday_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field private pocket_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

.field private roguelike_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

.field private steam_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

.field private top_10_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

.field private user_protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;


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
.method public getDoomsday_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->doomsday_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecommendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPocket_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->pocket_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoguelike_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->roguelike_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSteam_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->steam_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTop_10_game()Lcom/join/mgps/activity/recomend/RecommendGroupBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->top_10_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUser_protocol()Lcom/join/mgps/activity/recomend/UserProtocolBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->user_protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDoomsday_game(Lcom/join/mgps/activity/recomend/RecommendGroupBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doomsday_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->doomsday_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/recomend/RecommendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPocket_game(Lcom/join/mgps/activity/recomend/RecommendGroupBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pocket_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->pocket_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-void
.end method

.method public setRoguelike_game(Lcom/join/mgps/activity/recomend/RecommendGroupBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roguelike_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->roguelike_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSteam_game(Lcom/join/mgps/activity/recomend/RecommendGroupBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "steam_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->steam_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-void
.end method

.method public setTop_10_game(Lcom/join/mgps/activity/recomend/RecommendGroupBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top_10_game"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->top_10_game:Lcom/join/mgps/activity/recomend/RecommendGroupBean;

    .line 2
    .line 3
    return-void
.end method

.method public setUser_protocol(Lcom/join/mgps/activity/recomend/UserProtocolBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user_protocol"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendDataBean;->user_protocol:Lcom/join/mgps/activity/recomend/UserProtocolBean;

    .line 2
    .line 3
    return-void
.end method
