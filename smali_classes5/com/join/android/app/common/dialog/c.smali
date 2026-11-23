.class public Lcom/join/android/app/common/dialog/c;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/graphics/Bitmap;

.field private k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private l:Landroid/content/Context;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "name",
            "imgUrl",
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/c;->m:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->l:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/android/app/common/dialog/c;->g:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/join/android/app/common/dialog/c;->h:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/join/android/app/common/dialog/c;->i:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/join/android/app/common/dialog/c;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/join/android/app/common/dialog/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/c;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/join/android/app/common/dialog/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/dialog/c;->e(Landroid/view/View;)V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->l:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/android/app/common/dialog/c;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->l4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->k:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/android/app/common/dialog/c;->m:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/android/app/common/dialog/b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/b;-><init>(Lcom/join/android/app/common/dialog/c;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0xc8

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private f(Ljava/lang/String;)Landroid/graphics/Bitmap;
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
.method public c()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->j:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->l:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f080a79

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/android/app/common/dialog/c;->j:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->j:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    return-object v0
.end method

.method public g(Landroid/view/View$OnClickListener;)V
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
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
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
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoStartGame"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/dialog/c;->m:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
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
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/join/android/app/common/dialog/c;->l:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x7f071549

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/android/app/common/dialog/c;->l:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v2, 0x7f071491

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 45
    .line 46
    const/16 v1, 0x11

    .line 47
    .line 48
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    const v0, 0x106000d

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 60
    .line 61
    .line 62
    const p1, 0x7f0d01b4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0a1537

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/ImageView;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->b:Landroid/widget/ImageView;

    .line 78
    .line 79
    const p1, 0x7f0a1539

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 89
    .line 90
    const p1, 0x7f0a153a

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 100
    .line 101
    const p1, 0x7f0a1538

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->e:Landroid/widget/TextView;

    .line 111
    .line 112
    const p1, 0x7f0a153b

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->f:Landroid/widget/TextView;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->l:Landroid/content/Context;

    .line 124
    .line 125
    const-string v0, "showIconAddModal"

    .line 126
    .line 127
    invoke-static {p1, v0}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/join/android/app/component/album/lib/ImageLoader;->q()Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->i:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->j:Landroid/graphics/Bitmap;

    .line 141
    .line 142
    if-nez p1, :cond_0

    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->i:Ljava/lang/String;

    .line 145
    .line 146
    invoke-direct {p0, p1}, Lcom/join/android/app/common/dialog/c;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/join/android/app/common/dialog/c;->j:Landroid/graphics/Bitmap;

    .line 151
    .line 152
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->i:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_1

    .line 159
    .line 160
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->i:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/android/app/common/dialog/c;->i:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/c;->b:Landroid/widget/ImageView;

    .line 175
    .line 176
    new-instance v0, Lcom/join/android/app/common/dialog/a;

    .line 177
    .line 178
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/a;-><init>(Lcom/join/android/app/common/dialog/c;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
