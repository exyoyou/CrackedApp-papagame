.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->bindRank(Lv2/c;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "onTabSelected",
        "",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "onTabUnselected",
        "onTabReselected",
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
.field final synthetic $helper:Lv2/c;

.field final synthetic $itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

.field final synthetic $rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

.field final synthetic $tablayout:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic $viewpager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;Landroidx/viewpager2/widget/ViewPager2;Lv2/c;Lcom/google/android/material/tabs/TabLayout;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$helper:Lv2/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 3

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f0a1664

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$helper:Lv2/c;

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->o()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    const v2, 0x7f071395

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const v2, 0x7f071369

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 73
    .line 74
    .line 75
    const-string v1, "#333333"

    .line 76
    .line 77
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->o()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 4

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->setSelectedIndex(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0a1664

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$helper:Lv2/c;

    .line 48
    .line 49
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->o()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    const v3, 0x7f071395

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const v3, 0x7f071369

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 83
    .line 84
    .line 85
    const-string v2, "#333333"

    .line 86
    .line 87
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->o()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$helper:Lv2/c;

    .line 102
    .line 103
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getRankListData()Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;

    .line 132
    .line 133
    if-eqz p1, :cond_2

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_2

    .line 140
    .line 141
    const-string v3, "page"

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_2

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a1664

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$helper:Lv2/c;

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->o()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const v2, 0x7f071395

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const v2, 0x7f071369

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$3;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 61
    .line 62
    .line 63
    const-string v1, "#999999"

    .line 64
    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->o()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method
