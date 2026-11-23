.class public Lcom/join/mgps/dto/FightSubGameInfoDataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actual_size:J

.field private appSize:Ljava/lang/String;

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private company_name:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private down_status:I

.field private down_url_remote:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_screenshot_pic:Ljava/lang/String;

.field private fight_type:I

.field private forum_id:I

.field private forum_switch:I

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private gift_package_switch:I

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private lock_sp:I

.field private other_down_switch:I

.field private packageName:Ljava/lang/String;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private pic_remote:Ljava/lang/String;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:I

.field private plugin_screenshot:I

.field private rom_lowest_ver:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sync_memory:Ljava/lang/String;

.field private tag_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private tp_down_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation
.end field

.field private unzip_size:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;

.field private world_area:I

.field private world_shop:I


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
.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->actual_size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cdn_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->company_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_status:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ico_remote:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_url_remote:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tag_info:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver_name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget v3, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->info:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->appSize:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver_name:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_down_url:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->screenshot_pic:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_network:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver_name:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_down_url:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_screenshot:I

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 150
    .line 151
    .line 152
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_switch:I

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_id:I

    .line 158
    .line 159
    int-to-long v1, v1

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 161
    .line 162
    .line 163
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_shop:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 166
    .line 167
    .line 168
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_area:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 171
    .line 172
    .line 173
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_type:I

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 176
    .line 177
    .line 178
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_funv2:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_screenshot_pic:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cdn_down_switch:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCdn_down_switch(I)V

    .line 196
    .line 197
    .line 198
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->other_down_switch:I

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOther_down_switch(I)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tp_down_url:Ljava/util/List;

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTp_down_url(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_tpl_type:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 214
    .line 215
    .line 216
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->lock_sp:I

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->unzip_size:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sync_memory:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->gift_package_switch:I

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 234
    .line 235
    .line 236
    iget-wide v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->actual_size:J

    .line 237
    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 244
    .line 245
    .line 246
    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_funv2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getForum_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->gift_package_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_world:I

    .line 2
    .line 3
    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->lock_sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->other_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pic_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_info()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tag_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTp_down_url()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_shop:I

    .line 2
    .line 3
    return v0
.end method

.method public setActual_size(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actual_size"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->actual_size:J

    .line 2
    .line 3
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdn_down_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cdn_down_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_down_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCompany_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "company_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->company_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_sign_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->crc_sign_id:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_url_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEdit_recommend(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edit_recommend"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fight_funv2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_funv2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFight_screenshot_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fight_screenshot_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFight_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fight_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->fight_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setForum_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forum_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setForum_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forum_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->forum_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info_top_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info_top_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_top_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_info_tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gift_package_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->gift_package_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_fight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_fight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_fight:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_network(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_network"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_network:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_world(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_world"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->is_world:I

    .line 2
    .line 3
    return-void
.end method

.method public setLock_sp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock_sp"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->lock_sp:I

    .line 2
    .line 3
    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other_down_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->other_down_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPapa_explain(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "papa_explain"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_tag_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

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
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->pic_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_lowest_ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_num(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_num:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_screenshot"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->plugin_screenshot:I

    .line 2
    .line 3
    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rom_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenshot_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_down_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tag_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

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
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_info(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tag_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setTp_down_url(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tp_down_url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unzip_size"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWorld_area(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world_area"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_area:I

    .line 2
    .line 3
    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world_shop"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FightSubGameInfoDataBean;->world_shop:I

    .line 2
    .line 3
    return-void
.end method
