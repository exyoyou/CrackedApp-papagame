.class public Lcom/join/android/app/mgsim/wufun/databinding/g1;
.super Lcom/join/android/app/mgsim/wufun/databinding/f1;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final o:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final p:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final k:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final l:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->o:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/g1;->p:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/g1;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    const/4 v3, 0x4

    const/4 v9, 0x1

    .line 2
    aget-object v0, p3, v9

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v10, 0x2

    aget-object v0, p3, v10

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/join/android/app/mgsim/wufun/databinding/f1;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->k:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 12
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v9}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->l:Landroid/view/View$OnClickListener;

    .line 13
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v10}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->m:Landroid/view/View$OnClickListener;

    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->invalidateAll()V

    return-void
.end method

.method private F(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleCommitEnableStatus",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    const-wide/16 v0, 0x8

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

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

.method private G(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleCommitText",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

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

.method private H(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleListArchive",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArchiveListBean;",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

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
.method public B(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
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

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-void
.end method

.method public C(Lcom/join/kotlin/ui/endgame/ISlotListener;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/endgame/ISlotListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->j:Lcom/join/kotlin/ui/endgame/ISlotListener;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    const-wide/16 v2, 0x20

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x1d

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

.method public D(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
    .locals 0
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->i:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    .line 3
    return-void
.end method

.method public E(Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->g:Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    const-wide/16 v2, 0x40

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

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
    .locals 2
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
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->j:Lcom/join/kotlin/ui/endgame/ISlotListener;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    :cond_1
    if-eqz p2, :cond_4

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/join/kotlin/ui/endgame/ISlotListener;->onCommit()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->j:Lcom/join/kotlin/ui/endgame/ISlotListener;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    :cond_3
    if-eqz p2, :cond_4

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/join/kotlin/ui/endgame/ISlotListener;->onBack()V

    .line 28
    .line 29
    .line 30
    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->g:Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 12
    .line 13
    const-wide/16 v6, 0x14f

    .line 14
    .line 15
    and-long/2addr v6, v2

    .line 16
    const-wide/16 v8, 0x144

    .line 17
    .line 18
    const-wide/16 v12, 0x140

    .line 19
    .line 20
    const-wide/16 v14, 0x142

    .line 21
    .line 22
    const-wide/16 v16, 0x141

    .line 23
    .line 24
    const/16 v18, 0x0

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    cmp-long v11, v6, v4

    .line 28
    .line 29
    if-eqz v11, :cond_16

    .line 30
    .line 31
    and-long v6, v2, v16

    .line 32
    .line 33
    const/4 v11, 0x1

    .line 34
    cmp-long v22, v6, v4

    .line 35
    .line 36
    if-eqz v22, :cond_7

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object/from16 v6, v18

    .line 46
    .line 47
    :goto_0
    invoke-virtual {v1, v10, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 48
    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object/from16 v6, v18

    .line 60
    .line 61
    :goto_1
    if-eqz v6, :cond_2

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/join/kotlin/domain/common/LoadBindindData;->getShowStatus()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 v6, 0x0

    .line 69
    :goto_2
    if-ne v6, v11, :cond_3

    .line 70
    .line 71
    const/4 v6, 0x1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/4 v6, 0x0

    .line 74
    :goto_3
    if-eqz v22, :cond_5

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    const-wide/16 v22, 0x1000

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const-wide/16 v22, 0x800

    .line 82
    .line 83
    :goto_4
    or-long v2, v2, v22

    .line 84
    .line 85
    :cond_5
    if-eqz v6, :cond_6

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/16 v6, 0x8

    .line 89
    .line 90
    goto :goto_6

    .line 91
    :cond_7
    :goto_5
    const/4 v6, 0x0

    .line 92
    :goto_6
    and-long v22, v2, v14

    .line 93
    .line 94
    cmp-long v7, v22, v4

    .line 95
    .line 96
    if-eqz v7, :cond_e

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    .line 103
    move-result-object v22

    .line 104
    move-object/from16 v10, v22

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_8
    move-object/from16 v10, v18

    .line 108
    .line 109
    :goto_7
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 110
    .line 111
    .line 112
    if-eqz v10, :cond_9

    .line 113
    .line 114
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    check-cast v10, Ljava/util/List;

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_9
    move-object/from16 v10, v18

    .line 122
    .line 123
    :goto_8
    if-eqz v10, :cond_a

    .line 124
    .line 125
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v23

    .line 129
    goto :goto_9

    .line 130
    :cond_a
    const/16 v23, 0x0

    .line 131
    .line 132
    :goto_9
    if-lez v23, :cond_b

    .line 133
    .line 134
    goto :goto_a

    .line 135
    :cond_b
    const/4 v11, 0x0

    .line 136
    :goto_a
    if-eqz v7, :cond_d

    .line 137
    .line 138
    if-eqz v11, :cond_c

    .line 139
    .line 140
    const-wide/16 v23, 0x400

    .line 141
    .line 142
    goto :goto_b

    .line 143
    :cond_c
    const-wide/16 v23, 0x200

    .line 144
    .line 145
    :goto_b
    or-long v2, v2, v23

    .line 146
    .line 147
    :cond_d
    if-eqz v11, :cond_f

    .line 148
    .line 149
    const/16 v11, 0x8

    .line 150
    .line 151
    goto :goto_c

    .line 152
    :cond_e
    move-object/from16 v10, v18

    .line 153
    .line 154
    :cond_f
    const/4 v11, 0x0

    .line 155
    :goto_c
    and-long v23, v2, v12

    .line 156
    .line 157
    cmp-long v7, v23, v4

    .line 158
    .line 159
    if-eqz v7, :cond_10

    .line 160
    .line 161
    if-eqz v0, :cond_10

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getTitle()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    goto :goto_d

    .line 168
    :cond_10
    move-object/from16 v7, v18

    .line 169
    .line 170
    :goto_d
    and-long v23, v2, v8

    .line 171
    .line 172
    cmp-long v21, v23, v4

    .line 173
    .line 174
    if-eqz v21, :cond_12

    .line 175
    .line 176
    if-eqz v0, :cond_11

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getCommitText()Landroidx/lifecycle/MutableLiveData;

    .line 179
    .line 180
    .line 181
    move-result-object v21

    .line 182
    move-object/from16 v12, v21

    .line 183
    .line 184
    goto :goto_e

    .line 185
    :cond_11
    move-object/from16 v12, v18

    .line 186
    .line 187
    :goto_e
    const/4 v13, 0x2

    .line 188
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 189
    .line 190
    .line 191
    if-eqz v12, :cond_12

    .line 192
    .line 193
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    check-cast v12, Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_f

    .line 200
    :cond_12
    move-object/from16 v12, v18

    .line 201
    .line 202
    :goto_f
    const-wide/16 v19, 0x148

    .line 203
    .line 204
    and-long v25, v2, v19

    .line 205
    .line 206
    cmp-long v13, v25, v4

    .line 207
    .line 208
    if-eqz v13, :cond_15

    .line 209
    .line 210
    if-eqz v0, :cond_13

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getCommitEnableStatus()Landroidx/lifecycle/MutableLiveData;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    goto :goto_10

    .line 217
    :cond_13
    move-object/from16 v0, v18

    .line 218
    .line 219
    :goto_10
    const/4 v13, 0x3

    .line 220
    invoke-virtual {v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 221
    .line 222
    .line 223
    if-eqz v0, :cond_14

    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    move-object/from16 v18, v0

    .line 230
    .line 231
    check-cast v18, Ljava/lang/Boolean;

    .line 232
    .line 233
    :cond_14
    invoke-static/range {v18 .. v18}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    goto :goto_11

    .line 238
    :cond_15
    const/4 v0, 0x0

    .line 239
    :goto_11
    move/from16 v27, v11

    .line 240
    .line 241
    move-object v11, v7

    .line 242
    move-object v7, v10

    .line 243
    move/from16 v10, v27

    .line 244
    .line 245
    goto :goto_12

    .line 246
    :cond_16
    move-object/from16 v7, v18

    .line 247
    .line 248
    move-object v11, v7

    .line 249
    move-object v12, v11

    .line 250
    const/4 v0, 0x0

    .line 251
    const/4 v6, 0x0

    .line 252
    const/4 v10, 0x0

    .line 253
    :goto_12
    const-wide/16 v21, 0x100

    .line 254
    .line 255
    and-long v21, v2, v21

    .line 256
    .line 257
    cmp-long v13, v21, v4

    .line 258
    .line 259
    if-eqz v13, :cond_17

    .line 260
    .line 261
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->b:Landroid/widget/ImageView;

    .line 262
    .line 263
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/g1;->l:Landroid/view/View$OnClickListener;

    .line 264
    .line 265
    invoke-virtual {v13, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->e:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/g1;->m:Landroid/view/View$OnClickListener;

    .line 271
    .line 272
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .line 274
    .line 275
    :cond_17
    and-long v8, v2, v14

    .line 276
    .line 277
    cmp-long v13, v8, v4

    .line 278
    .line 279
    if-eqz v13, :cond_18

    .line 280
    .line 281
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->c:Landroid/widget/LinearLayout;

    .line 282
    .line 283
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 287
    .line 288
    invoke-static {v8, v7}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->recycleviewdataBinding(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    :cond_18
    and-long v7, v2, v16

    .line 292
    .line 293
    cmp-long v9, v7, v4

    .line 294
    .line 295
    if-eqz v9, :cond_19

    .line 296
    .line 297
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 298
    .line 299
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    :cond_19
    const-wide/16 v6, 0x148

    .line 303
    .line 304
    and-long/2addr v6, v2

    .line 305
    cmp-long v8, v6, v4

    .line 306
    .line 307
    if-eqz v8, :cond_1a

    .line 308
    .line 309
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->e:Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 312
    .line 313
    .line 314
    :cond_1a
    const-wide/16 v6, 0x144

    .line 315
    .line 316
    and-long/2addr v6, v2

    .line 317
    cmp-long v0, v6, v4

    .line 318
    .line 319
    if-eqz v0, :cond_1b

    .line 320
    .line 321
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->e:Landroid/widget/TextView;

    .line 322
    .line 323
    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    :cond_1b
    const-wide/16 v6, 0x140

    .line 327
    .line 328
    and-long/2addr v2, v6

    .line 329
    cmp-long v0, v2, v4

    .line 330
    .line 331
    if-eqz v0, :cond_1c

    .line 332
    .line 333
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->f:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    :cond_1c
    return-void

    .line 339
    :catchall_0
    move-exception v0

    .line 340
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/g1;->n:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
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
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->F(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->G(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->H(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->I(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->D(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x1d

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    check-cast p2, Lcom/join/kotlin/ui/endgame/ISlotListener;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->C(Lcom/join/kotlin/ui/endgame/ISlotListener;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x32

    .line 23
    .line 24
    if-ne v0, p1, :cond_2

    .line 25
    .line 26
    check-cast p2, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->E(Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-ne v1, p1, :cond_3

    .line 33
    .line 34
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/g1;->B(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 v1, 0x0

    .line 41
    :goto_0
    return v1
.end method
