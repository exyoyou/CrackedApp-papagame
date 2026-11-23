.class public Lcom/join/mgps/activity/AppDownFinishActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AppDownFinishActivity$e;,
        Lcom/join/mgps/activity/AppDownFinishActivity$d;,
        Lcom/join/mgps/activity/AppDownFinishActivity$b;,
        Lcom/join/mgps/activity/AppDownFinishActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00ce
.end annotation


# instance fields
.field protected activityCloseEnterAnimation:I

.field protected activityCloseExitAnimation:I

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

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

.field mBarHideEnableObserver:Lcom/join/mgps/activity/AppDownFinishActivity$b;

.field private mCardAdapter:Lcom/join/mgps/activity/AppDownFinishActivity$e;

.field private mNavigationBarObserver:Landroid/database/ContentObserver;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->games:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$a;

    .line 12
    .line 13
    new-instance v1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$a;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Landroid/os/Handler;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 22
    .line 23
    return-void
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
    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mNavigationBarObserver:Landroid/database/ContentObserver;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

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
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x10100ae

    .line 17
    .line 18
    .line 19
    filled-new-array {v1}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const v3, 0x10100ba

    .line 40
    .line 41
    .line 42
    const v4, 0x10100bb

    .line 43
    .line 44
    .line 45
    filled-new-array {v3, v4}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->activityCloseEnterAnimation:I

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->activityCloseExitAnimation:I

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->games:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->games:Ljava/util/List;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->gameId:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AppDownFinishActivity$e;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 92
    .line 93
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->gameId:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lcom/join/mgps/activity/AppDownFinishActivity$d;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/AppDownFinishActivity$d;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Lcom/join/mgps/activity/AppDownFinishActivity$a;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, v1, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b(Lcom/join/mgps/activity/AppDownFinishActivity$d;)V

    .line 114
    .line 115
    .line 116
    const v0, 0x7f0a0949

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 142
    .line 143
    const/4 v1, 0x3

    .line 144
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->activityCloseEnterAnimation:I

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->activityCloseExitAnimation:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

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
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mBarHideEnableObserver:Lcom/join/mgps/activity/AppDownFinishActivity$b;

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
    iget-object v1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mNavigationBarObserver:Landroid/database/ContentObserver;

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
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
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "gameId"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->gameId:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->games:Ljava/util/List;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->gameId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->games:Ljava/util/List;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->gameId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->gameId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$d;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$d;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Lcom/join/mgps/activity/AppDownFinishActivity$a;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, v0, Lcom/join/mgps/activity/AppDownFinishActivity$d;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/AppDownFinishActivity$e;->b(Lcom/join/mgps/activity/AppDownFinishActivity$d;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mCardAdapter:Lcom/join/mgps/activity/AppDownFinishActivity$e;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/AppDownFinishActivity;->registerContentResolver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method registerContentResolver()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishActivity$b;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/AppDownFinishActivity$b;-><init>(Lcom/join/mgps/activity/AppDownFinishActivity;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mBarHideEnableObserver:Lcom/join/mgps/activity/AppDownFinishActivity$b;

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
    iget-object v3, p0, Lcom/join/mgps/activity/AppDownFinishActivity;->mBarHideEnableObserver:Lcom/join/mgps/activity/AppDownFinishActivity$b;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/activity/AppDownFinishActivity;->registerNavigationBarObserver()V

    .line 30
    .line 31
    .line 32
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
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

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
