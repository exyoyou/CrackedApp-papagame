.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->bindRank(Lv2/c;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDailyFindPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,956:1\n1869#2,2:957\n*S KotlinDebug\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2\n*L\n664#1:957,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageScrolled",
        "",
        "position",
        "",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
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
        "SMAP\nDailyFindPageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,956:1\n1869#2,2:957\n*S KotlinDebug\n*F\n+ 1 DailyFindPageAdapter.kt\ncom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2\n*L\n664#1:957,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $helper:Lv2/c;

.field final synthetic $itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

.field final synthetic $rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

.field final synthetic $tablayout:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic $tv_text_1:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;Landroid/widget/TextView;Lv2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$tv_text_1:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$helper:Lv2/c;

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPageSelected(I)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->setSelectedIndex(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$tablayout:Lcom/google/android/material/tabs/TabLayout;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->r()V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "\u67e5\u770b\u66f4\u591a"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getRankListData()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;->getTitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const-string v3, "\u699c"

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x4

    .line 67
    const/4 v7, 0x0

    .line 68
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "\u6e38\u620f > "

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 87
    .line 88
    new-instance v2, Landroid/text/SpannableString;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->setSpannableText(Landroid/text/SpannableString;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getSpannableText()Landroid/text/SpannableString;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/4 v2, 0x1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    new-instance v9, Lcom/join/mgps/widget/textview/a;

    .line 106
    .line 107
    const-string v3, "#666666"

    .line 108
    .line 109
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/high16 v5, 0x40400000    # 3.0f

    .line 114
    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v7, 0x4

    .line 117
    const/4 v8, 0x0

    .line 118
    move-object v3, v9

    .line 119
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/widget/textview/a;-><init>(IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    sub-int/2addr v0, v2

    .line 127
    const/16 v3, 0x21

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-virtual {v1, v9, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$tv_text_1:Landroid/widget/TextView;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$rankItem:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getSpannableText()Landroid/text/SpannableString;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$itemData:Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/model/DailyRankItemBean;->getDataList()Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/util/List;

    .line 157
    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    check-cast p1, Ljava/lang/Iterable;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$bindRank$1$2;->$helper:Lv2/c;

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_4

    .line 173
    .line 174
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_3

    .line 185
    .line 186
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_4
    return-void
.end method
