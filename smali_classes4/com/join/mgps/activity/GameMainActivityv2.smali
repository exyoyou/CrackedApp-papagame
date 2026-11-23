.class public Lcom/join/mgps/activity/GameMainActivityv2;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0062
.end annotation


# instance fields
.field private A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field B:Lcom/join/mgps/dto/GameMainDataBean;

.field private C:Ljava/lang/String;

.field private D:Z

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Lcom/join/mgps/customview/ViewPagerWithADs;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field s:Landroid/widget/ViewFlipper;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field t:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field u:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field v:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field w:Lcom/join/mgps/rpc/e;

.field x:Lcom/wufan/user/service/protobuf/UserInfo;

.field private y:Landroidx/appcompat/widget/Toolbar;

.field z:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameMainActivityv2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method private j()V
    .locals 0

    .line 1
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    const v0, 0x7f0a00dc

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/activity/GameMainActivityv2$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameMainActivityv2$a;-><init>(Lcom/join/mgps/activity/GameMainActivityv2;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private q()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/16 v3, 0x31

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    if-lt v1, v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne v3, v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->p:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->p:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v6, 0x2

    .line 47
    if-lt v1, v6, :cond_9

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v3, v1, :cond_8

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->l:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Landroid/widget/TextView;

    .line 71
    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v9, "<font color = \'#F47500\'>"

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getNumber()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, "\u4e2a\u623f\u95f4</font>\u6b63\u5728\u5bf9\u6218,\u8fdb\u5165\"<font color = \'#F47500\'>\u7ea6\u6218</font>\",\"<font color = \'#F47500\'>\u5927\u5385\u5bf9\u6218</font>\""

    .line 90
    .line 91
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 103
    .line 104
    invoke-virtual {v7, v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->x:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 108
    .line 109
    const v7, 0x7f0812af

    .line 110
    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ne v1, v6, :cond_3

    .line 119
    .line 120
    iput-boolean v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 134
    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_4

    .line 154
    .line 155
    iput-boolean v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 158
    .line 159
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 164
    .line 165
    const v6, 0x7f0812b2

    .line 166
    .line 167
    .line 168
    if-eqz v1, :cond_5

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-ne v1, v4, :cond_5

    .line 187
    .line 188
    iput-boolean v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 191
    .line 192
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/4 v8, 0x7

    .line 201
    if-lt v1, v8, :cond_7

    .line 202
    .line 203
    const/4 v1, 0x6

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-ne v3, v0, :cond_6

    .line 209
    .line 210
    iput-boolean v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 213
    .line 214
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_6
    iput-boolean v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 219
    .line 220
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 221
    .line 222
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->o:Landroid/widget/RelativeLayout;

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->l:Landroid/widget/LinearLayout;

    .line 233
    .line 234
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method b()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->j()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 5
    .line 6
    const v0, 0x7f0a03c7

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "dimen"

    .line 22
    .line 23
    const-string v3, "android"

    .line 24
    .line 25
    const-string v4, "status_bar_height"

    .line 26
    .line 27
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const v3, 0x7f070057

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v2, v1

    .line 55
    add-int/lit8 v2, v2, 0x5

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimVisibleHeightTrigger(I)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v1, 0xc8

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAnimationDuration(J)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->p()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/rpc/e;

    .line 73
    .line 74
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->x:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->q()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    if-eqz v0, :cond_0

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 106
    .line 107
    const v2, 0x7f08018d

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v2, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->g:Landroid/widget/TextView;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_count()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget-object v6, p0, Lcom/join/mgps/activity/GameMainActivityv2;->k:Landroid/widget/LinearLayout;

    .line 159
    .line 160
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 161
    .line 162
    invoke-static/range {v1 .. v7}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->t:Landroid/widget/TextView;

    .line 166
    .line 167
    const-string v1, "\u8fdb\u5165\"<font color = \'#F47500\'>\u7ea6\u6218</font>\",\"<font color = \'#F47500\'>\u5927\u5385\u5bf9\u6218</font>\""

    .line 168
    .line 169
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 176
    .line 177
    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->f()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->e()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->v:Lcom/join/mgps/pref/PrefDef_;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->v:Lcom/join/mgps/pref/PrefDef_;

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :goto_0
    return-void
.end method

.method c()V
    .locals 14
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getSilence_room_switch()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v7, 0x7

    .line 44
    if-lt v5, v7, :cond_1

    .line 45
    .line 46
    const/4 v5, 0x6

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/16 v5, 0x31

    .line 52
    .line 53
    if-ne v5, v4, :cond_1

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v4, 0x0

    .line 58
    :goto_0
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameMaingameinfo;->getMax_battle_count()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    move v13, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const/4 v13, 0x0

    .line 79
    :goto_1
    if-ne v3, v6, :cond_3

    .line 80
    .line 81
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 82
    .line 83
    iget-object v8, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 84
    .line 85
    const/4 v9, 0x1

    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getIp()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getPort()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    iget-object v12, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static/range {v7 .. v13}, Lcom/join/mgps/Util/UtilsMy;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/4 v5, 0x2

    .line 101
    if-ne v3, v5, :cond_4

    .line 102
    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    iget-object v7, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 106
    .line 107
    iget-object v8, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 108
    .line 109
    const/4 v9, 0x1

    .line 110
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getIp()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainNetBattle;->getPort()I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    iget-object v12, p0, Lcom/join/mgps/activity/GameMainActivityv2;->C:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static/range {v7 .. v13}, Lcom/join/mgps/Util/UtilsMy;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 133
    .line 134
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v1, v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->l(Lcom/join/mgps/db/tables/EMUApkTable;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    :goto_2
    return-void
.end method

.method d()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    long-to-int v3, v2

    .line 14
    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/Util/IntentUtil;->goForumFid(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method e()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->x:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameMainData(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/rpc/e;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->Y(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-lez v1, :cond_3

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/join/mgps/dto/GameMainDataBean;

    .line 60
    .line 61
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lt6/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-class v5, Lcom/join/mgps/dto/GameMainDataBean;

    .line 86
    .line 87
    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lcom/join/mgps/dto/GameMainDataBean;

    .line 92
    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    invoke-virtual {v2, v3, v4}, Lcom/join/mgps/dto/GameMainachieve;->setLastShowVerTime(J)V

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2, v1}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    new-instance v1, Lcom/join/mgps/db/tables/GameMainTable;

    .line 135
    .line 136
    invoke-direct {v1}, Lcom/join/mgps/db/tables/GameMainTable;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2, v1}, Lq5/b;->k(Ljava/lang/Object;)I

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_2
    return-void
.end method

.method f()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lt6/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/GameMainTable;->getGame_main_data()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lcom/join/mgps/dto/GameMainDataBean;

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/GameMainDataBean;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->r(Lcom/join/mgps/dto/GameMainDataBean;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method g()V
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

.method h()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 9
    .line 10
    const v2, 0x7f0812af

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 35
    .line 36
    new-instance v2, Lcom/join/mgps/dto/GameMainNetBattle;

    .line 37
    .line 38
    invoke-direct {v2}, Lcom/join/mgps/dto/GameMainNetBattle;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameMainDataBean;->setNet_battle(Lcom/join/mgps/dto/GameMainNetBattle;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->o(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->D:Z

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 61
    .line 62
    const v2, 0x7f0812b2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 87
    .line 88
    new-instance v2, Lcom/join/mgps/dto/GameMainNetBattle;

    .line 89
    .line 90
    invoke-direct {v2}, Lcom/join/mgps/dto/GameMainNetBattle;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameMainDataBean;->setNet_battle(Lcom/join/mgps/dto/GameMainNetBattle;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMainDataBean;->getNet_battle()Lcom/join/mgps/dto/GameMainNetBattle;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameMainNetBattle;->setSilence_room_switch(I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2;->o(I)V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void
.end method

.method i()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameInfoBean;->setGame_id(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method k()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/GameMainachieve;->setLastShowVerTime(J)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lt6/u;->o(Ljava/lang/String;)Lcom/join/mgps/db/tables/GameMainTable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/join/mgps/db/tables/GameMainTable;->setGameid(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/db/tables/GameMainTable;->setGame_main_data(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lt6/u;->n()Lt6/u;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method l()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method m()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_info_tpl_type()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tpl_two_position()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method n()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    return-void
.end method

.method o(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "silenceSwitch"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->u:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->x:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getSilenceSwitch(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->w:Lcom/join/mgps/rpc/e;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->i(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "ssss"

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ""

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

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
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->x:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 22
    .line 23
    const v1, 0x7f0812af

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->d:Landroid/widget/ImageView;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method r(Lcom/join/mgps/dto/GameMainDataBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->B:Lcom/join/mgps/dto/GameMainDataBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getGame_info()Lcom/join/mgps/dto/GameMaingameinfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    .line 11
    const v2, 0x7f08018d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getGame_surface_head_image()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->g:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getScore()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMaingameinfo;->getDown_count()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->A:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget-object v8, p0, Lcom/join/mgps/activity/GameMainActivityv2;->k:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    iget-object v9, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static/range {v3 .. v9}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getAchieve()Lcom/join/mgps/dto/GameMainachieve;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    const-wide/16 v3, 0x0

    .line 76
    .line 77
    cmp-long v5, v1, v3

    .line 78
    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getLastShowVerTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    cmp-long v5, v1, v3

    .line 90
    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainachieve;->getPic_addr()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/GameMainActivityv2;->q()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getLocal_battle()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const/4 v0, 0x0

    .line 110
    const/16 v1, 0x8

    .line 111
    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-lez v2, :cond_3

    .line 119
    .line 120
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->m:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->q:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 126
    .line 127
    iget-object v3, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 128
    .line 129
    const/16 v5, 0xb

    .line 130
    .line 131
    const/16 v6, 0x20

    .line 132
    .line 133
    const/16 v7, 0xfa0

    .line 134
    .line 135
    const/4 v8, 0x0

    .line 136
    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/customview/ViewPagerWithADs;->setAll(Landroid/content/Context;Ljava/util/List;IIII)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->m:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getAd_position()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const/4 v3, 0x0

    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-lez v4, :cond_5

    .line 157
    .line 158
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 164
    .line 165
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 166
    .line 167
    const v5, 0x7f0100a2

    .line 168
    .line 169
    .line 170
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 178
    .line 179
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 180
    .line 181
    const v5, 0x7f0100a8

    .line 182
    .line 183
    .line 184
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v1, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 192
    .line 193
    const/16 v4, 0x1388

    .line 194
    .line 195
    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_4

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lcom/join/mgps/dto/BannerBean;

    .line 213
    .line 214
    iget-object v4, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 215
    .line 216
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    const v5, 0x7f0d0364

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    const v5, 0x7f0a066c

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    check-cast v5, Landroid/widget/LinearLayout;

    .line 235
    .line 236
    const v6, 0x7f0a084f

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 244
    .line 245
    const v7, 0x7f0a066d

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    check-cast v7, Landroid/widget/TextView;

    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    const v9, 0x7f080caf

    .line 259
    .line 260
    .line 261
    invoke-static {v6, v9, v8}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    new-instance v6, Lcom/join/mgps/activity/GameMainActivityv2$b;

    .line 272
    .line 273
    invoke-direct {v6, p0, v2}, Lcom/join/mgps/activity/GameMainActivityv2$b;-><init>(Lcom/join/mgps/activity/GameMainActivityv2;Lcom/join/mgps/dto/BannerBean;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 280
    .line 281
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->s:Landroid/widget/ViewFlipper;

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMainDataBean;->getPost_id()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    if-eqz p1, :cond_6

    .line 306
    .line 307
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-lez v0, :cond_6

    .line 312
    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_6

    .line 322
    .line 323
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Lcom/join/mgps/dto/GameMainPostBean;

    .line 328
    .line 329
    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivityv2;->z:Landroid/content/Context;

    .line 330
    .line 331
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    const v2, 0x7f0d0302

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    const v2, 0x7f0a0ee8

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    check-cast v2, Landroid/widget/LinearLayout;

    .line 350
    .line 351
    const v4, 0x7f0a195a

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    check-cast v4, Landroid/widget/TextView;

    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameMainPostBean;->getTitle()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    new-instance v4, Lcom/join/mgps/activity/GameMainActivityv2$c;

    .line 368
    .line 369
    invoke-direct {v4, p0, v0}, Lcom/join/mgps/activity/GameMainActivityv2$c;-><init>(Lcom/join/mgps/activity/GameMainActivityv2;Lcom/join/mgps/dto/GameMainPostBean;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivityv2;->r:Landroid/widget/LinearLayout;

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_6
    return-void
.end method
