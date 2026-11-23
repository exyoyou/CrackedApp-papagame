.class public final Lcom/join/mgps/adapter/t$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t;-><init>(Ljava/util/List;Lcom/join/android/app/component/video/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/c$b<",
        "Lcom/join/mgps/dto/CollectionSevenListBean;",
        "Lv2/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/t;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t$e;->a:Lcom/join/mgps/adapter/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lv2/c;ILcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 0

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/adapter/t$e;->a:Lcom/join/mgps/adapter/t;

    .line 7
    .line 8
    invoke-static {p2, p1, p3}, Lcom/join/mgps/adapter/t;->r(Lcom/join/mgps/adapter/t;Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Lv2/c;ILcom/join/mgps/dto/CollectionSevenListBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/c;",
            "I",
            "Lcom/join/mgps/dto/CollectionSevenListBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/c$b$a;->b(Lcom/chad/library/adapter/base/c$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0

    .line 1
    const-string p3, "context"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "parent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lv2/c;

    .line 12
    .line 13
    const p3, 0x7f0d03ce

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

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
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CollectionSevenListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/t$e;->a(Lv2/c;ILcom/join/mgps/dto/CollectionSevenListBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CollectionSevenListBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/t$e;->b(Lv2/c;ILcom/join/mgps/dto/CollectionSevenListBean;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/t$e;->c(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
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
