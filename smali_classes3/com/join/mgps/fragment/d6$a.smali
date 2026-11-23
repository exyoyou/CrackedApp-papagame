.class Lcom/join/mgps/fragment/d6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/d6;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/d6;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/d6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/fragment/d6;->M(Lcom/join/mgps/fragment/d6;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/join/mgps/fragment/d6;->M(Lcom/join/mgps/fragment/d6;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-gtz p2, :cond_0

    .line 19
    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/join/mgps/fragment/d6;->M(Lcom/join/mgps/fragment/d6;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getSub()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const/4 p4, 0x0

    .line 39
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    check-cast p3, Lcom/join/mgps/dto/JumpInfoBean;

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/join/mgps/dto/JumpInfoBean;->getJump_type()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    invoke-virtual {p3}, Lcom/join/mgps/dto/JumpInfoBean;->getLink_type()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterBean$UserCenterItem;->getMain()Lcom/join/mgps/dto/UserCenterItemBean;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/dto/UserCenterItemBean;->getLabel()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v1, p2, p5}, Lcom/join/mgps/fragment/d6;->changeMgState(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    :cond_1
    const/4 p2, 0x3

    .line 91
    if-ne v0, p2, :cond_4

    .line 92
    .line 93
    const/16 p2, 0x1d

    .line 94
    .line 95
    if-eq p5, p2, :cond_3

    .line 96
    .line 97
    const/16 p2, 0x20

    .line 98
    .line 99
    if-eq p5, p2, :cond_2

    .line 100
    .line 101
    packed-switch p5, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 105
    .line 106
    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/fragment/d6;->gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :pswitch_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 116
    .line 117
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goFeedback(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :pswitch_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 131
    .line 132
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goDownloadSettingActivity(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :pswitch_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 146
    .line 147
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    new-instance p4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    sget-object p5, Lcom/join/mgps/rpc/h;->x:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p5, "/Auxiliary_tool"

    .line 162
    .line 163
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    invoke-virtual {p2, p3, p4}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :pswitch_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 180
    .line 181
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goJoystickManager(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 195
    .line 196
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goFaceTransferHomePageActivity(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_5
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 206
    .line 207
    invoke-static {p2}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    invoke-static {p2, p3}, Lcom/join/mgps/fragment/d6;->P(Lcom/join/mgps/fragment/d6;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 220
    .line 221
    .line 222
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 223
    .line 224
    invoke-virtual {p2}, Lcom/join/mgps/fragment/d6;->goLogin()Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-nez p2, :cond_5

    .line 229
    .line 230
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 231
    .line 232
    invoke-static {p2}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-static {p2}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    const/4 p3, 0x1

    .line 241
    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 246
    .line 247
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->O(Lcom/join/mgps/fragment/d6;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 248
    .line 249
    .line 250
    move-result-object p3

    .line 251
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 252
    .line 253
    .line 254
    move-result p3

    .line 255
    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :pswitch_6
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/join/mgps/fragment/d6;->goLogin()Z

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    if-nez p2, :cond_5

    .line 271
    .line 272
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 273
    .line 274
    invoke-static {p2}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-static {p2}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-virtual {p2, p4}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->b(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 287
    .line 288
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->O(Lcom/join/mgps/fragment/d6;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 289
    .line 290
    .line 291
    move-result-object p3

    .line 292
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 293
    .line 294
    .line 295
    move-result p3

    .line 296
    invoke-virtual {p2, p3}, Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;->a(I)Lcom/join/mgps/activity/VoucherCodesBoxActivity_$c;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p2}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :pswitch_7
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 306
    .line 307
    invoke-static {p2}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 312
    .line 313
    .line 314
    move-result-object p3

    .line 315
    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 316
    .line 317
    .line 318
    move-result-object p3

    .line 319
    invoke-static {p2, p3}, Lcom/join/mgps/fragment/d6;->P(Lcom/join/mgps/fragment/d6;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 320
    .line 321
    .line 322
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 323
    .line 324
    invoke-virtual {p2}, Lcom/join/mgps/fragment/d6;->goLogin()Z

    .line 325
    .line 326
    .line 327
    move-result p2

    .line 328
    if-nez p2, :cond_5

    .line 329
    .line 330
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 335
    .line 336
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 337
    .line 338
    .line 339
    move-result-object p3

    .line 340
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goPAPayCenterActivity(Landroid/content/Context;)V

    .line 341
    .line 342
    .line 343
    goto :goto_0

    .line 344
    :pswitch_8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 349
    .line 350
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 351
    .line 352
    .line 353
    move-result-object p3

    .line 354
    invoke-virtual {p2, p4, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumAndPrfileActivity(ILandroid/content/Context;)V

    .line 355
    .line 356
    .line 357
    goto :goto_0

    .line 358
    :pswitch_9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 363
    .line 364
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 365
    .line 366
    .line 367
    move-result-object p3

    .line 368
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    goto :goto_0

    .line 372
    :pswitch_a
    sput p4, Lcom/MApplication;->T:I

    .line 373
    .line 374
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 375
    .line 376
    invoke-virtual {p2}, Lcom/join/mgps/fragment/d6;->hideRedPoint()V

    .line 377
    .line 378
    .line 379
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 384
    .line 385
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 386
    .line 387
    .line 388
    move-result-object p3

    .line 389
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goForumProfileMessageActivity(Landroid/content/Context;)V

    .line 390
    .line 391
    .line 392
    goto :goto_0

    .line 393
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 398
    .line 399
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 400
    .line 401
    .line 402
    move-result-object p3

    .line 403
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goCommentSelfListActivity(Landroid/content/Context;)V

    .line 404
    .line 405
    .line 406
    goto :goto_0

    .line 407
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    iget-object p3, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 412
    .line 413
    invoke-static {p3}, Lcom/join/mgps/fragment/d6;->N(Lcom/join/mgps/fragment/d6;)Landroid/app/Activity;

    .line 414
    .line 415
    .line 416
    move-result-object p3

    .line 417
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/IntentUtil;->goMGSettingActivity(Landroid/content/Context;)V

    .line 418
    .line 419
    .line 420
    goto :goto_0

    .line 421
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/fragment/d6$a;->b:Lcom/join/mgps/fragment/d6;

    .line 422
    .line 423
    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/fragment/d6;->gotoTargetActivity(Lcom/join/mgps/dto/JumpInfoBean;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .line 425
    .line 426
    goto :goto_0

    .line 427
    :catch_0
    move-exception p2

    .line 428
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    .line 430
    .line 431
    :cond_5
    :goto_0
    monitor-exit p1

    .line 432
    return-void

    .line 433
    :catchall_0
    move-exception p2

    .line 434
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    throw p2

    .line 436
    nop

    .line 437
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
