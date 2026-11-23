.class public Lcom/join/mgps/activity/PrivateDomainDefaultActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0093
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private iv_close:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field private rl_container:Landroid/widget/RelativeLayout;

.field private sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private tv_save_qr:Landroid/widget/TextView;

.field private v_close1:Landroid/view/View;

.field wxProgram:Lcom/join/mgps/dto/WxProgram;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/PrivateDomainDefaultActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->saveQrImage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/PrivateDomainDefaultActivity;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->readBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private readBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipelineFactory()Lcom/facebook/imagepipeline/core/k;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->n()Lcom/facebook/cache/disk/h;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/facebook/cache/common/j;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v2, p1}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/facebook/cache/disk/h;->c(Lcom/facebook/cache/common/c;)Ld3/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ld3/a;->a()Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    :goto_0
    move-object v3, v0

    .line 39
    move-object v0, p1

    .line 40
    move-object p1, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object p1, v0

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_2
    move-object v0, p1

    .line 54
    goto :goto_4

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    move-object v3, v0

    .line 57
    move-object v0, p1

    .line 58
    move-object p1, v3

    .line 59
    goto :goto_5

    .line 60
    :catch_2
    move-exception v1

    .line 61
    move-object p1, v0

    .line 62
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :catch_3
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_4
    return-object v0

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    :goto_5
    if-eqz p1, :cond_4

    .line 78
    .line 79
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 80
    .line 81
    .line 82
    goto :goto_6

    .line 83
    :catch_4
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_6
    throw v0
.end method

.method private saveQrImage()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/Observable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/join/mgps/activity/PrivateDomainDefaultActivity$b;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity$b;-><init>(Lcom/join/mgps/activity/PrivateDomainDefaultActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a10d8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->name:Landroid/widget/TextView;

    .line 14
    .line 15
    const v0, 0x7f0a0a22

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->iv_close:Landroid/view/View;

    .line 23
    .line 24
    const v0, 0x7f0a1b31

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->v_close1:Landroid/view/View;

    .line 32
    .line 33
    const v0, 0x7f0a14a2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    const v0, 0x7f0a1a15

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->tv_save_qr:Landroid/widget/TextView;

    .line 54
    .line 55
    const v0, 0x7f0a13d6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    const v0, 0x7f0a0ee5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->contentView:Landroid/view/View;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->iv_close:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->v_close1:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->tv_save_qr:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    new-instance v1, Lcom/join/mgps/activity/PrivateDomainDefaultActivity$a;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity$a;-><init>(Lcom/join/mgps/activity/PrivateDomainDefaultActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 109
    .line 110
    const/4 v1, 0x2

    .line 111
    if-ne v0, v1, :cond_0

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/16 v1, 0x11

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/16 v1, 0x50

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 130
    .line 131
    .line 132
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->wxProgram:Lcom/join/mgps/dto/WxProgram;

    .line 133
    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->name:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/join/mgps/dto/WxProgram;->getCode_text()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->wxProgram:Lcom/join/mgps/dto/WxProgram;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/join/mgps/dto/WxProgram;->getCode_url()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v1, Lcom/papa/sim/statistic/Event;->pdReserveCode:Lcom/papa/sim/statistic/Event;

    .line 161
    .line 162
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 163
    .line 164
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 165
    .line 166
    .line 167
    iget-object v3, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->wxProgram:Lcom/join/mgps/dto/WxProgram;

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/join/mgps/dto/WxProgram;->getSceneType()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setActType(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 178
    .line 179
    .line 180
    :cond_1
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->contentView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0a22

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const v0, 0x7f0a1b31

    .line 11
    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x7f0a1a15

    .line 17
    .line 18
    .line 19
    if-ne p1, v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity;->saveQrImage()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_1
    return-void
.end method
