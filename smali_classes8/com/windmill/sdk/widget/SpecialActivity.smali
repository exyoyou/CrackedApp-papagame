.class public Lcom/windmill/sdk/widget/SpecialActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/widget/SpecialActivity$a;
    }
.end annotation


# static fields
.field private static d:Lcom/windmill/sdk/widget/SpecialActivity$a;


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field private b:Ljava/lang/String;

.field private c:Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->e:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->f:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->g:Z

    .line 22
    .line 23
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/widget/SpecialActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/windmill/sdk/widget/SpecialActivity$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSplashListener"
        }
    .end annotation

    .line 2
    sput-object p0, Lcom/windmill/sdk/widget/SpecialActivity;->d:Lcom/windmill/sdk/widget/SpecialActivity$a;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->g:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/windmill/sdk/widget/SpecialActivity;->d:Lcom/windmill/sdk/widget/SpecialActivity$a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/windmill/sdk/widget/SpecialActivity$a;->a()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 16
    .line 17
    .line 18
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
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget p1, Lcom/windmill/sdk/R$style;->tobid_page:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "adnName"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->e:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p1, Lcom/windmill/sdk/widget/SpecialActivity$1;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/windmill/sdk/widget/SpecialActivity$1;-><init>(Lcom/windmill/sdk/widget/SpecialActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->c:Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->g:Z

    .line 30
    .line 31
    new-instance p1, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->a:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->a:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->c:Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "----adnName: GDT kuaishou"

    .line 49
    .line 50
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->a:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-static {v0}, Lcom/windmill/sdk/utils/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->a:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/windmill/sdk/widget/SpecialActivity;->a:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/windmill/sdk/widget/SpecialActivity;->d:Lcom/windmill/sdk/widget/SpecialActivity$a;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sput-object v2, Lcom/windmill/sdk/widget/SpecialActivity;->d:Lcom/windmill/sdk/widget/SpecialActivity$a;

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->aPageVGroup:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sput-object v2, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->aPageVGroup:Landroid/widget/FrameLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    :catch_0
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget v0, Lcom/windmill/sdk/R$style;->tobid_page:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/windmill/sdk/widget/SpecialActivity;->d:Lcom/windmill/sdk/widget/SpecialActivity$a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->f:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/windmill/sdk/widget/SpecialActivity;->a:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/widget/SpecialActivity$a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/SpecialActivity;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    :catch_0
    :cond_0
    return-void
.end method
