.class public Lcom/join/mgps/dto/ArenaGameRoomListConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private current_collection_cfg:Lcom/join/mgps/dto/GameConfig;

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
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
.method public getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->current_collection_cfg:Lcom/join/mgps/dto/GameConfig;

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
            "Lcom/join/mgps/dto/GameConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCurrent_collection_cfg(Lcom/join/mgps/dto/GameConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_collection_cfg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->current_collection_cfg:Lcom/join/mgps/dto/GameConfig;

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
            "Lcom/join/mgps/dto/GameConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
