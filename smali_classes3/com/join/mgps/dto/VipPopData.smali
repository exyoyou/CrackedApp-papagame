.class public Lcom/join/mgps/dto/VipPopData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_switch:I

.field private crc_link_type_val:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private id:I

.field private jump_type:Ljava/lang/String;

.field private link_type:Ljava/lang/String;

.field private link_type_val:Ljava/lang/String;

.field private pic_remote:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private sync_memory:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/VipPopData;->plugin_num:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAd_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VipPopData;->ad_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/VipPopData;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/VipPopData;->jump_type:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/dto/VipPopData;->jump_type:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/VipPopData;->link_type:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/VipPopData;->link_type:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/VipPopData;->link_type_val:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/dto/VipPopData;->tpl_type:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/dto/VipPopData;->crc_link_type_val:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public getJump_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->jump_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLink_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->link_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->pic_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/VipPopData;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAd_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VipPopData;->ad_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_link_type_val"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info_tpl_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/VipPopData;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setJump_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->jump_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLink_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->link_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLink_type_val(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link_type_val"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->pic_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_num(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_num"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sync_memory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTpl_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tpl_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/VipPopData;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
