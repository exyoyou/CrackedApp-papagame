.class public Lcom/join/android/app/mgsim/wufun/databinding/gn0;
.super Lcom/join/android/app/mgsim/wufun/databinding/fn0;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final n:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final o:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final j:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Lcom/join/android/app/mgsim/wufun/databinding/c7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->n:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 8
    .line 9
    const-string v1, "bindding_load_layout_include"

    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x4

    .line 16
    filled-new-array {v2}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f0d0100

    .line 21
    .line 22
    .line 23
    filled-new-array {v3}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->o:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->n:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->o:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v7, 0x1

    .line 2
    aget-object v0, p3, v7

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/mgsim/wufun/databinding/fn0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->j:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/c7;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->k:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 12
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v7}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->l:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->invalidateAll()V

    return-void
.end method

.method private I(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleLoadBindData",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private J(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleRecycleViewStatus",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method private K(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleShowDatas",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;",
            ">;>;I)Z"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method


# virtual methods
.method public D(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
            "Ljava/lang/Object;",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->f:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x40

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public E(Lcom/join/kotlin/ui/notice/ClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/notice/ClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Click"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->g:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x80

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public F(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/domain/common/LoadBindClickProxy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "LoadBindProxy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->h:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x8

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x1e

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public G(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V
    .locals 4
    .param p1    # Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RecycleviewListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x20

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x28

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public H(Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ViewModle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->e:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x10

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x32

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public final a(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceId",
            "callbackArg_0"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->g:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/join/kotlin/ui/notice/ClickProxy;->onClickBack()V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->h:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->e:Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 14
    .line 15
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 16
    .line 17
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->f:Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 18
    .line 19
    const-wide/16 v9, 0x177

    .line 20
    .line 21
    and-long/2addr v9, v2

    .line 22
    const-wide/16 v13, 0x112

    .line 23
    .line 24
    const-wide/16 v15, 0x175

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    cmp-long v17, v9, v4

    .line 28
    .line 29
    if-eqz v17, :cond_d

    .line 30
    .line 31
    and-long v9, v2, v15

    .line 32
    .line 33
    cmp-long v17, v9, v4

    .line 34
    .line 35
    if-eqz v17, :cond_2

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getRecycleViewStatus()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    :goto_0
    invoke-virtual {v1, v11, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 51
    .line 52
    .line 53
    const/4 v11, 0x2

    .line 54
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 55
    .line 56
    .line 57
    if-eqz v9, :cond_1

    .line 58
    .line 59
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/lang/Integer;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v9, 0x0

    .line 67
    :goto_1
    if-eqz v10, :cond_3

    .line 68
    .line 69
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    check-cast v10, Ljava/util/List;

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/4 v9, 0x0

    .line 77
    :cond_3
    const/4 v10, 0x0

    .line 78
    :goto_2
    and-long v18, v2, v13

    .line 79
    .line 80
    cmp-long v11, v18, v4

    .line 81
    .line 82
    if-eqz v11, :cond_b

    .line 83
    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    .line 89
    move-result-object v18

    .line 90
    move-object/from16 v12, v18

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/4 v12, 0x0

    .line 94
    :goto_3
    const/4 v13, 0x1

    .line 95
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 96
    .line 97
    .line 98
    if-eqz v12, :cond_5

    .line 99
    .line 100
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    check-cast v12, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    const/4 v12, 0x0

    .line 108
    :goto_4
    if-eqz v12, :cond_6

    .line 109
    .line 110
    invoke-virtual {v12}, Lcom/join/kotlin/domain/common/LoadBindindData;->getShowStatus()I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    goto :goto_5

    .line 115
    :cond_6
    const/4 v14, 0x0

    .line 116
    :goto_5
    if-ne v14, v13, :cond_7

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_7
    const/4 v13, 0x0

    .line 120
    :goto_6
    if-eqz v11, :cond_9

    .line 121
    .line 122
    if-eqz v13, :cond_8

    .line 123
    .line 124
    const-wide/16 v20, 0x400

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_8
    const-wide/16 v20, 0x200

    .line 128
    .line 129
    :goto_7
    or-long v2, v2, v20

    .line 130
    .line 131
    :cond_9
    if-eqz v13, :cond_a

    .line 132
    .line 133
    const/4 v11, 0x0

    .line 134
    goto :goto_8

    .line 135
    :cond_a
    const/16 v11, 0x8

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_b
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    :goto_8
    const-wide/16 v13, 0x110

    .line 141
    .line 142
    and-long v20, v2, v13

    .line 143
    .line 144
    cmp-long v13, v20, v4

    .line 145
    .line 146
    if-eqz v13, :cond_c

    .line 147
    .line 148
    if-eqz v6, :cond_c

    .line 149
    .line 150
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;->getTitle()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    goto :goto_9

    .line 155
    :cond_c
    const/4 v6, 0x0

    .line 156
    goto :goto_9

    .line 157
    :cond_d
    const/4 v6, 0x0

    .line 158
    const/4 v9, 0x0

    .line 159
    const/4 v10, 0x0

    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    :goto_9
    and-long v13, v2, v15

    .line 163
    .line 164
    cmp-long v15, v13, v4

    .line 165
    .line 166
    const-wide/16 v13, 0x100

    .line 167
    .line 168
    and-long/2addr v13, v2

    .line 169
    cmp-long v16, v13, v4

    .line 170
    .line 171
    if-eqz v16, :cond_e

    .line 172
    .line 173
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->b:Landroid/widget/ImageView;

    .line 174
    .line 175
    iget-object v14, v1, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->l:Landroid/view/View$OnClickListener;

    .line 176
    .line 177
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    :cond_e
    const-wide/16 v13, 0x112

    .line 181
    .line 182
    and-long/2addr v13, v2

    .line 183
    cmp-long v16, v13, v4

    .line 184
    .line 185
    if-eqz v16, :cond_f

    .line 186
    .line 187
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->k:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 188
    .line 189
    invoke-virtual {v13, v12}, Lcom/join/android/app/mgsim/wufun/databinding/c7;->t(Lcom/join/kotlin/domain/common/LoadBindindData;)V

    .line 190
    .line 191
    .line 192
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 193
    .line 194
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    :cond_f
    const-wide/16 v11, 0x108

    .line 198
    .line 199
    and-long/2addr v11, v2

    .line 200
    cmp-long v13, v11, v4

    .line 201
    .line 202
    if-eqz v13, :cond_10

    .line 203
    .line 204
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->k:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 205
    .line 206
    invoke-virtual {v11, v0}, Lcom/join/android/app/mgsim/wufun/databinding/c7;->u(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    .line 207
    .line 208
    .line 209
    :cond_10
    if-eqz v15, :cond_11

    .line 210
    .line 211
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 212
    .line 213
    invoke-static {v0, v10, v8, v9, v7}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->xrecycleviewadapterBinding(Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Ljava/util/List;Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;Ljava/lang/Integer;Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 214
    .line 215
    .line 216
    :cond_11
    const-wide/16 v7, 0x110

    .line 217
    .line 218
    and-long/2addr v2, v7

    .line 219
    cmp-long v0, v2, v4

    .line 220
    .line 221
    if-eqz v0, :cond_12

    .line 222
    .line 223
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/fn0;->d:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    :cond_12
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->k:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 229
    .line 230
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x1

    .line 7
    cmp-long v5, v0, v2

    .line 8
    .line 9
    if-eqz v5, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v4

    .line 13
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->k:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v4

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x100

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->m:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->k:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->K(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->I(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->J(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->k:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->F(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x32

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    check-cast p2, Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->H(Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x28

    .line 23
    .line 24
    if-ne v0, p1, :cond_2

    .line 25
    .line 26
    check-cast p2, Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->G(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-ne v1, p1, :cond_3

    .line 33
    .line 34
    check-cast p2, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->D(Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v0, 0x8

    .line 41
    .line 42
    if-ne v0, p1, :cond_4

    .line 43
    .line 44
    check-cast p2, Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/gn0;->E(Lcom/join/kotlin/ui/notice/ClickProxy;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1
.end method
