.class public final Lcom/join/kotlin/discount/GameDetailCommentDataActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/discount/proxy/GameDetailCommentDataClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailCommentDataViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/t1;",
        ">;",
        "Lcom/join/kotlin/discount/proxy/GameDetailCommentDataClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\tJ\u0008\u0010\u001d\u001a\u00020\u0018H\u0016J\u0008\u0010\u001e\u001a\u00020\u0018H\u0016R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/join/kotlin/discount/GameDetailCommentDataActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailCommentDataViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityGameDetailCommentDataBinding;",
        "Lcom/join/kotlin/discount/proxy/GameDetailCommentDataClickProxy;",
        "<init>",
        "()V",
        "tabTitles",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "defaultIndex",
        "",
        "getDefaultIndex",
        "()I",
        "setDefaultIndex",
        "(I)V",
        "dataBean",
        "Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;",
        "getDataBean",
        "()Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;",
        "setDataBean",
        "(Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initTabAndViewpager",
        "data",
        "createObserver",
        "onBackClick",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private dataBean:Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private defaultIndex:I

.field private tabTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;-><init>()V

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
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->tabTitles:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method private static final initTabAndViewpager$lambda$0(Lcom/join/kotlin/discount/GameDetailCommentDataActivity;Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->tabTitles:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/CharSequence;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$g;->D(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/discount/GameDetailCommentDataActivity;Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->initTabAndViewpager$lambda$0(Lcom/join/kotlin/discount/GameDetailCommentDataActivity;Lcom/google/android/material/tabs/TabLayout$g;I)V

    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public final getDataBean()Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->dataBean:Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefaultIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->defaultIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final initTabAndViewpager(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->dataBean:Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;->getAvg_duration()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 25
    :goto_2
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->tabTitles:Ljava/util/ArrayList;

    .line 28
    .line 29
    const-string v1, "\u65f6\u957f\u6570\u636e"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    iget v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->defaultIndex:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_4

    .line 38
    .line 39
    iput v1, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->defaultIndex:I

    .line 40
    .line 41
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->tabTitles:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/t1;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t1;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 60
    .line 61
    new-instance v1, Lcom/join/kotlin/discount/adapter/CommentDataViewpagerAdapter;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->tabTitles:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1, v2, p1, p0}, Lcom/join/kotlin/discount/adapter/CommentDataViewpagerAdapter;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Lcom/google/android/material/tabs/d;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/t1;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t1;->e:Lcom/google/android/material/tabs/TabLayout;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/t1;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/t1;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 88
    .line 89
    new-instance v2, Lcom/join/kotlin/discount/b;

    .line 90
    .line 91
    invoke-direct {v2, p0}, Lcom/join/kotlin/discount/b;-><init>(Lcom/join/kotlin/discount/GameDetailCommentDataActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/material/tabs/d;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/d$b;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/material/tabs/d;->a()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/t1;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/t1;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 107
    .line 108
    iget v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->defaultIndex:I

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/t1;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailCommentDataViewModel;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/t1;->u(Lcom/join/kotlin/discount/viewmodel/GameDetailCommentDataViewModel;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/t1;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/t1;->t(Lcom/join/kotlin/discount/proxy/GameDetailCommentDataClickProxy;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const-string v0, "commentData"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string v2, "defaultIndex"

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :cond_1
    iput v1, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->defaultIndex:I

    .line 56
    .line 57
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-class v1, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->dataBean:Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->initTabAndViewpager(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setDataBean(Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->dataBean:Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDefaultIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/discount/GameDetailCommentDataActivity;->defaultIndex:I

    .line 2
    .line 3
    return-void
.end method
