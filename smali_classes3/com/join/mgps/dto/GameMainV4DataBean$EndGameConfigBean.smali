.class public Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainV4DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndGameConfigBean"
.end annotation


# instance fields
.field private create_endgame_hint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$CreateEndgameHintBean;",
            ">;"
        }
    .end annotation
.end field

.field private endgame_archive_hint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endgame_asset_switch:Z

.field private endgame_cards:I

.field private endgame_challenge_level:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;",
            ">;"
        }
    .end annotation
.end field

.field private endgame_creation_switch:Z

.field private endgame_pic:Ljava/lang/String;

.field private endgame_switch:Z


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
.method public getCreate_endgame_hint()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$CreateEndgameHintBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->create_endgame_hint:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndgame_archive_hint()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_archive_hint:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndgame_cards()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_cards:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndgame_challenge_level()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_challenge_level:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndgame_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEndgame_asset_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_asset_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEndgame_creation_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_creation_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEndgame_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCreate_endgame_hint(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "create_endgame_hint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$CreateEndgameHintBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->create_endgame_hint:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setEndgame_archive_hint(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgame_archive_hint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_archive_hint:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setEndgame_asset_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgame_asset_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_asset_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEndgame_cards(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgame_cards"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_cards:I

    .line 2
    .line 3
    return-void
.end method

.method public setEndgame_challenge_level(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgame_challenge_level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameMainV4DataBean$EndgameChallengeLevelBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_challenge_level:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setEndgame_creation_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgame_creation_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_creation_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEndgame_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgame_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEndgame_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endgame_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;->endgame_switch:Z

    .line 2
    .line 3
    return-void
.end method
