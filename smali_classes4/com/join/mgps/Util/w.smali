.class public Lcom/join/mgps/Util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "CommonUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static A(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
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
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u5206\u4eab"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static B(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "message",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static C(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
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
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/join/mgps/Util/w;->e(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
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
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mPackageName"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x2000

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

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
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v2, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    long-to-int v0, v2

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    new-instance v2, Ljava/math/BigDecimal;

    .line 54
    .line 55
    int-to-double v3, v0

    .line 56
    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    .line 57
    .line 58
    div-double/2addr v3, v5

    .line 59
    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v0, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ""

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
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
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const v2, 0x7f12054d

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f12009a

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private static e(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "platform",
            "from",
            "result",
            "url",
            "gameid"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    const-string v1, "weixin"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    const-string v1, "quan"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v2, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const/4 p1, 0x3

    .line 54
    const-string v1, "qq"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    const/4 p1, 0x4

    .line 70
    const-string v1, "qzone"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    const/4 p1, 0x5

    .line 86
    const-string v1, "weibo"

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 p1, -0x1

    .line 90
    const-string v1, ""

    .line 91
    .line 92
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v0, p2, p1, p3}, Lcom/papa/sim/statistic/t;->Y1(Ljava/lang/String;III)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/join/mgps/dto/SharePostRequest;

    .line 100
    .line 101
    invoke-direct {p1}, Lcom/join/mgps/dto/SharePostRequest;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/SharePostRequest;->setUid(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/SharePostRequest;->setStatus(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/SharePostRequest;->setShare_url(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p5}, Lcom/join/mgps/dto/SharePostRequest;->setRes_id(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/SharePostRequest;->setRes_type(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/SharePostRequest;->setShare_channel(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string p2, "sharePostData"

    .line 127
    .line 128
    invoke-virtual {p0, p2, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lcom/join/mgps/service/CommonService_$n0;

    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "context",
            "platform",
            "from",
            "url"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lcom/join/mgps/Util/w$d;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/Util/w$d;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "oks",
            "from",
            "url",
            "gameid"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lcom/join/mgps/Util/w$e;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/Util/w$e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public static h(ILandroid/widget/TextView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "levelTv"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    .line 4
    const p0, 0x7f080c4f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0xa

    .line 12
    .line 13
    if-ge p0, v0, :cond_1

    .line 14
    .line 15
    const p0, 0x7f080c50

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const p0, 0x7f080c4e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShare;

    .line 10
    .line 11
    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 15
    .line 16
    .line 17
    const-string v2, "\u592a\u597d\u5566\uff0c\u7ec8\u4e8e\u627e\u5230\u8fd9\u4e2a\u795e\u5668\u4e86"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "\u6d77\u91cf\u514d\u8d39\u7ecf\u5178\u6e38\u620f\uff0c\u6df1\u5ea6\u624b\u673a\u5b9a\u5236\u4f18\u5316\uff0c\u8d85\u723d\u8054\u673a\u4f53\u9a8c\uff01"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v4, Lcom/join/mgps/rpc/h;->M:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, "/upload/images/wf_ico.png"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "http://tuis.5fun.com/?aid=Nif7jk&t="

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const v2, 0x7f120038

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/join/mgps/Util/w$a;

    .line 87
    .line 88
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/Util/w$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v3, "0"

    .line 114
    .line 115
    const/4 v4, 0x1

    .line 116
    invoke-static {p0, v1, v4, v2, v3}, Lcom/join/mgps/Util/w;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0, v0, v4}, Lcom/papa/sim/statistic/t;->f2(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imagePath",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/w;->o(Landroid/content/Context;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/w;->l(Landroid/content/Context;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/w;->w(Landroid/content/Context;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/w;->v(Landroid/content/Context;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
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
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
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
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "message",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static n(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "message",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "imagePath",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "shareTo",
            "shareBean"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getFrom()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    move v3, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    const/4 v0, 0x3

    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x4

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-ne p1, v4, :cond_2

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    if-ne p1, v1, :cond_3

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    if-ne p1, v0, :cond_4

    .line 36
    .line 37
    const/4 v6, 0x4

    .line 38
    goto :goto_1

    .line 39
    :cond_4
    if-ne p1, v5, :cond_5

    .line 40
    .line 41
    const/4 v6, 0x5

    .line 42
    goto :goto_1

    .line 43
    :cond_5
    const/4 v6, -0x1

    .line 44
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7, v2, v3}, Lcom/papa/sim/statistic/t;->f2(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    if-nez p1, :cond_7

    .line 52
    .line 53
    new-instance p1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v0, "Id"

    .line 59
    .line 60
    const-string v1, "4"

    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    const-string v0, "SortId"

    .line 66
    .line 67
    const-string v1, "1"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string v0, "AppId"

    .line 73
    .line 74
    const-string v1, "wxf04635c4c318fe2d"

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string v0, "AppSecret"

    .line 80
    .line 81
    const-string v1, "8e21d75298829047b830ac5034b7073c"

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v0, "BypassApproval"

    .line 87
    .line 88
    const-string v1, "false"

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v0, "Enable"

    .line 94
    .line 95
    const-string v1, "true"

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, p1}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 106
    .line 107
    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_6

    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {p0, v0, v3, v1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getArticleId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    move v4, v6

    .line 185
    move-object v6, p0

    .line 186
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->X1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_7
    if-eqz p1, :cond_f

    .line 191
    .line 192
    if-eq p1, v4, :cond_d

    .line 193
    .line 194
    const-string v4, "\u609f\u996d\u6e38\u620f\u5385"

    .line 195
    .line 196
    if-eq p1, v1, :cond_b

    .line 197
    .line 198
    if-eq p1, v0, :cond_9

    .line 199
    .line 200
    if-eq p1, v5, :cond_8

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :cond_8
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 205
    .line 206
    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 207
    .line 208
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWeiboShareUrl()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWeiboShareUrl()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-static {p0, v0, v3, v1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_2

    .line 259
    .line 260
    :cond_9
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 261
    .line 262
    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getqZoneShareUrl()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setTitleUrl(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/InnerShareParams;->setSite(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_a

    .line 305
    .line 306
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_a
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    .line 314
    .line 315
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getqZoneShareUrl()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {p0, v0, v3, v1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :cond_b
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 332
    .line 333
    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getQqUrl()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setTitleUrl(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/InnerShareParams;->setSite(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_c

    .line 376
    .line 377
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_c
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getQqUrl()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-static {p0, v0, v3, v1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_2

    .line 401
    .line 402
    :cond_d
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 403
    .line 404
    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatFriendUrl()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-nez v0, :cond_e

    .line 447
    .line 448
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :cond_e
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatFriendUrl()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {p0, v0, v3, v1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 469
    .line 470
    .line 471
    goto :goto_2

    .line 472
    :cond_f
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 473
    .line 474
    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-nez v0, :cond_10

    .line 517
    .line 518
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImagePath()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    :cond_10
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 526
    .line 527
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-static {p0, v0, v3, v1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 539
    .line 540
    .line 541
    :goto_2
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getArticleId()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    move v4, v6

    .line 554
    move-object v6, p0

    .line 555
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->X1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    return-void
.end method

.method public static q(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 7
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
            "shareTo",
            "message",
            "shareType",
            "from"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v0, 0x4

    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-ne p1, v4, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-ne p1, v3, :cond_2

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    if-ne p1, v1, :cond_3

    .line 26
    .line 27
    const/4 v5, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    if-ne p1, v0, :cond_4

    .line 30
    .line 31
    const/4 v5, 0x5

    .line 32
    goto :goto_0

    .line 33
    :cond_4
    const/4 v5, -0x1

    .line 34
    :goto_0
    if-eqz p3, :cond_11

    .line 35
    .line 36
    if-eq p3, v4, :cond_b

    .line 37
    .line 38
    if-eq p3, v3, :cond_5

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_5
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3, v2, p4}, Lcom/papa/sim/statistic/t;->f2(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_a

    .line 50
    .line 51
    if-eq p1, v4, :cond_9

    .line 52
    .line 53
    if-eq p1, v3, :cond_8

    .line 54
    .line 55
    if-eq p1, v1, :cond_7

    .line 56
    .line 57
    if-eq p1, v0, :cond_6

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_6
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->A(Landroid/content/Context;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_7
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->C(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_8
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->k(Landroid/content/Context;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_9
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->x(Landroid/content/Context;Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_a
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->u(Landroid/content/Context;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string p0, "0"

    .line 84
    .line 85
    const-string v6, "0"

    .line 86
    .line 87
    move v3, p4

    .line 88
    move v4, v5

    .line 89
    move-object v5, p0

    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->X1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_b
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p3, v2, p4}, Lcom/papa/sim/statistic/t;->f2(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    if-eqz p1, :cond_10

    .line 102
    .line 103
    if-eq p1, v4, :cond_f

    .line 104
    .line 105
    if-eq p1, v3, :cond_e

    .line 106
    .line 107
    if-eq p1, v1, :cond_d

    .line 108
    .line 109
    if-eq p1, v0, :cond_c

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_c
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->B(Landroid/content/Context;Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_d
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->n(Landroid/content/Context;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_e
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->m(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_f
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->y(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_10
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/w;->z(Landroid/content/Context;Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string p0, "0"

    .line 136
    .line 137
    const-string v6, "0"

    .line 138
    .line 139
    move v3, p4

    .line 140
    move v4, v5

    .line 141
    move-object v5, p0

    .line 142
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->X1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_11
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    const-class v0, Lcom/join/mgps/dto/ShareBean;

    .line 151
    .line 152
    invoke-virtual {p3, p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Lcom/join/mgps/dto/ShareBean;

    .line 157
    .line 158
    invoke-virtual {p2, p4}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/w;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    :goto_3
    return-void
.end method

.method public static r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "shareBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getFrom()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Lcn/sharesdk/onekeyshare/OnekeyShare;

    .line 14
    .line 15
    invoke-direct {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    const-string v4, "?"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, "&t="

    .line 75
    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v3, "?t="

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    :goto_0
    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const v4, 0x7f120038

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v4, Lcom/join/mgps/Util/w$b;

    .line 136
    .line 137
    invoke-direct {v4, p1, p0, v0, v1}, Lcom/join/mgps/Util/w$b;-><init>(Lcom/join/mgps/dto/ShareBean;Landroid/content/Context;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p0, v2, v1, v3, p1}, Lcom/join/mgps/Util/w;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->f2(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const-string p1, "\u5206\u4eab\u5931\u8d25\u3002"

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "json",
            "from"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/join/mgps/dto/ShareBeanMain;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/ShareBeanMain;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBeanMain;->getShare()Lcom/join/mgps/dto/ShareBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/w;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "\u5206\u4eab\u5931\u8d25\u3002"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public static t(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "shareBean",
            "callback"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getFrom()I

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    new-instance v8, Lcn/sharesdk/onekeyshare/OnekeyShare;

    .line 14
    .line 15
    invoke-direct {v8}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v8}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    const-string v2, "?"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "&t="

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, "?t="

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :goto_0
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    move-object v9, v1

    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const v1, 0x7f120038

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v10, Lcom/join/mgps/Util/w$c;

    .line 137
    .line 138
    move-object v1, v10

    .line 139
    move-object v2, p1

    .line 140
    move-object v3, p0

    .line 141
    move-object v4, v0

    .line 142
    move v5, v7

    .line 143
    move-object v6, p2

    .line 144
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/Util/w$c;-><init>(Lcom/join/mgps/dto/ShareBean;Landroid/content/Context;Ljava/lang/String;ILcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v10}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p0, v8, v7, v9, p1}, Lcom/join/mgps/Util/w;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v0, v7}, Lcom/papa/sim/statistic/t;->f2(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    const-string p1, "\u5206\u4eab\u5931\u8d25\u3002"

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_1
    return-void
.end method

.method private static u(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
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
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Id"

    .line 7
    .line 8
    const-string v2, "4"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "SortId"

    .line 14
    .line 15
    const-string v2, "1"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "AppId"

    .line 21
    .line 22
    const-string v2, "wxf04635c4c318fe2d"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "AppSecret"

    .line 28
    .line 29
    const-string v2, "8e21d75298829047b830ac5034b7073c"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "BypassApproval"

    .line 35
    .line 36
    const-string v2, "false"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "Enable"

    .line 42
    .line 43
    const-string v2, "true"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 54
    .line 55
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 60
    .line 61
    .line 62
    const-string v2, "\u5206\u4eab"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "imagePath",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "imagePath",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static x(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
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
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "\u5206\u4eab"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static y(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "message",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "\u5206\u4eab"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static z(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "message",
            "from"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Id"

    .line 7
    .line 8
    const-string v2, "4"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "SortId"

    .line 14
    .line 15
    const-string v2, "1"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "AppId"

    .line 21
    .line 22
    const-string v2, "wxf04635c4c318fe2d"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v1, "AppSecret"

    .line 28
    .line 29
    const-string v2, "8e21d75298829047b830ac5034b7073c"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "BypassApproval"

    .line 35
    .line 36
    const-string v2, "false"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    const-string v1, "Enable"

    .line 42
    .line 43
    const-string v2, "true"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    .line 54
    .line 55
    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 60
    .line 61
    .line 62
    const-string v2, "\u5206\u4eab"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/w;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
