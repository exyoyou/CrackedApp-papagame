.class public final Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/dn0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0014J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\"\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/MustplayItemLayoutBinding;",
        "context",
        "Landroid/content/Context;",
        "videoHelper",
        "Lcom/join/android/app/component/video/MyListViewVideoHelper;",
        "<init>",
        "(Landroid/content/Context;Lcom/join/android/app/component/video/MyListViewVideoHelper;)V",
        "getVideoHelper",
        "()Lcom/join/android/app/component/video/MyListViewVideoHelper;",
        "getLayoutResId",
        "",
        "viewType",
        "onBindItem",
        "",
        "binding",
        "item",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onBindItemPayloads",
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
.field private final videoHelper:Lcom/join/android/app/component/video/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/video/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "videoHelper"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0d075e

    return p1
.end method

.method public final getVideoHelper()Lcom/join/android/app/component/video/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/dn0;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/dn0;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/dn0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->z(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    .line 3
    new-instance p3, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 4
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getPosition()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoCover()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-direct {p3, v0, v1, v2, v3}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->A(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 9
    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->B(Lcom/join/android/app/component/video/c;)V

    .line 10
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->d:Lcom/join/mgps/customview/DownloadNormalView;

    new-instance p3, Lm6/c;

    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getMContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p2

    .line 13
    invoke-direct {p3, v0, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    invoke-virtual {p1, p3}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/dn0;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/dn0;Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/dn0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->z(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    .line 3
    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->B(Lcom/join/android/app/component/video/c;)V

    .line 4
    new-instance p3, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 5
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getPosition()I

    move-result v0

    .line 6
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v2

    .line 8
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoCover()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p3, v0, v1, v2, p2}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->A(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    return-void
.end method
