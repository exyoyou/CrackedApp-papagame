.class public Lcom/join/mgps/activity/DownloadSettingActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0252
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field accountManager:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private appUpdateDialog:Lcom/join/mgps/dialog/e;

.field autoDownImageViewWifi:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field autoPlayVideoWifi:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field dialog:Landroidx/appcompat/app/AlertDialog$Builder;

.field dialogU:Landroid/app/Dialog;

.field downloadPath:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field exitLogin:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private gprsIsOpen:Z

.field gprsNotice:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field imageGprsNote:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field imageViewWifi:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field nowPathInfo:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field papaVer:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field recommendClient:Lcom/join/mgps/rpc/e;

.field rl_developer:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textGprs:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textWifi:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private wifiIsOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->wifiIsOpen:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->gprsIsOpen:Z

    .line 8
    .line 9
    const-class v0, Lcom/join/mgps/activity/DownloadSettingActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 19
    .line 20
    return-void
.end method

.method private clearCheckIn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method accountManager()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/MYAccountDetialActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MYAccountDetialActivity_$b0;

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

.method afterview()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "afterview"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->title_textview:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u8bbe\u7f6e"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iput-object p0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->papaVer:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/Util/w;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->x()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoPlayVideoWifi:Landroid/widget/ImageView;

    .line 45
    .line 46
    const v1, 0x7f0809c7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoPlayVideoWifi:Landroid/widget/ImageView;

    .line 54
    .line 55
    const v1, 0x7f0809c6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    const/16 v0, 0x8

    .line 62
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->accountManager:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    if-eq v1, v2, :cond_6

    .line 121
    .line 122
    const/4 v2, 0x2

    .line 123
    if-eq v1, v2, :cond_5

    .line 124
    .line 125
    const/4 v2, 0x3

    .line 126
    if-eq v1, v2, :cond_4

    .line 127
    .line 128
    const/4 v2, 0x4

    .line 129
    if-eq v1, v2, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->textGprs:Landroid/widget/TextView;

    .line 133
    .line 134
    const-string v2, "\u6c38\u4e0d\u63d0\u9192"

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->textGprs:Landroid/widget/TextView;

    .line 141
    .line 142
    const-string v2, "\u5927\u4e8e100M\u63d0\u9192"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->textGprs:Landroid/widget/TextView;

    .line 149
    .line 150
    const-string v2, "\u5927\u4e8e50M\u63d0\u9192"

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->textGprs:Landroid/widget/TextView;

    .line 157
    .line 158
    const-string v2, "\u5927\u4e8e30M\u63d0\u9192"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->textGprs:Landroid/widget/TextView;

    .line 165
    .line 166
    const-string v2, "\u6bcf\u6b21\u90fd\u63d0\u9192"

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->nowPathInfo:Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Lcom/join/mgps/Util/f2;->c(Ljava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    invoke-static {v1}, Lcom/join/mgps/Util/f2;->b(Ljava/lang/String;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v4

    .line 194
    iget-object v6, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->nowPathInfo:Landroid/widget/TextView;

    .line 195
    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v8, "\u53ef\u7528\u7a7a\u95f4\uff1a"

    .line 202
    .line 203
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->j(J)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, "/"

    .line 214
    .line 215
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->j(J)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v2, "\n\u5b58\u50a8\u4f4d\u7f6e\uff1a"

    .line 226
    .line 227
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_8

    .line 257
    .line 258
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoDownImageViewWifi:Landroid/widget/ImageView;

    .line 259
    .line 260
    const v2, 0x7f0806e7

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_8
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoDownImageViewWifi:Landroid/widget/ImageView;

    .line 268
    .line 269
    const v2, 0x7f0806e5

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    .line 274
    .line 275
    :goto_3
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 276
    .line 277
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_9

    .line 286
    .line 287
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->exitLogin:Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->rl_developer:Landroid/widget/RelativeLayout;

    .line 293
    .line 294
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    return-void
.end method

.method autoDownImageViewWifi()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/d;->j(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoDownImageViewWifi:Landroid/widget/ImageView;

    .line 20
    .line 21
    const v1, 0x7f0806e5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoDownImageViewWifi:Landroid/widget/ImageView;

    .line 40
    .line 41
    const v2, 0x7f0806e7

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method autoDownLayoutWifi()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->autoDownImageViewWifi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method autoPlayVideoWifi()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->x()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialogU:Landroid/app/Dialog;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    const v3, 0x7f13000d

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    .line 37
    const-string v2, "\u63d0\u793a"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 43
    .line 44
    const-string v2, "\u8be5\u8bbe\u7f6e\u5e94\u7528\u4e8e\u6e38\u620f\u4e0b\u8f7d\u540e\u7684\u63a8\u8350\uff0c\u5efa\u8bae\u60a8\u4fdd\u7559\u5f00\u542f\u3002"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 50
    .line 51
    new-instance v2, Lcom/join/mgps/activity/DownloadSettingActivity$a;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/DownloadSettingActivity$a;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity;Z)V

    .line 54
    .line 55
    .line 56
    const-string v0, "\u4ecd\u8981\u5173\u95ed"

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 62
    .line 63
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity$b;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity$b;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "\u53d6\u6d88"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->dialogU:Landroid/app/Dialog;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    xor-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Lcom/join/mgps/pref/h;->k0(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->autoPlayVideoWifi:Landroid/widget/ImageView;

    .line 92
    .line 93
    const v1, 0x7f0809c7

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void
.end method

.method back_image()V
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

.method checkVerLayout()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->checkVersion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public checkVersion()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "\u7f51\u7edc\u4f3c\u4e4e\u4e0d\u901a\u54e6~"

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v1, v3, v4, v5}, Lcom/join/mgps/Util/RequestBeanUtil;->getApkVersion(III)Lcom/join/mgps/dto/CommonRequestBean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->recommendClient:Lcom/join/mgps/rpc/e;

    .line 29
    .line 30
    invoke-interface {v3, v1}, Lcom/join/mgps/rpc/e;->z1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/join/mgps/dto/APKVersionMainBean;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/mgps/dto/APKVersionMainBean;->getApp()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/join/mgps/dto/ApkVersionbean;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/join/android/app/common/utils/q;->B()[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    aget-object v7, v7, v5

    .line 87
    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_compatible()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    aget-object v8, v8, v5

    .line 101
    .line 102
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    aget-object v9, v1, v5

    .line 107
    .line 108
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const-string v10, "\u65e0\u9700\u66f4\u65b0,\u5df2\u662f\u6700\u65b0\u7248\u672c"

    .line 113
    .line 114
    if-gt v9, v7, :cond_2

    .line 115
    .line 116
    :try_start_1
    new-instance v9, Lcom/join/mgps/dto/VersionDto;

    .line 117
    .line 118
    invoke-direct {v9}, Lcom/join/mgps/dto/VersionDto;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getDown_url()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-virtual {v9, v11}, Lcom/join/mgps/dto/VersionDto;->setAndroidUrl(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    aget-object v0, v0, v5

    .line 133
    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    int-to-float v0, v0

    .line 139
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setVersionNo(F)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getVer_info()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setInfo(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getHead_pic()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setHead_pic(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getTow_tpl_back_ground_pic()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setTow_tpl_back_ground_pic(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/join/mgps/dto/ApkVersionbean;->getTpl_type()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {v9, v0}, Lcom/join/mgps/dto/VersionDto;->setTpl_type(I)V

    .line 168
    .line 169
    .line 170
    aget-object v0, v1, v5

    .line 171
    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-ge v0, v7, :cond_1

    .line 177
    .line 178
    aget-object v0, v1, v5

    .line 179
    .line 180
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    int-to-float v1, v8

    .line 185
    cmpg-float v0, v0, v1

    .line 186
    .line 187
    if-gez v0, :cond_0

    .line 188
    .line 189
    invoke-virtual {p0, v9, v4}, Lcom/join/mgps/activity/DownloadSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0, v9, v5}, Lcom/join/mgps/activity/DownloadSettingActivity;->showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0, v10}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_0

    .line 205
    :catch_0
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DownloadSettingActivity;->error(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_4
    :goto_0
    return-void
.end method

.method deleteLocalUserIcon()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->H(Ljava/io/File;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method downloadPath()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method exitLogin()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->loginOutBack()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->deleteLocalUserIcon()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/mgps/activity/DownloadSettingActivity;->clearCheckIn()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lk6/a;->a(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "\u9000\u51fa\u767b\u5f55\u6210\u529f"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, ""

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method goDeveloper()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a13d8
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/activity/DeveloperActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/DeveloperActivity_$u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method gprsNotice()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->w(Landroid/content/Context;)Lcom/join/mgps/dialog/a1;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/join/mgps/activity/DownloadSettingActivity$c;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DownloadSettingActivity$c;-><init>(Lcom/join/mgps/activity/DownloadSettingActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a1;->j(Lcom/join/mgps/dialog/a1$f;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/a1;->k(Lcom/join/mgps/pref/PrefDef_;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dialog/a1;->show()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method loginOut(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_out"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method loginOutBack()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

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
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccoutLoginOutRequest;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setUid(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setSign(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->g(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DownloadSettingActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onDestroy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method pushLayout()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageSettingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageSettingActivity_$j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public showVersionDownLoadHint(Lcom/join/mgps/dto/VersionDto;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "versionDto",
            "mandatory"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "VersionXML"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Mandatory"

    .line 13
    .line 14
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "VersionDto"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->appUpdateDialog:Lcom/join/mgps/dialog/e;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/dialog/e;

    .line 38
    .line 39
    const v1, 0x7f13017f

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/join/mgps/dialog/e;-><init>(Landroid/content/Context;ILcom/join/mgps/dto/VersionDto;Z)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->appUpdateDialog:Lcom/join/mgps/dialog/e;

    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->appUpdateDialog:Lcom/join/mgps/dialog/e;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->appUpdateDialog:Lcom/join/mgps/dialog/e;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method videoPlaySetting()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DownloadSettingActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/VideoSettingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/VideoSettingActivity_$h;

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
