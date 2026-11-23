.class public Lcom/join/mgps/dto/GameHeadAd$SubInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameHeadAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubInfo"
.end annotation


# instance fields
.field private crc_link_type_val:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/AppBean;

.field private is_more:I

.field private jump_type:I

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;


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
.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/AppBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->game_info:Lcom/join/mgps/dto/AppBean;

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
    iget v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->jump_type:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type_val:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->tpl_type:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->crc_link_type_val:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public getIs_more()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->is_more:I

    .line 2
    .line 3
    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->jump_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/AppBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->game_info:Lcom/join/mgps/dto/AppBean;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_more(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->is_more:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->jump_type:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->link_type_val:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
