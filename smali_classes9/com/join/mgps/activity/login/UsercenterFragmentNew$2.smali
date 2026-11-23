.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew;->setListener(Lcom/join/mgps/adapter/m8;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter$d<",
        "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

.field final synthetic val$mUserCenterDatas:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mUserCenterDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->val$mUserCenterDatas:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter1",
            "view",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->val$mUserCenterDatas:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->val$mUserCenterDatas:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-gtz p2, :cond_0

    .line 11
    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->val$mUserCenterDatas:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/join/mgps/dto/JumpInfoBean;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p3}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4, v1}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->changeMgState(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    iget-object v3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v4, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {v3, v4, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    const/4 p2, 0x3

    .line 112
    if-ne v2, p2, :cond_4

    .line 113
    .line 114
    const/16 p2, 0x1d

    .line 115
    .line 116
    if-eq v1, p2, :cond_3

    .line 117
    .line 118
    packed-switch v1, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    packed-switch v1, :pswitch_data_1

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 125
    .line 126
    invoke-virtual {p2, p3, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 132
    .line 133
    invoke-static {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-static {p2}, Lcom/join/mgps/Util/w;->i(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :pswitch_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 147
    .line 148
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goMGSettingActivity(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :pswitch_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 162
    .line 163
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goSvip(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_3
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    .line 173
    .line 174
    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 175
    .line 176
    .line 177
    const/4 p3, 0x4

    .line 178
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 179
    .line 180
    .line 181
    sget-object p3, Lcom/join/mgps/rpc/h;->s:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 187
    .line 188
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    invoke-static {p3}, Lcom/join/mgps/activity/ShareWebActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-virtual {p3, p2}, Lcom/join/mgps/activity/ShareWebActivity_$g0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$g0;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_4
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->goLogin()Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-nez p2, :cond_5

    .line 212
    .line 213
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 218
    .line 219
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goMYAccountDetialActivity(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 233
    .line 234
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goFeedback(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :pswitch_6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 248
    .line 249
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 263
    .line 264
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    sget-object v1, Lcom/join/mgps/rpc/h;->x:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, "/Auxiliary_tool"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :pswitch_8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 297
    .line 298
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 299
    .line 300
    .line 301
    move-result-object p3

    .line 302
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goJoystickManager(Landroid/content/Context;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :pswitch_9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 312
    .line 313
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goFaceTransferHomePageActivity(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :pswitch_a
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 323
    .line 324
    invoke-static {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 325
    .line 326
    .line 327
    move-result-object p3

    .line 328
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 329
    .line 330
    .line 331
    move-result-object p3

    .line 332
    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 333
    .line 334
    .line 335
    move-result-object p3

    .line 336
    invoke-static {p2, p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$102(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 337
    .line 338
    .line 339
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 340
    .line 341
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->goLogin()Z

    .line 342
    .line 343
    .line 344
    move-result p2

    .line 345
    if-nez p2, :cond_5

    .line 346
    .line 347
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 348
    .line 349
    invoke-static {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    invoke-static {p2}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    const/4 p3, 0x1

    .line 358
    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 363
    .line 364
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$100(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 365
    .line 366
    .line 367
    move-result-object p3

    .line 368
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 369
    .line 370
    .line 371
    move-result p3

    .line 372
    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 377
    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :pswitch_b
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 382
    .line 383
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->goLogin()Z

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    if-nez p2, :cond_5

    .line 388
    .line 389
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 394
    .line 395
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 396
    .line 397
    .line 398
    move-result-object p3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    sget-object v1, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v1, "/static/vip2020/v2/index.html#/giftCenter"

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :pswitch_c
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 424
    .line 425
    invoke-static {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 426
    .line 427
    .line 428
    move-result-object p3

    .line 429
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 430
    .line 431
    .line 432
    move-result-object p3

    .line 433
    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 434
    .line 435
    .line 436
    move-result-object p3

    .line 437
    invoke-static {p2, p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$102(Lcom/join/mgps/activity/login/UsercenterFragmentNew;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 438
    .line 439
    .line 440
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 441
    .line 442
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->goLogin()Z

    .line 443
    .line 444
    .line 445
    move-result p2

    .line 446
    if-nez p2, :cond_5

    .line 447
    .line 448
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 453
    .line 454
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 455
    .line 456
    .line 457
    move-result-object p3

    .line 458
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goPAPayCenterActivity(Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    goto :goto_0

    .line 462
    :pswitch_d
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 463
    .line 464
    .line 465
    move-result-object p2

    .line 466
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 467
    .line 468
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 469
    .line 470
    .line 471
    move-result-object p3

    .line 472
    invoke-virtual {p2, v0, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumAndPrfileActivity(ILandroid/content/Context;)V

    .line 473
    .line 474
    .line 475
    goto :goto_0

    .line 476
    :pswitch_e
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 481
    .line 482
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 483
    .line 484
    .line 485
    move-result-object p3

    .line 486
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    .line 487
    .line 488
    .line 489
    goto :goto_0

    .line 490
    :pswitch_f
    sput v0, Lcom/MApplication;->T:I

    .line 491
    .line 492
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 493
    .line 494
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->hideRedPoint()V

    .line 495
    .line 496
    .line 497
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 498
    .line 499
    .line 500
    move-result-object p2

    .line 501
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 502
    .line 503
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 504
    .line 505
    .line 506
    move-result-object p3

    .line 507
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumProfileMessageActivity(Landroid/content/Context;)V

    .line 508
    .line 509
    .line 510
    goto :goto_0

    .line 511
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 512
    .line 513
    .line 514
    move-result-object p2

    .line 515
    iget-object p3, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 516
    .line 517
    invoke-static {p3}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$000(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Landroid/app/Activity;

    .line 518
    .line 519
    .line 520
    move-result-object p3

    .line 521
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    .line 522
    .line 523
    .line 524
    goto :goto_0

    .line 525
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$2;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 526
    .line 527
    invoke-virtual {p2, p3, v2}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .line 529
    .line 530
    goto :goto_0

    .line 531
    :catch_0
    move-exception p2

    .line 532
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 533
    .line 534
    .line 535
    :cond_5
    :goto_0
    monitor-exit p1

    .line 536
    return-void

    .line 537
    :catchall_0
    move-exception p2

    .line 538
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    throw p2

    .line 540
    nop

    .line 541
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
