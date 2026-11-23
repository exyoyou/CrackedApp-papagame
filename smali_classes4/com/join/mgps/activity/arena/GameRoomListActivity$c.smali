.class Lcom/join/mgps/activity/arena/GameRoomListActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->initViewPagerByConfig(Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

.field final synthetic c:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaGameRoomListConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "addOnPageChangeListener onPageSelected position:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 24
    .line 25
    const v1, 0x7f0802c1

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    const v4, 0x7f0802c0

    .line 31
    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 36
    .line 37
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_standard_room:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFasterJoinBtn(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->btnFastGame:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_list:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard_room_name:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard__room_count:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_name:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_name:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_info:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 150
    .line 151
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleServiceConnected()V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 176
    .line 177
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 182
    .line 183
    .line 184
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingView()V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFailedView()V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_2
    if-ne p1, v2, :cond_6

    .line 204
    .line 205
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 206
    .line 207
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 208
    .line 209
    invoke-virtual {v5, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lcom/join/mgps/fragment/roomlist/c;

    .line 214
    .line 215
    invoke-virtual {v5}, Lcom/join/mgps/fragment/roomlist/c;->R0()V

    .line 216
    .line 217
    .line 218
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 219
    .line 220
    invoke-virtual {v5, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFasterJoinBtn(Z)V

    .line 221
    .line 222
    .line 223
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 224
    .line 225
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->btnFastGame:Landroid/widget/ImageView;

    .line 226
    .line 227
    const/16 v6, 0x8

    .line 228
    .line 229
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 233
    .line 234
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_standard_room:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 237
    .line 238
    .line 239
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 240
    .line 241
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard_room_name:Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    .line 249
    .line 250
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 251
    .line 252
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard__room_count:Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    .line 260
    .line 261
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->b:Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 262
    .line 263
    invoke-virtual {v5}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getCurrent_collection_cfg()Lcom/join/mgps/dto/GameConfig;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-ne v5, v2, :cond_5

    .line 272
    .line 273
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 274
    .line 275
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_list:Landroid/widget/LinearLayout;

    .line 276
    .line 277
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 281
    .line 282
    iget-object v3, v3, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 283
    .line 284
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    .line 286
    .line 287
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 288
    .line 289
    iget-object v3, v3, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 290
    .line 291
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 295
    .line 296
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    .line 297
    .line 298
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    .line 304
    .line 305
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_name:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 317
    .line 318
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_info:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 328
    .line 329
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_name:Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 339
    .line 340
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-nez v1, :cond_7

    .line 345
    .line 346
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 347
    .line 348
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_4

    .line 353
    .line 354
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 355
    .line 356
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->e()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_3

    .line 365
    .line 366
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleServiceConnected()V

    .line 369
    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 373
    .line 374
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 379
    .line 380
    .line 381
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoadingView()V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_2

    .line 387
    .line 388
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 389
    .line 390
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 394
    .line 395
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFailedView()V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_2

    .line 399
    .line 400
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 401
    .line 402
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_list:Landroid/widget/LinearLayout;

    .line 403
    .line 404
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .line 406
    .line 407
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 408
    .line 409
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 415
    .line 416
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 417
    .line 418
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 419
    .line 420
    .line 421
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 422
    .line 423
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    .line 424
    .line 425
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_name:Landroid/widget/TextView;

    .line 435
    .line 436
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    .line 442
    .line 443
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 444
    .line 445
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_info:Landroid/widget/TextView;

    .line 446
    .line 447
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    .line 453
    .line 454
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 455
    .line 456
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_name:Landroid/widget/TextView;

    .line 457
    .line 458
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    .line 464
    .line 465
    goto :goto_2

    .line 466
    :cond_6
    const/4 v0, 0x2

    .line 467
    if-ne p1, v0, :cond_7

    .line 468
    .line 469
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 470
    .line 471
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_standard_room:Landroid/widget/LinearLayout;

    .line 472
    .line 473
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 474
    .line 475
    .line 476
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 477
    .line 478
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_elite_room:Landroid/widget/LinearLayout;

    .line 479
    .line 480
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 481
    .line 482
    .line 483
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 484
    .line 485
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->ll_race_room:Landroid/widget/LinearLayout;

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 488
    .line 489
    .line 490
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 491
    .line 492
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showFasterJoinBtn(Z)V

    .line 493
    .line 494
    .line 495
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 496
    .line 497
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->iv_list:Landroid/widget/LinearLayout;

    .line 498
    .line 499
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .line 501
    .line 502
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 503
    .line 504
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard_room_name:Landroid/widget/TextView;

    .line 505
    .line 506
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 511
    .line 512
    .line 513
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 514
    .line 515
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_standard__room_count:Landroid/widget/TextView;

    .line 516
    .line 517
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    .line 523
    .line 524
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 525
    .line 526
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_count:Landroid/widget/TextView;

    .line 527
    .line 528
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    .line 534
    .line 535
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 536
    .line 537
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_elite_room_name:Landroid/widget/TextView;

    .line 538
    .line 539
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1900()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 547
    .line 548
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_info:Landroid/widget/TextView;

    .line 549
    .line 550
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 555
    .line 556
    .line 557
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 558
    .line 559
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->tv_race_room_name:Landroid/widget/TextView;

    .line 560
    .line 561
    invoke-static {}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1800()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 566
    .line 567
    .line 568
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$c;->c:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 569
    .line 570
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->adapter:Lcom/join/mgps/activity/arena/GameRoomListActivity$x;

    .line 571
    .line 572
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$x;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    if-eqz p1, :cond_8

    .line 577
    .line 578
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 579
    .line 580
    .line 581
    :cond_8
    return-void
.end method
