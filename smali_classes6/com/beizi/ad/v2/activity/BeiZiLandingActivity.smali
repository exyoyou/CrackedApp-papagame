.class public Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:I

.field private N:Z

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Z

.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Lcom/beizi/ad/model/c$b$b;

.field private i:Z

.field private j:Z

.field private k:Lcom/beizi/ad/model/j;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:J

.field private x:Lcom/beizi/ad/internal/d/a;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->j:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    .line 9
    .line 10
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->q:I

    .line 11
    .line 12
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    .line 13
    .line 14
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    .line 15
    .line 16
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->t:I

    .line 17
    .line 18
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->u:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    .line 22
    .line 23
    return-void
.end method

.method private a()V
    .locals 4

    const-string v0, "deeplinkUrl"

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->x:Lcom/beizi/ad/internal/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->a(I)Lcom/beizi/ad/model/c$d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$d;->b()Lcom/beizi/ad/model/c$b;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->c()I

    move-result v1

    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->y:I

    .line 12
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->z:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->A:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->C:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->D:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->E:Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->F:Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->G:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->H:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->I:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->J:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->K:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->r()Lcom/beizi/ad/model/c$b$a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {v1}, Lcom/beizi/ad/model/c$b$a;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 25
    iput-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->c:Z

    .line 26
    :cond_3
    invoke-virtual {v1}, Lcom/beizi/ad/model/c$b$a;->b()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 27
    iput-boolean v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->L:Z

    .line 28
    :cond_4
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->i()Lcom/beizi/ad/model/c$b$b;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 29
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->x:Lcom/beizi/ad/internal/d/a;

    invoke-virtual {v1}, Lcom/beizi/ad/internal/d/a;->ah()Lcom/beizi/ad/model/j;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    .line 30
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->w()I

    move-result v1

    iput v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->O:I

    .line 31
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->P:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->Q:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->R:Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->S:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 55
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/beizi/ad/lance/a/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object v9, v4

    .line 57
    new-instance v3, Lcom/beizi/ad/lance/ApkBean;

    iget-object v6, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->D:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->A:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->A:Ljava/lang/String;

    iget-object v10, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->z:Ljava/lang/String;

    iget-object v11, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->C:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".fileprovider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    iget-object v14, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->E:Ljava/lang/String;

    iget-object v15, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->F:Ljava/lang/String;

    iget-object v4, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->G:Ljava/lang/String;

    iget-object v5, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->H:Ljava/lang/String;

    iget-object v0, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->I:Ljava/lang/String;

    iget-object v2, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->J:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->K:Ljava/lang/String;

    move-object/from16 v17, v5

    move-object v5, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    invoke-direct/range {v5 .. v20}, Lcom/beizi/ad/lance/ApkBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/ad/model/c$b$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {v3, v0}, Lcom/beizi/ad/lance/ApkBean;->setSendLocalBroadcast(Z)V

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "apkBean"

    .line 61
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "type"

    move/from16 v4, p2

    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "isCanJump"

    .line 63
    iget-boolean v5, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->c:Z

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "isDownload"

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h()Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v3, 0x2

    if-ne v4, v3, :cond_2

    .line 65
    iget-object v3, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    if-eqz v3, :cond_1

    const-string v4, "openList"

    .line 66
    invoke-virtual {v3}, Lcom/beizi/ad/model/c$b$b;->a()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const-string v3, "landingPageUrl"

    .line 68
    iget-object v4, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    iget-object v3, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "deeplinkUrl"

    .line 70
    iget-object v4, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-object v3, v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    if-eqz v3, :cond_4

    const-string v4, "lpOptimizeModule"

    .line 72
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_4
    const-string v3, "isForbidOpenLandingPage"

    .line 73
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "data"

    .line 75
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 36
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 37
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->f:Z

    if-eqz v0, :cond_0

    .line 38
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->f:Z

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/beizi/ad/internal/e/n;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object p1, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 41
    :cond_3
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->i:Z

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 43
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    if-eqz p1, :cond_4

    .line 46
    invoke-virtual {p1}, Lcom/beizi/ad/model/c$b$b;->h()Ljava/util/List;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/c$b$b;->o(Ljava/util/List;)V

    .line 48
    invoke-static {p1}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 49
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    invoke-virtual {p1}, Lcom/beizi/ad/model/c$b$b;->e()Ljava/util/List;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    invoke-virtual {v0, v2}, Lcom/beizi/ad/model/c$b$b;->l(Ljava/util/List;)V

    .line 51
    invoke-static {p1}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 52
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 53
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g:Z

    return p1
.end method

.method private b()V
    .locals 2

    .line 3
    :try_start_0
    sget v0, Lcom/beizi/fusion/R$id;->lp_web_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    .line 4
    sget v0, Lcom/beizi/fusion/R$id;->lp_close_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$1;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$1;-><init>(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget v0, Lcom/beizi/fusion/R$id;->lp_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->b:Landroid/widget/ProgressBar;

    .line 7
    sget v0, Lcom/beizi/fusion/R$id;->lp_mask_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->l:Landroid/view/View;

    .line 8
    sget v0, Lcom/beizi/fusion/R$id;->lp_dialog_container_rl:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->m:Landroid/widget/RelativeLayout;

    .line 9
    sget v0, Lcom/beizi/fusion/R$id;->lp_dialog_iv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->n:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->e()V

    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->c(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->T:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->T:Z

    .line 7
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v1}, Lcom/beizi/ad/model/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v2}, Lcom/beizi/ad/model/j;->a()I

    move-result v2

    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->o:Z

    if-nez v2, :cond_4

    return-void

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v2}, Lcom/beizi/ad/model/j;->c()I

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->l:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-ne v2, v0, :cond_5

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->l:Landroid/view/View;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$2;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$2;-><init>(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v0}, Lcom/beizi/ad/model/j;->d()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v0}, Lcom/beizi/ad/model/j;->e()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->q:I

    .line 16
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v0}, Lcom/beizi/ad/model/j;->f()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v0}, Lcom/beizi/ad/model/j;->g()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v0}, Lcom/beizi/ad/model/j;->h()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->t:I

    .line 19
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k:Lcom/beizi/ad/model/j;

    invoke-virtual {v0}, Lcom/beizi/ad/model/j;->i()I

    move-result v0

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->u:I

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->m:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->m:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$3;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$3;-><init>(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-static {p0}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v0

    new-instance v2, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$4;

    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$4;-><init>(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/beizi/ad/internal/e/h;->a(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    goto :goto_0

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->m:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 27
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/internal/c;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic d(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    return p0
.end method

.method private d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$5;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$5;-><init>(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/beizi/ad/internal/e/u;->a(Landroid/webkit/WebView;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/beizi/ad/lance/a/k;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$6;

    invoke-direct {v1, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$6;-><init>(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$7;

    invoke-direct {v1, p0, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity$7;-><init>(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/internal/c;->l()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic e(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->q:I

    return p0
.end method

.method private e()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->N:Z

    if-nez v2, :cond_3

    .line 3
    iget-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 4
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    .line 5
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    if-gt v2, v1, :cond_0

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-gtz v3, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_0

    .line 7
    :cond_0
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-ne v3, v1, :cond_2

    if-ne v2, v1, :cond_1

    .line 8
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_0

    .line 10
    :cond_1
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    if-lt v0, v1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    :cond_2
    :goto_0
    return-void

    .line 12
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 13
    iget-boolean v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->N:Z

    if-eqz v2, :cond_4

    .line 14
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_4
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    .line 16
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    if-gt v2, v1, :cond_5

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-gtz v3, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_1

    .line 18
    :cond_5
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-ne v3, v1, :cond_7

    if-ne v2, v1, :cond_6

    .line 19
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_7

    .line 20
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_1

    .line 21
    :cond_6
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    if-lt v0, v1, :cond_7

    .line 22
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    :cond_7
    :goto_1
    return-void

    .line 23
    :cond_8
    :try_start_2
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->i:Z

    .line 24
    iput-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->f:Z

    .line 25
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x10000000

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v5, "bzopen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 27
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.MAIN"

    .line 28
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.category.LAUNCHER"

    .line 30
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "flags"

    .line 31
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x2

    if-nez v5, :cond_b

    :try_start_3
    const-string v5, "0x"

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "0X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    .line 34
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 35
    :cond_a
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 36
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    :cond_b
    :goto_3
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "rect"

    .line 40
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_c

    :try_start_5
    const-string v4, ":"

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    array-length v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    .line 44
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 45
    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v7, v2, v1

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x3

    aget-object v2, v2, v8

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    invoke-virtual {v4, v5, v7, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v2

    .line 50
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    :cond_c
    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 52
    :cond_d
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    const-string v5, "hwpps://landingpage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 53
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 54
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 57
    :cond_e
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 58
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 61
    :cond_f
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v2, 0x30008000

    .line 62
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    :goto_5
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    if-eqz v2, :cond_10

    .line 65
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b$b;->h()Ljava/util/List;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/c$b$b;->o(Ljava/util/List;)V

    .line 67
    invoke-static {v2}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 68
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b$b;->e()Ljava/util/List;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/c$b$b;->l(Ljava/util/List;)V

    .line 70
    invoke-static {v2}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 71
    :cond_10
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    .line 72
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    if-gt v2, v1, :cond_11

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-gtz v3, :cond_11

    goto :goto_6

    .line 73
    :cond_11
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-ne v3, v1, :cond_17

    if-ne v2, v1, :cond_12

    .line 74
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_17

    goto :goto_7

    .line 75
    :cond_12
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    if-lt v0, v1, :cond_17

    goto :goto_8

    :catchall_0
    move-exception v2

    .line 76
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    if-eqz v2, :cond_13

    .line 78
    invoke-virtual {v2}, Lcom/beizi/ad/model/c$b$b;->g()Ljava/util/List;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/c$b$b;->n(Ljava/util/List;)V

    .line 80
    invoke-static {v2}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 81
    :cond_13
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->N:Z

    if-eqz v0, :cond_14

    .line 82
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->j()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 83
    :cond_14
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    .line 84
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    if-gt v2, v1, :cond_15

    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-gtz v3, :cond_15

    .line 85
    :goto_6
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_9

    .line 86
    :cond_15
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-ne v3, v1, :cond_17

    if-ne v2, v1, :cond_16

    .line 87
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_17

    .line 88
    :goto_7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_9

    .line 89
    :cond_16
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    if-lt v0, v1, :cond_17

    .line 90
    :goto_8
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    :cond_17
    :goto_9
    return-void

    :catchall_1
    move-exception v0

    .line 91
    iget v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->v:I

    .line 92
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->p:I

    if-gt v3, v1, :cond_19

    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-lez v4, :cond_18

    goto :goto_a

    .line 93
    :cond_18
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_b

    .line 94
    :cond_19
    :goto_a
    iget v4, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->r:I

    if-ne v4, v1, :cond_1b

    if-ne v3, v1, :cond_1a

    .line 95
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    add-int/2addr v3, v1

    if-lt v2, v3, :cond_1b

    .line 96
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    goto :goto_b

    .line 97
    :cond_1a
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->s:I

    if-lt v2, v1, :cond_1b

    .line 98
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V

    .line 99
    :cond_1b
    :goto_b
    throw v0
.end method

.method private f()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->c()V

    return-void
.end method

.method static synthetic g(Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->b:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->m:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->z:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->F:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->E:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->I:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->K:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    return v1

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->H:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->G:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    return v1

    .line 64
    :cond_5
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->y:I

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    if-eq v0, v2, :cond_7

    .line 68
    .line 69
    const/4 v2, 0x5

    .line 70
    if-ne v0, v2, :cond_6

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    return v1

    .line 74
    :cond_7
    :goto_0
    const/4 v0, 0x1

    .line 75
    return v0
.end method

.method private i()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->y:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->D:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->D:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "http"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return v3

    .line 28
    :cond_1
    return v2

    .line 29
    :cond_2
    const/4 v1, 0x5

    .line 30
    if-ne v0, v1, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->D:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    return v3

    .line 41
    :cond_3
    return v2

    .line 42
    :cond_4
    return v3
.end method

.method private j()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->y:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne v0, v2, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->A:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/beizi/ad/lance/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->A:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/beizi/ad/lance/a/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b$b;->a()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$b$b;->a(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p0, v0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void

    .line 56
    :cond_3
    const/4 v3, 0x5

    .line 57
    if-ne v0, v3, :cond_a

    .line 58
    .line 59
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->B:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->B:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p0, v0}, Lcom/beizi/ad/lance/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->B:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p0, v0}, Lcom/beizi/ad/lance/a/i;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->D:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p0, v0}, Lcom/beizi/ad/lance/a/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->L:Z

    .line 90
    .line 91
    if-nez v0, :cond_6

    .line 92
    .line 93
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->M:I

    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-direct {p0, p0, v2}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a(Landroid/content/Context;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->D:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {p0, v0, p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b$b;->a()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$b$b;->a(Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    return-void

    .line 124
    :cond_8
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k()V

    .line 125
    .line 126
    .line 127
    :goto_2
    return-void

    .line 128
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :cond_a
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->O:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->P:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->Q:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->P:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->Q:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->R:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0, v0, v2, v3}, Lcom/beizi/ad/lance/a/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b$b;->k()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$b$b;->r(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->S:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->S:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p0, v0}, Lcom/beizi/ad/lance/a/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b$b;->k()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$b$b;->r(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->m:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a:Landroid/webkit/WebView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/beizi/fusion/R$layout;->activtiy_beizi_landingpage:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/beizi/ad/internal/d/a;->b:Lcom/beizi/ad/internal/d/a;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->x:Lcom/beizi/ad/internal/d/a;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->a()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->b()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->N:Z

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->e()V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->N:Z

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->j:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->i:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/beizi/ad/model/c$b$b;->f()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/beizi/ad/model/c$b$b;->j()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/c$b$b;->q(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->t:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    iget-wide v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->w:J

    .line 52
    .line 53
    sub-long/2addr v1, v3

    .line 54
    iget v3, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->u:I

    .line 55
    .line 56
    int-to-long v3, v3

    .line 57
    cmp-long v5, v1, v3

    .line 58
    .line 59
    if-gez v5, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->e()V

    .line 62
    .line 63
    .line 64
    :cond_1
    const-wide/16 v1, 0x0

    .line 65
    .line 66
    iput-wide v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->w:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :goto_0
    iput-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->j:Z

    .line 74
    .line 75
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->w:J

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->i:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/beizi/ad/model/c$b$b;->f()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->h:Lcom/beizi/ad/model/c$b$b;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/c$b$b;->m(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/beizi/ad/internal/e/k;->a(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/beizi/ad/v2/activity/BeiZiLandingActivity;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method
