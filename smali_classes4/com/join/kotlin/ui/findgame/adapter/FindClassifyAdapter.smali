.class public final Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$FindClassifyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u001d\u001e\u001f !B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "context",
        "Landroid/content/Context;",
        "showdatas",
        "",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getShowdatas",
        "()Ljava/util/List;",
        "setShowdatas",
        "(Ljava/util/List;)V",
        "onCreateViewHolder",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "type",
        "",
        "getItemViewType",
        "position",
        "onBindViewHolder",
        "",
        "viewHolderx",
        "getItemCount",
        "FindClassifyType",
        "ClassifyGameItemViewHolder",
        "ChoiceTitleHolder",
        "ChoiceAdHolder",
        "DiscountTypeHolder",
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
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "showdatas"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->onBindViewHolder$lambda$5(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->onBindViewHolder$lambda$2(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final onBindViewHolder$lambda$2(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getTpl_type()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getComponent_id()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goColloctionList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final onBindViewHolder$lambda$5(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setKeepOrginFrom(Z)V

    .line 21
    .line 22
    .line 23
    const-string v1, "208"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setOrginFrom(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final getShowdatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewHolderx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->getItemViewType(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_5

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    const-string v2, "getRoot(...)"

    .line 15
    .line 16
    if-eq v0, v1, :cond_4

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x7

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 39
    .line 40
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/t9;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t9;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v2, v1

    .line 57
    :goto_0
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/t9;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t9;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/t9;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/t9;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Lcom/join/kotlin/ui/findgame/adapter/d;

    .line 84
    .line 85
    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/ui/findgame/adapter/d;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 94
    .line 95
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const-string v1, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub"

    .line 111
    .line 112
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    check-cast p2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 116
    .line 117
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/u9;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/u9;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 126
    .line 127
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/u9;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/u9;->d:Landroid/widget/TextView;

    .line 143
    .line 144
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/u9;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/u9;->a()Landroid/widget/LinearLayout;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/b;

    .line 167
    .line 168
    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/b;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData"

    .line 189
    .line 190
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;

    .line 194
    .line 195
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;

    .line 196
    .line 197
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 198
    .line 199
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/aa;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getPic()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    sget-object v3, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 219
    .line 220
    invoke-static {v1, p2, v3}, Lcom/join/android/app/common/utils/l;->q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/aa;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 228
    .line 229
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/aa;->f:Landroid/widget/TextView;

    .line 245
    .line 246
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/aa;->g:Landroid/widget/TextView;

    .line 262
    .line 263
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p2}, Lcom/join/android/app/mgsim/wufun/databinding/aa;->a()Landroid/widget/RelativeLayout;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v1, Lcom/join/kotlin/ui/findgame/adapter/a;

    .line 286
    .line 287
    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/a;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 288
    .line 289
    .line 290
    invoke-static {p2, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/aa;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/aa;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 298
    .line 299
    new-instance p2, Lm6/c;

    .line 300
    .line 301
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 302
    .line 303
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v0, Lcom/join/kotlin/base/impl/Downloadable;

    .line 306
    .line 307
    invoke-direct {p2, v1, v0}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :cond_5
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;

    .line 316
    .line 317
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    instance-of v0, v0, Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v0, :cond_6

    .line 332
    .line 333
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 334
    .line 335
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 340
    .line 341
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 346
    .line 347
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    check-cast p2, Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/m9;->c:Landroid/widget/TextView;

    .line 357
    .line 358
    const/16 v1, 0x8

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_6
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 365
    .line 366
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    instance-of v0, v0, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 377
    .line 378
    if-eqz v0, :cond_7

    .line 379
    .line 380
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 381
    .line 382
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 383
    .line 384
    .line 385
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 386
    .line 387
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object p2

    .line 391
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 392
    .line 393
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData"

    .line 398
    .line 399
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 403
    .line 404
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 405
    .line 406
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getTitle()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p2

    .line 410
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/m9;->c:Landroid/widget/TextView;

    .line 415
    .line 416
    const-string v2, "more"

    .line 417
    .line 418
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    new-instance v2, Lcom/join/kotlin/ui/findgame/adapter/c;

    .line 422
    .line 423
    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/c;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v1, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 427
    .line 428
    .line 429
    goto :goto_1

    .line 430
    :cond_7
    const-string p2, ""

    .line 431
    .line 432
    :goto_1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/m9;->d:Landroid/widget/TextView;

    .line 437
    .line 438
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    .line 440
    .line 441
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "viewGroup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const-string v1, "inflate(...)"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq p2, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p2, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    if-eq p2, v0, :cond_0

    .line 20
    .line 21
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/m9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/m9;)V

    .line 37
    .line 38
    .line 39
    return-object p2

    .line 40
    :cond_0
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/t9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/t9;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$DiscountTypeHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/t9;)V

    .line 56
    .line 57
    .line 58
    return-object p2

    .line 59
    :cond_1
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/u9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/u9;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/u9;)V

    .line 75
    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_2
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/aa;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/aa;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/aa;)V

    .line 94
    .line 95
    .line 96
    return-object p2

    .line 97
    :cond_3
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/m9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/m9;)V

    .line 113
    .line 114
    .line 115
    return-object p2
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setShowdatas(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;->showdatas:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
