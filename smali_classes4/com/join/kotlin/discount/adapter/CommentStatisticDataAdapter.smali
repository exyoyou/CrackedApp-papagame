.class public final Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;",
        "Lv2/a<",
        "Lcom/join/android/app/mgsim/wufun/databinding/tx;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J&\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0014J(\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0014\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemCommentStatisticDataLayoutBinding;",
        "<init>",
        "()V",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
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
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/a;

    check-cast p3, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;->onBindViewHolder(Lv2/a;ILcom/join/kotlin/discount/model/bean/CommentDataProgressBean;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/a;ILcom/join/kotlin/discount/model/bean/CommentDataProgressBean;)V
    .locals 3
    .param p1    # Lv2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/tx;",
            ">;I",
            "Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/tx;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/tx;->n(Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/tx;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/tx;->c:Lcom/join/mgps/customview/MStarBar;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getStarCount()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-double v1, v1

    invoke-virtual {p2, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 4
    :cond_2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/tx;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/tx;->b:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {p3}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getType()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07153b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 7
    invoke-virtual {p3}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getType()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07147e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/tx;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/tx;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/discount/adapter/CommentStatisticDataAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/a;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/a;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/tx;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/a;

    const p3, 0x7f0d03d2

    invoke-direct {p1, p3, p2}, Lv2/a;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method
