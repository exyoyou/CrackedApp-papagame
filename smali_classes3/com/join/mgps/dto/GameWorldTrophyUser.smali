.class public Lcom/join/mgps/dto/GameWorldTrophyUser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private data:I

.field private nickname:Ljava/lang/String;

.field private trophy_rank:I

.field private uid:I

.field private world_grade:I


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
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->data:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrophy_rank()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->trophy_rank:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorld_grade()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->world_grade:I

    .line 2
    .line 3
    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setData(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->data:I

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTrophy_rank(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trophy_rank"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->trophy_rank:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setWorld_grade(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world_grade"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldTrophyUser;->world_grade:I

    .line 2
    .line 3
    return-void
.end method
