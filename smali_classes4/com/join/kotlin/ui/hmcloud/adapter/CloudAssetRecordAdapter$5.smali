.class public final Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/c$b<",
        "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
        "Lv2/a<",
        "Lcom/join/android/app/mgsim/wufun/databinding/ww;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001J&\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J(\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$5",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemCloudAssetDaojBinding;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
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

    check-cast p3, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$5;->onBind(Lv2/a;ILcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lv2/a;

    check-cast p3, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$5;->onBind(Lv2/a;ILcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lv2/a;ILcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/ww;",
            ">;I",
            "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_a

    .line 4
    invoke-virtual {p3}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 5
    invoke-virtual {p3}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->getData()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 6
    :goto_0
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ww;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ww;->D(Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/ww;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->getCollapse()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/android/app/mgsim/wufun/databinding/ww;->B(Ljava/lang/Boolean;)V

    .line 8
    :cond_2
    invoke-virtual {p3}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->getCollapse()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/ww;

    if-eqz p3, :cond_4

    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ww;->E(Ljava/lang/Integer;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/ww;

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ww;->E(Ljava/lang/Integer;)V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 11
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getCardId()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    move-object p3, v1

    :goto_2
    const-string v0, "BaoYe"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 12
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ww;

    if-eqz p1, :cond_a

    const p2, 0x7f080867

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ww;->C(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    .line 13
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getCardId()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_7
    move-object p3, v1

    :goto_3
    const-string v0, "JiSu7D"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 14
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ww;

    if-eqz p1, :cond_a

    const p2, 0x7f080866

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ww;->C(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    .line 15
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getCardId()Ljava/lang/String;

    move-result-object v1

    :cond_9
    const-string p2, "JiSu24H"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 16
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ww;

    if-eqz p1, :cond_a

    const p2, 0x7f080865

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ww;->C(Ljava/lang/Integer;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public onBind(Lv2/a;ILcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/ww;",
            ">;I",
            "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter$5;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/a;

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
            "Lcom/join/android/app/mgsim/wufun/databinding/ww;",
            ">;"
        }
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lv2/a;

    const p3, 0x7f0d03c2

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
