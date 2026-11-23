.class public Lcom/join/mgps/activity/HomePopupAdActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HomePopupAdActivity$b;,
        Lcom/join/mgps/activity/HomePopupAdActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0390
.end annotation


# instance fields
.field adJson:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field adapter:Lcom/join/mgps/activity/HomePopupAdActivity$b;

.field context:Landroid/content/Context;

.field everdayLogin:Lcom/join/mgps/dto/EverdayLogin;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field everdayLogin1:Lcom/join/mgps/dto/EverdayLogin;

.field indicator:Lme/relex/circleindicator/CircleIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isFromAccountCenter:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field more:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

.field showAd:Z

.field showEverdayLogin:Z

.field viewPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->isFromAccountCenter:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showAd:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showEverdayLogin:Z

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->everdayLogin1:Lcom/join/mgps/dto/EverdayLogin;

    .line 20
    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/join/mgps/activity/HomePopupAdActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/HomePopupAdActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method accountChange()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_change"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "javascript:reloadEveryDayReceive()"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x4000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x500

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->adJson:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-class v3, Lcom/join/mgps/dto/PopupAdBean;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/mgps/dto/PopupAdBean;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getAd_switch()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v3, "1"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showAd:Z

    .line 66
    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showAd:Z

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showEverdayLogin:Z

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 76
    .line 77
    .line 78
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-boolean v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showEverdayLogin:Z

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    iget-object v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->everdayLogin1:Lcom/join/mgps/dto/EverdayLogin;

    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-boolean v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showAd:Z

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    iget-object v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    :cond_3
    new-instance v3, Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 110
    .line 111
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/HomePopupAdActivity$b;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity;)V

    .line 112
    .line 113
    .line 114
    iput-object v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->adapter:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const/16 v4, 0x8

    .line 121
    .line 122
    if-ne v3, v2, :cond_4

    .line 123
    .line 124
    iget-object v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->adapter:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 130
    .line 131
    invoke-virtual {v3, v0}, Lcom/join/mgps/activity/HomePopupAdActivity$b;->c(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->viewPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->adapter:Lcom/join/mgps/activity/HomePopupAdActivity$b;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->viewPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->showAd:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 159
    .line 160
    sget-object v3, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-lez v0, :cond_6

    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-ne v0, v2, :cond_6

    .line 206
    .line 207
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_5

    .line 214
    .line 215
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 233
    .line 234
    new-instance v2, Lcom/join/mgps/activity/HomePopupAdActivity$a;

    .line 235
    .line 236
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/HomePopupAdActivity$a;-><init>(Lcom/join/mgps/activity/HomePopupAdActivity;Lcom/join/mgps/dto/RecomDatabean;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 251
    .line 252
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 257
    .line 258
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 275
    .line 276
    .line 277
    :cond_7
    :goto_0
    return-void
.end method

.method public goIntent(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bean"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->popupAdBean:Lcom/join/mgps/dto/PopupAdBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getTag()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "SP_001"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "fingerClickAdPop"

    .line 45
    .line 46
    const-string v3, ""

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3, v1}, Lcom/papa/sim/statistic/t;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getJump_type()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    const/4 v10, 0x0

    .line 74
    move-object v4, v0

    .line 75
    invoke-direct/range {v4 .. v10}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    const/16 v1, 0x3392

    .line 81
    .line 82
    invoke-direct {p2, v1}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method isHomePopupAdLocalCached(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/mgps/Util/z;->b(Landroid/content/Context;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method parentLayout()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
