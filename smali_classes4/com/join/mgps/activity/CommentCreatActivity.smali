.class public Lcom/join/mgps/activity/CommentCreatActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0164
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bespeakSwitch:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentContent:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentScoreSwitch:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentStars:F
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentcreat_et:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameIsStart:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameType:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isEdit:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isInstallTheGame:Z

.field mstarBar:Lcom/join/mgps/customview/MStarBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mstarBarTx:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field packageName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field phoneModel:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field phoneModleCB:Landroid/widget/CheckBox;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/f;

.field starLl:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textTopRight:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvTips:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CommentCreatActivity;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentCreatActivity;->setStarText(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getSystemModel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private setStarText(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mark"
        }
    .end annotation

    .line 1
    float-to-int p1, p1

    .line 2
    const/4 v0, 0x1

    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x5

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBarTx:Landroid/widget/TextView;

    .line 18
    .line 19
    const-string v0, "\u70b9\u51fb\u661f\u661f\u8bc4\u5206"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBarTx:Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v0, "\u5fc5\u73a9\u795e\u4f5c"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBarTx:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v0, "\u5f3a\u70c8\u63a8\u8350"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBarTx:Landroid/widget/TextView;

    .line 42
    .line 43
    const-string v0, "\u503c\u5f97\u4e00\u73a9"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBarTx:Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v0, "\u6253\u53d1\u65f6\u95f4"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBarTx:Landroid/widget/TextView;

    .line 58
    .line 59
    const-string v0, "\u6d6a\u8d39\u751f\u547d"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v2, "1"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->starLl:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->starLl:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentContent:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentcreat_et:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 45
    .line 46
    iget v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentStars:F

    .line 47
    .line 48
    float-to-double v2, v2

    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentStars:F

    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/CommentCreatActivity;->setStarText(F)V

    .line 55
    .line 56
    .line 57
    iget v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->bespeakSwitch:I

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    if-ne v0, v2, :cond_2

    .line 61
    .line 62
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameId:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v0, :cond_a

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameType:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_a

    .line 73
    .line 74
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameId:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameType:Ljava/lang/String;

    .line 85
    .line 86
    sget-object v4, Lcom/join/mgps/enums/Dtype;->H5:Lcom/join/mgps/enums/Dtype;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_7

    .line 97
    .line 98
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameType:Ljava/lang/String;

    .line 99
    .line 100
    const-string v4, "102"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_7

    .line 107
    .line 108
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameType:Ljava/lang/String;

    .line 109
    .line 110
    const-string v4, "green"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    if-eqz v0, :cond_6

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const/4 v4, 0x5

    .line 126
    if-ne v3, v4, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v4, p0, Lcom/join/mgps/activity/CommentCreatActivity;->packageName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_4

    .line 159
    .line 160
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_5
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_7
    :goto_1
    if-nez v0, :cond_9

    .line 173
    .line 174
    iget v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameIsStart:I

    .line 175
    .line 176
    if-ne v0, v2, :cond_8

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_9
    :goto_2
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 183
    .line 184
    :cond_a
    :goto_3
    iput-boolean v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 185
    .line 186
    invoke-static {}, Lcom/join/mgps/activity/CommentCreatActivity;->getSystemModel()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_b

    .line 197
    .line 198
    iget-object v3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 199
    .line 200
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-string v3, "\u624b\u673a\u578b\u53f7\u83b7\u53d6\u5931\u8d25\uff01"

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_4
    iget-boolean v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isEdit:Z

    .line 216
    .line 217
    if-eqz v0, :cond_d

    .line 218
    .line 219
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModel:Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v0, :cond_c

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_c

    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 244
    .line 245
    .line 246
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 247
    .line 248
    new-instance v2, Lcom/join/mgps/activity/CommentCreatActivity$a;

    .line 249
    .line 250
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentCreatActivity$a;-><init>(Lcom/join/mgps/activity/CommentCreatActivity;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/MStarBar;->setOnStarChangeListener(Lcom/join/mgps/customview/MStarBar$a;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->tvTips:Landroid/widget/TextView;

    .line 257
    .line 258
    if-eqz v0, :cond_e

    .line 259
    .line 260
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Landroid/text/SpannableString;

    .line 268
    .line 269
    const-string v2, "\u8bf7\u6309\u7167\u300a\u609f\u996d\u8bc4\u4ef7\u89c4\u5219\u300b\u53d1\u5e03\u70b9\u8bc4"

    .line 270
    .line 271
    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 275
    .line 276
    const-string v3, "#3CA4FD"

    .line 277
    .line 278
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 283
    .line 284
    .line 285
    const/4 v3, 0x3

    .line 286
    const/16 v4, 0xb

    .line 287
    .line 288
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lcom/join/mgps/activity/CommentCreatActivity$b;

    .line 292
    .line 293
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentCreatActivity$b;-><init>(Lcom/join/mgps/activity/CommentCreatActivity;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 297
    .line 298
    .line 299
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->tvTips:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->tvTips:Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 307
    .line 308
    .line 309
    :cond_e
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

.method public getCreateCommentRequestBean(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "starNum",
            "str",
            "upPhoneModel"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v6, v1

    .line 14
    check-cast v6, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 19
    .line 20
    .line 21
    move-result v15

    .line 22
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, v0, Lcom/join/mgps/activity/CommentCreatActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, v0, Lcom/join/mgps/activity/CommentCreatActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v4, v0, Lcom/join/mgps/activity/CommentCreatActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    move v13, v1

    .line 59
    move-object v10, v2

    .line 60
    move-object v11, v3

    .line 61
    move-object v12, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v1, ""

    .line 64
    .line 65
    const/4 v2, -0x1

    .line 66
    move-object v10, v1

    .line 67
    move-object v11, v10

    .line 68
    move-object v12, v11

    .line 69
    const/4 v13, -0x1

    .line 70
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v3, v0, Lcom/join/mgps/activity/CommentCreatActivity;->gameId:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v8, 0x1

    .line 79
    const-string v9, "0"

    .line 80
    .line 81
    const/4 v14, 0x1

    .line 82
    move/from16 v4, p1

    .line 83
    .line 84
    move-object/from16 v5, p2

    .line 85
    .line 86
    move-object/from16 v7, p3

    .line 87
    .line 88
    invoke-virtual/range {v2 .. v15}, Lcom/join/mgps/Util/RequestBeanUtil;->getCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/CommentCreateArgs;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    return-object v1
.end method

.method public getModifyCommentRequestBean(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentModifyArgs;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "starNum",
            "str",
            "upPhoneModel"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 17
    .line 18
    .line 19
    move-result v10

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move v5, v0

    .line 45
    move-object v7, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, ""

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    move-object v7, v0

    .line 51
    const/4 v5, -0x1

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v4, p0, Lcom/join/mgps/activity/CommentCreatActivity;->gameId:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v6, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentId:Ljava/lang/String;

    .line 61
    .line 62
    move-object v3, p3

    .line 63
    move-object v8, p2

    .line 64
    move v9, p1

    .line 65
    invoke-virtual/range {v1 .. v10}, Lcom/join/mgps/Util/RequestBeanUtil;->getModifyCommentBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)Lcom/join/mgps/dto/CommentModifyArgs;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method getToken()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->g(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "|"

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->isInstallTheGame:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/join/mgps/activity/CommentCreatActivity$c;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentCreatActivity$c;-><init>(Lcom/join/mgps/activity/CommentCreatActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/g0;->B(Landroid/content/Context;Lcom/join/mgps/Util/g0$o0;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method postEvent(IDLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "starNum",
            "str",
            "upPhoneModel"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v9, Lcom/join/mgps/event/n;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    .line 13
    div-long v6, v1, v3

    .line 14
    .line 15
    move-object v1, v9

    .line 16
    move v2, p1

    .line 17
    move-object v3, p4

    .line 18
    move-wide v4, p2

    .line 19
    move-object v8, p5

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/event/n;-><init>(ILjava/lang/String;DJLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v9}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method resultShow(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "b"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

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
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method resultShow2(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x321

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentCreatActivity;->getToken()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

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

.method textTopRight()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v3, "1"

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    cmpl-float v1, v0, v2

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "\u8bf7\u70b9\u51fb\u661f\u661f\u8bc4\u5206"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentcreat_et:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x3

    .line 56
    if-lt v2, v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/16 v3, 0x320

    .line 63
    .line 64
    if-le v2, v3, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->toCreateComment(FLjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "\u8bf7\u586b\u51993~800\u4e2a\u5b57"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method toCreateComment(FLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "starNum",
            "str",
            "upPhoneModel"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentId:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentCreatActivity;->getCreateCommentRequestBean(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentCreateArgs;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/f;->b(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentCreatActivity;->getModifyCommentRequestBean(FLjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentModifyArgs;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/CommentCreatActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 30
    .line 31
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/f;->f(Lcom/join/mgps/dto/CommentModifyArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/16 p2, 0x321

    .line 49
    .line 50
    if-ne p1, p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/join/mgps/dto/CommentCreateBean;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/CommentCreatActivity;->phoneModleCB:Landroid/widget/CheckBox;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    const-string p3, ""

    .line 85
    .line 86
    :cond_3
    move-object v8, p3

    .line 87
    iget-object p3, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentId:Ljava/lang/String;

    .line 88
    .line 89
    if-nez p3, :cond_4

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    float-to-double v5, p1

    .line 93
    move-object v3, p0

    .line 94
    move-object v7, p2

    .line 95
    invoke-virtual/range {v3 .. v8}, Lcom/join/mgps/activity/CommentCreatActivity;->postEvent(IDLjava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "\u70b9\u8bc4\u521b\u5efa\u6210\u529f,\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a\uff01"

    .line 99
    .line 100
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    const/4 v4, 0x2

    .line 105
    float-to-double v5, p1

    .line 106
    move-object v3, p0

    .line 107
    move-object v7, p2

    .line 108
    invoke-virtual/range {v3 .. v8}, Lcom/join/mgps/activity/CommentCreatActivity;->postEvent(IDLjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "\u70b9\u8bc4\u4fee\u6539\u6210\u529f,\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a\uff01"

    .line 112
    .line 113
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/CommentCreatActivity;->commentId:Ljava/lang/String;

    .line 118
    .line 119
    if-nez p1, :cond_6

    .line 120
    .line 121
    const-string p1, "\u70b9\u8bc4\u521b\u5efa\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 122
    .line 123
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    const-string p1, "\u70b9\u8bc4\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 128
    .line 129
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 146
    .line 147
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/CommentCreatActivity;->resultShow(Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_1
    return-void
.end method
