.class public Lcom/join/mgps/db/tables/FightMainTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private is_more:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private jump_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private link_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private margin:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private model_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pay_game_amount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private pic_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sub_title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private title_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tpl_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/db/tables/FightMainTable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fightMainTable"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getId()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->id:I

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->title:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->label:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->pic_remote:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->ico_remote:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getTitle_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->title_type:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getMargin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->margin:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getSub_title()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->sub_title:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getModel_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->model_type:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getLink_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->link_type:I

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->crc_link_type_val:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getJump_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->jump_type:I

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getIs_more()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->is_more:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getTpl_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->tpl_type:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getPay_game_amount()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->pay_game_amount:I

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_source_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_source_url:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_outside_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_outside_url:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/FightMainTable;->getDownload_original_switch()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_original_switch:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->down_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_original_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_outside_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_source_switch_v1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_source_switch_v2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_more()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->is_more:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->jump_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->link_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMargin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->margin:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModel_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->model_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_game_amount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->pay_game_amount:I

    .line 2
    .line 3
    return v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->pic_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->title_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/FightMainTable;->tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDown_status(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->down_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_original_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_original_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_outside_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_outside_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_source_switch_v1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_source_switch_v1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_source_switch_v2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_source_switch_v2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_source_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ico_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->ico_remote:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->id:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->is_more:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_type(I)V
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
    iput p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->jump_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->label:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLink_type(I)V
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
    iput p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->link_type:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMargin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->margin:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setModel_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->model_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_game_amount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_game_amount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->pay_game_amount:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->pic_remote:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->sub_title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->title_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/FightMainTable;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
