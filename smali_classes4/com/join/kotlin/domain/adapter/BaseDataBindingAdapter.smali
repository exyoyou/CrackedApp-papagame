.class public abstract Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;,
        Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;,
        Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "B:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\n\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u0004:\u0003=>?B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eH\u0016JU\u0010\u001f\u001a\u00020 2K\u0010\"\u001aG\u0012\u0013\u0012\u00110$\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008(\'\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008((\u0012\u0013\u0012\u00110$\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u00020 0#H\u0016J\u0016\u0010*\u001a\u00020 2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0016J\u0018\u0010,\u001a\u00020 2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001aH\u0016J\u0018\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020$H\u0016J&\u00102\u001a\u00020 2\u0006\u00103\u001a\u00020\u00052\u0006\u0010)\u001a\u00020$2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020605H\u0016J\u0018\u00102\u001a\u00020 2\u0006\u00103\u001a\u00020\u00052\u0006\u0010)\u001a\u00020$H\u0016J\u0008\u00107\u001a\u00020$H\u0016J\u0010\u00108\u001a\u00020$2\u0006\u00101\u001a\u00020$H%J\'\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00028\u00012\u0006\u0010(\u001a\u00028\u00002\u0008\u00103\u001a\u0004\u0018\u00010\u0005H$\u00a2\u0006\u0002\u0010;J\'\u0010<\u001a\u00020 2\u0006\u0010:\u001a\u00028\u00012\u0006\u0010(\u001a\u00028\u00002\u0008\u00103\u001a\u0004\u0018\u00010\u0005H$\u00a2\u0006\u0002\u0010;R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\tR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006@"
    }
    d2 = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "M",
        "B",
        "Landroidx/databinding/ViewDataBinding;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mContext",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getMContext",
        "()Landroid/content/Context;",
        "setMContext",
        "mOnItemClickListener",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;",
        "getMOnItemClickListener",
        "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;",
        "setMOnItemClickListener",
        "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V",
        "mOnItemLongClickListener",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;",
        "getMOnItemLongClickListener",
        "()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;",
        "setMOnItemLongClickListener",
        "(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V",
        "listDatas",
        "",
        "getListDatas",
        "()Ljava/util/List;",
        "setListDatas",
        "(Ljava/util/List;)V",
        "setOnItemClickListener",
        "",
        "onItemClickListener",
        "func",
        "Lkotlin/Function3;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "viewId",
        "item",
        "position",
        "setOnItemLongClickListener",
        "onItemLongClickListener",
        "submitList",
        "list",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "payloads",
        "",
        "",
        "getItemCount",
        "getLayoutResId",
        "onBindItem",
        "binding",
        "(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "onBindItemPayloads",
        "OnItemLongClickListener",
        "OnItemClickListener",
        "BaseBindingViewHolder",
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
.field private listDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->onBindViewHolder$lambda$0(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->onBindViewHolder$lambda$1(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p3, p1, p0, p2}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;->onItemClick(ILjava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p3, p1, p0, p2}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;->onItemLongClick(ILjava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected abstract getLayoutResId(I)I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public final getListDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMOnItemClickListener()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMOnItemLongClickListener()Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TM;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TM;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/kotlin/domain/adapter/a;

    invoke-direct {v2, p0, p1, p2}, Lcom/join/kotlin/domain/adapter/a;-><init>(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/join/kotlin/domain/adapter/b;

    invoke-direct {v2, p0, p1, p2}, Lcom/join/kotlin/domain/adapter/b;-><init>(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 9
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3}, Landroidx/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    .line 4
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p2, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
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
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p2}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getLayoutResId(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "getRoot(...)"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$BaseBindingViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method public final setListDatas(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TM;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method protected final setMOnItemClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMOnItemLongClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
            "TM;>;)V"
        }
    .end annotation

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TM;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1;

    invoke-direct {v0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    iput-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener<",
            "TM;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onItemLongClickListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->mOnItemLongClickListener:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemLongClickListener;

    .line 7
    .line 8
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TM;>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->listDatas:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method
