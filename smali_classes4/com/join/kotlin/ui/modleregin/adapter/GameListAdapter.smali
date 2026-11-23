.class public final Lcom/join/kotlin/ui/modleregin/adapter/GameListAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lcom/join/android/app/mgsim/wufun/databinding/m7;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/GameListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0014J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\"\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/adapter/GameListAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Lcom/join/android/app/mgsim/wufun/databinding/BtListitemBinding;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameListAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/GameListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0d0108

    return p1
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/m7;

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/GameListAdapter;->onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/m7;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItem(Lcom/join/android/app/mgsim/wufun/databinding/m7;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/m7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/psk/kotlin/util/CommonListMainData;
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
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    const/4 p3, 0x3

    .line 3
    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p3

    if-nez p3, :cond_0

    new-instance p3, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;Z)V

    invoke-virtual {p2, p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->setAppitemShow(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->updateItemNormal(Lcom/join/mgps/dto/CollectionBeanSub;)V

    :cond_1
    const/16 p3, 0x1c

    .line 6
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/m7;

    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/GameListAdapter;->onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/m7;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Lcom/join/android/app/mgsim/wufun/databinding/m7;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/m7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/psk/kotlin/util/CommonListMainData;
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
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    const/4 p3, 0x3

    .line 3
    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p3

    if-nez p3, :cond_0

    new-instance p3, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;Z)V

    invoke-virtual {p2, p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->setAppitemShow(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->updateItemProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_1
    const/16 p3, 0x1c

    .line 6
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method
