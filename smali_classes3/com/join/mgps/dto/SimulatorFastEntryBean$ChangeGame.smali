.class public Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SimulatorFastEntryBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeGame"
.end annotation


# instance fields
.field private ad_switch:I

.field private big_pic:Ljava/lang/String;

.field private extBean:Lcom/join/mgps/dto/ExtBean;

.field private jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

.field private quit_switch:I

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private v_url:Ljava/lang/String;


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
.method public getAd_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->ad_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBig_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
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
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getJump_type()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getLink_type()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getLink_type_val()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getTpl_type()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;->getCrc_link_type_val()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-object v0
.end method

.method public getJp_info()Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQuit_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->quit_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->v_url:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->ad_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setBig_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "big_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public setJp_info(Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jp_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->jp_info:Lcom/join/mgps/dto/SimulatorFastEntryBean$JpInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setQuit_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quit_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->quit_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->sub_title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setV_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorFastEntryBean$ChangeGame;->v_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
