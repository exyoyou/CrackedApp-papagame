.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/ImageInfo;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0007H\u0014J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\"\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0002H\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/join/mgps/dto/ImageInfo;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "<init>",
        "()V",
        "isVertical",
        "",
        "()I",
        "setVertical",
        "(I)V",
        "curSelected",
        "getCurSelected",
        "setCurSelected",
        "updateCurrentSelected",
        "",
        "newIndex",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onViewRecycled",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onBindViewHolder",
        "position",
        "item",
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
.field private curSelected:I

.field private isVertical:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->curSelected:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getCurSelected()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->curSelected:I

    .line 2
    .line 3
    return v0
.end method

.method public final isVertical()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->isVertical:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/ImageInfo;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/ImageInfo;)V
    .locals 9
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/ImageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/dto/ImageInfo;

    .line 4
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    move-result v0

    const v1, 0x7f0a08bb

    const-string v2, "#4D000000"

    const v3, 0x7f0a0a19

    const v4, 0x7f0a08c0

    const/4 v5, 0x0

    const v6, 0x7f0a08bc

    const v7, 0x7f0a08b8

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1, v6, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 6
    invoke-virtual {p1, v7, v5}, Lv2/c;->h(IZ)Lv2/c;

    .line 7
    invoke-virtual {p1, v4, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 8
    invoke-virtual {p3}, Lcom/join/mgps/dto/ImageInfo;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1, v7}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 10
    invoke-virtual {p1, v3, v5}, Lv2/c;->h(IZ)Lv2/c;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v7}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 13
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 14
    invoke-virtual {p2, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 15
    invoke-virtual {p1, v3, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 16
    :goto_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/ImageInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p1, v1, v5}, Lv2/c;->h(IZ)Lv2/c;

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1, v1, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 19
    :goto_1
    invoke-virtual {p1, v7}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const p2, 0x7f08018d

    .line 20
    invoke-virtual {p3}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-static {p1, p2, p3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_7

    .line 22
    :cond_2
    invoke-virtual {p3}, Lcom/join/mgps/dto/ImageInfo;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 23
    iget p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->isVertical:I

    if-ne p3, v8, :cond_3

    .line 24
    invoke-virtual {p1, v6}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {p1, v7}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 26
    :goto_2
    invoke-virtual {p1, v3, v5}, Lv2/c;->h(IZ)Lv2/c;

    goto :goto_4

    .line 27
    :cond_4
    iget p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->isVertical:I

    if-ne p3, v8, :cond_5

    .line 28
    invoke-virtual {p1, v6}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 30
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 31
    invoke-virtual {p3, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 32
    :cond_5
    invoke-virtual {p1, v7}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 34
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-virtual {p3, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 36
    :goto_3
    invoke-virtual {p1, v3, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 37
    :goto_4
    invoke-virtual {p1, v1, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 38
    iget p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->isVertical:I

    const v0, 0x7f0714f8

    if-ne p3, v8, :cond_7

    .line 39
    invoke-virtual {p1, v4, v5}, Lv2/c;->h(IZ)Lv2/c;

    .line 40
    invoke-virtual {p1, v6, v5}, Lv2/c;->h(IZ)Lv2/c;

    .line 41
    invoke-virtual {p1, v4}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v3, 0xf

    .line 43
    invoke-static {p3, v1, v2, v3}, Lcom/join/android/app/common/utils/l;->M(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 44
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 45
    invoke-virtual {p1, v6}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {p3, p2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_5

    .line 48
    :cond_6
    invoke-virtual {p1, v6}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 51
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    .line 52
    invoke-static {p3, p2, v0}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 53
    :goto_5
    invoke-virtual {p1, v7, v8}, Lv2/c;->h(IZ)Lv2/c;

    goto :goto_7

    .line 54
    :cond_7
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p3}, Lcom/join/mgps/dto/ImageInfo;->isGif()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 55
    invoke-virtual {p1, v7}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 56
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-static {p3, p2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_6

    .line 58
    :cond_8
    invoke-virtual {p1, v7}, Lv2/c;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 61
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    .line 62
    invoke-static {p3, p2, v0}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 63
    :goto_6
    invoke-virtual {p1, v4, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 64
    invoke-virtual {p1, v7, v5}, Lv2/c;->h(IZ)Lv2/c;

    .line 65
    invoke-virtual {p1, v6, v8}, Lv2/c;->h(IZ)Lv2/c;

    :goto_7
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/c;

    const p3, 0x7f0d0421

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setCurSelected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->curSelected:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVertical(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->isVertical:I

    .line 2
    .line 3
    return-void
.end method

.method public final updateCurrentSelected(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->curSelected:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/join/mgps/dto/ImageInfo;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ImageInfo;->setSelected(Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->curSelected:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->curSelected:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/join/mgps/dto/ImageInfo;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ImageInfo;->setSelected(Z)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyImagesAdapter;->curSelected:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
