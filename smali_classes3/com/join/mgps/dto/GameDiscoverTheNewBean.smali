.class public Lcom/join/mgps/dto/GameDiscoverTheNewBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private d_discover:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation
.end field

.field private game_count:I

.field private game_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation
.end field

.field private pv_count:I


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
.method public getD_discover()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->d_discover:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->game_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPv_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->pv_count:I

    .line 2
    .line 3
    return v0
.end method

.method public setD_discover(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d_discover"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->d_discover:Ljava/util/List;

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
            "game_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->game_count:I

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
            "Lcom/join/mgps/activity/vipzone/bean/IconGame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->game_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPv_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pv_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameDiscoverTheNewBean;->pv_count:I

    .line 2
    .line 3
    return-void
.end method
