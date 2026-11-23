.class public Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ExpandableListView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/beizi/ad/lance/ApkBean;

.field private m:I

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Lcom/beizi/ad/model/c$b$b;

.field private v:Lcom/beizi/ad/model/j;

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->m:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->n:I

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->g:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method private a()V
    .locals 13

    const-string v0, "isForbidOpenLandingPage"

    const-string v1, "lpOptimizeModule"

    const-string v2, "followTrackExt"

    const-string v3, "webDeepLink"

    const-string v4, "deeplinkUrl"

    const-string v5, "isDownload"

    const-string v6, "isCanJump"

    const-string v7, "landingPageUrl"

    const-string v8, "openList"

    const-string v9, "type"

    const-string v10, "apkBean"

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "data"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/beizi/ad/lance/ApkBean;

    iput-object v10, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    .line 5
    :cond_1
    invoke-virtual {v11, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6
    invoke-virtual {v11, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->n:I

    .line 7
    :cond_2
    invoke-virtual {v11, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 8
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->o:Ljava/util/List;

    .line 9
    :cond_3
    invoke-virtual {v11, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 10
    invoke-virtual {v11, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->p:Ljava/lang/String;

    .line 11
    :cond_4
    invoke-virtual {v11, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    .line 12
    invoke-virtual {v11, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->q:Z

    .line 13
    :cond_5
    invoke-virtual {v11, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 14
    invoke-virtual {v11, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->r:Z

    .line 15
    :cond_6
    invoke-virtual {v11, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 16
    invoke-virtual {v11, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->s:Ljava/lang/String;

    .line 17
    :cond_7
    invoke-virtual {v11, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 18
    invoke-virtual {v11, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->t:I

    .line 19
    :cond_8
    invoke-virtual {v11, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 20
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/beizi/ad/model/c$b$b;

    iput-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->u:Lcom/beizi/ad/model/c$b$b;

    .line 21
    :cond_9
    invoke-virtual {v11, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 22
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/beizi/ad/model/j;

    iput-object v1, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->v:Lcom/beizi/ad/model/j;

    .line 23
    :cond_a
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 2
    :try_start_0
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_container_fl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a:Landroid/widget/FrameLayout;

    .line 3
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_close_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->e:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_icon_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->f:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_name_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->b:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_version_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->c:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_developer_tv:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->d:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_expand_lv:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->g:Landroid/widget/ExpandableListView;

    .line 11
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_download_container_ll:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->h:Landroid/widget/LinearLayout;

    .line 13
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_market_container_ll:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->i:Landroid/widget/LinearLayout;

    .line 15
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_market_cancel_tv:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->j:Landroid/widget/TextView;

    .line 17
    sget v0, Lcom/beizi/fusion/R$id;->beizi_download_dialog_market_confirm_tv:I

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->k:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->g:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;-><init>(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 7

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$2;-><init>(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$3;-><init>(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$4;-><init>(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$5;-><init>(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v0}, Lcom/beizi/ad/lance/ApkBean;->getAppIconURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    .line 15
    :try_start_1
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppIconURL()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$6;

    invoke-direct {v2, p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$6;-><init>(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    :catch_0
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v0}, Lcom/beizi/ad/lance/ApkBean;->getApkTittleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getApkTittleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v0}, Lcom/beizi/ad/lance/ApkBean;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7248\u672c\u53f7 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v0}, Lcom/beizi/ad/lance/ApkBean;->getAppDeveloper()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u53d1\u8005 \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v1, Lcom/beizi/ad/internal/download/b;

    invoke-direct {v1}, Lcom/beizi/ad/internal/download/b;-><init>()V

    const-string v2, "\u5e94\u7528\u6743\u9650"

    .line 24
    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->a(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v3, "text"

    const-string v4, "h5"

    if-nez v2, :cond_6

    .line 26
    :try_start_3
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->c(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v4}, Lcom/beizi/ad/internal/download/b;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_6
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 29
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->c(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v3}, Lcom/beizi/ad/internal/download/b;->b(Ljava/lang/String;)V

    .line 31
    :cond_7
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/beizi/ad/internal/download/b;

    invoke-direct {v1}, Lcom/beizi/ad/internal/download/b;-><init>()V

    const-string v2, "\u9690\u79c1\u534f\u8bae"

    .line 33
    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->a(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppPrivacyUrl()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v6, "http"

    if-nez v5, :cond_9

    .line 36
    :try_start_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 37
    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->c(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v4}, Lcom/beizi/ad/internal/download/b;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_8
    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->c(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v3}, Lcom/beizi/ad/internal/download/b;->b(Ljava/lang/String;)V

    .line 41
    :cond_9
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/beizi/ad/internal/download/b;

    invoke-direct {v1}, Lcom/beizi/ad/internal/download/b;-><init>()V

    const-string v2, "\u4ea7\u54c1\u529f\u80fd\u4ecb\u7ecd"

    .line 43
    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->a(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getAppintro()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 46
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 47
    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->c(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v4}, Lcom/beizi/ad/internal/download/b;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 49
    :cond_a
    invoke-virtual {v1, v2}, Lcom/beizi/ad/internal/download/b;->c(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v3}, Lcom/beizi/ad/internal/download/b;->b(Ljava/lang/String;)V

    .line 51
    :cond_b
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/beizi/ad/internal/download/a;

    invoke-direct {v1, p0, v0}, Lcom/beizi/ad/internal/download/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->g:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method static synthetic c(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v2}, Lcom/beizi/ad/lance/ApkBean;->getApkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apkBean"

    .line 10
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->l:Lcom/beizi/ad/lance/ApkBean;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/beizi/ad/DownloadService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "data"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->n:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->w:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->p:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_7

    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->p:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "http"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_7

    .line 29
    .line 30
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v1, Lcom/beizi/ad/v2/activity/BeiZiLandingPageActivity;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "isRedirectionCanJump"

    .line 43
    .line 44
    iget-boolean v3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->q:Z

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v2, "isDownload"

    .line 50
    .line 51
    iget-boolean v3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->r:Z

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->s:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    const-string v2, "webDeepLink"

    .line 65
    .line 66
    iget v3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->t:I

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    if-ne v3, v4, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v4, 0x0

    .line 73
    :goto_0
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const-string v2, "deeplinkUrl"

    .line 77
    .line 78
    iget-object v3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->s:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->p:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_4

    .line 90
    .line 91
    const-string v2, "landingPageUrl"

    .line 92
    .line 93
    iget-object v3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->p:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->u:Lcom/beizi/ad/model/c$b$b;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    const-string v3, "followTrackExt"

    .line 103
    .line 104
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object v2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->v:Lcom/beizi/ad/model/j;

    .line 108
    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    const-string v3, "lpOptimizeModule"

    .line 112
    .line 113
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    const-string v2, "data"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    const/high16 v1, 0x10000000

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/beizi/fusion/R$layout;->beizi_download_dialog:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->b()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->c()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
