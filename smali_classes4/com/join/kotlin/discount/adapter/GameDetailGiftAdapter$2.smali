.class public final Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/c$b<",
        "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;",
        "Lv2/a<",
        "Lcom/join/android/app/mgsim/wufun/databinding/dz;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001J&\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J(\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/join/kotlin/discount/adapter/GameDetailGiftAdapter$2",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemDetailGiftBinding;",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBind",
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


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter$2;->this$0:Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isFullSpanItem(I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->a(Lcom/chad/library/adapter/base/c$b;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/a;

    check-cast p3, Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter$2;->onBind(Lv2/a;ILcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lv2/a;

    check-cast p3, Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter$2;->onBind(Lv2/a;ILcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lv2/a;ILcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/dz;",
            ">;I",
            "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;->getData()Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    instance-of v0, p3, Lcom/join/kotlin/discount/model/bean/GiftItemBean;

    if-eqz v0, :cond_1

    move-object p2, p3

    check-cast p2, Lcom/join/kotlin/discount/model/bean/GiftItemBean;

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/dz;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/dz;->u(Lcom/join/kotlin/discount/model/bean/GiftItemBean;)V

    .line 6
    :cond_3
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/dz;

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter$2;->this$0:Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;

    invoke-virtual {v0}, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter;->getClick()Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/android/app/mgsim/wufun/databinding/dz;->t(Lcom/join/kotlin/discount/proxy/GameDetailGiftClickProxy;)V

    .line 7
    :cond_4
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dz;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/dz;->b:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p2}, Lcom/join/kotlin/discount/model/bean/GiftItemBean;->getSurplusPercent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "%"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 9
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_6
    return-void
.end method

.method public onBind(Lv2/a;ILcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/dz;",
            ">;I",
            "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/c$b$a;->b(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/discount/adapter/GameDetailGiftAdapter$2;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/a;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/dz;",
            ">;"
        }
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/a;

    const p3, 0x7f0d03ea

    invoke-direct {p1, p3, p2}, Lv2/a;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->c(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->d(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->e(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/c$b$a;->f(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
