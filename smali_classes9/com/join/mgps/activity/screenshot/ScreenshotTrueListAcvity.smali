.class public Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0816
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field client:Lcom/join/mgps/rpc/e;

.field context:Landroid/content/Context;

.field fromData:Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field listTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

.field private mPicChsDialog:Landroid/app/Dialog;

.field tableLayout:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field upload:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewpager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ChangIcon()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f130558

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 12
    .line 13
    const v1, 0x7f0d0211

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/16 v3, 0x50

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 58
    .line 59
    const v1, 0x7f0a0361

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/TextView;

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 74
    .line 75
    const v2, 0x7f0a1252

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 85
    .line 86
    const v3, 0x7f0a0282

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/widget/TextView;

    .line 94
    .line 95
    new-instance v3, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;

    .line 96
    .line 97
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$2;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$3;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$3;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$4;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$4;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPicChsDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)Lcom/join/mgps/Util/b2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method afterView()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->client:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->getTabdata()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method back()V
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

.method getTabdata()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->gameId:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getScreenShortListRequest(Ljava/lang/String;II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->client:Lcom/join/mgps/rpc/e;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->P0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->listTables:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->updateTable(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/join/mgps/Util/b2;->a(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method updateTable(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listTable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v1, v3, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;

    .line 19
    .line 20
    new-instance v4, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment_;

    .line 21
    .line 22
    invoke-direct {v4}, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment_;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v6, "gameId"

    .line 31
    .line 32
    iget-object v7, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->gameId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const-string v7, "typeId"

    .line 42
    .line 43
    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lcom/join/mgps/adapter/h0$a;

    .line 50
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getTitle()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v7, ""

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-direct {v5, v6, v4}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->fromData:Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;->getId()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-ne v4, v3, :cond_0

    .line 89
    .line 90
    move v2, v1

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance p1, Lcom/join/mgps/adapter/h0;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {p1, v1, v0}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->tableLayout:Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/SlidingTabLayoutScreenShort;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->viewpager:Landroidx/viewpager/widget/ViewPager;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method upload()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/b2;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity$1;-><init>(Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/Util/b2;-><init>(Landroid/app/Activity;Lcom/join/mgps/Util/b2$a;Z)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->mPhotoSelectUtils:Lcom/join/mgps/Util/b2;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity;->ChangIcon()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
