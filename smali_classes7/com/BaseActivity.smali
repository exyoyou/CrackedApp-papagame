.class public Lcom/BaseActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/BaseActivity$BroadcasExt;
    }
.end annotation


# instance fields
.field broadcasExt:Lcom/BaseActivity$BroadcasExt;

.field private databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

.field fullScreenCfg:I

.field private fullScreenFlag:Z

.field private hideHandler:Landroid/os/Handler;

.field private hideRunnable:Ljava/lang/Runnable;

.field private lastClickTime:J

.field private loading:Lcom/join/android/app/common/dialog/e;

.field private mHandler:Landroid/os/Handler;

.field protected mTintManager:Lcom/join/android/app/common/manager/b;

.field protected uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/BaseActivity;->lastClickTime:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    .line 13
    .line 14
    new-instance v1, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iput v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    .line 22
    .line 23
    return-void
.end method

.method private clearHiderListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public static synthetic j(Lcom/BaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;->lambda$onResume$0()V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/u;->e(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setTranslucentStatus(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12
    .line 13
    const/high16 v2, 0x4000000

    .line 14
    .line 15
    or-int/2addr p1, v2

    .line 16
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 20
    .line 21
    const v2, -0x4000001

    .line 22
    .line 23
    .line 24
    and-int/2addr p1, v2

    .line 25
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private updateHider()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/join/mgps/wrapper/a;->b:I

    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    :goto_0
    iput v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    .line 23
    .line 24
    :goto_1
    iget v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    new-instance v0, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, Lcom/BaseActivity$a;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/BaseActivity$a;-><init>(Lcom/BaseActivity;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 41
    .line 42
    const v0, 0x1020002

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Lcom/BaseActivity;->fullScreenCfg:I

    .line 50
    .line 51
    invoke-static {p0, v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->a(Landroid/app/Activity;Landroid/view/View;I)Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->e()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 61
    .line 62
    new-instance v1, Lcom/BaseActivity$b;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/BaseActivity$b;-><init>(Lcom/BaseActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->d(Lcom/join/mgps/wrapper/SystemUiHider/a$b;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public createDB(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dbName"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lq5/e;->d(Landroid/content/Context;)Lq5/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/e;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public dismissLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public getHelper()Lcom/join/android/app/common/db/DatabaseHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lq5/e;->d(Landroid/content/Context;)Lq5/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lq5/e;->c()Lcom/join/android/app/common/db/DatabaseHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->databaseHelper:Lcom/join/android/app/common/db/DatabaseHelper;

    .line 16
    .line 17
    return-object v0
.end method

.method protected hideUiDelayed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/BaseActivity;->fullScreenCfg:I

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/BaseActivity;->hideHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/BaseActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    const-wide/16 v2, 0xbb8

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    :cond_0
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
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/BaseActivity$BroadcasExt;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/BaseActivity$BroadcasExt;-><init>(Lcom/BaseActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/BaseActivity;->broadcasExt:Lcom/BaseActivity$BroadcasExt;

    .line 10
    .line 11
    new-instance p1, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lorg/androidannotations/api/c;->n(Landroid/content/Context;)Lorg/androidannotations/api/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lorg/androidannotations/api/c;->i(Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.appfinish"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/BaseActivity;->broadcasExt:Lcom/BaseActivity$BroadcasExt;

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/BaseActivity;->broadcasExt:Lcom/BaseActivity$BroadcasExt;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lorg/androidannotations/api/c;->n(Landroid/content/Context;)Lorg/androidannotations/api/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lorg/androidannotations/api/c;->p(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/BaseActivity;->clearHiderListener()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/b1;->a(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroid/os/Handler;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance v1, Lcom/a;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/a;-><init>(Lcom/BaseActivity;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v2, 0x1f4

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lorg/androidannotations/api/c;->n(Landroid/content/Context;)Lorg/androidannotations/api/c;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Lorg/androidannotations/api/c;->s(Landroid/app/Activity;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/BaseActivity;->updateHider()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/BaseActivity;->dismissLoading()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setSystemUiHide(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hide"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/BaseActivity;->updateHider()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/BaseActivity;->fullScreenFlag:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->c()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/BaseActivity;->uiHider:Lcom/join/mgps/wrapper/SystemUiHider/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->b()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/wrapper/SystemUiHider/a;->f()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/android/app/common/dialog/e;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/e;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/BaseActivity;->loading:Lcom/join/android/app/common/dialog/e;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/e;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
