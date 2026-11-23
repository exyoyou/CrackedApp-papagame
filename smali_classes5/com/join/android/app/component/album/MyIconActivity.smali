.class public Lcom/join/android/app/component/album/MyIconActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DCIM_PATH:Ljava/lang/String;

.field private static final REQUEST_CODE_CAPTURE_CAMERA:I = 0x102

.field private static final REQUEST_CODE_PICK_IMAGE:I = 0x101


# instance fields
.field allFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field application:Lcom/MApplication;

.field private back_image:Landroid/widget/ImageView;

.field private currentImageFolder:Lcom/join/android/app/component/album/lib/a;

.field private destCaptureUri:Landroid/net/Uri;

.field filesName:Ljava/lang/String;

.field filesPath:Ljava/lang/String;

.field private from:I

.field public handler:Landroid/os/Handler;

.field private mAdapter:Lcom/join/android/app/component/album/adapter/d;

.field private mAlbumPopupWindow:Lcom/join/android/app/component/album/a;

.field private mAlbumTitle:Landroid/widget/TextView;

.field private mCancelView:Landroid/widget/ImageView;

.field private mCollapseView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mImageFloders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/album/lib/a;",
            ">;"
        }
    .end annotation
.end field

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScaner:Lcom/join/android/app/component/album/lib/b;

.field private mScreenHeight:I

.field private final useSpecifyDestCaptureUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/Camera"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/join/android/app/component/album/MyIconActivity;->DCIM_PATH:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->useSpecifyDestCaptureUri:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mImageFloders:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Lcom/join/android/app/component/album/MyIconActivity$d;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/MyIconActivity$d;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->filesName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->filesPath:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 33
    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/join/android/app/component/album/MyIconActivity;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mImageFloders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/join/android/app/component/album/MyIconActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mImageFloders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumPopupWindow:Lcom/join/android/app/component/album/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/join/android/app/component/album/MyIconActivity;Lcom/join/android/app/component/album/lib/a;)Lcom/join/android/app/component/album/lib/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->currentImageFolder:Lcom/join/android/app/component/album/lib/a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/join/android/app/component/album/MyIconActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->refreshAlbumImages()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/join/android/app/component/album/MyIconActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->setCollapse(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/android/app/component/album/MyIconActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->updateList(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/lib/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScaner:Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/join/android/app/component/album/MyIconActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->from:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$800(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/adapter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAdapter:Lcom/join/android/app/component/album/adapter/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/join/android/app/component/album/MyIconActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private getCapturePath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    const-string v0, "data"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {p0, p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "\u62cd\u7167\u5931\u8d25"

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    return-object p1

    .line 64
    :cond_2
    invoke-direct {p0, p0, v0}, Lcom/join/android/app/component/album/MyIconActivity;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_0
    return-object p1
.end method

.method private getDciAlbum()Lcom/join/android/app/component/album/lib/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    sget-object v2, Lcom/join/android/app/component/album/MyIconActivity;->DCIM_PATH:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private getPapaAlbum()Lcom/join/android/app/component/album/lib/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "All"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->k(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "\u5168\u90e8"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/a;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v2, "file"

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v2, "content"

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string p1, "_data"

    .line 59
    .line 60
    filled-new-array {p1}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    move-object v3, p2

    .line 68
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/4 v1, -0x1

    .line 85
    if-le p1, v1, :cond_3

    .line 86
    .line 87
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    move-object v0, p1

    .line 92
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_0
    return-object v0
.end method

.method private getSelectedImagesFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const-string v0, "key_selected_images"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    return-object p1
.end method

.method private initAlbumPopupWindow()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d00c5

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    new-instance v0, Lcom/join/android/app/component/album/a;

    .line 14
    .line 15
    const/4 v6, -0x1

    .line 16
    iget v7, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScreenHeight:I

    .line 17
    .line 18
    iget-object v8, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScaner:Lcom/join/android/app/component/album/lib/b;

    .line 19
    .line 20
    move-object v3, v0

    .line 21
    move-object v4, p0

    .line 22
    invoke-direct/range {v3 .. v8}, Lcom/join/android/app/component/album/a;-><init>(Landroid/content/Context;Landroid/view/View;IILcom/join/android/app/component/album/lib/b;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumPopupWindow:Lcom/join/android/app/component/album/a;

    .line 26
    .line 27
    new-instance v1, Lcom/join/android/app/component/album/MyIconActivity$b;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyIconActivity$b;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumPopupWindow:Lcom/join/android/app/component/album/a;

    .line 36
    .line 37
    new-instance v1, Lcom/join/android/app/component/album/MyIconActivity$c;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyIconActivity$c;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/a;->f(Lcom/join/android/app/component/album/a$e;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private initMyAlbumDetail()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mImages:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mImages:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScaner:Lcom/join/android/app/component/album/lib/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->i()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->getPapaAlbum()Lcom/join/android/app/component/album/lib/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->currentImageFolder:Lcom/join/android/app/component/album/lib/a;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScaner:Lcom/join/android/app/component/album/lib/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/android/app/component/album/lib/b;->i()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/lib/b;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScaner:Lcom/join/android/app/component/album/lib/b;

    .line 7
    .line 8
    const v0, 0x7f0a00b7

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/GridView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mGridView:Landroid/widget/GridView;

    .line 18
    .line 19
    const v0, 0x7f0a014e

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/ImageView;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mCancelView:Landroid/widget/ImageView;

    .line 29
    .line 30
    const v1, 0x7f0a0e37

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumTitle:Landroid/widget/TextView;

    .line 40
    .line 41
    const v1, 0x7f0a00b4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/ImageView;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mCollapseView:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/ImageView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->back_image:Landroid/widget/ImageView;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mCancelView:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->back_image:Landroid/widget/ImageView;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumTitle:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScaner:Lcom/join/android/app/component/album/lib/b;

    .line 82
    .line 83
    new-instance v1, Lcom/join/android/app/component/album/MyIconActivity$a;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/join/android/app/component/album/MyIconActivity$a;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/album/lib/b;->l(Lcom/join/android/app/component/album/lib/b$g;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/MyIconActivity;->setCollapse(Z)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->initMyAlbumDetail()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private initWindownParams()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    .line 16
    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    .line 19
    iput v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mScreenHeight:I

    .line 20
    .line 21
    return-void
.end method

.method private loadImages(Lcom/join/android/app/component/album/lib/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/BaseActivity;->showLoading()V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/join/android/app/component/album/MyIconActivity$e;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/album/MyIconActivity$e;-><init>(Lcom/join/android/app/component/album/MyIconActivity;Lcom/join/android/app/component/album/lib/a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private processAlbumSelected(Lcom/join/android/app/component/album/lib/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->filesName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->d()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->filesPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->updateList(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private refreshAlbumImages()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->currentImageFolder:Lcom/join/android/app/component/album/lib/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/join/android/app/component/album/MyIconActivity;->processAlbumSelected(Lcom/join/android/app/component/album/lib/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setCollapse(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapse"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mCollapseView:Landroid/widget/ImageView;

    .line 4
    .line 5
    const v0, 0x7f08016f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mCollapseView:Landroid/widget/ImageView;

    .line 13
    .line 14
    const v0, 0x7f080174

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private setResultForRequest()V
    .locals 0

    return-void
.end method

.method private showAlbumPopupWindow(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumPopupWindow:Lcom/join/android/app/component/album/a;

    .line 2
    .line 3
    const v1, 0x7f130544

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumPopupWindow:Lcom/join/android/app/component/album/a;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/join/android/app/component/album/MyIconActivity;->setCollapse(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private updateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "camera"

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAdapter:Lcom/join/android/app/component/album/adapter/d;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->filesPath:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/adapter/d;->d(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/join/android/app/component/album/adapter/d;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->filesPath:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {p1, p0, v0, v1}, Lcom/join/android/app/component/album/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAdapter:Lcom/join/android/app/component/album/adapter/d;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Lcom/join/android/app/component/album/adapter/d;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->allFiles:Ljava/util/List;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {p1, p0, v0, v1}, Lcom/join/android/app/component/album/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAdapter:Lcom/join/android/app/component/album/adapter/d;

    .line 74
    .line 75
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mGridView:Landroid/widget/GridView;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAdapter:Lcom/join/android/app/component/album/adapter/d;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mGridView:Landroid/widget/GridView;

    .line 83
    .line 84
    new-instance v0, Lcom/join/android/app/component/album/MyIconActivity$f;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/join/android/app/component/album/MyIconActivity$f;-><init>(Lcom/join/android/app/component/album/MyIconActivity;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAdapter:Lcom/join/android/app/component/album/adapter/d;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/android/app/component/album/adapter/d;->notifyDataSetChanged()V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumTitle:Landroid/widget/TextView;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/android/app/component/album/MyIconActivity;->filesName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->setCollapse(Z)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->mAlbumPopupWindow:Lcom/join/android/app/component/album/a;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void
.end method


# virtual methods
.method protected getImageFromCamera()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mounted"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    const-string v2, "yyyyMMdd_HHmmss"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "/Camera/IMG_"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ".jpg"

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_0

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    .line 91
    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, ".fileprovider"

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "output"

    .line 118
    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lcom/join/android/app/component/album/MyIconActivity;->destCaptureUri:Landroid/net/Uri;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_2

    .line 133
    .line 134
    const/16 v1, 0x102

    .line 135
    .line 136
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "\u8bf7\u786e\u8ba4\u5df2\u7ecf\u63d2\u5165SD\u5361"

    .line 145
    .line 146
    const/4 v2, 0x1

    .line 147
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_0
    return-void
.end method

.method protected getImageFromLocalAlbum()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.PICK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "image/*"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x101

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inContext",
            "inImage"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 7
    .line 8
    const/16 v2, 0x64

    .line 9
    .line 10
    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "Title"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p1, p2, v0, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x102

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 p1, -0x1

    .line 10
    if-eq p2, p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->destCaptureUri:Landroid/net/Uri;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-direct {p0, p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-direct {p0, p3}, Lcom/join/android/app/component/album/MyIconActivity;->getCapturePath(Landroid/content/Intent;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/join/android/app/component/album/CropPicActivity_;->intent(Landroid/content/Context;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Lcom/join/android/app/component/album/CropPicActivity_$k;->a(Ljava/lang/String;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget p2, p0, Lcom/join/android/app/component/album/MyIconActivity;->from:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/album/CropPicActivity_$k;->b(I)Lcom/join/android/app/component/album/CropPicActivity_$k;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
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
    const v0, 0x7f0a014e

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v0, 0x7f0a00b4

    .line 15
    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const v0, 0x7f0a0e37

    .line 20
    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    const v0, 0x7f0a0e36

    .line 25
    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    :cond_1
    const p1, 0x7f0a00ba

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/join/android/app/component/album/MyIconActivity;->showAlbumPopupWindow(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d076b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/join/android/app/component/album/MyIconActivity;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/MApplication;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->application:Lcom/MApplication;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->initWindownParams()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->initViews()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->initAlbumPopupWindow()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "from"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/join/android/app/component/album/MyIconActivity;->from:I

    .line 44
    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/album/MyIconActivity;->refreshAlbumImages()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
