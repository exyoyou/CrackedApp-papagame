.class public Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enter_type:I

.field private extData:Ljava/lang/String;

.field private from:I

.field private icon:Ljava/lang/String;

.field private jump_model_dto:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private menu_id:I

.field private module_id:I

.field private redBot:Z

.field private sub_icon:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

.field private system:Z

.field private title:Ljava/lang/String;


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
.method public getEnter_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->enter_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->extData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->from:I

    .line 2
    .line 3
    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_model_dto()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->jump_model_dto:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMenu_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->menu_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getModule_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->module_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getSub_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->sub_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRedBot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->redBot:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSystem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->system:Z

    .line 2
    .line 3
    return v0
.end method

.method public setEnter_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enter_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->enter_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->extData:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->from:I

    .line 2
    .line 3
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_model_dto(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_model_dto"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->jump_model_dto:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMenu_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->menu_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setModule_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->module_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setRedBot(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redBot"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->redBot:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSub_icon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub_icon"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->sub_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSystem(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "system"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->system:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoveryHeaderMenuBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
