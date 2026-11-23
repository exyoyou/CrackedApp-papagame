.class public Lcom/join/android/app/component/album/CropPicActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0179
.end annotation


# static fields
.field static TAG:Ljava/lang/String; = "CropPicActivity"


# instance fields
.field CaptureUri:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field application:Lcom/MApplication;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field id_clipImageLayout:Lcom/join/mgps/customview/ClipImageLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isSuccess:Z

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mImageCaptureUri:Landroid/net/Uri;

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field searchImage:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->isSuccess:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/MApplication;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->application:Lcom/MApplication;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    iput-object p0, p0, Lcom/join/android/app/component/album/CropPicActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLoading()V

    .line 31
    .line 32
    .line 33
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

.method dialogLoading()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->context:Landroid/content/Context;

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

.method finishUi()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->application:Lcom/MApplication;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/MApplication;->j()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lw6/a;->b()Lw6/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lw6/a;->c()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public saveCroppedImage(Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/z;->a()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v2, 0x1

    .line 42
    const/16 v3, 0x12c

    .line 43
    .line 44
    invoke-static {p1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 54
    .line 55
    const/16 v5, 0x64

    .line 56
    .line 57
    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    array-length v4, v4

    .line 65
    div-int/lit16 v4, v4, 0x400

    .line 66
    .line 67
    const/16 v6, 0x1e

    .line 68
    .line 69
    if-le v4, v6, :cond_2

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v5, v5, -0xa

    .line 75
    .line 76
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 77
    .line 78
    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    .line 83
    .line 84
    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p1

    .line 102
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    .line 104
    .line 105
    :goto_1
    :try_start_3
    iget p1, p0, Lcom/join/android/app/component/album/CropPicActivity;->from:I

    .line 106
    .line 107
    if-ne p1, v2, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/album/CropPicActivity;->uploadPortrait(Ljava/io/File;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/join/mgps/Util/z;->c()Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Lcom/join/mgps/Util/o0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lcom/join/android/app/common/utils/l;->H(Ljava/io/File;)Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->context:Landroid/content/Context;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->finishUi()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catch_1
    move-exception p1

    .line 190
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catch_2
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    :goto_2
    return-void
.end method

.method searchImage()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->id_clipImageLayout:Lcom/join/mgps/customview/ClipImageLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/ClipImageLayout;->a()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->saveCroppedImage(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method showLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->searchImage:Landroid/widget/Button;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->title_textview:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "\u88c1\u526a\u56fe\u50cf"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->searchImage:Landroid/widget/Button;

    .line 15
    .line 16
    const v1, 0x7f080457

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showPic()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method showMainUi(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapTemp"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->id_clipImageLayout:Lcom/join/mgps/customview/ClipImageLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->id_clipImageLayout:Lcom/join/mgps/customview/ClipImageLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/customview/ClipImageLayout;->getmZoomImageView()Lcom/join/mgps/customview/ClipZoomImageView;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method showPic()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity;->id_clipImageLayout:Lcom/join/mgps/customview/ClipImageLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/android/app/component/album/CropPicActivity;->CaptureUri:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/ClipImageLayout;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->showMainUi(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public syncFile(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/io/File;Landroid/content/Context;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountBean",
            "file",
            "context"
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->isSuccess:Z

    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/dto/UploadPortraitRequestBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->setToken(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->setUid(I)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-static {}, Lcom/papa/sim/statistic/http/b;->I()Lcom/papa/sim/statistic/http/b$q;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v4, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "/user/upfile/upload_user_head_portrait"

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "files"

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    new-array v7, v2, [Lcom/papa/sim/statistic/http/b$n;

    .line 55
    .line 56
    new-instance v2, Lcom/papa/sim/statistic/http/b$n;

    .line 57
    .line 58
    const-string v6, "uid"

    .line 59
    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->getUid()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v2, v6, v1}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    aput-object v2, v7, p3

    .line 83
    .line 84
    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    .line 85
    .line 86
    const-string v2, "token"

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->getToken()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-direct {v1, v2, v6}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x1

    .line 96
    aput-object v1, v7, v2

    .line 97
    .line 98
    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    .line 99
    .line 100
    const-string v6, "device_id"

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadPortraitRequestBean;->getDevice_id()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-direct {v1, v6, v8}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 v6, 0x2

    .line 110
    aput-object v1, v7, v6

    .line 111
    .line 112
    new-instance v1, Lcom/papa/sim/statistic/http/b$n;

    .line 113
    .line 114
    const-string v6, "sign"

    .line 115
    .line 116
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v1, v6, v0}, Lcom/papa/sim/statistic/http/b$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x3

    .line 124
    aput-object v1, v7, v0

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    move-object v6, p2

    .line 131
    invoke-virtual/range {v3 .. v8}, Lcom/papa/sim/statistic/http/b$q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-class v3, Lcom/join/mgps/dto/UploadResultMainBean;

    .line 148
    .line 149
    invoke-virtual {v1, v0, v3}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/join/mgps/dto/UploadResultMainBean;

    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadResultMainBean;->getError()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_1

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/dto/UploadResultMainBean;->getData()Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    .line 173
    iput-boolean v2, p0, Lcom/join/android/app/component/album/CropPicActivity;->isSuccess:Z

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->toBuilder()Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Lcom/wufan/user/service/protobuf/UserInfo$b;->setAvatarSrc(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/UserInfo$b;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo$b;->build()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_0
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->isSuccess:Z

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_1
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->isSuccess:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    iput-boolean p3, p0, Lcom/join/android/app/component/album/CropPicActivity;->isSuccess:Z

    .line 217
    .line 218
    :goto_0
    iget-boolean p1, p0, Lcom/join/android/app/component/album/CropPicActivity;->isSuccess:Z

    .line 219
    .line 220
    return p1
.end method

.method uploadPortrait(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconFile"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->dialogLoading()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/android/app/component/album/CropPicActivity;->context:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p0, v1, p1, v2}, Lcom/join/android/app/component/album/CropPicActivity;->syncFile(Lcom/wufan/user/service/protobuf/UserInfo;Ljava/io/File;Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->finishUi()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/android/app/component/album/CropPicActivity;->showLodingDismis()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/album/CropPicActivity;->error(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/CropPicActivity;->error(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void
.end method
