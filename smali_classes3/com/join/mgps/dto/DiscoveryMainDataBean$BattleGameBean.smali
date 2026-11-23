.class public Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/DiscoveryMainDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BattleGameBean"
.end annotation


# instance fields
.field private battle_area:I

.field private battle_index_img:Ljava/lang/String;

.field private cat_id:I

.field private game_ico:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_surface_head_image:Ljava/lang/String;

.field private hall_game_list_img:Ljava/lang/String;

.field private is_local_battle:Z

.field private rom_type:I

.field private room_count:I


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
.method public getBattle_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->battle_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattle_index_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->battle_index_img:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCat_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->cat_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_ico:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_surface_head_image()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_surface_head_image:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHall_game_list_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->hall_game_list_img:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRom_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->rom_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoom_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->room_count:I

    .line 2
    .line 3
    return v0
.end method

.method public isIs_local_battle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->is_local_battle:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBattle_area(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_area"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->battle_area:I

    .line 2
    .line 3
    return-void
.end method

.method public setBattle_index_img(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_index_img"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->battle_index_img:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCat_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cat_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->cat_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_ico(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_ico"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_ico:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_surface_head_image(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_surface_head_image"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->game_surface_head_image:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHall_game_list_img(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hall_game_list_img"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->hall_game_list_img:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_local_battle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_local_battle"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->is_local_battle:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRom_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rom_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->rom_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setRoom_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "room_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryMainDataBean$BattleGameBean;->room_count:I

    .line 2
    .line 3
    return-void
.end method
