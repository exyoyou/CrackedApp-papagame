.class public Lcom/join/mgps/dto/DiscoveryMainDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;,
        Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;
    }
.end annotation


# instance fields
.field private battle_game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private battle_game_count:I

.field private forum_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;",
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
.method public getBattle_game()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean;->battle_game:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattle_game_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean;->battle_game_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getForum_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean;->forum_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBattle_game(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_game"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean;->battle_game:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setBattle_game_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_game_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean;->battle_game_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setForum_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forum_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean$ForumListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean;->forum_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
