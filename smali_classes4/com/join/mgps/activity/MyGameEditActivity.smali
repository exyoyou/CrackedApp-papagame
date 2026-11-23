.class public Lcom/join/mgps/activity/MyGameEditActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyGameEditActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0085
.end annotation


# instance fields
.field adView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private delGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field dialog:Landroid/app/Dialog;

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field editGameNumber:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field h5Name:Ljava/lang/String;

.field h5Selected:Z

.field private isLoadingTopAd:Z

.field isSelector:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field listView:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/r4;

.field private mDialog:Lcom/join/mgps/dialog/f1;

.field noneLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;

.field topAd:Lcom/join/mgps/dto/RecomDatabean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h5Selected:Z

    .line 6
    .line 7
    const-string v0, "\u5728\u7ebf\u73a9H5"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->h5Name:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private saveGameTopAd(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recomDatabean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gameTopAd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setIsSelector()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mAdapter:Lcom/join/mgps/adapter/r4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->isSelector:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mAdapter:Lcom/join/mgps/adapter/r4;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/join/mgps/adapter/r4;->d:Ljava/util/HashMap;

    .line 22
    .line 23
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v1, v3, :cond_2

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->isSelector:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mAdapter:Lcom/join/mgps/adapter/r4;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/MyGameEditActivity;->setDelTotal(Ljava/util/HashMap;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private showNoData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->noneLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->listView:Landroid/widget/ListView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method adViewDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->adView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->listView:Landroid/widget/ListView;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->adView:Landroid/view/View;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->topAd:Lcom/join/mgps/dto/RecomDatabean;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lq5/f;->T(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->showNoData()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->checkRefreshAd()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->getMyGameTopAd()V

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v0, Lcom/join/mgps/adapter/r4;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/r4;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mAdapter:Lcom/join/mgps/adapter/r4;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->listView:Landroid/widget/ListView;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 54
    .line 55
    const v1, 0x7f120365

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x2

    .line 63
    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const-string v4, "0"

    .line 67
    .line 68
    aput-object v4, v2, v3

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    const-string v4, ""

    .line 72
    .line 73
    aput-object v4, v2, v3

    .line 74
    .line 75
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/join/mgps/dialog/f1;

    .line 83
    .line 84
    const v1, 0x7f1301b2

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/f1;-><init>(Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mDialog:Lcom/join/mgps/dialog/f1;

    .line 91
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->delGameList:Ljava/util/List;

    .line 98
    .line 99
    return-void
.end method

.method checkRefreshAd()Z
    .locals 3

    .line 1
    const-string v0, "\u5168\u90e8"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    const-string v1, "\u5168\u90e8\u6e38\u620f"

    .line 12
    .line 13
    const-string v2, "\u7f51\u6e38"

    .line 14
    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method destroyDeleteDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

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
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method editAll()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->setIsSelector()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method editCancel()V
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

.method editGameNumber()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->showDialog()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyGameEditActivity;->removeGame(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method getMyGameTopAd()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->gameTopAd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, ""

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/p;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-class v3, Lcom/join/mgps/dto/RecomDatabean;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/join/mgps/dto/RecomDatabean;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyGameEditActivity;->notifyAdChanged(Lcom/join/mgps/dto/RecomDatabean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 33
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->isLoadingTopAd:Z

    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->isLoadingTopAd:Z

    .line 40
    .line 41
    throw v1
.end method

.method hideDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method isSelector()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->setIsSelector()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method notifyAdChanged(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recomDatabean"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->topAd:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->topAd:Lcom/join/mgps/dto/RecomDatabean;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->hideGameTopAd()Lorg/androidannotations/api/sharedpreferences/d;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->topAd:Lcom/join/mgps/dto/RecomDatabean;

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "h5"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->topAd:Lcom/join/mgps/dto/RecomDatabean;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getTitle()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getLabel()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "0.1"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void

    .line 97
    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mAdapter:Lcom/join/mgps/adapter/r4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/adapter/r4;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->delGameList:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->delGameList:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_1
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_1

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 60
    .line 61
    const v2, 0x7f120365

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x2

    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    .line 71
    const-string v4, "0"

    .line 72
    .line 73
    aput-object v4, v3, v1

    .line 74
    .line 75
    const-string v4, ""

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    aput-object v4, v3, v5

    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mAdapter:Lcom/join/mgps/adapter/r4;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_2

    .line 109
    .line 110
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->showNoData()V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->isSelector:Landroid/widget/ImageView;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->delGameList:Ljava/util/List;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->showDialog()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    if-ge v0, v1, :cond_0

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyGameEditActivity;->removeGame(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->hideDialog()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->notifyDataSetChanged()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->hideDialog()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->notifyDataSetChanged()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method removeGame(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mAdapter:Lcom/join/mgps/adapter/r4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/adapter/r4;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge p1, v3, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_0
    const v3, 0x7f120366

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const/4 v4, 0x1

    .line 87
    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v5, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    aput-object v5, v4, v1

    .line 96
    .line 97
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/MyGameEditActivity;->setDialogTextView(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-eqz v3, :cond_1

    .line 111
    .line 112
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "h5"

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_1

    .line 125
    .line 126
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->hideGameTopAd()Lorg/androidannotations/api/sharedpreferences/d;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->delGameList:Ljava/util/List;

    .line 138
    .line 139
    iget-object v4, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 140
    .line 141
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    invoke-static {v3}, Lcom/php25/PDownload/d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 153
    .line 154
    .line 155
    iget-object v3, p0, Lcom/join/mgps/activity/MyGameEditActivity;->delGameList:Ljava/util/List;

    .line 156
    .line 157
    iget-object v4, p0, Lcom/join/mgps/activity/MyGameEditActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    const-wide/16 v3, 0x3e8

    .line 163
    .line 164
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->notifyDataSetChanged()V

    .line 179
    .line 180
    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyGameEditActivity;->hideDialog()V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public setDelTotal(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    iget-object v5, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-ge v3, v5, :cond_1

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    iget-object v5, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 47
    .line 48
    mul-double v5, v5, v7

    .line 49
    .line 50
    mul-double v5, v5, v7

    .line 51
    .line 52
    double-to-long v5, v5

    .line 53
    add-long/2addr v0, v5

    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string p1, ""

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    const v5, 0x7f120365

    .line 63
    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-array v3, v3, [Ljava/lang/Object;

    .line 85
    .line 86
    const-string v5, "0"

    .line 87
    .line 88
    aput-object v5, v3, v2

    .line 89
    .line 90
    aput-object p1, v3, v6

    .line 91
    .line 92
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v7, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 101
    .line 102
    invoke-virtual {v7, v6}, Landroid/view/View;->setClickable(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v7, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 106
    .line 107
    invoke-virtual {v7, v6}, Landroid/view/View;->setSelected(Z)V

    .line 108
    .line 109
    .line 110
    iget-object v7, p0, Lcom/join/mgps/activity/MyGameEditActivity;->editGameNumber:Landroid/widget/Button;

    .line 111
    .line 112
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    new-array v3, v3, [Ljava/lang/Object;

    .line 117
    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    aput-object p1, v3, v2

    .line 134
    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v8, "\uff0c"

    .line 141
    .line 142
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->Z2(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    aput-object p1, v3, v6

    .line 157
    .line 158
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->games:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-ne v4, p1, :cond_3

    .line 172
    .line 173
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->isSelector:Landroid/widget/ImageView;

    .line 174
    .line 175
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->isSelector:Landroid/widget/ImageView;

    .line 180
    .line 181
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 182
    .line 183
    .line 184
    :goto_2
    return-void
.end method

.method setDialogTextView(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mDialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/f1;->a(Ljava/lang/String;)Landroid/app/Dialog;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method setNetwork()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method setOnGoTopAd(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "circle"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/MyGameEditActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/MyGameEditActivity$a;-><init>(Lcom/join/mgps/activity/MyGameEditActivity;Landroid/widget/ImageView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method showDeleteDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    const v2, 0x7f1301b0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 16
    .line 17
    const v1, 0x7f0d0186

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 24
    .line 25
    const v1, 0x7f0a04b8

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/Button;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 35
    .line 36
    const v2, 0x7f0a1762

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 46
    .line 47
    const v3, 0x7f0a04bb

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v3, "\u5220\u9664\u6e38\u620f"

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u609f\u996d\u5728\u7ebf\u73a9\uff1f"

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "\u5220\u9664"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 72
    .line 73
    const v2, 0x7f0a04b2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/Button;

    .line 81
    .line 82
    new-instance v2, Lcom/join/mgps/activity/MyGameEditActivity$b;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/MyGameEditActivity$b;-><init>(Lcom/join/mgps/activity/MyGameEditActivity;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/join/mgps/activity/MyGameEditActivity$c;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyGameEditActivity$c;-><init>(Lcom/join/mgps/activity/MyGameEditActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void
.end method

.method showDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mDialog:Lcom/join/mgps/dialog/f1;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MyGameEditActivity;->mDialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
