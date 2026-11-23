.class public Lcom/join/mgps/activity/AppDownFinishDialogActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;,
        Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;,
        Lcom/join/mgps/activity/AppDownFinishDialogActivity$b;
    }
.end annotation


# static fields
.field public static final KEY_GAME_ID:Ljava/lang/String; = "_game_id"


# instance fields
.field gameId:Ljava/lang/String;

.field games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indicator:Lme/relex/circleindicator/CircleIndicator;

.field private mCardAdapter:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->games:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method private updateList()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "_game_id"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->gameId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->games:Ljava/util/List;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->gameId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->games:Ljava/util/List;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->gameId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->gameId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;-><init>(Lcom/join/mgps/activity/AppDownFinishDialogActivity;Lcom/join/mgps/activity/AppDownFinishDialogActivity$a;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, v1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->b(Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method initView()V
    .locals 2

    .line 1
    const v0, 0x7f0a1b84

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->games:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;-><init>(Lcom/join/mgps/activity/AppDownFinishDialogActivity;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 23
    .line 24
    const v0, 0x7f0a0949

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->updateList()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onAppDownFinishEvent(Lcom/join/mgps/event/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/event/u;->a()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d00ce

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->initView()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/AppDownFinishDialogActivity;->updateList()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
