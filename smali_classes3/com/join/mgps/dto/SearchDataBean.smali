.class public Lcom/join/mgps/dto/SearchDataBean;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actual_size:J

.field private allow_start_up_ad:Ljava/lang/String;

.field private apk_sign:Ljava/lang/String;

.field private bespeak_switch:I

.field private butnShowType:I

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private company_name:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private describe:Ljava/lang/String;

.field private down_count:I

.field private down_count_manual:Ljava/lang/String;

.field private down_status:I

.field private down_url_local:Ljava/lang/String;

.field private down_url_remote:Ljava/lang/String;

.field private downloadType:I

.field private download_close:I

.field private edit_recommend:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_screenshot_pic:Ljava/lang/String;

.field private fight_type:I

.field private forum_id:J

.field private forum_switch:I

.field private game_book:I

.field private game_id:Ljava/lang/String;

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private gift_package_switch:I

.field private ico_local:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field lastCompleteSize:J

.field lastTime:J

.field private lock_sp:I

.field private max_an_compatible_ver:I

.field private min_an_compatible_ver:I

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private other_down_switch:I

.field private package_name:Ljava/lang/String;

.field private papa_explain:Ljava/lang/String;

.field private pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private plugin_screenshot:I

.field private romPath:Ljava/lang/String;

.field private rom_lowest_ver:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private score_count:Ljava/lang/String;

.field private score_count_manual:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private size:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_position:I

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
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/SearchDataBean;->butnShowType:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_num:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SearchDataBean;->actual_size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApk_sign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->apk_sign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBespeakSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getButnShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->butnShowType:I

    .line 2
    .line 3
    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->cdn_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->company_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownStatus()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/SearchDataBean;->bespeak_switch:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    iput v0, p0, Lcom/join/mgps/dto/SearchDataBean;->down_status:I

    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->down_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->down_count_manual:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/SearchDataBean;->bespeak_switch:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    :cond_0
    return v0
.end method

.method public getDown_url_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->down_url_local:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->downloadType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_close()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->download_close:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/SearchDataBean;->down_status:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->bespeak_switch:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x6

    .line 17
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->package_name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->ico_remote:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->game_name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->down_url_remote:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->tag_info:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->crc_sign_id:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->ver:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->ver_name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_num:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->info:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->size:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_ver:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_ver_name:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_down_url:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->downloadType:I

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->screenshot_pic:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_num:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->is_world:I

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 116
    .line 117
    .line 118
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->is_network:I

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->source_ver:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->source_ver_name:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->source_down_url:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_screenshot:I

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 141
    .line 142
    .line 143
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->forum_switch:I

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 146
    .line 147
    .line 148
    iget-wide v2, p0, Lcom/join/mgps/dto/SearchDataBean;->forum_id:J

    .line 149
    .line 150
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 151
    .line 152
    .line 153
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->world_shop:I

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 156
    .line 157
    .line 158
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->world_area:I

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 161
    .line 162
    .line 163
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->is_fight:I

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 166
    .line 167
    .line 168
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_type:I

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_funv2:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_screenshot_pic:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->game_info_tpl_type:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->lock_sp:I

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->unzip_size:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->sync_memory:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->gift_package_switch:I

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 206
    .line 207
    .line 208
    iget-wide v2, p0, Lcom/join/mgps/dto/SearchDataBean;->actual_size:J

    .line 209
    .line 210
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 211
    .line 212
    .line 213
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->down_count:I

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 216
    .line 217
    .line 218
    iget v2, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tpl_two_position:I

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 226
    .line 227
    .line 228
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->score:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->allow_start_up_ad:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 239
    .line 240
    if-eqz v2, :cond_1

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 261
    .line 262
    .line 263
    iget v1, p0, Lcom/join/mgps/dto/SearchDataBean;->min_an_compatible_ver:I

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 266
    .line 267
    .line 268
    iget v1, p0, Lcom/join/mgps/dto/SearchDataBean;->max_an_compatible_ver:I

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_down_url:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_2

    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_down_url:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 287
    .line 288
    if-eqz v1, :cond_4

    .line 289
    .line 290
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->crc_sign_id:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_3

    .line 301
    .line 302
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 331
    .line 332
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 340
    .line 341
    if-eqz v1, :cond_5

    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 351
    .line 352
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_5
    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_funv2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SearchDataBean;->forum_id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->forum_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameBook()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getGame_id()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getGame_book()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->gift_package_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getIco_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->ico_local:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->info:Ljava/lang/String;

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
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->game_info_tpl_type:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getGameId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getGameId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/SearchDataBean;->crc_sign_id:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget v1, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tpl_two_position:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string v2, ""

    .line 87
    .line 88
    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->tag_info:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/join/mgps/Util/IntentToDetialBean;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentToDetialBean;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getGameId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppId(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->game_name:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppName(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/dto/SearchDataBean;->ico_remote:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setIconUrl(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setDetialType(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->is_world:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastCompleteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SearchDataBean;->lastCompleteSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SearchDataBean;->lastTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->lock_sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->max_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->min_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getModGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getMod_info()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->other_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayTagInfo()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginNum()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public getRomPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->romPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->score_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->score_count_manual:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpTagInfo()Lcom/join/mgps/dto/TipNew;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tpl_two_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagInfo()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->tag_info:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->tag_info:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchDataBean;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getVer()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getVer()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return v1
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->world_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->world_shop:I

    .line 2
    .line 3
    return v0
.end method

.method public isCpsGame()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchDataBean;->download_close:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isModGameVm()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isModGameVm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public isSingleGameVm()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isSingleGameVm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public needPurchase()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getGameId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public needUpdate(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vCode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchDataBean;->getVersionCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
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
    iput-wide p1, p0, Lcom/join/mgps/dto/SearchDataBean;->actual_size:J

    .line 2
    .line 3
    return-void
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allow_start_up_ad"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApk_sign(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apk_sign"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->apk_sign:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBespeak_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bespeak_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->bespeak_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setButnShowType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "butnShowType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->butnShowType:I

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->cdn_down_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->cfg_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->company_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "describe"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDown_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->down_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_count_manual(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_count_manual"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->down_count_manual:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->down_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_url_local(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_url_local"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->down_url_local:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->downloadType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_close(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_close"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->download_close:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->edit_recommend:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_funv2:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_screenshot_pic:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->fight_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setForum_id(J)V
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
    iput-wide p1, p0, Lcom/join/mgps/dto/SearchDataBean;->forum_id:J

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->forum_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_book(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_book"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->game_book:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->game_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->game_info_top_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->game_info_tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->game_name:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->gift_package_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setIco_local(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ico_local"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->ico_local:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->ico_remote:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->info:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->is_fight:I

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->is_network:I

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->is_world:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastCompleteSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastCompleteSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/SearchDataBean;->lastCompleteSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/SearchDataBean;->lastTime:J

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->lock_sp:I

    .line 2
    .line 3
    return-void
.end method

.method public setMax_an_compatible_ver(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max_an_compatible_ver"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->max_an_compatible_ver:I

    .line 2
    .line 3
    return-void
.end method

.method public setMin_an_compatible_ver(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min_an_compatible_ver"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->min_an_compatible_ver:I

    .line 2
    .line 3
    return-void
.end method

.method public setMod_info(Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->other_down_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "package_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->package_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->papa_explain:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_lowest_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_num:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->plugin_screenshot:I

    .line 2
    .line 3
    return-void
.end method

.method public setRomPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->romPath:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->score_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore_count_manual(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score_count_manual"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->score_count_manual:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSingle_game_mod_info(Lcom/join/mgps/dto/SingleGameModInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "single_game_mod_info2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->size:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->source_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->source_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->source_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->source_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tpl_two_position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->sp_tpl_two_position:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->sync_memory:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->tag_info:Ljava/util/ArrayList;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->tp_down_url:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->unzip_size:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchDataBean;->ver_name:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->world_area:I

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
    iput p1, p0, Lcom/join/mgps/dto/SearchDataBean;->world_shop:I

    .line 2
    .line 3
    return-void
.end method
