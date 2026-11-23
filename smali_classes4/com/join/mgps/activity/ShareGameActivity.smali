.class public Lcom/join/mgps/activity/ShareGameActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00a2
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field appNameEnd:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field backImg:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bean:Lcom/wufan/user/service/protobuf/UserInfo;

.field closeImg:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field commit:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field commitLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field data:Lcom/join/mgps/dto/ShareGameTodayData;

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field editText:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iconEnd:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field msg:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field msgEnd:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field notShow:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefrencehas:Z

.field rpcClient:Lcom/join/mgps/rpc/e;

.field selecteStar:Lcom/join/mgps/customview/MStarBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field selecteStar2:Lcom/join/mgps/customview/MStarBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field selecteStar3:Lcom/join/mgps/customview/MStarBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field selecteStarEnd:Lcom/join/mgps/customview/MStarBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field selectedMessage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sharEndlayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field sharMainlayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field shareLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field starLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field startGame:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field startGameLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tagid:Ljava/lang/String;

.field tips:Lcom/zhy/view/flowlayout/TagFlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tipsLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field titleImg:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field titleImgEnd:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userIcon3:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userIconEnd:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userName3:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userNameEnd:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field zxing:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->prefrencehas:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ShareGameActivity;FLandroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/ShareGameActivity;->setStarText(FLandroid/widget/TextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isQQClientInstalled(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "com.tencent.mobileqq"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return v0
.end method

.method public static isWeixinInstalled(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "com.tencent.mm"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return v0
.end method

.method private setStarText(FLandroid/widget/TextView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mark",
            "mstarBarTx"
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
    const-string p1, "\u70b9\u51fb\u661f\u661f\u8bc4\u5206"

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p1, "\u5fc5\u73a9\u795e\u4f5c"

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "\u5f3a\u70c8\u63a8\u8350"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const-string p1, "\u503c\u5f97\u4e00\u73a9"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const-string p1, "\u6253\u53d1\u65f6\u95f4"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    const-string p1, "\u6d6a\u8d39\u751f\u547d"

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private static shareQQZonneImage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "imageUrl",
            "from"
        }
    .end annotation

    .line 1
    new-instance p0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static shareWechatFImage(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "bitmap",
            "from"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "Id"

    .line 7
    .line 8
    const-string v0, "4"

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string p2, "SortId"

    .line 14
    .line 15
    const-string v0, "1"

    .line 16
    .line 17
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string p2, "AppId"

    .line 21
    .line 22
    const-string v0, "wxf04635c4c318fe2d"

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p2, "AppSecret"

    .line 28
    .line 29
    const-string v0, "8e21d75298829047b830ac5034b7073c"

    .line 30
    .line 31
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p2, "BypassApproval"

    .line 35
    .line 36
    const-string v0, "false"

    .line 37
    .line 38
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p2, "Enable"

    .line 42
    .line 43
    const-string v0, "true"

    .line 44
    .line 45
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object p2, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p2, p0}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 54
    .line 55
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x2

    .line 59
    invoke-virtual {p0, p2}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 60
    .line 61
    .line 62
    const-string p2, "\u5206\u4eab"

    .line 63
    .line 64
    invoke-virtual {p0, p2}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageData(Landroid/graphics/Bitmap;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private static shareWechatImage(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "bitmap",
            "from"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p2, "Id"

    .line 7
    .line 8
    const-string v0, "4"

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string p2, "SortId"

    .line 14
    .line 15
    const-string v0, "1"

    .line 16
    .line 17
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string p2, "AppId"

    .line 21
    .line 22
    const-string v0, "wxf04635c4c318fe2d"

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string p2, "AppSecret"

    .line 28
    .line 29
    const-string v0, "8e21d75298829047b830ac5034b7073c"

    .line 30
    .line 31
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p2, "BypassApproval"

    .line 35
    .line 36
    const-string v0, "false"

    .line 37
    .line 38
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string p2, "Enable"

    .line 42
    .line 43
    const-string v0, "true"

    .line 44
    .line 45
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object p2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p2, p0}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 51
    .line 52
    .line 53
    new-instance p0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 54
    .line 55
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x2

    .line 59
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 60
    .line 61
    .line 62
    const-string v0, "\u5206\u4eab"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageData(Landroid/graphics/Bitmap;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method AccountChange()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIconEnd:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userName:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userName3:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userNameEnd:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "onRemarkBegin"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->backImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x6

    .line 25
    const/16 v3, 0xf

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/join/android/app/common/utils/l;->M(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->K()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/dto/ShareGameTodayData;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareGameTodayData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-class v2, Lcom/join/mgps/dto/ShareGameTodayData;

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/dto/ShareGameTodayData;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 67
    .line 68
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    new-instance v0, Lcom/join/mgps/dto/ShareGameTodayData;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareGameTodayData;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/ShareGameTodayData;->getLastTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/i;->h(J)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/ShareGameTodayData;->setLastTime(J)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareGameTodayData;->setGameid1(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareGameTodayData;->setGameid2(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareGameTodayData;->setGameid3(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareGameTodayData;->setHasShare(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/join/mgps/dto/ShareGameTodayData;->getGameid1()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_6

    .line 146
    .line 147
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/join/mgps/dto/ShareGameTodayData;->getGameid2()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/join/mgps/dto/ShareGameTodayData;->getGameid3()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_3

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/join/mgps/dto/ShareGameTodayData;->getGameid1()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-nez v1, :cond_4

    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareGameTodayData;->setGameid1(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/join/mgps/dto/ShareGameTodayData;->getGameid2()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-nez v1, :cond_5

    .line 193
    .line 194
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareGameTodayData;->setGameid2(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/join/mgps/dto/ShareGameTodayData;->getGameid3()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-nez v1, :cond_6

    .line 207
    .line 208
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ShareGameTodayData;->setGameid3(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 214
    .line 215
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->y0(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->loadData()V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method back()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->starLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->tipsLayout:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method closeImg()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "onRemarkBegin"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->startGameLayout:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharMainlayout:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/high16 v3, 0x40000000    # 2.0f

    .line 46
    .line 47
    cmpl-float v0, v0, v3

    .line 48
    .line 49
    if-lez v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 73
    .line 74
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->startGame()V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void
.end method

.method friendLayout()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ShareGameActivity;->isWeixinInstalled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u6c92\u6709\u5b89\u88dd\u5fae\u4fe1"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    const-string v1, "OnRemarkShareChannel"

    .line 24
    .line 25
    const-string v2, "friends"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->shareFinish()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v2, v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->shareWechatFImage(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method loadData()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialmoreServer(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->f0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/join/mgps/dto/GameShareData;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ShareGameActivity;->updateUi(Lcom/join/mgps/dto/GameShareData;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->reloadData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->reloadData()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method notShow()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_boot_commented(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->startGame()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x271b

    .line 5
    .line 6
    if-ne p2, p3, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    const-string p3, "OnRemarkShare"

    .line 11
    .line 12
    invoke-static {p2, p3}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->closeImg:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->shareLayout:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharMainlayout:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->notShow:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->tipsLayout:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->back:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->commitLayout:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/join/mgps/activity/ShareGameActivity;->shareLayout:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    const/4 p2, 0x1

    .line 69
    if-ne p1, p2, :cond_0

    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->tagid:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->sendClickTag(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->editText:Landroid/widget/EditText;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ShareGameActivity;->sendComment(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method qZoneLayout()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ShareGameActivity;->isQQClientInstalled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u6c92\u6709\u5b89\u88ddqq"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    const-string v1, "OnRemarkShareChannel"

    .line 24
    .line 25
    const-string v2, "qZone"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->shareFinish()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/join/mgps/Util/z;->k:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "shareImage.png"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v0, v2}, Lcom/join/mgps/Util/c2;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v0, v2, v1}, Lcom/join/mgps/activity/ShareGameActivity;->shareQQZonneImage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method qqLayout()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ShareGameActivity;->isQQClientInstalled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u6c92\u6709\u5b89\u88ddqq"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    const-string v1, "OnRemarkShareChannel"

    .line 24
    .line 25
    const-string v2, "qq"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->shareFinish()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/join/mgps/Util/z;->k:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "shareImage.png"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v0, v2}, Lcom/join/mgps/Util/c2;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v0, v2, v1}, Lcom/join/mgps/Util/w;->l(Landroid/content/Context;Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method reloadData()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method sendClickTag(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestGameShareTag;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameShareTag;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameShareTag;->setGame_id(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameShareTag;->setUid(I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestGameShareTag;->setScore(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameShareTag;->setTag_des_id(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameShareTag;->setTag_des_type(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameShareTag;->setToken(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 99
    .line 100
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->m0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void
.end method

.method sendComment(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lcom/join/mgps/dto/RequestUidtagidTagdes;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestUidtagidTagdes;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setGame_id(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setUid(I)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/join/mgps/customview/MStarBar;->getStarMark()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setScore(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setTag_des(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestUidtagidTagdes;->setToken(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 95
    .line 96
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->v1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void
.end method

.method shareFinish()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->prefrencehas:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->prefrencehas:Z

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_boot_commented(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareGameTodayData;->setHasShare(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->data:Lcom/join/mgps/dto/ShareGameTodayData;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->y0(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method showDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "message",
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    const-string v3, "\u767b\u9646\u540e\u4fdd\u5b58\u70b9\u8bc4\u6570\u636e"

    .line 10
    .line 11
    const-string v4, "\u609f\u996d\u4e3a\u4f60\u8bb0\u5f55\u6bcf\u4e00\u4efd\u8bc4\u4ef7"

    .line 12
    .line 13
    const-string v5, "\u8df3\u8fc7"

    .line 14
    .line 15
    const-string v6, "\u53bb\u767b\u9646"

    .line 16
    .line 17
    new-instance v7, Lcom/join/mgps/activity/ShareGameActivity$f;

    .line 18
    .line 19
    invoke-direct {v7, p0, p3, p2, p1}, Lcom/join/mgps/activity/ShareGameActivity$f;-><init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/g0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/callbacks/e;)Landroid/app/Dialog;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method startGame()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->l4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/GameShareData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shareData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->titleImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getCover()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->titleImgEnd:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getCover()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->iconEnd:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIcon3:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userIconEnd:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getCounts()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "0"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->msg:Landroid/widget/TextView;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getCounts()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, "\u4eba\u5e73\u5747\u6253\u5206"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getAvg_score()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->msgEnd:Landroid/widget/TextView;

    .line 163
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getCounts()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getAvg_score()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->msgEnd:Landroid/widget/TextView;

    .line 203
    .line 204
    const/4 v1, 0x4

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->msg:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->backImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getStatistics_info()Lcom/join/mgps/dto/GameShareStatisticsInfo;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameShareStatisticsInfo;->getCover()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const/4 v2, 0x6

    .line 224
    const/16 v3, 0xf

    .line 225
    .line 226
    invoke-static {v0, v1, v2, v3}, Lcom/join/android/app/common/utils/l;->M(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->appName:Landroid/widget/TextView;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->appNameEnd:Landroid/widget/TextView;

    .line 241
    .line 242
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 256
    .line 257
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userName:Landroid/widget/TextView;

    .line 258
    .line 259
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userName3:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->userNameEnd:Landroid/widget/TextView;

    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/activity/ShareGameActivity;->bean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameShareData;->getTag_info()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    new-instance v0, Lcom/join/mgps/dto/TipBean;

    .line 295
    .line 296
    invoke-direct {v0}, Lcom/join/mgps/dto/TipBean;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v1, "+\u81ea\u5b9a\u4e49"

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/TipBean;->setName(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->tips:Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 308
    .line 309
    new-instance v1, Lcom/join/mgps/activity/ShareGameActivity$a;

    .line 310
    .line 311
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareGameActivity$a;-><init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/util/List;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setAdapter(Lcom/zhy/view/flowlayout/b;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->tips:Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 318
    .line 319
    new-instance v1, Lcom/join/mgps/activity/ShareGameActivity$b;

    .line 320
    .line 321
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/ShareGameActivity$b;-><init>(Lcom/join/mgps/activity/ShareGameActivity;Ljava/util/List;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setOnTagClickListener(Lcom/zhy/view/flowlayout/TagFlowLayout$b;)V

    .line 325
    .line 326
    .line 327
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->tips:Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 328
    .line 329
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity$c;

    .line 330
    .line 331
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity$c;-><init>(Lcom/join/mgps/activity/ShareGameActivity;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setOnSelectListener(Lcom/zhy/view/flowlayout/TagFlowLayout$a;)V

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->selecteStar:Lcom/join/mgps/customview/MStarBar;

    .line 338
    .line 339
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity$d;

    .line 340
    .line 341
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity$d;-><init>(Lcom/join/mgps/activity/ShareGameActivity;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/MStarBar;->setOnStarChangeListener(Lcom/join/mgps/customview/MStarBar$a;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lcom/join/mgps/activity/ShareGameActivity;->commit:Landroid/widget/TextView;

    .line 348
    .line 349
    new-instance v0, Lcom/join/mgps/activity/ShareGameActivity$e;

    .line 350
    .line 351
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ShareGameActivity$e;-><init>(Lcom/join/mgps/activity/ShareGameActivity;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    .line 356
    .line 357
    return-void
.end method

.method weichartLayout()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/ShareGameActivity;->isWeixinInstalled(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u6c92\u6709\u5b89\u88dd\u5fae\u4fe1"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 22
    .line 23
    const-string v1, "OnRemarkShareChannel"

    .line 24
    .line 25
    const-string v2, "weichart"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/activity/ShareGameActivity;->shareFinish()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->sharEndlayout:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/ShareGameActivity;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v2, v0, v1}, Lcom/join/mgps/activity/ShareGameActivity;->shareWechatImage(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
