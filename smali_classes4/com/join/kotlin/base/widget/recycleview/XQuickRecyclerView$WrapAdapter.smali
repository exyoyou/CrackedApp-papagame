.class public final Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WrapAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000cH\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J&\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0008\u0010\u001d\u001a\u00020\u000cH\u0016J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010(\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0016R\u0019\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006."
    }
    d2 = {
        "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "adapter",
        "<init>",
        "(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V",
        "getAdapter",
        "()Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "enableHeader",
        "",
        "isHeader",
        "position",
        "",
        "isFooter",
        "isRefreshHeader",
        "headersCount",
        "getHeadersCount",
        "()I",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "",
        "holder",
        "payloads",
        "",
        "",
        "refreshLoadMoreState",
        "getItemCount",
        "getItemViewType",
        "getItemId",
        "",
        "onAttachedToRecyclerView",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onDetachedFromRecyclerView",
        "onViewAttachedToWindow",
        "onViewDetachedFromWindow",
        "onViewRecycled",
        "onFailedToRecycleView",
        "unregisterAdapterDataObserver",
        "observer",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "registerAdapterDataObserver",
        "SimpleViewHolder",
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
.field private final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final enableHeader:Z

.field final synthetic this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    return-void
.end method

.method private final refreshLoadMoreState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getMFooterView()Lcom/join/mgps/customview/XListViewFooter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$isNoMore$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getMFooterView()Lcom/join/mgps/customview/XListViewFooter;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getMPullLoading()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getMFooterView()Lcom/join/mgps/customview/XListViewFooter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getMFooterView()Lcom/join/mgps/customview/XListViewFooter;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeadersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMHeaderViews$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getLoadingMoreEnabled$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-object v2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_1
    add-int/2addr v1, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_2
    add-int/2addr v1, v0

    .line 59
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    if-lt p1, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    sub-int/2addr p1, v1

    .line 20
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge p1, v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    return-wide v0

    .line 35
    :cond_0
    const-wide/16 v0, -0x1

    .line 36
    .line 37
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-boolean v2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v3, v2

    .line 19
    sub-int v2, p1, v3

    .line 20
    .line 21
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v3, v4}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$isReservedItemViewType(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    xor-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "XRecyclerView require itemViewType in adapter should be less than 10000 "

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iget-boolean v3, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const/16 p1, 0x2710

    .line 66
    .line 67
    return p1

    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isHeader(I)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    add-int/lit8 p1, p1, -0x1

    .line 79
    .line 80
    :cond_4
    invoke-static {}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getSHeaderTypes$cp()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    return p1

    .line 95
    :cond_5
    invoke-virtual {p0, p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isFooter(I)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    const/16 p1, 0x2711

    .line 102
    .line 103
    return p1

    .line 104
    :cond_6
    if-ge v2, v0, :cond_7

    .line 105
    .line 106
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 107
    .line 108
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    :cond_7
    return v1
.end method

.method public final isFooter(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getLoadingMoreEnabled$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v0, v2

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_0
    return v1
.end method

.method public final isHeader(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMHeaderViews$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v0

    .line 20
    if-ge p1, v2, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1
.end method

.method public final isRefreshHeader(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :cond_0
    return v1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 19
    .line 20
    new-instance v2, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;

    .line 21
    .line 22
    invoke-direct {v2, p0, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$onAttachedToRecyclerView$1;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->refreshLoadMoreState()V

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->refreshLoadMoreState()V

    return-void

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->enableHeader:Z

    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2710

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    new-instance p2, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;

    .line 11
    .line 12
    new-instance v0, Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p0, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p2

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 26
    .line 27
    invoke-static {v0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$isHeaderType(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance p1, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 36
    .line 37
    invoke-static {v0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getHeaderViewByType(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    const/16 v0, 0x2711

    .line 46
    .line 47
    if-ne p2, v0, :cond_2

    .line 48
    .line 49
    new-instance p1, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->getMFooterView()Lcom/join/mgps/customview/XListViewFooter;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p0, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter$SimpleViewHolder;-><init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "onCreateViewHolder(...)"

    .line 71
    .line 72
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isHeader(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isRefreshHeader(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->isFooter(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$WrapAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
