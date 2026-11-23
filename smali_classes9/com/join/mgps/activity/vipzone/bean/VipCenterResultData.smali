.class public Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cp_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

.field private gf_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

.field private luck_draw_info:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

.field private member_collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private mod_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

.field private os_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;


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
.method public getCp_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->cp_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGf_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->gf_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLuck_draw_info()Lcom/join/mgps/activity/vipzone/bean/Luckbean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->luck_draw_info:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMember_collection()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->member_collection:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMod_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->mod_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOs_game_list()Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->os_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCp_game_list(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cp_game_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->cp_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-void
.end method

.method public setGf_game_list(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gf_game_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->gf_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-void
.end method

.method public setLuck_draw_info(Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "luck_draw_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->luck_draw_info:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 2
    .line 3
    return-void
.end method

.method public setMember_collection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "member_collection"
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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->member_collection:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setMod_game_list(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod_game_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->mod_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-void
.end method

.method public setOs_game_list(Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os_game_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/VipCenterResultData;->os_game_list:Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 2
    .line 3
    return-void
.end method
