.class public Lcom/join/mgps/activity/message/MessageMainActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d007f
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field communityFragment:Lcom/join/mgps/activity/message/a;

.field context:Landroid/content/Context;

.field fg:Landroidx/fragment/app/Fragment;

.field index:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field intentDateBean:Lcom/join/mgps/Util/IntentDateBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isLike:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isMessage:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field messagePriaceFragment:Lcom/join/mgps/activity/message/c;

.field noticeFragment:Lcom/join/mgps/activity/message/e;

.field rpcClient:Lcom/join/mgps/rpc/e;

.field tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private typeId:Ljava/lang/String;

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->index:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->isLike:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->isMessage:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/adapter/h0;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/join/mgps/activity/message/f;

    .line 43
    .line 44
    invoke-direct {v2}, Lcom/join/mgps/activity/message/f;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->noticeFragment:Lcom/join/mgps/activity/message/e;

    .line 48
    .line 49
    new-instance v2, Lcom/join/mgps/activity/message/b;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/join/mgps/activity/message/b;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->communityFragment:Lcom/join/mgps/activity/message/a;

    .line 55
    .line 56
    new-instance v2, Lcom/join/mgps/activity/message/d;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/join/mgps/activity/message/d;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->messagePriaceFragment:Lcom/join/mgps/activity/message/c;

    .line 62
    .line 63
    new-instance v2, Lcom/join/mgps/adapter/h0$a;

    .line 64
    .line 65
    const-string v3, "\u901a\u77e5"

    .line 66
    .line 67
    iget-object v4, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->noticeFragment:Lcom/join/mgps/activity/message/e;

    .line 68
    .line 69
    invoke-direct {v2, v3, v4}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Lcom/join/mgps/adapter/h0$a;

    .line 73
    .line 74
    const-string v4, "\u793e\u533a"

    .line 75
    .line 76
    iget-object v5, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->communityFragment:Lcom/join/mgps/activity/message/a;

    .line 77
    .line 78
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Lcom/join/mgps/adapter/h0$a;

    .line 82
    .line 83
    const-string v5, "\u70b9\u8bc4"

    .line 84
    .line 85
    iget-object v6, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->messagePriaceFragment:Lcom/join/mgps/activity/message/c;

    .line 86
    .line 87
    invoke-direct {v4, v5, v6}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 108
    .line 109
    const/4 v1, 0x3

    .line 110
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    const/4 v2, 0x2

    .line 124
    const/4 v3, 0x0

    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lez v0, :cond_0

    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 134
    .line 135
    invoke-virtual {v0, v3, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 136
    .line 137
    .line 138
    :cond_0
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-gtz v0, :cond_1

    .line 145
    .line 146
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-lez v0, :cond_2

    .line 153
    .line 154
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 155
    .line 156
    invoke-virtual {v0, v1, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 157
    .line 158
    .line 159
    :cond_2
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-gtz v0, :cond_3

    .line 166
    .line 167
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-lez v0, :cond_4

    .line 174
    .line 175
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 176
    .line 177
    invoke-virtual {v0, v2, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 178
    .line 179
    .line 180
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->isMessage:Z

    .line 181
    .line 182
    if-nez v0, :cond_9

    .line 183
    .line 184
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-lez v0, :cond_5

    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 193
    .line 194
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 198
    .line 199
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setNotice_surplus_number(I)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 203
    .line 204
    invoke-virtual {v0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-gtz v0, :cond_8

    .line 215
    .line 216
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-lez v0, :cond_6

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_6
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-gtz v0, :cond_7

    .line 232
    .line 233
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-lez v0, :cond_9

    .line 240
    .line 241
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 244
    .line 245
    .line 246
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 260
    .line 261
    .line 262
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 263
    .line 264
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 270
    .line 271
    .line 272
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->i(I)Lcom/flyco/tablayout/widget/MsgView;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 283
    .line 284
    const/16 v4, 0xa

    .line 285
    .line 286
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 287
    .line 288
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->i(I)Lcom/flyco/tablayout/widget/MsgView;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 304
    .line 305
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 306
    .line 307
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->i(I)Lcom/flyco/tablayout/widget/MsgView;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 323
    .line 324
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 325
    .line 326
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .line 330
    .line 331
    iget-boolean v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->isMessage:Z

    .line 332
    .line 333
    if-eqz v0, :cond_a

    .line 334
    .line 335
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 336
    .line 337
    iget v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->index:I

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Landroid/os/Handler;

    .line 343
    .line 344
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 345
    .line 346
    .line 347
    new-instance v1, Lcom/join/mgps/activity/message/MessageMainActivity$a;

    .line 348
    .line 349
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/MessageMainActivity$a;-><init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V

    .line 350
    .line 351
    .line 352
    const-wide/16 v4, 0x1f4

    .line 353
    .line 354
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    .line 356
    .line 357
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 358
    .line 359
    new-instance v1, Lcom/join/mgps/activity/message/MessageMainActivity$b;

    .line 360
    .line 361
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/MessageMainActivity$b;-><init>(Lcom/join/mgps/activity/message/MessageMainActivity;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 368
    .line 369
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->t()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_b

    .line 378
    .line 379
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 380
    .line 381
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_b

    .line 390
    .line 391
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 392
    .line 393
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 394
    .line 395
    const v2, 0x7f13017f

    .line 396
    .line 397
    .line 398
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 399
    .line 400
    .line 401
    const-string v1, "\u8bf7\u5f00\u542f\u901a\u77e5\u6743\u9650"

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 404
    .line 405
    .line 406
    const-string v1, "\u7b2c\u4e00\u65f6\u95f4\u6536\u5230\u91cd\u8981\u6d88\u606f\u53ca\u4e92\u52a8\u56de\u590d\u3002"

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 409
    .line 410
    .line 411
    const-string v1, "\u53d6\u6d88"

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 414
    .line 415
    .line 416
    const-string v1, "\u53bb\u5f00\u542f"

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v3}, Lcom/join/mgps/dialog/b;->f(I)Lcom/join/mgps/dialog/b;

    .line 422
    .line 423
    .line 424
    new-instance v1, Lcom/join/mgps/activity/message/MessageMainActivity$c;

    .line 425
    .line 426
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/message/MessageMainActivity$c;-><init>(Lcom/join/mgps/activity/message/MessageMainActivity;Lcom/join/mgps/dialog/b;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 433
    .line 434
    .line 435
    :cond_b
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method getData()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getRedPointData()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getGRedPointNum(I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 55
    .line 56
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->H1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/MessageRedPointBean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->getData()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean;->getMessages()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean;->getData()Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/2addr v0, v1

    .line 99
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    add-int/2addr v0, v1

    .line 113
    sget-object v1, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    sput v0, Lcom/MApplication;->T:I

    .line 121
    .line 122
    if-lez v0, :cond_1

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageMainActivity;->reCheckRed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jPushNotifEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/join/mgps/event/y;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->typeId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/MessageMainActivity;->getRedPointData()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method reCheckRed()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getNotice_surplus_number()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_surplus_number()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gtz v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getCommunity_praise_surplus_number()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 36
    .line 37
    invoke-virtual {v0, v3, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 38
    .line 39
    .line 40
    :cond_2
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getReplay_surplus_number()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-gtz v0, :cond_3

    .line 47
    .line 48
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_4

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->q(II)V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->typeId:Ljava/lang/String;

    .line 62
    .line 63
    const-string v4, "1"

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->noticeFragment:Lcom/join/mgps/activity/message/e;

    .line 72
    .line 73
    iput-boolean v3, v0, Lcom/join/mgps/activity/message/e;->o:Z

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_7

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setNotice_surplus_number(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->noticeFragment:Lcom/join/mgps/activity/message/e;

    .line 94
    .line 95
    iput v3, v0, Lcom/join/mgps/activity/message/e;->l:I

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/e;->Q()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->typeId:Ljava/lang/String;

    .line 102
    .line 103
    const-string v4, "2"

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->communityFragment:Lcom/join/mgps/activity/message/a;

    .line 112
    .line 113
    iput-boolean v3, v0, Lcom/join/mgps/activity/message/a;->v:Z

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ne v0, v3, :cond_7

    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setCommunity_surplus_number(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->communityFragment:Lcom/join/mgps/activity/message/a;

    .line 134
    .line 135
    iput v3, v0, Lcom/join/mgps/activity/message/a;->m:I

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/a;->P()V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->typeId:Ljava/lang/String;

    .line 142
    .line 143
    const-string v4, "3"

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->messagePriaceFragment:Lcom/join/mgps/activity/message/c;

    .line 152
    .line 153
    iput-boolean v3, v0, Lcom/join/mgps/activity/message/c;->u:Z

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-ne v0, v1, :cond_7

    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->tableLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->k(I)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setReplay_surplus_number(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->messagePriaceFragment:Lcom/join/mgps/activity/message/c;

    .line 174
    .line 175
    iput v3, v0, Lcom/join/mgps/activity/message/c;->n:I

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/join/mgps/activity/message/c;->Q()V

    .line 178
    .line 179
    .line 180
    :cond_7
    :goto_0
    return-void
.end method

.method setting()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/MessageMainActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageSettingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageSettingActivity_$j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 8
    .line 9
    .line 10
    return-void
.end method
