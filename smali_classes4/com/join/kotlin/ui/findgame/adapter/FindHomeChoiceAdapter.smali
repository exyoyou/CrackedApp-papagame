.class public final Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemPicViewHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListAdapter;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListViewHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;,
        Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$FindChoiceType;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\n\u001d\u001e\u001f !\"#$%&B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0016H\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;",
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
        "onBindViewHolder",
        "",
        "viewHolder",
        "position",
        "getItemViewType",
        "getItemCount",
        "ChoiceTagHolder",
        "ChoiceAdHolder",
        "ChoiceTitleHolder",
        "ChoiceGamelistHolder",
        "FindChoiceType",
        "ChoiceGameItemViewHolder",
        "ChoiceGamePicListViewHolder",
        "ChoiceGameItemPicViewHolder",
        "ChoiceGameListAdapter",
        "ChoiceGamePicListAdapter",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/mgps/dto/CollectionBeanSub;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/mgps/dto/CollectionBeanSub;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->onBindViewHolder$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/kotlin/ui/findgame/data/TagData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/kotlin/ui/findgame/data/TagData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/mgps/dto/CollectionBeanSub;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/kotlin/ui/findgame/data/TagData;)Lkotlin/Unit;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/join/kotlin/ui/findgame/CategoryDetailListActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/TagData;->getType()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "typeId"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "tagId"

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/TagData;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "tagName"

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/data/TagData;->getTitle()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method private static final onBindViewHolder$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getComponent_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "461506587"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x1d

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getComponent_id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Lcom/join/mgps/dto/ExtBean;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "3"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object p1, p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object p1, p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 66
    .line 67
    iget-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getTpl_type()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getComponent_id()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p1, v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goColloctionList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->getItemViewType(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    const-string v3, "getRoot(...)"

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    const-string v3, "recycleView"

    .line 24
    .line 25
    const-string v4, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.mgps.dto.CollectionBeanSub>"

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListViewHolder;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListViewHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/c9;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/c9;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListAdapter;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 77
    .line 78
    invoke-direct {v0, v1, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d9;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d9;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 129
    .line 130
    invoke-direct {v0, v1, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.findgame.data.TagData>"

    .line 151
    .line 152
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/l9;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/l9;->c:Landroid/widget/LinearLayout;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    .line 169
    .line 170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/join/android/app/mgsim/wufun/databinding/k9;->inflate(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/k9;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v2, "inflate(...)"

    .line 197
    .line 198
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/l9;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/l9;->c:Landroid/widget/LinearLayout;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/join/android/app/mgsim/wufun/databinding/k9;->a()Landroid/widget/LinearLayout;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/join/android/app/mgsim/wufun/databinding/k9;->a()Landroid/widget/LinearLayout;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance v4, Lcom/join/kotlin/ui/findgame/adapter/f;

    .line 222
    .line 223
    invoke-direct {v4, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/f;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/kotlin/ui/findgame/data/TagData;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v4}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/k9;->c:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/data/TagData;->getTitle()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 246
    .line 247
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData"

    .line 252
    .line 253
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;

    .line 257
    .line 258
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;

    .line 259
    .line 260
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/j9;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 269
    .line 270
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 271
    .line 272
    new-instance v4, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1;

    .line 273
    .line 274
    invoke-direct {v4, p2, p0, v2}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$onBindViewHolder$1;-><init>(Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v4}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/j9;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 285
    .line 286
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceBannerData;->getPic()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 291
    .line 292
    const v4, 0x7f08018d

    .line 293
    .line 294
    .line 295
    invoke-static {v1, p2, v2, v4}, Lcom/join/android/app/common/utils/l;->r(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/j9;->e:Landroid/widget/TextView;

    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/j9;->f:Landroid/widget/TextView;

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/j9;->a()Landroid/widget/RelativeLayout;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/e;

    .line 336
    .line 337
    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/e;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 338
    .line 339
    .line 340
    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :cond_4
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;

    .line 346
    .line 347
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 348
    .line 349
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    instance-of v0, v0, Ljava/lang/String;

    .line 360
    .line 361
    if-eqz v0, :cond_5

    .line 362
    .line 363
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 364
    .line 365
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 370
    .line 371
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 376
    .line 377
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    check-cast p2, Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/m9;->c:Landroid/widget/TextView;

    .line 387
    .line 388
    const/16 v1, 0x8

    .line 389
    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    goto :goto_1

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 395
    .line 396
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Lcom/psk/kotlin/util/CommonListMainData;

    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    instance-of v0, v0, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 407
    .line 408
    if-eqz v0, :cond_6

    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/m9;->c:Landroid/widget/TextView;

    .line 415
    .line 416
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 420
    .line 421
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 425
    .line 426
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 431
    .line 432
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object p2

    .line 436
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData"

    .line 437
    .line 438
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;

    .line 442
    .line 443
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 444
    .line 445
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/FindChoiceColloctionListData;->getTitle()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/m9;->c:Landroid/widget/TextView;

    .line 454
    .line 455
    const-string v2, "more"

    .line 456
    .line 457
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v2, Lcom/join/kotlin/ui/findgame/adapter/g;

    .line 461
    .line 462
    invoke-direct {v2, v0, p0}, Lcom/join/kotlin/ui/findgame/adapter/g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;)V

    .line 463
    .line 464
    .line 465
    invoke-static {v1, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 466
    .line 467
    .line 468
    goto :goto_1

    .line 469
    :cond_6
    const-string p2, ""

    .line 470
    .line 471
    :goto_1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/m9;->d:Landroid/widget/TextView;

    .line 476
    .line 477
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    :cond_7
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
    if-eq p2, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p2, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p2, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p2, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x6

    .line 22
    if-eq p2, v0, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/j9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/j9;)V

    .line 40
    .line 41
    .line 42
    return-object p2

    .line 43
    :cond_0
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListViewHolder;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/c9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/c9;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamePicListViewHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/c9;)V

    .line 59
    .line 60
    .line 61
    return-object p2

    .line 62
    :cond_1
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/d9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/d9;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/d9;)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_2
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/l9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/l9;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/l9;)V

    .line 97
    .line 98
    .line 99
    return-object p2

    .line 100
    :cond_3
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 103
    .line 104
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/j9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/j9;)V

    .line 116
    .line 117
    .line 118
    return-object p2

    .line 119
    :cond_4
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/m9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/m9;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/m9;)V

    .line 135
    .line 136
    .line 137
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->context:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;->showdatas:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
