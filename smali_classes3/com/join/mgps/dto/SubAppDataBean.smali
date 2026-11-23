.class public Lcom/join/mgps/dto/SubAppDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/SubAppGameInfoBean;

.field private is_more:Ljava/lang/String;

.field private jump_type:Ljava/lang/String;

.field private link_type:Ljava/lang/String;

.field private link_type_val:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/SubAppGameInfoBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "link_type",
            "link_type_val",
            "crc_link_type_val",
            "jump_type",
            "is_more",
            "game_info",
            "tpl_type"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->link_type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/SubAppDataBean;->link_type_val:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/SubAppDataBean;->crc_link_type_val:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/SubAppDataBean;->jump_type:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/SubAppDataBean;->is_more:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/SubAppDataBean;->game_info:Lcom/join/mgps/dto/SubAppGameInfoBean;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/SubAppDataBean;->tpl_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppDataBean;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/SubAppGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppDataBean;->game_info:Lcom/join/mgps/dto/SubAppGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_more()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppDataBean;->is_more:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppDataBean;->jump_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLink_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppDataBean;->link_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppDataBean;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SubAppDataBean;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/SubAppGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->game_info:Lcom/join/mgps/dto/SubAppGameInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_more(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_more"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->is_more:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->jump_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->link_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->link_type_val:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SubAppDataBean;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
