.class public Lcom/join/mgps/activity/ImagePagerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ImagePagerActivity$b;
    }
.end annotation


# static fields
.field public static final EXTRA_IMAGE_INDEX:Ljava/lang/String; = "image_index"

.field public static final EXTRA_IMAGE_URLS:Ljava/lang/String; = "image_urls"

.field private static final STATE_POSITION:Ljava/lang/String; = "STATE_POSITION"


# instance fields
.field private indicator:Lcom/join/mgps/customview/CirclePageIndicator;

.field private mPager:Lcom/join/android/app/component/photoviewer/HackyViewPager;

.field private pagerPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/ImagePagerActivity;)Lcom/join/mgps/customview/CirclePageIndicator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->indicator:Lcom/join/mgps/customview/CirclePageIndicator;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0d039a

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

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
    iput v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->pagerPosition:I

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
    check-cast v1, Lcom/join/android/app/component/photoviewer/HackyViewPager;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    .line 43
    .line 44
    new-instance v1, Lcom/join/mgps/activity/ImagePagerActivity$b;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, p0, v2, v0}, Lcom/join/mgps/activity/ImagePagerActivity$b;-><init>(Lcom/join/mgps/activity/ImagePagerActivity;Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/HackyViewPager;

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
    check-cast v0, Lcom/join/mgps/customview/CirclePageIndicator;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->indicator:Lcom/join/mgps/customview/CirclePageIndicator;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    .line 75
    .line 76
    new-instance v1, Lcom/join/mgps/activity/ImagePagerActivity$a;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ImagePagerActivity$a;-><init>(Lcom/join/mgps/activity/ImagePagerActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 82
    .line 83
    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    const-string v0, "STATE_POSITION"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->pagerPosition:I

    .line 93
    .line 94
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/HackyViewPager;

    .line 95
    .line 96
    iget v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->pagerPosition:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/ImagePagerActivity;->indicator:Lcom/join/mgps/customview/CirclePageIndicator;

    .line 102
    .line 103
    iget v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->pagerPosition:I

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/CirclePageIndicator;->setCurrentItem(I)V

    .line 106
    .line 107
    .line 108
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
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity;->mPager:Lcom/join/android/app/component/photoviewer/HackyViewPager;

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
    return-void
.end method
