.class public Lcom/join/mgps/dto/SplashIntentBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;
    }
.end annotation


# instance fields
.field private ad_switch:I

.field private crc_link_type_val:Ljava/lang/String;

.field private game_info:Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;

.field private jump_id:I

.field private jump_type:I

.field private link_type:I

.field private link_type_val:Ljava/lang/String;

.field private pic_remote:Ljava/lang/String;

.field private pic_remote_local:Ljava/lang/String;

.field private showPosition:I

.field private show_time:J

.field private tag_show:I

.field private title:Ljava/lang/String;

.field private tpl_type:Ljava/lang/String;

.field private vedio_url:Ljava/lang/String;

.field private vedio_url_local:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->showPosition:I

    .line 6
    .line 7
    return-void
.end method

.method public static from(Lorg/json/JSONObject;)Lcom/join/mgps/dto/SplashIntentBean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/SplashIntentBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/SplashIntentBean;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "link_type"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setLink_type(I)V

    .line 13
    .line 14
    .line 15
    const-string v1, "link_type_val"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setLink_type_val(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "crc_link_type_val"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "jump_type"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setJump_type(I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "jump_id"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setJump_id(I)V

    .line 49
    .line 50
    .line 51
    const-string v1, "tpl_type"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setTpl_type(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "title"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setTitle(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "pic_remote"

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setPic_remote(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "pic_remote_local"

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setPic_remote_local(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "ad_switch"

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setAd_switch(I)V

    .line 94
    .line 95
    .line 96
    const-string v1, "show_time"

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/SplashIntentBean;->setShow_time(J)V

    .line 103
    .line 104
    .line 105
    const-string v1, "tag_show"

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setTag_show(I)V

    .line 112
    .line 113
    .line 114
    const-string v1, "showPosition"

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setShowPosition(I)V

    .line 121
    .line 122
    .line 123
    const-string v1, "vedio_url"

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setVedio_url(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v1, "vedio_url_local"

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SplashIntentBean;->setVedio_url_local(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v1, "game_info"

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-eqz p0, :cond_0

    .line 148
    .line 149
    invoke-static {p0}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->from(Lorg/json/JSONObject;)Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/SplashIntentBean;->setGame_info(Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAd_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->ad_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->game_info:Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/SplashIntentBean;->jump_type:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/dto/SplashIntentBean;->link_type:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/SplashIntentBean;->link_type_val:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/SplashIntentBean;->crc_link_type_val:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/join/mgps/dto/SplashIntentBean;->link_type:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/SplashIntentBean;->game_info:Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;->getGame_info_tpl_type()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/SplashIntentBean;->tpl_type:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-object v0
.end method

.method public getJump_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->jump_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getJump_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->jump_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->link_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getLink_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->pic_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_remote_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->pic_remote_local:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->showPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->show_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTag_show()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->tag_show:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVedio_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->vedio_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVedio_url_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SplashIntentBean;->vedio_url_local:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->ad_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->game_info:Lcom/join/mgps/dto/SplashIntentBean$SimbGameinfo;

    .line 2
    .line 3
    return-void
.end method

.method public setJump_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jump_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->jump_id:I

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
    iput p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->jump_type:I

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
    iput p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->link_type:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->link_type_val:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->pic_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_remote_local(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_remote_local"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->pic_remote_local:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->showPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public setShow_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->show_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setTag_show(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_show"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->tag_show:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVedio_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vedio_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->vedio_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVedio_url_local(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vedio_url_local"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SplashIntentBean;->vedio_url_local:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
