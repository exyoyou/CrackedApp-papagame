.class public Lcom/join/mgps/dto/CollectionBeanSub;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CollectionBeanSub$GameTagInfoBean;,
        Lcom/join/mgps/dto/CollectionBeanSub$GameTagInfo;
    }
.end annotation


# instance fields
.field private actual_size:J

.field private allow_start_up_ad:Ljava/lang/String;

.field private appSize:Ljava/lang/String;

.field private battle_upload_pic:Ljava/lang/String;

.field private bespeak_switch:I

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private collection_game_describe:Ljava/lang/String;

.field private cost_type:I

.field private cpu_type:I

.field private crc_sign_id:Ljava/lang/String;

.field private customer_info:Ljava/lang/String;

.field private downType:I

.field private down_count:I

.field private down_status:I

.field private down_url_remote:Ljava/lang/String;

.field private downloadType:I

.field private download_close:I

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private ext_info:Lcom/join/mgps/dto/ExtInfoBean;

.field private fight_funv2:Ljava/lang/String;

.field private fight_screenshot_pic:Ljava/lang/String;

.field private fight_type:I

.field private first_hot_comment:Ljava/lang/String;

.field private forum_id:J

.field private forum_switch:I

.field private game_book:I

.field private game_dimension:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_top_video_url:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_open_time:Ljava/lang/String;

.field private gif_ico_remote:Ljava/lang/String;

.field private gift_package_switch:I

.field private ico_remote:Ljava/lang/String;

.field private index:I

.field private info:Ljava/lang/String;

.field private isAd:Z

.field private isSelected:Z

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private lock_sp:I

.field private max_an_compatible_ver:I

.field private min_an_compatible_ver:I

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private other_down_switch:I

.field private packageName:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private permission_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pic_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private pic_position:I

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private plugin_screenshot:I

.field private rec_game_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_game_big_gif:Ljava/lang/String;

.field private recommend_game_big_pic:Ljava/lang/String;

.field private resourceSize:J

.field private resourceUrl:Ljava/lang/String;

.field private rom_lowest_ver:Ljava/lang/String;

.field private score:Ljava/lang/String;

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

.field private tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private the_new:Z

.field private the_update:Z

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

.field private vedio_cover_pic:Ljava/lang/String;

.field private vedio_url:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;

.field private viewType:I

.field private vm_device_switch:I

.field private web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

.field private world_area:I

.field private world_shop:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->downType:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vm_device_switch:I

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cost_type:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

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
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 128
    .line 129
    .line 130
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 153
    .line 154
    .line 155
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 158
    .line 159
    .line 160
    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    .line 161
    .line 162
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 163
    .line 164
    .line 165
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 168
    .line 169
    .line 170
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 173
    .line 174
    .line 175
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 178
    .line 179
    .line 180
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 203
    .line 204
    .line 205
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setBattle_upload_pic(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    .line 226
    .line 227
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_top_pic(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 238
    .line 239
    .line 240
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    .line 241
    .line 242
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 243
    .line 244
    .line 245
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 256
    .line 257
    if-eqz v2, :cond_2

    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    :cond_2
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-wide v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceSize:J

    .line 297
    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 299
    .line 300
    .line 301
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_3

    .line 308
    .line 309
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 332
    .line 333
    .line 334
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->min_an_compatible_ver:I

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 337
    .line 338
    .line 339
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->max_an_compatible_ver:I

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 342
    .line 343
    .line 344
    iget-wide v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    .line 345
    .line 346
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info_s(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 361
    .line 362
    if-eqz v1, :cond_5

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_4

    .line 375
    .line 376
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    goto :goto_3

    .line 395
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 396
    .line 397
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 405
    .line 406
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 414
    .line 415
    if-eqz v1, :cond_6

    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 425
    .line 426
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_6
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 434
    .line 435
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 436
    .line 437
    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v3, ""

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setNodeId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    if-eqz v2, :cond_7

    .line 495
    .line 496
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    :cond_7
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 505
    .line 506
    .line 507
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/List;

    .line 508
    .line 509
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getWhere()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 528
    .line 529
    .line 530
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vm_device_switch:I

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVm_device_switch(I)V

    .line 540
    .line 541
    .line 542
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cost_type:I

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCost_type(I)V

    .line 545
    .line 546
    .line 547
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->permission_list:Ljava/util/List;

    .line 548
    .line 549
    if-eqz v1, :cond_8

    .line 550
    .line 551
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-nez v1, :cond_8

    .line 556
    .line 557
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->permission_list:Ljava/util/List;

    .line 558
    .line 559
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPermission_list(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :cond_8
    return-object v0
.end method

.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattle_upload_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBespeakSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cdn_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCollection_game_describe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->collection_game_describe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCost_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cost_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getCpu_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cpu_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getCustomer_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->customer_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownStatus()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    iput v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method public getDownType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->downType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

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

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->downloadType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_close()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_close:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt_info()Lcom/join/mgps/dto/ExtInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ext_info:Lcom/join/mgps/dto/ExtInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getFirst_hot_comment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->first_hot_comment:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameBook()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

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
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_dimension()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_dimension:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_top_video_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_video_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_open_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_open_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGif_ico_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gif_ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string v2, ""

    .line 83
    .line 84
    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/List;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/join/mgps/Util/IntentToDetialBean;

    .line 105
    .line 106
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentToDetialBean;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppId(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppName(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setIconUrl(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setDetialType(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    .line 2
    .line 3
    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->max_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->min_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getModGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

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
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->other_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayTagInfo()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermission_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->permission_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getPluginNum()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public getRec_game_tags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecGameTagBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rec_game_tags:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommend_game_big_gif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_gif:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommend_game_big_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpTagInfo()Lcom/join/mgps/dto/TipNew;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVedio_cover_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_cover_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVedio_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

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

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public getVm_device_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vm_device_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    .line 2
    .line 3
    return v0
.end method

.method public isAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCpsGame()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_close:I

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

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

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isSelected:Z

    .line 2
    .line 3
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
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

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

.method public isThe_new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->the_new:Z

    .line 2
    .line 3
    return v0
.end method

.method public isThe_update()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->the_update:Z

    .line 2
    .line 3
    return v0
.end method

.method public needPurchase()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGameId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVersionCode()I

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
    iput-wide p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    .line 2
    .line 3
    return-void
.end method

.method public setAd(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isAd:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBattle_upload_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_upload_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->bespeak_switch:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cdn_down_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCollection_game_describe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection_game_describe"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->collection_game_describe:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCost_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cost_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cost_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setCpu_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cpu_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cpu_type:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomer_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customer_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->customer_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->downType:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->downloadType:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_close:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt_info(Lcom/join/mgps/dto/ExtInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ext_info:Lcom/join/mgps/dto/ExtInfoBean;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setFirst_hot_comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first_hot_comment"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->first_hot_comment:Ljava/lang/String;

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
    iput-wide p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_book:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_dimension(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_dimension"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_dimension:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info_top_video_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info_top_video_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_video_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_open_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_open_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_open_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGif_ico_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gif_ico_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gif_ico_remote:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->index:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->max_an_compatible_ver:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->min_an_compatible_ver:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->other_down_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->packageName:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->papa_explain:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setPermission_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->permission_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_position(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_position:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    .line 2
    .line 3
    return-void
.end method

.method public setRec_game_tags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rec_game_tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecGameTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rec_game_tags:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_game_big_gif(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_game_big_gif"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_gif:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_game_big_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_game_big_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->recommend_game_big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResourceSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setResourceUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->resourceUrl:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rom_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isSelected:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_info(Ljava/util/List;)V
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
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setThe_new(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "the_new"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->the_new:Z

    .line 2
    .line 3
    return-void
.end method

.method public setThe_update(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "the_update"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->the_update:Z

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tp_down_url:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVedio_cover_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vedio_cover_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_cover_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->viewType:I

    .line 2
    .line 3
    return-void
.end method

.method public setVm_device_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm_device_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vm_device_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setWeb_disk_info(Lcom/join/mgps/dto/WebDiskInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "web_disk_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

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
    iput p1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    .line 2
    .line 3
    return-void
.end method

.method public showLabel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->the_new:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/dto/CollectionBeanSub;->the_update:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CollectionBeanSub{game_id=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_id:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", crc_sign_id=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->crc_sign_id:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", game_name=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", cfg_ver_name=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver_name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", cfg_ver=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_ver:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", cfg_down_url=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_down_url:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ", screenshot_pic=\'"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->screenshot_pic:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ", ico_remote=\'"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ico_remote:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ", package_name=\'"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->package_name:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, ", down_url_remote=\'"

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_url_remote:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, ", info=\'"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->info:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, ", size=\'"

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->size:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v2, ", actual_size="

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->actual_size:J

    .line 170
    .line 171
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, ", ver_name=\'"

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver_name:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v2, ", ver=\'"

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->ver:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v2, ", plugin_num=\'"

    .line 201
    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_num:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, ", is_world="

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_world:I

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v2, ", is_network="

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_network:I

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v2, ", source_ver_name=\'"

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver_name:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v2, ", source_ver=\'"

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_ver:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v2, ", source_down_url=\'"

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_down_url:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v2, ", plugin_screenshot="

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_screenshot:I

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v2, ", forum_switch="

    .line 283
    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_switch:I

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v2, ", forum_id="

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-wide v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->forum_id:J

    .line 298
    .line 299
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v2, ", world_shop="

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_shop:I

    .line 308
    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v2, ", world_area="

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->world_area:I

    .line 318
    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v2, ", is_fight="

    .line 323
    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->is_fight:I

    .line 328
    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v2, ", fight_type="

    .line 333
    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_type:I

    .line 338
    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v2, ", fight_funv2=\'"

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_funv2:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v2, ", plugin_lowest_ver_name=\'"

    .line 356
    .line 357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v2, ", plugin_lowest_ver=\'"

    .line 369
    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->plugin_lowest_ver:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v2, ", fight_screenshot_pic=\'"

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->fight_screenshot_pic:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v2, ", rom_lowest_ver=\'"

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->rom_lowest_ver:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v2, ", source_lowest_ver=\'"

    .line 408
    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->source_lowest_ver:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v2, ", cfg_lowest_ver=\'"

    .line 421
    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cfg_lowest_ver:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v2, ", game_info_tpl_type=\'"

    .line 434
    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_tpl_type:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v2, ", papa_explain=\'"

    .line 447
    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->papa_explain:Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v2, ", edit_recommend=\'"

    .line 460
    .line 461
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->edit_recommend:Ljava/lang/String;

    .line 465
    .line 466
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v2, ", cdn_down_switch="

    .line 473
    .line 474
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->cdn_down_switch:I

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v2, ", other_down_switch="

    .line 483
    .line 484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->other_down_switch:I

    .line 488
    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v2, ", lock_sp="

    .line 493
    .line 494
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->lock_sp:I

    .line 498
    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    const-string v2, ", sp_tpl_two_position="

    .line 503
    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tpl_two_position:I

    .line 508
    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v2, ", unzip_size=\'"

    .line 513
    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->unzip_size:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v2, ", tag_info="

    .line 526
    .line 527
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tag_info:Ljava/util/List;

    .line 531
    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v2, ", sp_tag_info="

    .line 536
    .line 537
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 541
    .line 542
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v2, ", tp_down_url="

    .line 546
    .line 547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->tp_down_url:Ljava/util/List;

    .line 551
    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v2, ", sync_memory=\'"

    .line 556
    .line 557
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->sync_memory:Ljava/lang/String;

    .line 561
    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v2, ", gift_package_switch="

    .line 569
    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->gift_package_switch:I

    .line 574
    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v2, ", down_status="

    .line 579
    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_status:I

    .line 584
    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v2, ", battle_upload_pic=\'"

    .line 589
    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->battle_upload_pic:Ljava/lang/String;

    .line 594
    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    const-string v2, ", game_open_time=\'"

    .line 602
    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_open_time:Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string v2, ", down_count="

    .line 615
    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->down_count:I

    .line 620
    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v2, ", collection_game_describe=\'"

    .line 625
    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->collection_game_describe:Ljava/lang/String;

    .line 630
    .line 631
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    const-string v2, ", game_info_top_video_url=\'"

    .line 638
    .line 639
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_video_url:Ljava/lang/String;

    .line 643
    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    const-string v2, ", game_info_top_pic=\'"

    .line 651
    .line 652
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->game_info_top_pic:Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const-string v2, ", score=\'"

    .line 664
    .line 665
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->score:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    const-string v2, ", pay_tag_info="

    .line 677
    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 682
    .line 683
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v2, ", pic_position="

    .line 687
    .line 688
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_position:I

    .line 692
    .line 693
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    const-string v2, ", vedio_url=\'"

    .line 697
    .line 698
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_url:Ljava/lang/String;

    .line 702
    .line 703
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    const-string v2, ", vedio_cover_pic=\'"

    .line 710
    .line 711
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->vedio_cover_pic:Ljava/lang/String;

    .line 715
    .line 716
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    const-string v2, ", pic_info="

    .line 723
    .line 724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->pic_info:Ljava/util/List;

    .line 728
    .line 729
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string v2, ", viewType="

    .line 733
    .line 734
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    iget v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->viewType:I

    .line 738
    .line 739
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    const-string v2, ", isAd="

    .line 743
    .line 744
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    iget-boolean v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->isAd:Z

    .line 748
    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    const-string v2, ", allow_start_up_ad=\'"

    .line 753
    .line 754
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->allow_start_up_ad:Ljava/lang/String;

    .line 758
    .line 759
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    const-string v2, ", download_source_url=\'"

    .line 766
    .line 767
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_url:Ljava/lang/String;

    .line 771
    .line 772
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    const-string v2, ", download_outside_url=\'"

    .line 779
    .line 780
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_outside_url:Ljava/lang/String;

    .line 784
    .line 785
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    const-string v2, ", download_original_switch=\'"

    .line 792
    .line 793
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_original_switch:Ljava/lang/String;

    .line 797
    .line 798
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    const-string v2, ", download_source_switch_v1=\'"

    .line 805
    .line 806
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v1:Ljava/lang/String;

    .line 810
    .line 811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    const-string v2, ", download_source_switch_v2=\'"

    .line 818
    .line 819
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    iget-object v2, p0, Lcom/join/mgps/dto/CollectionBeanSub;->download_source_switch_v2:Ljava/lang/String;

    .line 823
    .line 824
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const/16 v1, 0x7d

    .line 831
    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    return-object v0
.end method
