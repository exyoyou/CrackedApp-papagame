.class public Lcom/join/android/app/component/photoviewer/ImagePagerActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;,
        Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;
    }
.end annotation


# static fields
.field public static final EXTRA_IMAGE_INDEX:Ljava/lang/String; = "image_index"

.field public static final EXTRA_IMAGE_URLS:Ljava/lang/String; = "image_urls"

.field private static final STATE_POSITION:Ljava/lang/String; = "STATE_POSITION"


# instance fields
.field private indicator:Landroid/widget/TextView;

.field mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

.field myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

.field private pagerPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->initPopupWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->showAlbumPopupWindow(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Landroid/os/AsyncTask;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->getSaveImageTask()Landroid/os/AsyncTask;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->showToast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getSaveImageTask()Landroid/os/AsyncTask;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private initPopupWindow()V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0398

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 14
    .line 15
    const/4 v7, -0x1

    .line 16
    const/4 v8, -0x2

    .line 17
    move-object v3, v0

    .line 18
    move-object v4, p0

    .line 19
    move-object v5, p0

    .line 20
    invoke-direct/range {v3 .. v8}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/content/Context;Landroid/view/View;II)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 24
    .line 25
    new-instance v1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private showAlbumPopupWindow(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const p1, 0x7f0a0218

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->initPopupWindow()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 16
    .line 17
    const v1, 0x7f130545

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    neg-int v0, v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .line 42
    const/high16 v1, -0x3d480000    # -92.0f

    .line 43
    .line 44
    mul-float v0, v0, v1

    .line 45
    .line 46
    float-to-int v0, v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, p1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const v0, 0x3e99999a    # 0.3f

    .line 62
    .line 63
    .line 64
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$e;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
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
    const v0, 0x7f0d0397

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/BaseFragmentActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "image_index"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->pagerPosition:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "image_urls"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f0a11e1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 43
    .line 44
    new-instance v1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v1, p0, v3, v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0a0949

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    aput-object v3, v0, v2

    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    aput-object v2, v0, v1

    .line 94
    .line 95
    const v1, 0x7f12054f

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 108
    .line 109
    new-instance v1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;-><init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 115
    .line 116
    .line 117
    if-eqz p1, :cond_0

    .line 118
    .line 119
    const-string v0, "STATE_POSITION"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->pagerPosition:I

    .line 126
    .line 127
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 128
    .line 129
    iget v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->pagerPosition:I

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->initPopupWindow()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->myImagePagerPopupWindow:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "STATE_POSITION"

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
