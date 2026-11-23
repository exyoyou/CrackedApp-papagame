.class public Lcom/join/mgps/dialog/DownloadMethodPromptDialog;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d01d2
.end annotation


# instance fields
.field _from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field _from_type:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field constraintLayout:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field disableShowSpeedUpPrompt:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field download:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ext:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field fromRecomDown:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isForceShow:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field link:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mBarHideEnableObserver:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

.field private mNavigationBarObserver:Landroid/database/ContentObserver;

.field name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field noPrompt:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field noPromptCheck:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pref:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field protocol:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field protocolCheck:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field subTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userProtocolTxt:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;

    .line 5
    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->getNavigationBarHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "bool"

    .line 6
    .line 7
    const-string v1, "android"

    .line 8
    .line 9
    const-string v2, "config_showNavigationBar"

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "get"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    new-array v4, v3, [Ljava/lang/Class;

    .line 34
    .line 35
    const-class v5, Ljava/lang/String;

    .line 36
    .line 37
    aput-object v5, v4, v1

    .line 38
    .line 39
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-array v4, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v5, "qemu.hw.mainkeys"

    .line 46
    .line 47
    aput-object v5, v4, v1

    .line 48
    .line 49
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "1"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-string v1, "0"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v1, p0

    .line 75
    :goto_1
    move p0, v1

    .line 76
    :catch_0
    return p0
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "navigation_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    return p0
.end method

.method private registerNavigationBarObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "navigationbar_is_min"

    .line 6
    .line 7
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method T(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/papa/sim/statistic/Event;->showCopyright:Lcom/papa/sim/statistic/Event;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->isForceShow:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPrompt:Landroid/view/View;

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocol:Landroid/widget/TextView;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "\u300a"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "\u4e0b\u8f7d\u534f\u8bae\u300b"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->initNavigationBarObserver()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 83
    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->load()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method close()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
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
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/papa/sim/statistic/Event;->closeCopyright:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method download()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
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
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "\u83b7\u53d6\u4fe1\u606f\u5931\u8d25"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->T(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v0, "\u8bf7\u5148\u540c\u610f\u7528\u6237\u534f\u8bae"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->T(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_7

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "open"

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->res()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "down"

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    sget-object v2, Lcom/papa/sim/statistic/Event;->downloadCopyright:Lcom/papa/sim/statistic/Event;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/16 v2, 0x9

    .line 110
    .line 111
    if-eq v1, v2, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-ne v1, v2, :cond_4

    .line 118
    .line 119
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer_name()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadURL()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceURL()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getActualSize()J

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->ext:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->fromRecomDown:Z

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 194
    .line 195
    .line 196
    iget-boolean v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->disableShowSpeedUpPrompt:Z

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDisableShowSpeedUpPrompt(Z)V

    .line 199
    .line 200
    .line 201
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "downGameId"

    .line 210
    .line 211
    iget-object v2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 218
    .line 219
    const-string v1, "ext"

    .line 220
    .line 221
    iget-object v2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->ext:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 228
    .line 229
    const-string v1, "data"

    .line 230
    .line 231
    iget-object v2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 232
    .line 233
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 238
    .line 239
    const-string v1, "_from"

    .line 240
    .line 241
    iget v2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->_from:I

    .line 242
    .line 243
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 248
    .line 249
    const-string v1, "_from_type"

    .line 250
    .line 251
    iget v2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->_from_type:I

    .line 252
    .line 253
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 258
    .line 259
    const-string v1, "fromRecomDown"

    .line 260
    .line 261
    iget-boolean v2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->fromRecomDown:Z

    .line 262
    .line 263
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 268
    .line 269
    const-string v1, "disableShowSpeedUpPrompt"

    .line 270
    .line 271
    iget-boolean v2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->disableShowSpeedUpPrompt:Z

    .line 272
    .line 273
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 278
    .line 279
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 280
    .line 281
    if-eqz v1, :cond_5

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    goto :goto_0

    .line 288
    :cond_5
    const-wide/16 v1, 0x0

    .line 289
    .line 290
    :goto_0
    const-string v3, "resourceSize"

    .line 291
    .line 292
    invoke-virtual {v0, v3, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;J)Lorg/androidannotations/api/builder/e;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 297
    .line 298
    const-string v1, "uncheckSelfSupport"

    .line 299
    .line 300
    const/4 v2, 0x1

    .line 301
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 306
    .line 307
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 308
    .line 309
    .line 310
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    .line 311
    .line 312
    .line 313
    :cond_7
    :goto_2
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const v1, 0x7f01002e

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method initNavigationBarObserver()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->registerContentResolver()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->isNavigationBarShow()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->getNavigationBarHeight()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {}, Lcom/join/mgps/Util/v1;->e()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    return-void
.end method

.method public isNavigationBarShow()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/mgps/Util/v1;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/v1;->a(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/v1;->f(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    .line 24
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/v1;->g()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "force_fsg_nav_bar"

    .line 35
    .line 36
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :catch_0
    move-exception v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Landroid/graphics/Point;

    .line 56
    .line 57
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v4, Landroid/graphics/Point;

    .line 61
    .line 62
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 69
    .line 70
    .line 71
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 74
    .line 75
    if-eq v2, v3, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    :goto_1
    return v0
.end method

.method load()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/join/mgps/dto/RequestModel;

    .line 24
    .line 25
    invoke-direct {v2}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setToken(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 51
    .line 52
    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/k;->f0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/16 v2, 0x258

    .line 63
    .line 64
    if-ne v1, v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const v0, 0x7f12031e

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->T(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-void
.end method

.method noPromptCheckPlaceholder()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPromptCheck:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->setNoPromptCheck(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x50

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->mBarHideEnableObserver:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method outside()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
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
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/papa/sim/statistic/Event;->closeCopyright:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->finish()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protocol()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getUserProtocolURL()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protocolCheckPlaceholder()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 8
    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->download:Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const v2, 0x7f0811d5

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const v2, 0x7f0811d6

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPrompt:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->setNoPromptCheck(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method registerContentResolver()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;-><init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->mBarHideEnableObserver:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "navigationbar_hide_bar_enabled"

    .line 18
    .line 19
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->mBarHideEnableObserver:Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->registerNavigationBarObserver()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method res()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
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
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/papa/sim/statistic/Event;->openSourceUrl:Lcom/papa/sim/statistic/Event;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/t;->Y0(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadHTML()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, ""

    .line 30
    .line 31
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x50

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    const p1, 0xffffff

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method setNoPromptCheck(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->isForceShow:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "open"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    const-string p1, "\u8bf7\u5148\u540c\u610f\u7528\u6237\u534f\u8bae"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->T(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPromptCheck:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method textView77()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPromptCheckPlaceholder()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->data:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    const-string v0, "open"

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->download:Landroid/widget/TextView;

    .line 29
    .line 30
    const-string v1, "\u7acb\u5373\u6253\u5f00"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPrompt:Landroid/view/View;

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v0, "down"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getBtnStatus()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->download:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->isForceShow:Z

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPrompt:Landroid/view/View;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isSelectedNextTips()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isSelectedUserProtocol()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPromptCheck:Landroid/view/View;

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPromptCheck:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 93
    .line 94
    .line 95
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->noPromptCheck:Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->name:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getGameName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->title:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getTitle()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->subTitle:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getSubTitle()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->userProtocolTxt:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getUserProtocolTxt()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->link:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadHTML()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->isSelectedUserProtocol()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->download:Landroid/widget/TextView;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->protocolCheck:Landroid/view/View;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_4

    .line 177
    .line 178
    const v0, 0x7f0811d5

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    const v0, 0x7f0811d6

    .line 183
    .line 184
    .line 185
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    .line 187
    .line 188
    return-void
.end method
