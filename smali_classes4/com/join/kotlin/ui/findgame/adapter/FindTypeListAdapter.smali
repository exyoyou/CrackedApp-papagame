.class public final Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$FindClassifyType;,
        Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;,
        Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;,
        Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004*+,-B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0006J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0006H\u0016J\u0018\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\u0006H\u0016J\u0010\u0010(\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u0006H\u0016J\u0008\u0010)\u001a\u00020\u0006H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006."
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "context",
        "Landroid/content/Context;",
        "typeId",
        "",
        "showdatas",
        "",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "listener",
        "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;",
        "<init>",
        "(Landroid/content/Context;ILjava/util/List;Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getTypeId",
        "()I",
        "setTypeId",
        "(I)V",
        "getShowdatas",
        "()Ljava/util/List;",
        "setShowdatas",
        "(Ljava/util/List;)V",
        "getListener",
        "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;",
        "setListener",
        "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V",
        "updateDatas",
        "",
        "typeIdx",
        "onCreateViewHolder",
        "viewgroup",
        "Landroid/view/ViewGroup;",
        "type",
        "onBindViewHolder",
        "viewHolder",
        "position",
        "getItemViewType",
        "getItemCount",
        "ViewTypeImage",
        "ViewTypeText",
        "FindClassifyType",
        "OnItenSelected",
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

.field private listener:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;
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

.field private typeId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/psk/kotlin/util/CommonListMainData;",
            ">;",
            "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;",
            ")V"
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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->context:Landroid/content/Context;

    .line 20
    .line 21
    iput p2, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->typeId:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->showdatas:Ljava/util/List;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->listener:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->listener:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;

    .line 2
    .line 3
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;->onItemselected(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->listener:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;

    .line 2
    .line 3
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;->onItemselected(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->showdatas:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->showdatas:Ljava/util/List;

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

.method public final getListener()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->listener:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;

    .line 2
    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->showdatas:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTypeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->typeId:I

    .line 2
    .line 3
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
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
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->getItemViewType(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    const-string v2, "getRoot(...)"

    .line 12
    .line 13
    const-string v3, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData"

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;

    .line 23
    .line 24
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 25
    .line 26
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->showdatas:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 45
    .line 46
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/r9;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/r9;->c:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/r9;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Lcom/join/android/app/mgsim/wufun/databinding/r9;->a()Landroid/widget/LinearLayout;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/r9;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/r9;->c:Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/r9;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/r9;->a()Landroid/widget/LinearLayout;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/l;

    .line 113
    .line 114
    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/l;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    check-cast p1, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;

    .line 122
    .line 123
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 124
    .line 125
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->showdatas:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 144
    .line 145
    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/q9;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p2}, Lcom/join/android/app/mgsim/wufun/databinding/q9;->a()Landroid/widget/LinearLayout;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/q9;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/q9;->d:Landroid/widget/TextView;

    .line 171
    .line 172
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->isSelected()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/q9;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/q9;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 188
    .line 189
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getPic()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {p2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/q9;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/q9;->d:Landroid/widget/TextView;

    .line 205
    .line 206
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->getTitle()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/q9;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/q9;->a()Landroid/widget/LinearLayout;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/k;

    .line 229
    .line 230
    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/ui/findgame/adapter/k;-><init>(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 231
    .line 232
    .line 233
    invoke-static {p1, p2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 234
    .line 235
    .line 236
    :goto_0
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
    const-string v0, "viewgroup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const-string v1, "inflate(...)"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq p2, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    if-eq p2, v0, :cond_0

    .line 14
    .line 15
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/r9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/r9;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/r9;)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :cond_0
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/r9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/r9;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/r9;)V

    .line 50
    .line 51
    .line 52
    return-object p2

    .line 53
    :cond_1
    new-instance p2, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, p1, v2}, Lcom/join/android/app/mgsim/wufun/databinding/q9;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/q9;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, p1}, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/q9;)V

    .line 69
    .line 70
    .line 71
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setListener(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->listener:Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->showdatas:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setTypeId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->typeId:I

    .line 2
    .line 3
    return-void
.end method

.method public final updateDatas(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;->typeId:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
