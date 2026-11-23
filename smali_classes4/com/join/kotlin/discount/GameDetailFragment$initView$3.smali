.class public final Lcom/join/kotlin/discount/GameDetailFragment$initView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/discount/GameDetailFragment$initView$3",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 2
    .line 3
    const-string v1, "recyclerView"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 9
    .line 10
    .line 11
    if-nez p2, :cond_a

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/kotlin/discount/GameDetailFragment;->playVideo()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object p2, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ltz p1, :cond_a

    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getCurrentIndicatorPosition$p(Lcom/join/kotlin/discount/GameDetailFragment;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x1

    .line 96
    if-ne p1, v1, :cond_0

    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getBannerAdapter(Lcom/join/kotlin/discount/GameDetailFragment;)Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    sub-int/2addr v1, v2

    .line 109
    if-ne v0, v1, :cond_a

    .line 110
    .line 111
    :cond_0
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getCurrentIndicatorPosition$p(Lcom/join/kotlin/discount/GameDetailFragment;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iget-object v3, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 124
    .line 125
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/ll;->x:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    sub-int/2addr v3, v2

    .line 132
    if-ne v1, v3, :cond_1

    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 135
    .line 136
    invoke-static {v1}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getFirstCompletelyVisibleWhenIndicatorShowLast$p(Lcom/join/kotlin/discount/GameDetailFragment;)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eq p1, v1, :cond_a

    .line 141
    .line 142
    :cond_1
    iget-object v1, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/ll;->x:Landroid/widget/LinearLayout;

    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v4, 0x0

    .line 158
    :goto_0
    if-ge v4, v1, :cond_a

    .line 159
    .line 160
    iget-object v5, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 167
    .line 168
    iget-object v5, v5, Lcom/join/android/app/mgsim/wufun/databinding/ll;->x:Landroid/widget/LinearLayout;

    .line 169
    .line 170
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-static {v5}, Landroidx/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Lcom/join/android/app/mgsim/wufun/databinding/az;

    .line 179
    .line 180
    if-eqz v5, :cond_6

    .line 181
    .line 182
    iget-object v6, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 183
    .line 184
    invoke-static {v6}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getBannerAdapter(Lcom/join/kotlin/discount/GameDetailFragment;)Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v6}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    sub-int/2addr v6, v2

    .line 193
    if-ne v0, v6, :cond_2

    .line 194
    .line 195
    iget-object v6, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 196
    .line 197
    invoke-virtual {v6}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Lcom/join/android/app/mgsim/wufun/databinding/ll;

    .line 202
    .line 203
    iget-object v6, v6, Lcom/join/android/app/mgsim/wufun/databinding/ll;->x:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    sub-int/2addr v6, v2

    .line 210
    goto :goto_1

    .line 211
    :cond_2
    if-nez p1, :cond_3

    .line 212
    .line 213
    if-nez p2, :cond_3

    .line 214
    .line 215
    const/4 v6, 0x0

    .line 216
    goto :goto_1

    .line 217
    :cond_3
    if-ne p1, v2, :cond_4

    .line 218
    .line 219
    if-nez p2, :cond_4

    .line 220
    .line 221
    const/4 v6, 0x1

    .line 222
    goto :goto_1

    .line 223
    :cond_4
    move v6, p1

    .line 224
    :goto_1
    if-ne v4, v6, :cond_5

    .line 225
    .line 226
    const/4 v6, 0x1

    .line 227
    goto :goto_2

    .line 228
    :cond_5
    const/4 v6, 0x0

    .line 229
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v5, v6}, Lcom/join/android/app/mgsim/wufun/databinding/az;->n(Ljava/lang/Boolean;)V

    .line 234
    .line 235
    .line 236
    :cond_6
    if-eqz v5, :cond_7

    .line 237
    .line 238
    invoke-virtual {v5}, Lcom/join/android/app/mgsim/wufun/databinding/az;->d()Ljava/lang/Boolean;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    goto :goto_3

    .line 249
    :cond_7
    const/4 v5, 0x0

    .line 250
    :goto_3
    if-eqz v5, :cond_9

    .line 251
    .line 252
    iget-object v5, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 253
    .line 254
    invoke-static {v5, v4}, Lcom/join/kotlin/discount/GameDetailFragment;->access$setCurrentIndicatorPosition$p(Lcom/join/kotlin/discount/GameDetailFragment;I)V

    .line 255
    .line 256
    .line 257
    iget-object v5, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 258
    .line 259
    invoke-static {v5}, Lcom/join/kotlin/discount/GameDetailFragment;->access$getBannerAdapter(Lcom/join/kotlin/discount/GameDetailFragment;)Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    sub-int/2addr v5, v2

    .line 268
    if-ne v0, v5, :cond_8

    .line 269
    .line 270
    iget-object v5, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 271
    .line 272
    invoke-static {v5, p1}, Lcom/join/kotlin/discount/GameDetailFragment;->access$setFirstCompletelyVisibleWhenIndicatorShowLast$p(Lcom/join/kotlin/discount/GameDetailFragment;I)V

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_8
    iget-object v5, p0, Lcom/join/kotlin/discount/GameDetailFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailFragment;

    .line 277
    .line 278
    const/4 v6, -0x1

    .line 279
    invoke-static {v5, v6}, Lcom/join/kotlin/discount/GameDetailFragment;->access$setFirstCompletelyVisibleWhenIndicatorShowLast$p(Lcom/join/kotlin/discount/GameDetailFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .line 281
    .line 282
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    .line 288
    .line 289
    :cond_a
    return-void
.end method
