.class public final Lcom/join/kotlin/ui/notice/NoticeListAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/cp0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0014J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\"\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00022\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/join/kotlin/ui/notice/NoticeListAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "Lcom/join/android/app/mgsim/wufun/databinding/NoticeItemItemBinding;",
        "context",
        "Landroid/content/Context;",
        "clickProxy",
        "Lcom/join/kotlin/ui/notice/ClickProxy;",
        "<init>",
        "(Landroid/content/Context;Lcom/join/kotlin/ui/notice/ClickProxy;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getClickProxy",
        "()Lcom/join/kotlin/ui/notice/ClickProxy;",
        "setClickProxy",
        "(Lcom/join/kotlin/ui/notice/ClickProxy;)V",
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
.field private clickProxy:Lcom/join/kotlin/ui/notice/ClickProxy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/notice/ClickProxy;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/notice/ClickProxy;
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
    const-string v0, "clickProxy"

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
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->clickProxy:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getClickProxy()Lcom/join/kotlin/ui/notice/ClickProxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->clickProxy:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0d078f

    return p1
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/cp0;

    check-cast p2, Lcom/join/mgps/dto/BTActivityBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/cp0;Lcom/join/mgps/dto/BTActivityBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/cp0;Lcom/join/mgps/dto/BTActivityBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/cp0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/BTActivityBean;
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
    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cp0;->t(Lcom/join/mgps/dto/BTActivityBean;)V

    .line 3
    iget-object p2, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->clickProxy:Lcom/join/kotlin/ui/notice/ClickProxy;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cp0;->u(Lcom/join/kotlin/ui/notice/ClickProxy;)V

    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/cp0;

    check-cast p2, Lcom/join/mgps/dto/BTActivityBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/cp0;Lcom/join/mgps/dto/BTActivityBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/cp0;Lcom/join/mgps/dto/BTActivityBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/cp0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/BTActivityBean;
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
    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cp0;->t(Lcom/join/mgps/dto/BTActivityBean;)V

    .line 3
    iget-object p2, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->clickProxy:Lcom/join/kotlin/ui/notice/ClickProxy;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cp0;->u(Lcom/join/kotlin/ui/notice/ClickProxy;)V

    return-void
.end method

.method public final setClickProxy(Lcom/join/kotlin/ui/notice/ClickProxy;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/notice/ClickProxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->clickProxy:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 7
    .line 8
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListAdapter;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
