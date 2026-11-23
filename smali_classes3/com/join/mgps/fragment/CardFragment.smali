.class public Lcom/join/mgps/fragment/CardFragment;
.super Lcom/join/mgps/fragment/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected d:Lcom/join/mgps/dto/GameDiscoverBean;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field protected k:Lcom/facebook/drawee/view/SimpleDraweeView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Lcom/join/mgps/customview/HtmlTextView;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/TextView;

.field protected p:Landroid/widget/TextView;

.field private q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/fragment/CardFragment$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/CardFragment$1;-><init>(Lcom/join/mgps/fragment/CardFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->u:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    return-void
.end method

.method public static O(Lcom/join/mgps/dto/GameDiscoverBean;)Lcom/join/mgps/fragment/CardFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discoverBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/fragment/CardFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/fragment/CardFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/fragment/CardFragment;->R(Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method protected M(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramView"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->r:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->f:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected N(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramLayoutInflater"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0d0280

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v0, 0x7f0a0231

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->f:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    const v0, 0x7f0a08c1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->e:Landroid/widget/ImageView;

    .line 37
    .line 38
    const v0, 0x7f0a08c2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    const v0, 0x7f0a1735

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->p:Landroid/widget/TextView;

    .line 59
    .line 60
    const v0, 0x7f0a1732

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->n:Landroid/widget/TextView;

    .line 70
    .line 71
    const v0, 0x7f0a172c

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/join/mgps/customview/HtmlTextView;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->m:Lcom/join/mgps/customview/HtmlTextView;

    .line 81
    .line 82
    const v0, 0x7f0a08ca

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->l:Landroid/widget/ImageView;

    .line 92
    .line 93
    const v0, 0x7f0a0476

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->o:Landroid/widget/TextView;

    .line 103
    .line 104
    const v0, 0x7f0a095c

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/Button;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 114
    .line 115
    const v0, 0x7f0a02dc

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 125
    .line 126
    const v0, 0x7f0a12b3

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 134
    .line 135
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->r:Landroid/widget/RelativeLayout;

    .line 136
    .line 137
    const v0, 0x7f0a12b2

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/widget/LinearLayout;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->h:Landroid/widget/LinearLayout;

    .line 147
    .line 148
    const v0, 0x7f0a0499

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/LinearLayout;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->i:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    const v0, 0x7f0a02db

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/widget/ProgressBar;

    .line 167
    .line 168
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->s:Landroid/widget/ProgressBar;

    .line 169
    .line 170
    const v0, 0x7f0a123f

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->t:Landroid/widget/TextView;

    .line 180
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->p:Landroid/widget/TextView;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getGame_name()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->n:Landroid/widget/TextView;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getTitle()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->m:Lcom/join/mgps/customview/HtmlTextView;

    .line 208
    .line 209
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getIntro()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/HtmlTextView;->setTextViewHtml(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 223
    .line 224
    const-string v1, "MM\u6708dd\u65e5 EEEE"

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/join/mgps/dto/DiscoverBean;->getAddtimes()J

    .line 236
    .line 237
    .line 238
    move-result-wide v1

    .line 239
    const-wide/16 v3, 0x3e8

    .line 240
    .line 241
    mul-long v1, v1, v3

    .line 242
    .line 243
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->o:Landroid/widget/TextView;

    .line 252
    .line 253
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    .line 260
    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->P()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->updateButn()V

    .line 265
    .line 266
    .line 267
    return-object p1
.end method

.method protected P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPlugin_num()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDiscover()Lcom/join/mgps/dto/DiscoverBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/DiscoverBean;->getPic()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method Q(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->s:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->t:Landroid/widget/TextView;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "%"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public R(Lcom/join/mgps/dto/GameDiscoverBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 2
    .line 3
    return-void
.end method

.method protected initData()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getTag_info()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v4, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    sget-object v5, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    .line 81
    .line 82
    invoke-virtual {v0, v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v0, v2, v3, v5}, Lcom/join/android/app/common/utils/APKUtils;->o(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_0

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-ge v0, v2, :cond_0

    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 139
    .line 140
    const/16 v1, 0x9

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_3

    .line 160
    .line 161
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDownloadType()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 178
    .line 179
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getScreenshot_pic()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_3

    .line 189
    .line 190
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const/4 v3, 0x1

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const/4 v4, 0x2

    .line 204
    new-array v4, v4, [Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v5, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 207
    .line 208
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    aput-object v5, v4, v2

    .line 217
    .line 218
    iget-object v5, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 219
    .line 220
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    aput-object v5, v4, v3

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    goto :goto_0

    .line 235
    :cond_5
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v4, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v0, v4}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :goto_0
    const/4 v4, 0x0

    .line 250
    if-eqz v0, :cond_e

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-lez v5, :cond_e

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const/4 v5, 0x0

    .line 263
    :cond_6
    const/4 v6, 0x0

    .line 264
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-eqz v7, :cond_9

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 275
    .line 276
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 277
    .line 278
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_8

    .line 291
    .line 292
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    invoke-virtual {v5, v8}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-eqz v5, :cond_7

    .line 305
    .line 306
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-ne v5, v1, :cond_7

    .line 311
    .line 312
    const/4 v5, 0x1

    .line 313
    goto :goto_1

    .line 314
    :cond_7
    const/4 v5, 0x0

    .line 315
    goto :goto_1

    .line 316
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-static {v6}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    sget-object v10, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    .line 333
    .line 334
    invoke-virtual {v6, v8, v9, v10}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    if-eqz v6, :cond_6

    .line 339
    .line 340
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-ne v6, v1, :cond_6

    .line 345
    .line 346
    const/4 v6, 0x1

    .line 347
    goto :goto_1

    .line 348
    :cond_9
    if-eqz v5, :cond_a

    .line 349
    .line 350
    if-eqz v6, :cond_a

    .line 351
    .line 352
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 357
    .line 358
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    goto :goto_2

    .line 367
    :cond_a
    if-eqz v5, :cond_b

    .line 368
    .line 369
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    if-eqz v0, :cond_e

    .line 376
    .line 377
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    goto :goto_2

    .line 396
    :cond_b
    if-eqz v6, :cond_c

    .line 397
    .line 398
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    goto :goto_2

    .line 413
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 414
    .line 415
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    if-eqz v0, :cond_d

    .line 420
    .line 421
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    :cond_d
    if-nez v4, :cond_e

    .line 440
    .line 441
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 446
    .line 447
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    :cond_e
    :goto_2
    iput-object v4, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 456
    .line 457
    :cond_f
    :goto_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->u:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0231

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_24

    .line 9
    .line 10
    const v0, 0x7f0a095c

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p1, v0, :cond_4

    .line 15
    .line 16
    const v0, 0x7f0a12b3

    .line 17
    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->updateButn()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x3

    .line 51
    if-eq p1, v0, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 v0, 0x6

    .line 60
    if-ne p1, v0, :cond_25

    .line 61
    .line 62
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->updateButn()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    if-eqz p1, :cond_23

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    goto :goto_0

    .line 97
    :cond_6
    const/4 p1, 0x0

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/16 v2, 0x2b

    .line 115
    .line 116
    if-lez v0, :cond_7

    .line 117
    .line 118
    const/16 p1, 0x2b

    .line 119
    .line 120
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    if-eq p1, v1, :cond_8

    .line 125
    .line 126
    const/16 v3, 0xa

    .line 127
    .line 128
    if-ne p1, v3, :cond_9

    .line 129
    .line 130
    :cond_8
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_9
    const/16 v3, 0xc

    .line 136
    .line 137
    if-ne p1, v3, :cond_a

    .line 138
    .line 139
    return-void

    .line 140
    :cond_a
    const/16 v3, 0xd

    .line 141
    .line 142
    if-ne p1, v3, :cond_b

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 149
    .line 150
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_b
    const/4 v3, 0x5

    .line 155
    if-ne p1, v3, :cond_c

    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 162
    .line 163
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/ExtBean;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_c
    const/16 v4, 0x9

    .line 179
    .line 180
    const-string v5, ""

    .line 181
    .line 182
    if-ne p1, v4, :cond_15

    .line 183
    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-nez p1, :cond_d

    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDownloadType()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_f

    .line 215
    .line 216
    const/4 v0, 0x1

    .line 217
    if-eq p1, v0, :cond_f

    .line 218
    .line 219
    if-eq p1, v1, :cond_e

    .line 220
    .line 221
    goto/16 :goto_4

    .line 222
    .line 223
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->R4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_4

    .line 229
    .line 230
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-eqz p1, :cond_14

    .line 237
    .line 238
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_10

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 262
    .line 263
    invoke-static {p1}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 267
    .line 268
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer_name()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 289
    .line 290
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_url_remote()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 300
    .line 301
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 311
    .line 312
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver_name()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 322
    .line 323
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_down_url()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-lez p1, :cond_11

    .line 349
    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_4

    .line 364
    .line 365
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 366
    .line 367
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 368
    .line 369
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->C1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 377
    .line 378
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_12

    .line 383
    .line 384
    goto/16 :goto_4

    .line 385
    .line 386
    :cond_12
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_status()I

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-ne p1, v3, :cond_13

    .line 393
    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 399
    .line 400
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_4

    .line 404
    .line 405
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 410
    .line 411
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 412
    .line 413
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getTp_down_url()Ljava/util/List;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 418
    .line 419
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getOther_down_switch()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 424
    .line 425
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCdn_down_switch()I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_4

    .line 433
    .line 434
    :cond_14
    :goto_1
    return-void

    .line 435
    :cond_15
    const/16 v1, 0x2a

    .line 436
    .line 437
    if-ne p1, v1, :cond_18

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    if-eqz p1, :cond_17

    .line 444
    .line 445
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 446
    .line 447
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    if-eqz p1, :cond_16

    .line 456
    .line 457
    goto :goto_2

    .line 458
    :cond_16
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 459
    .line 460
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->W4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 468
    .line 469
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 470
    .line 471
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 479
    .line 480
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getVer_name()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 490
    .line 491
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_url_remote()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 501
    .line 502
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 503
    .line 504
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 512
    .line 513
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 514
    .line 515
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_ver_name()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 523
    .line 524
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 525
    .line 526
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCfg_down_url()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 538
    .line 539
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_4

    .line 543
    .line 544
    :cond_17
    :goto_2
    return-void

    .line 545
    :cond_18
    const/16 v1, 0xb

    .line 546
    .line 547
    if-ne v1, p1, :cond_19

    .line 548
    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_4

    .line 557
    .line 558
    :cond_19
    const/16 v0, 0x1b

    .line 559
    .line 560
    if-ne v0, p1, :cond_1a

    .line 561
    .line 562
    goto/16 :goto_4

    .line 563
    .line 564
    :cond_1a
    const/16 v0, 0x30

    .line 565
    .line 566
    if-ne v0, p1, :cond_1b

    .line 567
    .line 568
    goto/16 :goto_4

    .line 569
    .line 570
    :cond_1b
    if-ne v2, p1, :cond_1f

    .line 571
    .line 572
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 573
    .line 574
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    if-lez p1, :cond_1c

    .line 589
    .line 590
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 595
    .line 596
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_4

    .line 604
    .line 605
    :cond_1c
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 606
    .line 607
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 608
    .line 609
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->C1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 617
    .line 618
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 619
    .line 620
    .line 621
    move-result p1

    .line 622
    if-eqz p1, :cond_1d

    .line 623
    .line 624
    goto/16 :goto_4

    .line 625
    .line 626
    :cond_1d
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 627
    .line 628
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_status()I

    .line 629
    .line 630
    .line 631
    move-result p1

    .line 632
    if-ne p1, v3, :cond_1e

    .line 633
    .line 634
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 639
    .line 640
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_4

    .line 644
    .line 645
    :cond_1e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 650
    .line 651
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 652
    .line 653
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getTp_down_url()Ljava/util/List;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 658
    .line 659
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getOther_down_switch()I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 664
    .line 665
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCdn_down_switch()I

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 670
    .line 671
    .line 672
    goto/16 :goto_4

    .line 673
    .line 674
    :cond_1f
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 675
    .line 676
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 681
    .line 682
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 687
    .line 688
    .line 689
    move-result p1

    .line 690
    if-lez p1, :cond_20

    .line 691
    .line 692
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 693
    .line 694
    .line 695
    move-result-object p1

    .line 696
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 697
    .line 698
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    goto :goto_4

    .line 706
    :cond_20
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 707
    .line 708
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 709
    .line 710
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->C1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 714
    .line 715
    .line 716
    move-result-object p1

    .line 717
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 718
    .line 719
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 720
    .line 721
    .line 722
    move-result p1

    .line 723
    if-eqz p1, :cond_21

    .line 724
    .line 725
    goto :goto_4

    .line 726
    :cond_21
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 727
    .line 728
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getDown_status()I

    .line 729
    .line 730
    .line 731
    move-result p1

    .line 732
    if-ne p1, v3, :cond_22

    .line 733
    .line 734
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 735
    .line 736
    .line 737
    move-result-object p1

    .line 738
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 739
    .line 740
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 741
    .line 742
    .line 743
    goto :goto_4

    .line 744
    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 749
    .line 750
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 751
    .line 752
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getTp_down_url()Ljava/util/List;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 757
    .line 758
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getOther_down_switch()I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 763
    .line 764
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCdn_down_switch()I

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 769
    .line 770
    .line 771
    goto :goto_4

    .line 772
    :cond_23
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 773
    .line 774
    .line 775
    move-result-object p1

    .line 776
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 777
    .line 778
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->T2(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 779
    .line 780
    .line 781
    return-void

    .line 782
    :cond_24
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 783
    .line 784
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object p1

    .line 788
    if-eqz p1, :cond_25

    .line 789
    .line 790
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 799
    .line 800
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 805
    .line 806
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 811
    .line 812
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDiscoverBean;->getSp_tpl_two_position()I

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    const/16 v5, 0x73

    .line 817
    .line 818
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 819
    .line 820
    .line 821
    :cond_25
    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->u:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v1, 0x5

    .line 59
    if-eq p1, v1, :cond_2

    .line 60
    .line 61
    const/16 v1, 0x8

    .line 62
    .line 63
    if-eq p1, v1, :cond_1

    .line 64
    .line 65
    const/16 v1, 0xb

    .line 66
    .line 67
    if-eq p1, v1, :cond_2

    .line 68
    .line 69
    const/16 v1, 0x30

    .line 70
    .line 71
    if-eq p1, v1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->s:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    long-to-int v1, v0

    .line 98
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->t:Landroid/widget/TextView;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, "%"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    if-eqz v0, :cond_3

    .line 131
    .line 132
    iget-object p1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 133
    .line 134
    if-eqz p1, :cond_3

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_3

    .line 151
    .line 152
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->updateButn()V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public onResume()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/dto/GameDiscoverBean;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/join/mgps/dto/GameDiscoverBean;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x5

    .line 22
    if-nez v0, :cond_4

    .line 23
    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    if-eqz v2, :cond_f

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_f

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-ne v2, v1, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_f

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    sget-object v4, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    .line 113
    .line 114
    invoke-virtual {v0, v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v0, v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->o(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_1

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-ge v0, v2, :cond_1

    .line 177
    .line 178
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 179
    .line 180
    const/16 v1, 0x9

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_3

    .line 186
    .line 187
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 195
    .line 196
    const/16 v1, 0xb

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_3

    .line 213
    .line 214
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/4 v2, 0x1

    .line 221
    const/4 v3, 0x0

    .line 222
    if-eqz v0, :cond_5

    .line 223
    .line 224
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const/4 v4, 0x2

    .line 229
    new-array v4, v4, [Ljava/lang/Object;

    .line 230
    .line 231
    iget-object v5, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 232
    .line 233
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    aput-object v5, v4, v3

    .line 242
    .line 243
    iget-object v5, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    aput-object v5, v4, v2

    .line 254
    .line 255
    invoke-virtual {v0, v4}, Lq5/f;->H([Ljava/lang/Object;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    goto :goto_0

    .line 260
    :cond_5
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v4, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 265
    .line 266
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPackage_name()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v0, v4}, Lq5/f;->I(Ljava/lang/String;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    :goto_0
    const/4 v4, 0x0

    .line 275
    if-eqz v0, :cond_e

    .line 276
    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-lez v5, :cond_e

    .line 282
    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const/4 v5, 0x0

    .line 288
    :cond_6
    const/4 v6, 0x0

    .line 289
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-eqz v7, :cond_9

    .line 294
    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 300
    .line 301
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-eqz v8, :cond_8

    .line 316
    .line 317
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {v5, v8}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_7

    .line 330
    .line 331
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-ne v5, v1, :cond_7

    .line 336
    .line 337
    const/4 v5, 0x1

    .line 338
    goto :goto_1

    .line 339
    :cond_7
    const/4 v5, 0x0

    .line 340
    goto :goto_1

    .line 341
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-static {v6}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    sget-object v10, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    .line 358
    .line 359
    invoke-virtual {v6, v8, v9, v10}, Lcom/join/android/app/common/utils/APKUtils;->f(Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-eqz v6, :cond_6

    .line 364
    .line 365
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    if-ne v6, v1, :cond_6

    .line 370
    .line 371
    const/4 v6, 0x1

    .line 372
    goto :goto_1

    .line 373
    :cond_9
    if-eqz v5, :cond_a

    .line 374
    .line 375
    if-eqz v6, :cond_a

    .line 376
    .line 377
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 382
    .line 383
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    goto :goto_2

    .line 392
    :cond_a
    if-eqz v5, :cond_b

    .line 393
    .line 394
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 395
    .line 396
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_e

    .line 401
    .line 402
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 407
    .line 408
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    goto :goto_2

    .line 421
    :cond_b
    if-eqz v6, :cond_c

    .line 422
    .line 423
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    goto :goto_2

    .line 438
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 439
    .line 440
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    if-eqz v0, :cond_d

    .line 445
    .line 446
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 451
    .line 452
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    :cond_d
    if-nez v4, :cond_e

    .line 465
    .line 466
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 471
    .line 472
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    :cond_e
    :goto_2
    iput-object v4, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 481
    .line 482
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->updateButn()V

    .line 483
    .line 484
    .line 485
    return-void
.end method

.method showInstallButn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->r:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->r:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method updateButn()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->i:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 23
    .line 24
    const v1, 0x7f0804c0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/16 v3, 0x2b

    .line 58
    .line 59
    if-lez v2, :cond_2

    .line 60
    .line 61
    const/16 v0, 0x2b

    .line 62
    .line 63
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v5, ""

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 99
    .line 100
    const v1, 0x7f080f8b

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 107
    .line 108
    const-string v1, "\u5f00\u59cb"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const v2, 0x7f06002b

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_3
    const/16 v2, 0xc

    .line 132
    .line 133
    if-ne v0, v2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 139
    .line 140
    const-string v1, "\u89e3\u538b\u4e2d.."

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 146
    .line 147
    const v1, 0x7f080550

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :cond_4
    const/16 v2, 0xd

    .line 156
    .line 157
    if-ne v0, v2, :cond_5

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 163
    .line 164
    const-string v1, "\u89e3\u538b"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 170
    .line 171
    const v1, 0x7f080fb6

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_5

    .line 178
    .line 179
    :cond_5
    const/16 v2, 0x9

    .line 180
    .line 181
    const v4, 0x7f0804bf

    .line 182
    .line 183
    .line 184
    const v5, 0x7f08049c

    .line 185
    .line 186
    .line 187
    if-ne v0, v2, :cond_6

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 193
    .line 194
    const-string v1, "\u66f4\u65b0"

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 200
    .line 201
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 205
    .line 206
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :cond_6
    const/16 v2, 0xb

    .line 212
    .line 213
    if-ne v0, v2, :cond_7

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 219
    .line 220
    const-string v1, "\u5b89\u88c5"

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 226
    .line 227
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 231
    .line 232
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_7
    const/4 v2, 0x5

    .line 238
    if-eq v0, v2, :cond_12

    .line 239
    .line 240
    const/16 v2, 0x2a

    .line 241
    .line 242
    if-ne v0, v2, :cond_8

    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :cond_8
    const/4 v2, 0x2

    .line 247
    if-ne v0, v2, :cond_9

    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showProgress()V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 253
    .line 254
    const v1, 0x7f08049d

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/io/File;

    .line 261
    .line 262
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_13

    .line 276
    .line 277
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 286
    .line 287
    .line 288
    move-result-wide v1

    .line 289
    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->j(Ljava/lang/String;J)D

    .line 290
    .line 291
    .line 292
    move-result-wide v0

    .line 293
    double-to-int v0, v0

    .line 294
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->s:Landroid/widget/ProgressBar;

    .line 295
    .line 296
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->t:Landroid/widget/TextView;

    .line 300
    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v0, "%"

    .line 310
    .line 311
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_5

    .line 322
    .line 323
    :cond_9
    const/4 v2, 0x3

    .line 324
    if-eq v0, v2, :cond_11

    .line 325
    .line 326
    const/4 v2, 0x6

    .line 327
    if-ne v0, v2, :cond_a

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_a
    const/16 v2, 0x1b

    .line 332
    .line 333
    const-string v4, "M"

    .line 334
    .line 335
    if-ne v0, v2, :cond_b

    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 341
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v2, "\u6682\u505c\u4e2d\u3000"

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 372
    .line 373
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_5

    .line 377
    .line 378
    :cond_b
    const/16 v2, 0xa

    .line 379
    .line 380
    if-ne v0, v2, :cond_c

    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 386
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v2, "\u7b49\u5f85\u3000"

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 417
    .line 418
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_5

    .line 422
    .line 423
    :cond_c
    const/4 v2, 0x1

    .line 424
    const v6, 0x7f12037c

    .line 425
    .line 426
    .line 427
    const-string v7, "\u3000"

    .line 428
    .line 429
    const v8, 0x7f120104

    .line 430
    .line 431
    .line 432
    if-ne v0, v3, :cond_e

    .line 433
    .line 434
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 435
    .line 436
    .line 437
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-eqz v0, :cond_d

    .line 444
    .line 445
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-lez v0, :cond_d

    .line 456
    .line 457
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 462
    .line 463
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-virtual {v0, v3}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-nez v0, :cond_d

    .line 472
    .line 473
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 474
    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    new-array v2, v2, [Ljava/lang/Object;

    .line 480
    .line 481
    iget-object v4, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 482
    .line 483
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    aput-object v4, v2, v1

    .line 492
    .line 493
    invoke-virtual {v3, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    goto :goto_1

    .line 501
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 502
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 527
    .line 528
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    .line 544
    .line 545
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 546
    .line 547
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    .line 549
    .line 550
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 551
    .line 552
    if-eqz v0, :cond_13

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 559
    .line 560
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 568
    .line 569
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 570
    .line 571
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->G3(Landroid/widget/Button;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_5

    .line 575
    .line 576
    :cond_e
    const/16 v3, 0x30

    .line 577
    .line 578
    if-ne v0, v3, :cond_f

    .line 579
    .line 580
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 581
    .line 582
    .line 583
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 584
    .line 585
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    const v2, 0x7f120107

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_5

    .line 600
    .line 601
    :cond_f
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 602
    .line 603
    .line 604
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 605
    .line 606
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    .line 616
    .line 617
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 618
    .line 619
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    if-eqz v0, :cond_10

    .line 624
    .line 625
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 626
    .line 627
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-lez v0, :cond_10

    .line 636
    .line 637
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    iget-object v3, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 642
    .line 643
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    invoke-virtual {v0, v3}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-nez v0, :cond_10

    .line 652
    .line 653
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 654
    .line 655
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    new-array v2, v2, [Ljava/lang/Object;

    .line 660
    .line 661
    iget-object v4, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 662
    .line 663
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    aput-object v4, v2, v1

    .line 672
    .line 673
    invoke-virtual {v3, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    .line 679
    .line 680
    goto :goto_2

    .line 681
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 682
    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    .line 684
    .line 685
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    iget-object v2, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 707
    .line 708
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameDiscoverBean;->getSize()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    .line 724
    .line 725
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 726
    .line 727
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 728
    .line 729
    .line 730
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 731
    .line 732
    if-eqz v0, :cond_13

    .line 733
    .line 734
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameDiscoverBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 739
    .line 740
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameDiscoverBean;->getCrc_sign_id()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 745
    .line 746
    .line 747
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 748
    .line 749
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->d:Lcom/join/mgps/dto/GameDiscoverBean;

    .line 750
    .line 751
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->G3(Landroid/widget/Button;Lcom/join/mgps/dto/GameDiscoverBean;)V

    .line 752
    .line 753
    .line 754
    goto :goto_5

    .line 755
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showProgress()V

    .line 756
    .line 757
    .line 758
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->j:Landroid/widget/ImageView;

    .line 759
    .line 760
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 761
    .line 762
    .line 763
    new-instance v0, Ljava/io/File;

    .line 764
    .line 765
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 766
    .line 767
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 775
    .line 776
    .line 777
    move-result v0

    .line 778
    if-eqz v0, :cond_13

    .line 779
    .line 780
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 781
    .line 782
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    iget-object v1, p0, Lcom/join/mgps/fragment/CardFragment;->q:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 787
    .line 788
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 789
    .line 790
    .line 791
    move-result-wide v1

    .line 792
    invoke-static {v0, v1, v2}, Lcom/php25/PDownload/d;->j(Ljava/lang/String;J)D

    .line 793
    .line 794
    .line 795
    move-result-wide v0

    .line 796
    double-to-int v0, v0

    .line 797
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/CardFragment;->Q(I)V

    .line 798
    .line 799
    .line 800
    goto :goto_5

    .line 801
    :cond_12
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/CardFragment;->showInstallButn()V

    .line 802
    .line 803
    .line 804
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 805
    .line 806
    const v1, 0x7f0804c2

    .line 807
    .line 808
    .line 809
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 810
    .line 811
    .line 812
    iget-object v0, p0, Lcom/join/mgps/fragment/CardFragment;->g:Landroid/widget/Button;

    .line 813
    .line 814
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    const v2, 0x7f120105

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    .line 831
    .line 832
    :cond_13
    :goto_5
    return-void
.end method
