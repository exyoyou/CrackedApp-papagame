.class public Lcom/join/mgps/activity/DocumentManageActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/DocumentManageActivity$QuitReceive;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0046
.end annotation


# static fields
.field public static from:I = 0x1
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field archive_back:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field downNumber:I

.field downNumberNow:I

.field factory:Lcom/github/snowdream/android/app/downloader/b;

.field fg:Landroid/app/Fragment;

.field frag:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameid:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field intentFilter:Landroid/content/IntentFilter;

.field isArchiveOpen:Z

.field isArchiveShop:Z

.field public isVBA:Z

.field is_llManage:Z

.field iv_myarchive_open:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_shop_open:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listDataBeans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/CloudListDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/github/snowdream/android/app/downloader/b$b;

.field ll_manage:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field localFragment:Lcom/join/mgps/fragment/MyArchiveFragment;

.field public marcketDownEnable:Z

.field public marcketPGNEnable:Z

.field private messagebadge1:Lq/rorbin/badgeview/a;

.field myArch:Lcom/join/mgps/fragment/MyArchiveFragment;

.field myShop:Lcom/join/mgps/fragment/b4;

.field myShopbuy:Lcom/join/mgps/fragment/b4;

.field numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

.field popupWindow:Landroid/widget/PopupWindow;

.field pref:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progressDialogForDown:Lcom/join/mgps/dialog/x;

.field quitReceive:Lcom/join/mgps/activity/DocumentManageActivity$QuitReceive;

.field rb_buy:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rb_colud:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rb_local:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rb_remoned:Landroid/widget/RadioButton;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field recordRoms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation
.end field

.field rg_myarchive:Landroid/widget/RadioGroup;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rg_myshop:Landroid/widget/RadioGroup;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_bg:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_myarchive:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_shop:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/d;

.field s:Z

.field showTyep:I

.field simdw:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field time:I

.field tv_manage:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_myarchive_size:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_red:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_shop_size:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private tv_time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->fg:Landroid/app/Fragment;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->showTyep:I

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isVBA:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->marcketDownEnable:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->marcketPGNEnable:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->s:Z

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->time:I

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity$c;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity$c;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->handler:Landroid/os/Handler;

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveOpen:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveShop:Z

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->listDataBeans:Ljava/util/Map;

    .line 45
    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/DocumentManageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_time:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
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

.method public static date2TimeStamp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "date_str",
            "format"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-wide p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    const-wide/16 p0, 0x0

    .line 20
    .line 21
    return-wide p0
.end method

.method private getArchiveCouldArgs()Lcom/join/mgps/dto/ArchiveColudArgs;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->gameid:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->gameid:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getArchiveNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method private initListener()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity$d;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity$d;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private isActivityVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private setTypeFragment(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->hideAllFragment(Landroidx/fragment/app/FragmentTransaction;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "gameid"

    .line 18
    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->gameid:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "type"

    .line 25
    .line 26
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const v3, 0x7f0a06c0

    .line 31
    .line 32
    .line 33
    if-ne p1, v2, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myArch:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    new-instance p1, Lcom/join/mgps/fragment/a4;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/join/mgps/fragment/a4;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myArch:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myArch:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 50
    .line 51
    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v2, 0x2

    .line 60
    if-ne p1, v2, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localFragment:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    new-instance p1, Lcom/join/mgps/fragment/a4;

    .line 67
    .line 68
    invoke-direct {p1}, Lcom/join/mgps/fragment/a4;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localFragment:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localFragment:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 77
    .line 78
    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v2, 0x3

    .line 87
    if-ne p1, v2, :cond_5

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShop:Lcom/join/mgps/fragment/b4;

    .line 90
    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    new-instance p1, Lcom/join/mgps/fragment/c4;

    .line 94
    .line 95
    invoke-direct {p1}, Lcom/join/mgps/fragment/c4;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShop:Lcom/join/mgps/fragment/b4;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShop:Lcom/join/mgps/fragment/b4;

    .line 104
    .line 105
    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShopbuy:Lcom/join/mgps/fragment/b4;

    .line 114
    .line 115
    if-nez p1, :cond_6

    .line 116
    .line 117
    new-instance p1, Lcom/join/mgps/fragment/c4;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/join/mgps/fragment/c4;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShopbuy:Lcom/join/mgps/fragment/b4;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShopbuy:Lcom/join/mgps/fragment/b4;

    .line 128
    .line 129
    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 137
    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public HideRadioButtonBg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f060038

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_buy:Landroid/widget/RadioButton;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 57
    .line 58
    const v1, 0x7f0800d7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_buy:Landroid/widget/RadioButton;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_myarchive:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_shop:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rg_myshop:Landroid/widget/RadioGroup;

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/activity/DocumentManageActivity$QuitReceive;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/DocumentManageActivity$QuitReceive;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->quitReceive:Lcom/join/mgps/activity/DocumentManageActivity$QuitReceive;

    .line 37
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 44
    .line 45
    const-string v3, "com.join.mgps.activity.quitManage"

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 57
    .line 58
    invoke-static {}, Lcom/join/mgps/rpc/impl/c;->k()Lcom/join/mgps/rpc/impl/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_myarchive_open:Landroid/widget/ImageView;

    .line 65
    .line 66
    const v3, 0x7f0800d6

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/join/mgps/activity/DocumentManageActivity;->quitReceive:Lcom/join/mgps/activity/DocumentManageActivity$QuitReceive;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/join/mgps/activity/DocumentManageActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 77
    .line 78
    invoke-virtual {v0, v4, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const v4, 0x7f071658

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    float-to-int v0, v0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const v5, 0x7f071543

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    float-to-int v4, v4

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const v6, 0x7f07138a

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    float-to-int v5, v5

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const v7, 0x7f0713dc

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 136
    .line 137
    mul-int/lit8 v7, v5, 0x2

    .line 138
    .line 139
    sub-int/2addr v6, v7

    .line 140
    mul-int v0, v0, v6

    .line 141
    .line 142
    div-int/2addr v0, v4

    .line 143
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    .line 145
    const/4 v6, -0x1

    .line 146
    invoke-direct {v4, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .line 148
    .line 149
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 150
    .line 151
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    .line 153
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rl_bg:Landroid/widget/RelativeLayout;

    .line 156
    .line 157
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 164
    .line 165
    const v4, 0x7f0800d4

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rg_myshop:Landroid/widget/RadioGroup;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_shop_open:Landroid/widget/ImageView;

    .line 185
    .line 186
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 190
    .line 191
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const v2, 0x7f060503

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    const/4 v0, 0x3

    .line 211
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->setTypeFragment(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->getNum()V

    .line 215
    .line 216
    .line 217
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->initListener()V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lcom/join/mgps/dialog/x;

    .line 221
    .line 222
    const v1, 0x7f13017f

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/x;-><init>(Landroid/content/Context;I)V

    .line 226
    .line 227
    .line 228
    const-string v1, "\u5b58\u6863\u4e0b\u8f7d\u4e2d"

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-string v1, "\u540e\u53f0\u8fd0\u884c"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    new-instance v1, Lcom/join/mgps/activity/DocumentManageActivity$b;

    .line 247
    .line 248
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DocumentManageActivity$b;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    new-instance v1, Lcom/join/mgps/activity/DocumentManageActivity$a;

    .line 256
    .line 257
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/DocumentManageActivity$a;-><init>(Lcom/join/mgps/activity/DocumentManageActivity;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/x;->a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 265
    .line 266
    return-void
.end method

.method archive_back()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->isFromEMU()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->g()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method dispopuwindow()V
    .locals 0

    return-void
.end method

.method downFinishToCopy(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->gameid:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->M4(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->d2(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Ljava/io/File;

    .line 32
    .line 33
    sget-object v3, Lcom/join/mgps/Util/z;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "papa91"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/16 v3, 0x2f

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v3, Ljava/io/File;

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_0

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 116
    .line 117
    .line 118
    :cond_0
    new-instance v4, Ljava/lang/String;

    .line 119
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Ljava/io/File;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_1

    .line 162
    .line 163
    return-void

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0, v4}, Lcom/join/mgps/Util/o0;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveCover()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v5, ".png"

    .line 208
    .line 209
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {p0, v1, v2, v3}, Lcom/join/mgps/activity/DocumentManageActivity;->downLodingImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    if-eqz v0, :cond_2

    .line 220
    .line 221
    new-instance v0, Ljava/io/File;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v4}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DocumentManageActivity;->updateStatu(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method downLodingImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageUrl",
            "filePath",
            "fileName"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance p3, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 46
    .line 47
    .line 48
    new-instance p2, Ljava/net/URL;

    .line 49
    .line 50
    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 58
    .line 59
    const/16 p2, 0x1388

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 62
    .line 63
    .line 64
    const-string p2, "GET"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p2, 0x1

    .line 70
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const/16 v0, 0xc8

    .line 78
    .line 79
    if-ne p2, v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Ljava/io/FileOutputStream;

    .line 86
    .line 87
    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    const/16 v0, 0x400

    .line 91
    .line 92
    new-array v0, v0, [B

    .line 93
    .line 94
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/4 v2, -0x1

    .line 99
    if-eq v1, v2, :cond_2

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-static {p3}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_0
    move-exception p1

    .line 124
    move-object v0, p3

    .line 125
    goto :goto_1

    .line 126
    :catch_1
    move-exception p1

    .line 127
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_2
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_2
    return-void
.end method

.method getNum()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->getArchiveCouldArgs()Lcom/join/mgps/dto/ArchiveColudArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rpcClient:Lcom/join/mgps/rpc/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveColudArgs;->getArgs()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/d;->i(Ljava/util/Map;)Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 16
    .line 17
    if-eqz v0, :cond_10

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x258

    .line 24
    .line 25
    if-ne v0, v1, :cond_10

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sput-boolean v1, Lcom/MApplication;->Q:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/MApplication;->R:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getPid()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sput v0, Lcom/MApplication;->S:I

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->getShowTitle()V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getHasNoComment()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ne v0, v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->showRedPoint()V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getArchiveCoin()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getVipLink()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->gameid:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const/4 v2, 0x0

    .line 137
    if-eqz v0, :cond_f

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {v3, v4}, Lcom/join/mgps/Util/o3;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iput-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->recordRoms:Ljava/util/List;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v4, "31"

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_9

    .line 164
    .line 165
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->recordRoms:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    const/4 v4, 0x0

    .line 172
    const/4 v5, 0x0

    .line 173
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const-string v7, "_v2"

    .line 178
    .line 179
    if-eqz v6, :cond_3

    .line 180
    .line 181
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    .line 186
    .line 187
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_2

    .line 196
    .line 197
    const/4 v4, 0x1

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    const/4 v5, 0x1

    .line 200
    goto :goto_0

    .line 201
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->recordRoms:Ljava/util/List;

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_9

    .line 212
    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Lcom/join/mgps/dto/RomArchived;

    .line 218
    .line 219
    if-eqz v5, :cond_6

    .line 220
    .line 221
    if-nez v4, :cond_6

    .line 222
    .line 223
    iput-boolean v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->marcketDownEnable:Z

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-static {v6}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eqz v6, :cond_5

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_6
    if-eqz v5, :cond_4

    .line 241
    .line 242
    if-eqz v4, :cond_4

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-static {v8}, Lcom/join/mgps/Util/w1;->a(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-eqz v8, :cond_7

    .line 253
    .line 254
    iput-boolean v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->marcketPGNEnable:Z

    .line 255
    .line 256
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    if-eqz v6, :cond_4

    .line 265
    .line 266
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_7
    invoke-virtual {v6}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    if-eqz v6, :cond_8

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v3, "33"

    .line 290
    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_d

    .line 296
    .line 297
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->recordRoms:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const-wide/16 v3, 0x0

    .line 304
    .line 305
    const/4 v5, 0x0

    .line 306
    move-wide v6, v3

    .line 307
    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-eqz v8, :cond_c

    .line 312
    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    check-cast v8, Lcom/join/mgps/dto/RomArchived;

    .line 318
    .line 319
    invoke-virtual {v8}, Lcom/join/mgps/dto/RomArchived;->getArchivedTime()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    const-string v10, "MM\u6708dd\u65e5 HH:mm"

    .line 324
    .line 325
    invoke-static {v9, v10}, Lcom/join/mgps/activity/DocumentManageActivity;->date2TimeStamp(Ljava/lang/String;Ljava/lang/String;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v9

    .line 329
    cmp-long v11, v6, v3

    .line 330
    .line 331
    if-nez v11, :cond_b

    .line 332
    .line 333
    move-object v5, v8

    .line 334
    move-wide v6, v9

    .line 335
    :cond_b
    cmp-long v11, v6, v9

    .line 336
    .line 337
    if-lez v11, :cond_a

    .line 338
    .line 339
    move-object v5, v8

    .line 340
    move-wide v6, v9

    .line 341
    goto :goto_2

    .line 342
    :cond_c
    if-eqz v5, :cond_d

    .line 343
    .line 344
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getFileName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const-string v3, "vba"

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_d

    .line 355
    .line 356
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/DocumentManageActivity;->setIsVBA(Z)V

    .line 357
    .line 358
    .line 359
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->recordRoms:Ljava/util/List;

    .line 360
    .line 361
    if-eqz v0, :cond_e

    .line 362
    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->upNum(I)V

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_e
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DocumentManageActivity;->upNum(I)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_f
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/DocumentManageActivity;->upNum(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    .line 382
    .line 383
    :cond_10
    :goto_3
    return-void
.end method

.method getShowTitle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShop:Lcom/join/mgps/fragment/b4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/fragment/b4;->M()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public hideAllFragment(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentTransaction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myArch:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localFragment:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShop:Lcom/join/mgps/fragment/b4;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->myShopbuy:Lcom/join/mgps/fragment/b4;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 27
    .line 28
    .line 29
    :cond_3
    return-void
.end method

.method hideRedPoint()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->messagebadge1:Lq/rorbin/badgeview/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->hide(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public isFromEMU()Z
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/activity/DocumentManageActivity;->from:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method ll_manage()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_manage:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u6279\u91cf\u6a21\u5f0f"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "com.join.mgps.activity.joinManage"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->dispopuwindow()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/b;->j(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->quitReceive:Lcom/join/mgps/activity/DocumentManageActivity$QuitReceive;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->isFromEMU()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/i;->g()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->initListener()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->showTyep:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->s:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->s:Z

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method rb_buy()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->dispopuwindow()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_buy:Landroid/widget/RadioButton;

    .line 66
    .line 67
    const v2, 0x7f0800d4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_buy:Landroid/widget/RadioButton;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const v3, 0x7f060503

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->setTypeFragment(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->hideRedPoint()V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getHasNoComment()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/4 v1, 0x1

    .line 116
    if-ne v0, v1, :cond_3

    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->setHasNoComment(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_1
    return-void
.end method

.method rb_colud()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->dispopuwindow()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 65
    .line 66
    const v2, 0x7f0800d4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const v3, 0x7f060503

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->setTypeFragment(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_1
    return-void
.end method

.method rb_local()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->dispopuwindow()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 22
    .line 23
    const v2, 0x7f0800d4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const v3, 0x7f060503

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->setTypeFragment(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method rb_remoned()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->dispopuwindow()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 43
    .line 44
    const v2, 0x7f0800d4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const v3, 0x7f060503

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->setTypeFragment(I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method recvedDownData(Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.downCloud"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->isActivityVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 12
    .line 13
    const-string v1, "downCloud"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->listDataBeans:Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v1, 0x3

    .line 65
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    move-object v3, v1

    .line 79
    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v3, "1/"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, "K"

    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v2, "0"

    .line 132
    .line 133
    invoke-virtual {v1, p1, v2, v0}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method recvedDownDatav2(Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.cloud.downCloud.all"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->isActivityVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "downClouds"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "1/"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v3, "0K"

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v0, v1, v3, v4}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 54
    .line 55
    .line 56
    iput v4, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumberNow:I

    .line 57
    .line 58
    iget v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/16 v2, 0x64

    .line 84
    .line 85
    iget v4, p0, Lcom/join/mgps/activity/DocumentManageActivity;->downNumber:I

    .line 86
    .line 87
    div-int/2addr v2, v4

    .line 88
    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/dialog/x;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/join/mgps/dto/CloudListDataBean;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->listDataBeans:Ljava/util/Map;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v2, Lcom/join/mgps/Util/z;->h:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFileName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setArchiveFilePath(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v3, Ljava/io/File;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFilePath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const/4 v1, 0x3

    .line 178
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lcom/github/snowdream/android/app/downloader/c;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getArchiveFile()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v0}, Lcom/join/mgps/dto/CloudListDataBean;->getFileSize()J

    .line 188
    .line 189
    .line 190
    move-result-wide v7

    .line 191
    move-object v3, v1

    .line 192
    invoke-direct/range {v3 .. v8}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 196
    .line 197
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method

.method rl_myarchive()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveOpen:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_myarchive_open:Landroid/widget/ImageView;

    .line 10
    .line 11
    const v1, 0x7f0800dc

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveOpen:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->dispopuwindow()V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 50
    .line 51
    const v3, 0x7f0800d4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const v4, 0x7f060503

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->setTypeFragment(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_myarchive_open:Landroid/widget/ImageView;

    .line 77
    .line 78
    const v1, 0x7f0800d6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_local:Landroid/widget/RadioButton;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_colud:Landroid/widget/RadioButton;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iput-boolean v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveOpen:Z

    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method rl_shop()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->is_llManage:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "\u65e0\u7f51\u7edc\u94fe\u63a5"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveShop:Z

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_shop_open:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v3, 0x7f0800dc

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rg_myshop:Landroid/widget/RadioGroup;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveShop:Z

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->hideRedPoint()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->HideRadioButtonBg()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rg_myshop:Landroid/widget/RadioGroup;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->ll_manage:Landroid/widget/LinearLayout;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->dispopuwindow()V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->showPopuwindow(I)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_shop_open:Landroid/widget/ImageView;

    .line 73
    .line 74
    const v4, 0x7f0800d6

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 81
    .line 82
    const v5, 0x7f0800d4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rb_remoned:Landroid/widget/RadioButton;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const v6, 0x7f060503

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/DocumentManageActivity;->setTypeFragment(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getHasNoComment()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-ne v0, v1, :cond_2

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/join/mgps/activity/DocumentManageActivity;->showRedPoint()V

    .line 130
    .line 131
    .line 132
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->iv_shop_open:Landroid/widget/ImageView;

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->rg_myshop:Landroid/widget/RadioGroup;

    .line 138
    .line 139
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iput-boolean v3, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isArchiveShop:Z

    .line 143
    .line 144
    :cond_3
    :goto_0
    return-void
.end method

.method public setIsVBA(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVBA"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->isVBA:Z

    .line 2
    .line 3
    return-void
.end method

.method showDialogDowning()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.wufun.cloud.showDownDialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->progressDialogForDown:Lcom/join/mgps/dialog/x;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method showPopuwindow(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method showRedBroadcast(Lcom/join/mgps/dto/ArchiveNumDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numDataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method showRedPoint()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lq/rorbin/badgeview/QBadgeView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lq/rorbin/badgeview/QBadgeView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_red:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lq/rorbin/badgeview/QBadgeView;->n(Landroid/view/View;)Lq/rorbin/badgeview/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->g(I)Lq/rorbin/badgeview/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/high16 v2, 0x40800000    # 4.0f

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-interface {v0, v2, v3}, Lq/rorbin/badgeview/a;->k(FZ)Lq/rorbin/badgeview/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/high16 v2, -0x10000

    .line 27
    .line 28
    invoke-interface {v0, v2}, Lq/rorbin/badgeview/a;->d(I)Lq/rorbin/badgeview/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const v3, 0x7f07133d

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-float v2, v2

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {v0, v2, v3}, Lq/rorbin/badgeview/a;->w(FZ)Lq/rorbin/badgeview/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const v2, 0x800055

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2}, Lq/rorbin/badgeview/a;->u(I)Lq/rorbin/badgeview/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0, v1}, Lq/rorbin/badgeview/a;->s(I)Lq/rorbin/badgeview/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity;->messagebadge1:Lq/rorbin/badgeview/a;

    .line 61
    .line 62
    return-void
.end method

.method upNum(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "localnum"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u4e2a"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->simdw:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getBgImg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_myarchive_size:Landroid/widget/TextView;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity;->tv_shop_size:Landroid/widget/TextView;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity;->numDataBean:Lcom/join/mgps/dto/ArchiveNumDataBean;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean;->getData_info()Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/join/mgps/dto/ArchiveNumDataBean$DataInfoBean;->getMarketNum()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method updateStatu(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/event/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/event/i;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudListDataBean;->setStatus(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/event/i;->f(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/event/i;->j(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
