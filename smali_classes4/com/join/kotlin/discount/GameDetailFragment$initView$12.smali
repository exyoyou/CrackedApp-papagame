.class public final Lcom/join/kotlin/discount/GameDetailFragment$initView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/discount/GameDetailFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/discount/GameDetailFragment$initView$12",
        "Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;",
        "onScrollChange",
        "",
        "v",
        "Landroidx/core/widget/NestedScrollView;",
        "scrollX",
        "",
        "scrollY",
        "oldScrollX",
        "oldScrollY",
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
.field final synthetic this$0:Lcom/join/kotlin/discount/GameDetailFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/discount/GameDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 2

    .line 1
    const-string p2, "v"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    filled-new-array {p2, p2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    iget-object p5, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 12
    .line 13
    invoke-virtual {p5}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    check-cast p5, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 18
    .line 19
    iget-object p5, p5, Lcom/join/android/app/mgsim/wufun/databinding/ll;->c:Lcom/join/mgps/customview/NestedScrollableHost;

    .line 20
    .line 21
    invoke-virtual {p5, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 22
    .line 23
    .line 24
    const/4 p5, 0x1

    .line 25
    aget p4, p4, p5

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-gez p4, :cond_3

    .line 29
    .line 30
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 31
    .line 32
    invoke-static {p4}, Lcom/join/kotlin/discount/GameDetailFragment;->access$isPause$p(Lcom/join/kotlin/discount/GameDetailFragment;)Z

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    if-nez p4, :cond_6

    .line 37
    .line 38
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 39
    .line 40
    invoke-static {p4}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getVideoHelper$p(Lcom/join/kotlin/discount/GameDetailFragment;)Lcom/join/android/app/component/video/h;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    if-eqz p4, :cond_0

    .line 45
    .line 46
    invoke-virtual {p4}, Lcom/join/android/app/component/video/h;->y()V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 50
    .line 51
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    instance-of v1, p4, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    move-object v0, p4

    .line 60
    check-cast v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 61
    .line 62
    :cond_1
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, p5}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setTabIsDarkColor(Z)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 68
    .line 69
    invoke-virtual {p4}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    check-cast p4, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 74
    .line 75
    iget-object p4, p4, Lcom/join/android/app/mgsim/wufun/databinding/ll;->L:Landroid/view/View;

    .line 76
    .line 77
    const-string v0, "#ffffff"

    .line 78
    .line 79
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 87
    .line 88
    invoke-static {p4, p5}, Lcom/join/kotlin/discount/GameDetailFragment;->access$setPause$p(Lcom/join/kotlin/discount/GameDetailFragment;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 93
    .line 94
    invoke-static {p4}, Lcom/join/kotlin/discount/GameDetailFragment;->access$isPause$p(Lcom/join/kotlin/discount/GameDetailFragment;)Z

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    if-eqz p4, :cond_6

    .line 99
    .line 100
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 101
    .line 102
    invoke-virtual {p4}, Lcom/join/kotlin/discount/GameDetailFragment;->playVideo()V

    .line 103
    .line 104
    .line 105
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 106
    .line 107
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    instance-of p5, p4, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 112
    .line 113
    if-eqz p5, :cond_4

    .line 114
    .line 115
    move-object v0, p4

    .line 116
    check-cast v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 117
    .line 118
    :cond_4
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->setTabIsDarkColor(Z)V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 124
    .line 125
    invoke-virtual {p4}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    check-cast p4, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 130
    .line 131
    iget-object p4, p4, Lcom/join/android/app/mgsim/wufun/databinding/ll;->L:Landroid/view/View;

    .line 132
    .line 133
    iget-object p5, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 134
    .line 135
    invoke-static {p5}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getTopBgColor$p(Lcom/join/kotlin/discount/GameDetailFragment;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p5

    .line 139
    invoke-static {p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result p5

    .line 143
    invoke-virtual {p4, p5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object p4, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 147
    .line 148
    invoke-static {p4, p2}, Lcom/join/kotlin/discount/GameDetailFragment;->access$setPause$p(Lcom/join/kotlin/discount/GameDetailFragment;Z)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p4

    .line 155
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 156
    .line 157
    .line 158
    move-result p4

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    sub-int/2addr p4, p1

    .line 164
    if-ne p3, p4, :cond_7

    .line 165
    .line 166
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->D:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getNoMore()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_7

    .line 181
    .line 182
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$12;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lcom/join/kotlin/discount/GameDetailFragment;->loadSimilarGame(Z)V

    .line 185
    .line 186
    .line 187
    :cond_7
    return-void
.end method
