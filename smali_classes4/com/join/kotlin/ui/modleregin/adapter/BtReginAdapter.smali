.class public final Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBtReginAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/BtReginAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,288:1\n1#2:289\n1869#3,2:290\n*S KotlinDebug\n*F\n+ 1 BtReginAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/BtReginAdapter\n*L\n171#1:290,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0014J\"\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\"\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0011H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Landroidx/databinding/ViewDataBinding;",
        "context",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "videoHelper",
        "Lcom/join/android/app/component/video/MyListViewVideoHelper;",
        "<init>",
        "(Landroidx/appcompat/app/AppCompatActivity;Lcom/join/android/app/component/video/MyListViewVideoHelper;)V",
        "getContext",
        "()Landroidx/appcompat/app/AppCompatActivity;",
        "setContext",
        "(Landroidx/appcompat/app/AppCompatActivity;)V",
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
        "getItemViewType",
        "position",
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
        "SMAP\nBtReginAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BtReginAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/BtReginAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,288:1\n1#2:289\n1869#3,2:290\n*S KotlinDebug\n*F\n+ 1 BtReginAdapter.kt\ncom/join/kotlin/ui/modleregin/adapter/BtReginAdapter\n*L\n171#1:290,2\n*E\n"
    }
.end annotation


# instance fields
.field private context:Landroidx/appcompat/app/AppCompatActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoHelper:Lcom/join/android/app/component/video/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/join/android/app/component/video/c;)V
    .locals 1
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic c(ILcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->onBindItem$lambda$4(ILcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;ILcom/join/mgps/dto/BannerBean;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->onBindItem$lambda$2(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;ILcom/join/mgps/dto/BannerBean;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;ILcom/join/mgps/dto/CollectionBeanSub;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->onBindItem$lambda$1(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;ILcom/join/mgps/dto/CollectionBeanSub;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onBindItem$lambda$1(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;ILcom/join/mgps/dto/CollectionBeanSub;I)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final onBindItem$lambda$2(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;ILcom/join/mgps/dto/BannerBean;I)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final onBindItem$lambda$4(ILcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;I)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p0, "item"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final getContext()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getListDatas()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/16 p1, 0x3e7

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getListDatas()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_2
    return p1
.end method

.method protected getLayoutResId(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f0d0184

    return p1

    :pswitch_1
    const p1, 0x7f0d0180

    return p1

    :pswitch_2
    const p1, 0x7f0d0107

    return p1

    :pswitch_3
    const p1, 0x7f0d010e

    return p1

    :pswitch_4
    const p1, 0x7f0d010c

    return p1

    :pswitch_5
    const p1, 0x7f0d010d

    return p1

    :pswitch_6
    const p1, 0x7f0d0108

    return p1

    :pswitch_7
    const p1, 0x7f0d0185

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getVideoHelper()Lcom/join/android/app/component/video/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1    # Landroidx/databinding/ViewDataBinding;
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
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result p3

    const v0, 0x7f0a054e

    const/4 v1, 0x0

    const/16 v2, 0x1a

    const/16 v3, 0xb

    const/16 v4, 0x27

    const/4 v5, 0x1

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 3
    :pswitch_1
    move-object p3, p1

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/ic;

    .line 4
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.collections.List<com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/List;

    .line 5
    new-instance p3, Lcom/join/kotlin/ui/modleregin/adapter/BtTaglistAdapter;

    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p3, v0}, Lcom/join/kotlin/ui/modleregin/adapter/BtTaglistAdapter;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1, v5, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 7
    invoke-virtual {p1, v4, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 8
    new-instance p1, Lcom/join/kotlin/ui/modleregin/adapter/c;

    invoke-direct {p1}, Lcom/join/kotlin/ui/modleregin/adapter/c;-><init>()V

    invoke-virtual {p3, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function3;)V

    goto/16 :goto_5

    .line 9
    :pswitch_2
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.collections.List<com.join.mgps.dto.CollectionBeanSub>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/List;

    .line 10
    invoke-virtual {p1, v4, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 11
    move-object p2, p1

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/k7;

    .line 12
    iget-object p3, p2, Lcom/join/android/app/mgsim/wufun/databinding/k7;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_0

    .line 13
    new-instance p2, Lcom/join/kotlin/ui/modleregin/adapter/HGamelistAdapter;

    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/HGamelistAdapter;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p3, Lcom/join/kotlin/ui/modleregin/adapter/a;

    invoke-direct {p3, p0}, Lcom/join/kotlin/ui/modleregin/adapter/a;-><init>(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;)V

    invoke-virtual {p2, p3}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function3;)V

    .line 15
    invoke-virtual {p1, v5, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    goto/16 :goto_5

    .line 16
    :cond_0
    iget-object p1, p2, Lcom/join/android/app/mgsim/wufun/databinding/k7;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 17
    :pswitch_3
    move-object p3, p1

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/x7;

    .line 18
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.collections.List<com.join.kotlin.ui.modleregin.modle.BtOnlineGame>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/List;

    .line 19
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    check-cast p2, Ljava/lang/Iterable;

    .line 22
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;

    .line 23
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getOnlineTime()J

    move-result-wide v3

    const/16 v6, 0x3e8

    int-to-long v6, v6

    mul-long v3, v3, v6

    .line 24
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getGameEntityList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_1

    .line 25
    invoke-static {v3, v4}, Lcom/join/mgps/Util/e0;->z(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v3, "\u4eca\u5929"

    goto :goto_3

    :cond_4
    const v6, 0x5265c00

    int-to-long v6, v6

    sub-long v8, v3, v6

    .line 26
    invoke-static {v8, v9}, Lcom/join/mgps/Util/e0;->z(J)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v3, "\u660e\u5929"

    goto :goto_3

    :cond_5
    add-long/2addr v6, v3

    .line 27
    invoke-static {v6, v7}, Lcom/join/mgps/Util/e0;->z(J)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v3, "\u6628\u5929"

    goto :goto_3

    :cond_6
    const-string v6, "MM-dd"

    .line 28
    invoke-static {v3, v4, v6}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    :goto_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v3, Lcom/join/kotlin/ui/modleregin/GameListFragment;

    invoke-direct {v3}, Lcom/join/kotlin/ui/modleregin/GameListFragment;-><init>()V

    .line 31
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "time"

    .line 32
    invoke-virtual {v2}, Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;->getOnlineTime()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 33
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_7
    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const/16 v1, 0x10

    invoke-virtual {p1, v1, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    const/16 p2, 0x2d

    .line 36
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    const/16 p2, 0x11

    .line 37
    invoke-virtual {p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 38
    move-object p2, p1

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/x7;

    iget-object p3, p2, Lcom/join/android/app/mgsim/wufun/databinding/x7;->c:Landroidx/viewpager/widget/ViewPager;

    const/16 v0, 0x33

    invoke-virtual {p1, v0, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 39
    iget-object p1, p2, Lcom/join/android/app/mgsim/wufun/databinding/x7;->c:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$6;

    invoke-direct {p2}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$6;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto/16 :goto_5

    .line 40
    :pswitch_4
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.collections.List<com.join.mgps.dto.BannerBean>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/List;

    .line 41
    invoke-virtual {p1, v4, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 42
    new-instance p2, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;

    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/HTagAdapter;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p3, Lcom/join/kotlin/ui/modleregin/adapter/b;

    invoke-direct {p3, p0}, Lcom/join/kotlin/ui/modleregin/adapter/b;-><init>(Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;)V

    invoke-virtual {p2, p3}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function3;)V

    .line 44
    invoke-virtual {p1, v5, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    goto/16 :goto_5

    .line 45
    :pswitch_5
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 46
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v1

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    const/16 v1, 0x31

    .line 47
    iget-object v4, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1, v1, v4}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 48
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    .line 50
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    :cond_9
    if-eqz v1, :cond_a

    .line 51
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 52
    :cond_a
    invoke-virtual {p1, v3, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 53
    new-instance p2, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 54
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getPosition()I

    move-result v3

    .line 55
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoCover()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-direct {p2, v3, v4, v1, v5}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    const/16 v1, 0x30

    .line 58
    invoke-virtual {p1, v1, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 59
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getShowWhiteBack()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    if-eqz p1, :cond_d

    .line 61
    new-instance p2, Lm6/c;

    .line 62
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 63
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p3

    .line 64
    invoke-direct {p2, v0, p3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    goto/16 :goto_5

    .line 65
    :pswitch_6
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p3

    const-string v2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    const/4 v2, 0x3

    .line 66
    invoke-virtual {p1, v2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 67
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p2

    if-nez p2, :cond_b

    .line 69
    new-instance p2, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v2

    invoke-direct {p2, v2, v1}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;Z)V

    invoke-virtual {p3, p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->setAppitemShow(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    :cond_b
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->updateItemNormal(Lcom/join/mgps/dto/CollectionBeanSub;)V

    :cond_c
    const/16 p2, 0x1c

    .line 71
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 72
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    if-eqz p1, :cond_d

    .line 73
    new-instance p2, Lm6/c;

    .line 74
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 75
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p3

    .line 76
    invoke-direct {p2, v0, p3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    goto :goto_5

    .line 77
    :pswitch_7
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.TitleModle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    invoke-virtual {p1, v3, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 79
    new-instance p2, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1;

    invoke-direct {p2, p1, p3}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1;-><init>(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 80
    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getShowWhiteBack()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    :cond_d
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1    # Landroidx/databinding/ViewDataBinding;
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
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;

    .line 4
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 5
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->z(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    .line 7
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameinfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 11
    :cond_3
    new-instance p2, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 12
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getPosition()I

    move-result v1

    .line 13
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getVideoCover()Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-direct {p2, v1, v2, v0, p3}, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;-><init>(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->A(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 16
    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->videoHelper:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->B(Lcom/join/android/app/component/video/c;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;

    .line 18
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getReMarks()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 19
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 20
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p2

    if-nez p2, :cond_5

    .line 21
    new-instance p2, Lcom/join/kotlin/domain/common/AppListItemShowBean;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/join/kotlin/domain/common/AppListItemShowBean;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;Z)V

    invoke-virtual {p3, p2}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->setAppitemShow(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    :cond_5
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getGameInfo()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/join/kotlin/domain/common/AppListItemShowBean;->updateItemProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_6
    const/16 p2, 0x1c

    .line 23
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;->getAppitemShow()Lcom/join/kotlin/domain/common/AppListItemShowBean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final setContext(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->context:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    return-void
.end method
