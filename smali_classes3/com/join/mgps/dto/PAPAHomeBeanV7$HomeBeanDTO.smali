.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PAPAHomeBeanV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeBeanDTO"
.end annotation


# instance fields
.field private _from:I

.field private _from_type:I

.field private ad_switch:Ljava/lang/Integer;

.field private big_pic:Ljava/lang/String;

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

.field private gameBean:Lcom/join/mgps/dto/CollectionBeanSub;

.field private hasExposure:Z

.field private isRequesting:Z

.field private jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

.field private position:Ljava/lang/String;

.field private quit_switch:Ljava/lang/Integer;

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
.method public getAd_switch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->ad_switch:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBig_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object v0
.end method

.method public getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->gameBean:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getJump_type()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type_val()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v1, v2, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getGame_info_tpl_type()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getTpl_type()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getCrc_link_type_val()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_3

    .line 125
    .line 126
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 127
    .line 128
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from:I

    .line 139
    .line 140
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from_type:I

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 161
    .line 162
    if-nez v2, :cond_4

    .line 163
    .line 164
    const/4 v2, 0x0

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 192
    .line 193
    .line 194
    return-object v0
.end method

.method public getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->position:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQuit_switch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->quit_switch:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getV_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->v_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from:I

    .line 2
    .line 3
    return v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from_type:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->big_pic:Ljava/lang/String;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->v_url:Ljava/lang/String;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    const/4 v2, 0x4

    .line 36
    aput-object v1, v0, v2

    .line 37
    .line 38
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method public isHasExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->hasExposure:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMiniGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->isMiniGame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isRequesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAd_switch(Ljava/lang/Integer;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->ad_switch:Ljava/lang/Integer;

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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method

.method public setG_info(Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "g_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->g_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setGameBean(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->gameBean:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    return-void
.end method

.method public setHasExposure(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasExposure"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->hasExposure:Z

    .line 2
    .line 3
    return-void
.end method

.method public setJp_info(Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->jp_info:Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 2
    .line 3
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->position:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setQuit_switch(Ljava/lang/Integer;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->quit_switch:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setRequesting(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requesting"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->sub_title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->title:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->v_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set_from(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from:I

    .line 2
    .line 3
    return-void
.end method

.method public set_from_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->_from_type:I

    .line 2
    .line 3
    return-void
.end method
