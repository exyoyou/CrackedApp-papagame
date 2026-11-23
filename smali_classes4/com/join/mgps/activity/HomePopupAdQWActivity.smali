.class public Lcom/join/mgps/activity/HomePopupAdQWActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HomePopupAdQWActivity$c;,
        Lcom/join/mgps/activity/HomePopupAdQWActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0393
.end annotation


# instance fields
.field b:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lme/relex/circleindicator/CircleIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/CustomCircleProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field j:Lcom/join/mgps/dto/EverdayLogin;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field k:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field l:Lcom/join/mgps/dto/PopupAdBean;

.field m:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

.field n:Z

.field o:Z

.field private p:Landroid/os/Handler;

.field q:Lcom/join/mgps/dto/EverdayLogin;

.field r:Landroid/content/Context;

.field private s:Landroid/webkit/WebView;

.field t:Landroid/os/Handler;

.field u:Lcom/github/snowdream/android/app/downloader/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->k:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->o:Z

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->p:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->q:Lcom/join/mgps/dto/EverdayLogin;

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$b;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->t:Landroid/os/Handler;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->s:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/HomePopupAdQWActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->s:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->p:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method d()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_change"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->s:Landroid/webkit/WebView;

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

.method e()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->r:Landroid/content/Context;

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->i:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, Lcom/join/mgps/dto/PopupAdBean;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/dto/PopupAdBean;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/dto/PopupAdBean;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getAd_switch()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "1"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z

    .line 39
    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->o:Z

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->o:Z

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->q:Lcom/join/mgps/dto/EverdayLogin;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-boolean v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/dto/PopupAdBean;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/join/mgps/dto/PopupAdBean;->getBig_pic()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    new-instance v2, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/16 v3, 0x8

    .line 94
    .line 95
    if-ne v2, v1, :cond_4

    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->d:Lme/relex/circleindicator/CircleIndicator;

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 103
    .line 104
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->c(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->c:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->d:Lme/relex/circleindicator/CircleIndicator;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->c:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 119
    .line 120
    .line 121
    iget-boolean v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 132
    .line 133
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/dto/PopupAdBean;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/dto/PopupAdBean;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-lez v0, :cond_6

    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/dto/PopupAdBean;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const/4 v2, 0x0

    .line 165
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-ne v0, v1, :cond_6

    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_5

    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->l:Lcom/join/mgps/dto/PopupAdBean;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/join/mgps/dto/PopupAdBean;->getMore()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 207
    .line 208
    new-instance v2, Lcom/join/mgps/activity/HomePopupAdQWActivity$a;

    .line 209
    .line 210
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/HomePopupAdQWActivity$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 225
    .line 226
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 231
    .line 232
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 236
    .line 237
    const/4 v1, 0x0

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    :cond_7
    :goto_0
    return-void
.end method

.method f(Landroid/content/Intent;)V
    .locals 1
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
            "com.join.apkinstal.action.broadcast"
        }
    .end annotation

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const-string v0, "actionFrom"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "title"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x2f

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xf

    .line 22
    .line 23
    if-le v1, v2, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/16 v2, 0xe

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->f:Landroid/widget/TextView;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "\u6b63\u5728\u4e0b\u8f7d"

    .line 43
    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, "\u4e0b\u8f7d\u4e2d"

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->m(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "fileName"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/github/snowdream/android/app/downloader/c;

    .line 2
    .line 3
    sget-object v3, Lcom/join/mgps/Util/z;->e:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    iput-object v6, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->t:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v6, p1}, Lcom/github/snowdream/android/app/downloader/c;->o(Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/c;->run()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testUrl"
        }
    .end annotation

    .line 1
    const-string v0, "Android"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "code:"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v3, 0xc8

    .line 38
    .line 39
    if-eq v2, v3, :cond_0

    .line 40
    .line 41
    const-string v2, "Location"

    .line 42
    .line 43
    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    array-length v2, v1

    .line 50
    if-lez v2, :cond_0

    .line 51
    .line 52
    array-length v2, v1

    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    aget-object v1, v1, v2

    .line 56
    .line 57
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-object p1

    .line 81
    :goto_0
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 84
    .line 85
    .line 86
    :cond_2
    throw p1
.end method

.method public j(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 8
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
    new-instance v7, Lcom/join/mgps/Util/IntentDateBean;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getJump_type()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v0, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1, v7}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method k(Ljava/lang/String;)Z
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
    invoke-static {p0}, Lcom/join/mgps/Util/z;->b(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method l()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->r:Landroid/content/Context;

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

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

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
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->h:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->g()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity;->u:Lcom/github/snowdream/android/app/downloader/c;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/c;->g()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_0
    return-void
.end method
