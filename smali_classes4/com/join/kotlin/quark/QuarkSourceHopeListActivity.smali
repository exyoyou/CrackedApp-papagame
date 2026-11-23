.class public final Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/SourceHopeClickProxy;
.implements Lcom/join/kotlin/quark/callback/IChangeSortCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/h4;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/SourceHopeClickProxy;",
        "Lcom/join/kotlin/quark/callback/IChangeSortCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuarkSourceHopeListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuarkSourceHopeListActivity.kt\ncom/join/kotlin/quark/QuarkSourceHopeListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1869#2,2:246\n*S KotlinDebug\n*F\n+ 1 QuarkSourceHopeListActivity.kt\ncom/join/kotlin/quark/QuarkSourceHopeListActivity\n*L\n173#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0008\u0010-\u001a\u00020*H\u0014J\u0008\u0010.\u001a\u00020*H\u0016J\u0008\u0010/\u001a\u00020*H\u0016J\u0008\u00100\u001a\u00020*H\u0016J\u0008\u00101\u001a\u00020*H\u0016J\u0010\u00102\u001a\u00020*2\u0006\u00103\u001a\u000204H\u0002J\u0015\u00105\u001a\u00020*2\u0008\u00106\u001a\u0004\u0018\u00010#\u00a2\u0006\u0002\u0010\'J \u00107\u001a\u00020*2\u0016\u00108\u001a\u0012\u0012\u0004\u0012\u0002090\u0015j\u0008\u0012\u0004\u0012\u000209`\u0017H\u0002J\u0010\u0010:\u001a\u00020*2\u0006\u0010;\u001a\u00020<H\u0002J\u000f\u0010=\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0002\u0010%J\u0008\u0010>\u001a\u00020*H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R*\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\u0008\u0012\u0004\u0012\u00020\u0016`\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001e\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010(\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006?"
    }
    d2 = {
        "Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityQuarkSourceHopeListBinding;",
        "Lcom/join/kotlin/quark/proxy/SourceHopeClickProxy;",
        "Lcom/join/kotlin/quark/callback/IChangeSortCallback;",
        "<init>",
        "()V",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "adapter",
        "Lcom/join/mgps/adapter/FragmentPagerAdapter;",
        "getAdapter",
        "()Lcom/join/mgps/adapter/FragmentPagerAdapter;",
        "setAdapter",
        "(Lcom/join/mgps/adapter/FragmentPagerAdapter;)V",
        "fragments",
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/adapter/FragmentPagerAdapter$Item;",
        "Lkotlin/collections/ArrayList;",
        "getFragments",
        "()Ljava/util/ArrayList;",
        "setFragments",
        "(Ljava/util/ArrayList;)V",
        "sortPopWindow",
        "Lcom/join/kotlin/quark/pop/SortPopWindow;",
        "getSortPopWindow",
        "()Lcom/join/kotlin/quark/pop/SortPopWindow;",
        "setSortPopWindow",
        "(Lcom/join/kotlin/quark/pop/SortPopWindow;)V",
        "statusState1",
        "",
        "getStatusState1",
        "()Ljava/lang/Integer;",
        "setStatusState1",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "createObserver",
        "onBackClick",
        "onWishCreateClick",
        "onSortTypeClick",
        "showSortPop",
        "view",
        "Landroid/view/View;",
        "changeSort",
        "status",
        "getView",
        "items",
        "",
        "setStatus",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "getStatusState",
        "onStatusChanged",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQuarkSourceHopeListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuarkSourceHopeListActivity.kt\ncom/join/kotlin/quark/QuarkSourceHopeListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1869#2,2:246\n*S KotlinDebug\n*F\n+ 1 QuarkSourceHopeListActivity.kt\ncom/join/kotlin/quark/QuarkSourceHopeListActivity\n*L\n173#1:246,2\n*E\n"
    }
.end annotation


# instance fields
.field private adapter:Lcom/join/mgps/adapter/h0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private statusState1:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iput-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$setStatus(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getView(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    .line 31
    .line 32
    const v4, 0x7f0a19d3

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    if-ge v2, v0, :cond_2

    .line 37
    .line 38
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const v7, 0x7f0d0626

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, "inflate(...)"

    .line 50
    .line 51
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v4, Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/lang/CharSequence;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Lcom/google/android/material/tabs/TabLayout$g;->v(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 87
    .line 88
    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :cond_3
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    check-cast v5, Landroid/widget/TextView;

    .line 120
    .line 121
    const/high16 p1, -0x1000000

    .line 122
    .line 123
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const v0, 0x7f0713c2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    int-to-float p1, p1

    .line 138
    invoke-virtual {v5, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const/4 v0, 0x1

    .line 146
    invoke-virtual {v5, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_4

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_4

    .line 168
    .line 169
    const v0, 0x7f0a0a4a

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_4

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    :cond_4
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->showSortPop$lambda$7(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->showSortPop$lambda$6(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->showSortPop$lambda$5(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V

    return-void
.end method

.method private final setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const-string v5, "null cannot be cast to non-null type android.widget.TextView"

    .line 58
    .line 59
    const v6, 0x7f0a19d3

    .line 60
    .line 61
    .line 62
    const v7, 0x7f0a0a4a

    .line 63
    .line 64
    .line 65
    if-ne v2, v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast v3, Landroid/widget/TextView;

    .line 82
    .line 83
    const/high16 v4, -0x1000000

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/4 v5, 0x1

    .line 93
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const v5, 0x7f0713c2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    int-to-float v4, v4

    .line 108
    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const/4 v7, 0x4

    .line 117
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast v3, Landroid/widget/TextView;

    .line 128
    .line 129
    const-string v4, "#000000"

    .line 130
    .line 131
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const v5, 0x7f071395

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    int-to-float v4, v4

    .line 157
    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_4
    return-void
.end method

.method private final showSortPop(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 27
    .line 28
    const/4 v1, -0x2

    .line 29
    invoke-direct {v0, p0, v1, v1}, Lcom/join/kotlin/quark/pop/SortPopWindow;-><init>(Landroid/content/Context;II)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v2, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 74
    .line 75
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const v3, 0x7f0714f8

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    float-to-int v2, v2

    .line 98
    neg-int v2, v2

    .line 99
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/kotlin/quark/pop/SortPopWindow;->getBtnSxz()Landroid/widget/Button;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance v0, Lcom/join/kotlin/quark/w;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/w;-><init>(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 120
    .line 121
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/kotlin/quark/pop/SortPopWindow;->getBtnYsx()Landroid/widget/Button;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Lcom/join/kotlin/quark/x;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/x;-><init>(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/kotlin/quark/pop/SortPopWindow;->getBtnAll()Landroid/widget/Button;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v0, Lcom/join/kotlin/quark/y;

    .line 146
    .line 147
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/y;-><init>(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method private static final showSortPop$lambda$5(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->changeSort(Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;->e:Landroid/widget/TextView;

    .line 16
    .line 17
    const-string v0, "\u5b9e\u73b0\u4e2d"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final showSortPop$lambda$6(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->changeSort(Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;->e:Landroid/widget/TextView;

    .line 16
    .line 17
    const-string v0, "\u5df2\u5b9e\u73b0"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final showSortPop$lambda$7(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->changeSort(Ljava/lang/Integer;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;->e:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v0, "\u5168\u90e8"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final changeSort(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->statusState1:Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/adapter/h0$a;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/adapter/h0$a;->c:Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    instance-of v1, v0, Lcom/join/kotlin/quark/callback/IChangeSortCallback;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.quark.callback.IChangeSortCallback"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v0, Lcom/join/kotlin/quark/callback/IChangeSortCallback;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/join/kotlin/quark/callback/IChangeSortCallback;->onStatusChanged()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public createObserver()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/kotlin/quark/SourceHopeFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/quark/SourceHopeFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getKeyword()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "_keyword"

    .line 22
    .line 23
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "_sortType"

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/join/mgps/adapter/h0$a;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getTabItems()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v1, v5, v0}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/join/kotlin/quark/SourceHopeFragment;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/join/kotlin/quark/SourceHopeFragment;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getKeyword()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x1

    .line 86
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/join/mgps/adapter/h0$a;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getTabItems()Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {v1, v5, v0}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/join/kotlin/quark/SourceHopeFragment;

    .line 119
    .line 120
    invoke-direct {v0}, Lcom/join/kotlin/quark/SourceHopeFragment;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v1, Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 133
    .line 134
    invoke-virtual {v5}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getKeyword()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 v3, 0x3

    .line 142
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/join/mgps/adapter/h0$a;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getTabItems()Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/String;

    .line 165
    .line 166
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 175
    .line 176
    if-eqz v0, :cond_0

    .line 177
    .line 178
    iget-object v1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 184
    .line 185
    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getTabItems()Ljava/util/ArrayList;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->getView(Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 206
    .line 207
    new-instance v1, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity$createObserver$2;

    .line 208
    .line 209
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity$createObserver$2;-><init>(Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final getAdapter()Lcom/join/mgps/adapter/h0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSortPopWindow()Lcom/join/kotlin/quark/pop/SortPopWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusState()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->statusState1:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatusState1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->statusState1:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/papa/sim/statistic/Event;->visitPCPageZone:Lcom/papa/sim/statistic/Event;

    .line 16
    .line 17
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 43
    .line 44
    const-string v1, "_keyword"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->setKeyword(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/h4;->u(Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/join/mgps/adapter/h0;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, v0}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;->f:Landroidx/viewpager/widget/ViewPager;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;->c:Lcom/google/android/material/tabs/TabLayout;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->f:Landroidx/viewpager/widget/ViewPager;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/h4;->u(Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/h4;->t(Lcom/join/kotlin/quark/proxy/SourceHopeClickProxy;)V

    .line 133
    .line 134
    .line 135
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

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSortTypeClick()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/h4;->e:Landroid/widget/TextView;

    .line 8
    .line 9
    const-string v1, "tvSort"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->showSortPop(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onStatusChanged()V
    .locals 0

    return-void
.end method

.method public onWishCreateClick()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/kotlin/quark/CreateSourceHopeActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->getKeyword()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "_keyword"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setAdapter(Lcom/join/mgps/adapter/h0;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/h0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setFragments(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->fragments:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setSortPopWindow(Lcom/join/kotlin/quark/pop/SortPopWindow;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/quark/pop/SortPopWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->sortPopWindow:Lcom/join/kotlin/quark/pop/SortPopWindow;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusState1(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkSourceHopeListActivity;->statusState1:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
