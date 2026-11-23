.class public final Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;",
        "Lv2/a<",
        "Lcom/join/android/app/mgsim/wufun/databinding/m10;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameDetailCommentAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCommentAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailCommentAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J&\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J(\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0017\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemGameDetailCommentLayoutBinding;",
        "<init>",
        "()V",
        "click",
        "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;",
        "getClick",
        "()Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;",
        "setClick",
        "(Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameDetailCommentAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCommentAdapter.kt\ncom/join/kotlin/discount/adapter/GameDetailCommentAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"
    }
.end annotation


# instance fields
.field private click:Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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
.method public final getClick()Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;->click:Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/a;

    check-cast p3, Lcom/join/kotlin/discount/model/bean/CommentDetailBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;->onBindViewHolder(Lv2/a;ILcom/join/kotlin/discount/model/bean/CommentDetailBean;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/a;ILcom/join/kotlin/discount/model/bean/CommentDetailBean;)V
    .locals 8
    .param p1    # Lv2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/kotlin/discount/model/bean/CommentDetailBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/m10;",
            ">;I",
            "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/m10;->u(Lcom/join/kotlin/discount/model/bean/CommentDetailBean;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;->click:Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;

    invoke-virtual {p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/m10;->t(Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;->i:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    if-eqz p3, :cond_6

    .line 5
    invoke-virtual {p3}, Lcom/join/kotlin/discount/model/bean/CommentDetailBean;->getTags()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/join/kotlin/discount/model/bean/CommentTagBean;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/join/kotlin/discount/model/bean/CommentTagBean;->getType()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_5
    move-object v5, v2

    :goto_2
    check-cast v5, Lcom/join/kotlin/discount/model/bean/CommentTagBean;

    goto :goto_3

    :cond_6
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_7

    .line 6
    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/CommentTagBean;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 8
    :cond_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;

    if-eqz p2, :cond_f

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;->g:Landroid/widget/ImageView;

    if-eqz p2, :cond_f

    if-eqz p3, :cond_d

    .line 10
    invoke-virtual {p3}, Lcom/join/kotlin/discount/model/bean/CommentDetailBean;->getTags()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/join/kotlin/discount/model/bean/CommentTagBean;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/join/kotlin/discount/model/bean/CommentTagBean;->getType()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_9

    goto :goto_7

    :cond_c
    move-object v5, v2

    :goto_7
    check-cast v5, Lcom/join/kotlin/discount/model/bean/CommentTagBean;

    goto :goto_8

    :cond_d
    move-object v5, v2

    :goto_8
    if-eqz v5, :cond_e

    .line 11
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 12
    :cond_e
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :cond_f
    :goto_9
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;

    if-eqz p2, :cond_16

    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/m10;->h:Landroid/widget/ImageView;

    if-eqz p2, :cond_16

    if-eqz p3, :cond_14

    .line 14
    invoke-virtual {p3}, Lcom/join/kotlin/discount/model/bean/CommentDetailBean;->getTags()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_14

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_10
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/kotlin/discount/model/bean/CommentTagBean;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/join/kotlin/discount/model/bean/CommentTagBean;->getType()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_10

    move-object v2, v4

    :cond_13
    check-cast v2, Lcom/join/kotlin/discount/model/bean/CommentTagBean;

    :cond_14
    if-eqz v2, :cond_15

    .line 15
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 16
    :cond_15
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :cond_16
    :goto_c
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v1

    if-lt p2, p3, :cond_17

    .line 18
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/m10;

    if-eqz p1, :cond_18

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/m10;->d:Landroid/view/View;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 19
    :cond_17
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/m10;

    if-eqz p1, :cond_18

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/m10;->d:Landroid/view/View;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    :goto_d
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/a;

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
            "Lcom/join/android/app/mgsim/wufun/databinding/m10;",
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

    const p3, 0x7f0d041b

    invoke-direct {p1, p3, p2}, Lv2/a;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public final setClick(Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;->click:Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;

    .line 2
    .line 3
    return-void
.end method
