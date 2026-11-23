.class public final Lcom/join/mgps/adapter/t;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/t$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/mgps/dto/CollectionSevenListBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionModuleSevenAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionModuleSevenAdapter.kt\ncom/join/mgps/adapter/CollectionModuleSevenAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,366:1\n55#2:367\n55#2:368\n55#2:369\n55#2:370\n55#2:371\n*S KotlinDebug\n*F\n+ 1 CollectionModuleSevenAdapter.kt\ncom/join/mgps/adapter/CollectionModuleSevenAdapter\n*L\n48#1:367\n68#1:368\n88#1:369\n108#1:370\n128#1:371\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCollectionModuleSevenAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionModuleSevenAdapter.kt\ncom/join/mgps/adapter/CollectionModuleSevenAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,366:1\n55#2:367\n55#2:368\n55#2:369\n55#2:370\n55#2:371\n*S KotlinDebug\n*F\n+ 1 CollectionModuleSevenAdapter.kt\ncom/join/mgps/adapter/CollectionModuleSevenAdapter\n*L\n48#1:367\n68#1:368\n88#1:369\n108#1:370\n128#1:371\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Lcom/join/mgps/adapter/t$g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5


# instance fields
.field private final e:Lcom/join/android/app/component/video/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/adapter/t$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/t$g;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/adapter/t;->g:Lcom/join/mgps/adapter/t$g;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/join/android/app/component/video/h;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/android/app/component/video/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/CollectionSevenListBean;",
            ">;",
            "Lcom/join/android/app/component/video/h;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

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
    check-cast p1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/join/mgps/adapter/t;->e:Lcom/join/android/app/component/video/h;

    .line 21
    .line 22
    new-instance p1, Lcom/join/mgps/adapter/t$a;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/join/mgps/adapter/t$a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/join/mgps/adapter/t$b;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/t$b;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    const-class v1, Lv2/c;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, p2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Lcom/join/mgps/adapter/t$c;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/t$c;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    invoke-virtual {p1, v0, v1, p2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lcom/join/mgps/adapter/t$d;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/t$d;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    invoke-virtual {p1, v0, v1, p2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Lcom/join/mgps/adapter/t$e;

    .line 64
    .line 65
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/t$e;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    invoke-virtual {p1, v0, v1, p2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Lcom/join/mgps/adapter/t$f;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/t$f;-><init>(Lcom/join/mgps/adapter/t;)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x5

    .line 79
    invoke-virtual {p1, v0, v1, p2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final A(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a1767

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v0, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getCollection_id()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    xor-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    const v1, 0x7f0a1087

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lv2/c;->q(IZ)Lv2/c;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getSubTitle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v2, 0x7f0a1641

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getSubTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    xor-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {p1, v2, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lv2/c;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Lcom/join/mgps/adapter/p;

    .line 77
    .line 78
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/p;-><init>(Lcom/join/mgps/adapter/t;Lcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method private static final B(Lcom/join/mgps/adapter/t;Lcom/join/mgps/dto/CollectionSevenListBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getTpl_type()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionSevenListBean;->getCollection_id()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p0, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goColloctionList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/adapter/t;Lcom/join/mgps/dto/CollectionSevenListBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/adapter/t;->B(Lcom/join/mgps/adapter/t;Lcom/join/mgps/dto/CollectionSevenListBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/t;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/adapter/t;->x(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/t;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/adapter/t;Ljava/util/ArrayList;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/t;->u(Lcom/join/mgps/adapter/t;Ljava/util/ArrayList;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n(Ljava/util/ArrayList;Lcom/join/mgps/adapter/t;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/t;->z(Ljava/util/ArrayList;Lcom/join/mgps/adapter/t;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic o(Lcom/join/mgps/adapter/t;Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t;->t(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/join/mgps/adapter/t;Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t;->v(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/join/mgps/adapter/t;Lv2/c;ILcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/t;->w(Lv2/c;ILcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lcom/join/mgps/adapter/t;Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t;->y(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s(Lcom/join/mgps/adapter/t;Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/t;->A(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<com.join.mgps.dto.CommonGameInfoBean?>"

    .line 30
    .line 31
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast p2, Ljava/util/ArrayList;

    .line 35
    .line 36
    const v1, 0x7f0a1345

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lv2/c;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lcom/join/mgps/adapter/o;

    .line 59
    .line 60
    invoke-direct {v2, p2}, Lcom/join/mgps/adapter/o;-><init>(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    new-instance v3, Lcom/join/mgps/adapter/q;

    .line 64
    .line 65
    invoke-direct {v3, p0, p2}, Lcom/join/mgps/adapter/q;-><init>(Lcom/join/mgps/adapter/t;Ljava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method private static final u(Lcom/join/mgps/adapter/t;Ljava/util/ArrayList;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final v(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 9

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 22
    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "null cannot be cast to non-null type com.join.mgps.dto.CommonGameInfoBean"

    .line 30
    .line 31
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 35
    .line 36
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v3, 0x7f0a084f

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v3}, Lv2/c;->getView(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    :goto_0
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const v3, 0x7f0a0713

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {p1, v3, v4}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "getApp_size(...)"

    .line 99
    .line 100
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    const/16 v5, 0x400

    .line 108
    .line 109
    int-to-double v5, v5

    .line 110
    mul-double v3, v3, v5

    .line 111
    .line 112
    mul-double v3, v3, v5

    .line 113
    .line 114
    double-to-long v3, v3

    .line 115
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTagInfo()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    const-string v7, " | "

    .line 124
    .line 125
    invoke-static {v5, v6, v7}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const v6, 0x7f0a1a3d

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v6, v5}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->isHmCloud()Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    const v6, 0x7f0a1a3e

    .line 140
    .line 141
    .line 142
    if-eqz v5, :cond_2

    .line 143
    .line 144
    invoke-virtual {p1, v6, v2}, Lv2/c;->h(IZ)Lv2/c;

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p1, v6, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->Z2(J)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {p1, v6, v3}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 156
    .line 157
    .line 158
    const v3, 0x7f0a0712

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1, v3, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 166
    .line 167
    .line 168
    :cond_3
    const v0, 0x7f0a054e

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 176
    .line 177
    new-instance v3, Lm6/c;

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-direct {v3, v4, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 187
    .line 188
    .line 189
    const v0, 0x7f0a1bea

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 197
    .line 198
    if-eqz p1, :cond_7

    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->getUrl()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_5

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-nez v0, :cond_4

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eq v0, v2, :cond_7

    .line 236
    .line 237
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/MultiStandVideo;->setName(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/join/mgps/adapter/t;->e:Lcom/join/android/app/component/video/h;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    const/4 v5, 0x0

    .line 272
    const/4 v6, 0x0

    .line 273
    const/4 v7, 0x0

    .line 274
    const-string v8, ""

    .line 275
    .line 276
    move-object v3, p1

    .line 277
    invoke-virtual/range {v3 .. v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 296
    .line 297
    .line 298
    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Lcom/join/mgps/adapter/t$h;

    .line 303
    .line 304
    invoke-direct {v0, p2, p0}, Lcom/join/mgps/adapter/t$h;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/t;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    :cond_7
    :goto_3
    return-void
.end method

.method private final w(Lv2/c;ILcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    instance-of p2, p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    if-eqz p2, :cond_6

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string p3, "null cannot be cast to non-null type com.join.mgps.dto.CommonGameInfoBean"

    .line 20
    .line 21
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0a1a3b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1, v0, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a1a3f

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v0, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSpTagInfo()Lcom/join/mgps/dto/TipNew;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, " | "

    .line 73
    .line 74
    invoke-static {v0, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v2, 0x7f0a1a3d

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a1a3c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowScore()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p1, v0, v3}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const v3, 0x7f0a09fe

    .line 99
    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    if-ne v0, v4, :cond_2

    .line 103
    .line 104
    invoke-virtual {p1, v3, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p1, v3, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 109
    .line 110
    .line 111
    :goto_1
    const v0, 0x7f0a14a2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 119
    .line 120
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :goto_2
    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const v3, 0x7f0a1a3e

    .line 151
    .line 152
    .line 153
    if-nez v0, :cond_5

    .line 154
    .line 155
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->isHmCloud()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    invoke-virtual {p1, v3, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_4
    invoke-virtual {p1, v3, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    const-string v0, "getApp_size(...)"

    .line 173
    .line 174
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 178
    .line 179
    .line 180
    move-result-wide v0

    .line 181
    const/16 p3, 0x400

    .line 182
    .line 183
    int-to-double v4, p3

    .line 184
    mul-double v0, v0, v4

    .line 185
    .line 186
    mul-double v0, v0, v4

    .line 187
    .line 188
    double-to-long v0, v0

    .line 189
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {p1, v3, p3}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 194
    .line 195
    .line 196
    :cond_5
    :goto_3
    const p3, 0x7f0a054e

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p3}, Lv2/c;->getView(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    check-cast p3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 204
    .line 205
    new-instance v0, Lm6/c;

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-direct {v0, v1, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, v0}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 215
    .line 216
    .line 217
    const p3, 0x7f0a06d8

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p1, p3, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 228
    .line 229
    .line 230
    move-result p3

    .line 231
    invoke-virtual {p1, v2, p3}, Lv2/c;->h(IZ)Lv2/c;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 235
    .line 236
    .line 237
    move-result p3

    .line 238
    invoke-virtual {p1, v3, p3}, Lv2/c;->h(IZ)Lv2/c;

    .line 239
    .line 240
    .line 241
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 242
    .line 243
    new-instance p3, Lcom/join/mgps/adapter/s;

    .line 244
    .line 245
    invoke-direct {p3, p2, p0}, Lcom/join/mgps/adapter/s;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/t;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    :goto_4
    return-void
.end method

.method private static final x(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/t;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1, p0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final y(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    instance-of v1, v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionSevenListBean;->getItem()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<com.join.mgps.dto.CommonGameInfoBean>"

    .line 30
    .line 31
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast p2, Ljava/util/ArrayList;

    .line 35
    .line 36
    const v0, 0x7f0a1345

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/join/mgps/adapter/u;

    .line 59
    .line 60
    invoke-direct {v0, p2}, Lcom/join/mgps/adapter/u;-><init>(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/join/mgps/adapter/r;

    .line 67
    .line 68
    invoke-direct {p1, p2, p0}, Lcom/join/mgps/adapter/r;-><init>(Ljava/util/ArrayList;Lcom/join/mgps/adapter/t;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method private static final z(Ljava/util/ArrayList;Lcom/join/mgps/adapter/t;Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p2, "get(...)"

    .line 6
    .line 7
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 11
    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p2, p1, p0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final C(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/CollectionSevenListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
