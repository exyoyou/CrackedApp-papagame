.class public Lcom/join/mgps/dialog/c;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/join/mgps/pref/PrefDef_;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/c;->h:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/c;->h:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dialog/c;->i:Ljava/lang/String;

    .line 6
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    invoke-direct {p2, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/dialog/c;->p:Lcom/join/mgps/pref/PrefDef_;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c;->p:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/c;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/c;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/c;->h:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgUri"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipelineFactory()Lcom/facebook/imagepipeline/core/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/k;->n()Lcom/facebook/cache/disk/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/facebook/cache/common/j;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v1, p1}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/facebook/cache/disk/h;->c(Lcom/facebook/cache/common/c;)Ld3/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ld3/c;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p1}, Ld3/c;->d()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x106000d

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0d0241

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 54
    .line 55
    .line 56
    const v0, 0x7f0a1418

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->b:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    const v0, 0x7f0a0ff1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    const v0, 0x7f0a0ff3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->d:Landroid/widget/TextView;

    .line 88
    .line 89
    const v0, 0x7f0a0ff5

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    .line 99
    .line 100
    const v0, 0x7f0a0ff2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->f:Landroid/widget/TextView;

    .line 110
    .line 111
    const v0, 0x7f0a0ff4

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->g:Landroid/widget/TextView;

    .line 121
    .line 122
    sget-object v0, Lcom/MApplication;->b1:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 123
    .line 124
    if-eqz v0, :cond_0

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getUrl()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->o:Ljava/lang/String;

    .line 131
    .line 132
    sget-object v0, Lcom/MApplication;->b1:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getPic()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->j:Ljava/lang/String;

    .line 139
    .line 140
    sget-object v0, Lcom/MApplication;->b1:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getTitle()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->k:Ljava/lang/String;

    .line 147
    .line 148
    sget-object v0, Lcom/MApplication;->b1:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getBtn_l()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->l:Ljava/lang/String;

    .line 155
    .line 156
    sget-object v0, Lcom/MApplication;->b1:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getBtn_r()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->m:Ljava/lang/String;

    .line 163
    .line 164
    sget-object v0, Lcom/MApplication;->b1:Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameRunAdTextCfgBean;->getBtn_url()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/join/mgps/dialog/c;->n:Ljava/lang/String;

    .line 171
    .line 172
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->j:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_1

    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/join/mgps/dialog/c;->j:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->k:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_2

    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->d:Landroid/widget/TextView;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/join/mgps/dialog/c;->k:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->l:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_3

    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->f:Landroid/widget/TextView;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/join/mgps/dialog/c;->l:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->m:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_4

    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->g:Landroid/widget/TextView;

    .line 226
    .line 227
    iget-object v1, p0, Lcom/join/mgps/dialog/c;->m:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/dialog/c;->i:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_9

    .line 239
    .line 240
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/join/mgps/dialog/c;->i:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v2, ".apk"

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-nez v1, :cond_5

    .line 261
    .line 262
    const-string v1, "androidobb"

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_5

    .line 273
    .line 274
    const-string v1, "46"

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_8

    .line 285
    .line 286
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    const-string v3, "/"

    .line 291
    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    add-int/lit8 v3, v3, 0x1

    .line 297
    .line 298
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    const-string v3, ""

    .line 303
    .line 304
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    array-length v2, v1

    .line 313
    add-int/lit8 v2, v2, -0x1

    .line 314
    .line 315
    aget-char v1, v1, v2

    .line 316
    .line 317
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/join/mgps/dialog/c;->h:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v2, v3}, Lcom/join/mgps/Util/j2;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    const/16 v3, 0x8

    .line 335
    .line 336
    if-eqz v2, :cond_6

    .line 337
    .line 338
    iget-object p1, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    .line 339
    .line 340
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_0

    .line 344
    :cond_6
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-nez v2, :cond_7

    .line 349
    .line 350
    iget-object v2, p0, Lcom/join/mgps/dialog/c;->h:Landroid/content/Context;

    .line 351
    .line 352
    invoke-static {v2, v1}, Lcom/join/mgps/Util/l;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_7

    .line 357
    .line 358
    iget-object v1, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    .line 359
    .line 360
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_0

    .line 364
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    .line 365
    .line 366
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/c;->e:Landroid/widget/TextView;

    .line 370
    .line 371
    new-instance v1, Lcom/join/mgps/dialog/c$a;

    .line 372
    .line 373
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/dialog/c$a;-><init>(Lcom/join/mgps/dialog/c;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    .line 378
    .line 379
    :cond_9
    return-void
.end method
