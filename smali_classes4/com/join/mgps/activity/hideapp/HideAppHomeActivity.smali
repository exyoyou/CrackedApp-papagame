.class public Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;,
        Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d006d
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field private hideType:I

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewpager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->datas:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->datas:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->hideType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->change()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private change()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hide_app_switch()Lorg/androidannotations/api/sharedpreferences/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/ComponentName;

    .line 31
    .line 32
    const-string v2, "default.alias"

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/content/ComponentName;

    .line 42
    .line 43
    const-string v3, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"

    .line 44
    .line 45
    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroid/content/ComponentName;

    .line 53
    .line 54
    const-string v4, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"

    .line 55
    .line 56
    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcom/join/mgps/Util/j2;->a(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private initViewpager()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->datas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->datas:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;

    .line 9
    .line 10
    const-string v2, "\u8ba1\u7b97\u5668"

    .line 11
    .line 12
    const v3, 0x7f080916

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-direct {v1, p0, v4, v2, v3}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;-><init>(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;ILjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->datas:Ljava/util/List;

    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;

    .line 25
    .line 26
    const-string v2, "\u8bb0\u4e8b\u672c"

    .line 27
    .line 28
    const v3, 0x7f080918

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-direct {v1, p0, v5, v2, v3}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;-><init>(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;ILjava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const v3, 0x7f0714f9

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    float-to-int v2, v2

    .line 64
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 71
    .line 72
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;-><init>(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x4000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x500

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->statubar:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->statubar:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method back_image()V
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

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hide_app_switch()Lorg/androidannotations/api/sharedpreferences/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->hideType:I

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->initViewpager()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
