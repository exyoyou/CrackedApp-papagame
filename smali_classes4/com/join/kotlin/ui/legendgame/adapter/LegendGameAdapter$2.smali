.class public final Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/c$b<",
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
        "Lv2/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2\n+ 2 LegendGameMultiItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameMultiItem\n*L\n1#1,238:1\n19#2:239\n*S KotlinDebug\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2\n*L\n63#1:239\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J \u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLegendGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2\n+ 2 LegendGameMultiItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameMultiItem\n*L\n1#1,238:1\n19#2:239\n*S KotlinDebug\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2\n*L\n63#1:239\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;->this$0:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

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
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;->onBind(Lv2/c;ILcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;->onBind(Lv2/c;ILcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;)V
    .locals 1

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;->this$0:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getData()Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    check-cast p3, Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;

    if-nez p3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2, p1, p3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->access$bindServerOpen(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBind(Lv2/c;ILcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/c;",
            "I",
            "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/c;

    const p3, 0x7f0d0454

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

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
