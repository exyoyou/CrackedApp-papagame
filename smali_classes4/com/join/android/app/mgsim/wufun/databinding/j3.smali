.class public Lcom/join/android/app/mgsim/wufun/databinding/j3;
.super Lcom/join/android/app/mgsim/wufun/databinding/i3;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final m:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final n:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final i:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Lcom/join/android/app/mgsim/wufun/databinding/c7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:J


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->m:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->n:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->m:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/j3;->n:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/j3;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v3, 0x2

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

    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/mgsim/wufun/databinding/i3;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/join/android/app/component/xrecyclerview/XRecyclerView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->i:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/c7;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->j:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 12
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v7}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->k:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/j3;->invalidateAll()V

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
            "VmLoadDataBinding",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

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
            "VmNoticeDats",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTActivityBean;",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    return-void
.end method

.method public C(Lcom/join/kotlin/ui/notice/ClickProxy;)V
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->g:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 5
    .line 6
    const-wide/16 v2, 0x20

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

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

.method public D(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->h:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

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

.method public E(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/notice/NoticeViewModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->e:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 5
    .line 6
    const-wide/16 v2, 0x8

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x36

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/i3;->g:Lcom/join/kotlin/ui/notice/ClickProxy;

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
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->h:Lcom/join/kotlin/domain/common/LoadBindClickProxy;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->e:Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 14
    .line 15
    const-wide/16 v7, 0x4b

    .line 16
    .line 17
    and-long/2addr v7, v2

    .line 18
    const-wide/16 v11, 0x49

    .line 19
    .line 20
    const-wide/16 v13, 0x48

    .line 21
    .line 22
    const/4 v15, 0x1

    .line 23
    const/4 v9, 0x0

    .line 24
    cmp-long v18, v7, v4

    .line 25
    .line 26
    if-eqz v18, :cond_b

    .line 27
    .line 28
    and-long v7, v2, v13

    .line 29
    .line 30
    cmp-long v18, v7, v4

    .line 31
    .line 32
    if-eqz v18, :cond_0

    .line 33
    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getTitle()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v7, 0x0

    .line 42
    :goto_0
    and-long v18, v2, v11

    .line 43
    .line 44
    cmp-long v8, v18, v4

    .line 45
    .line 46
    if-eqz v8, :cond_8

    .line 47
    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object v18

    .line 54
    move-object/from16 v10, v18

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v10, 0x0

    .line 58
    :goto_1
    invoke-virtual {v1, v9, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 59
    .line 60
    .line 61
    if-eqz v10, :cond_2

    .line 62
    .line 63
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    check-cast v10, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v10, 0x0

    .line 71
    :goto_2
    if-eqz v10, :cond_3

    .line 72
    .line 73
    invoke-virtual {v10}, Lcom/join/kotlin/domain/common/LoadBindindData;->getShowStatus()I

    .line 74
    .line 75
    .line 76
    move-result v19

    .line 77
    move/from16 v9, v19

    .line 78
    .line 79
    :cond_3
    if-ne v9, v15, :cond_4

    .line 80
    .line 81
    const/4 v9, 0x1

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    const/4 v9, 0x0

    .line 84
    :goto_3
    if-eqz v8, :cond_6

    .line 85
    .line 86
    if-eqz v9, :cond_5

    .line 87
    .line 88
    const-wide/16 v20, 0x100

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_5
    const-wide/16 v20, 0x80

    .line 92
    .line 93
    :goto_4
    or-long v2, v2, v20

    .line 94
    .line 95
    :cond_6
    if-eqz v9, :cond_7

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/16 v9, 0x8

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x0

    .line 104
    :goto_5
    const-wide/16 v16, 0x4a

    .line 105
    .line 106
    and-long v19, v2, v16

    .line 107
    .line 108
    cmp-long v8, v19, v4

    .line 109
    .line 110
    if-eqz v8, :cond_a

    .line 111
    .line 112
    if-eqz v6, :cond_9

    .line 113
    .line 114
    invoke-virtual {v6}, Lcom/join/kotlin/ui/notice/NoticeViewModle;->getNoticeDats()Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    goto :goto_6

    .line 119
    :cond_9
    const/4 v6, 0x0

    .line 120
    :goto_6
    invoke-virtual {v1, v15, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 121
    .line 122
    .line 123
    if-eqz v6, :cond_a

    .line 124
    .line 125
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, Ljava/util/ArrayList;

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_a
    const/4 v6, 0x0

    .line 133
    goto :goto_7

    .line 134
    :cond_b
    const/4 v6, 0x0

    .line 135
    const/4 v7, 0x0

    .line 136
    const/4 v9, 0x0

    .line 137
    const/4 v10, 0x0

    .line 138
    :goto_7
    const-wide/16 v18, 0x40

    .line 139
    .line 140
    and-long v18, v2, v18

    .line 141
    .line 142
    cmp-long v8, v18, v4

    .line 143
    .line 144
    if-eqz v8, :cond_c

    .line 145
    .line 146
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->b:Landroid/widget/ImageView;

    .line 147
    .line 148
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/j3;->k:Landroid/view/View$OnClickListener;

    .line 149
    .line 150
    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 154
    .line 155
    invoke-virtual {v8, v15}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 156
    .line 157
    .line 158
    :cond_c
    const-wide/16 v13, 0x44

    .line 159
    .line 160
    and-long/2addr v13, v2

    .line 161
    cmp-long v8, v13, v4

    .line 162
    .line 163
    if-eqz v8, :cond_d

    .line 164
    .line 165
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/j3;->j:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 166
    .line 167
    invoke-virtual {v8, v0}, Lcom/join/android/app/mgsim/wufun/databinding/c7;->u(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    .line 168
    .line 169
    .line 170
    :cond_d
    and-long/2addr v11, v2

    .line 171
    cmp-long v0, v11, v4

    .line 172
    .line 173
    if-eqz v0, :cond_e

    .line 174
    .line 175
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/j3;->j:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 176
    .line 177
    invoke-virtual {v0, v10}, Lcom/join/android/app/mgsim/wufun/databinding/c7;->t(Lcom/join/kotlin/domain/common/LoadBindindData;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 181
    .line 182
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    :cond_e
    const-wide/16 v8, 0x4a

    .line 186
    .line 187
    and-long/2addr v8, v2

    .line 188
    cmp-long v0, v8, v4

    .line 189
    .line 190
    if-eqz v0, :cond_f

    .line 191
    .line 192
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 193
    .line 194
    invoke-static {v0, v6}, Lcom/join/kotlin/bindingadapter/ViewbindingRecycleviewAdapterKt;->recycleviewdataBinding(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    :cond_f
    const-wide/16 v8, 0x48

    .line 198
    .line 199
    and-long/2addr v2, v8

    .line 200
    cmp-long v0, v2, v4

    .line 201
    .line 202
    if-eqz v0, :cond_10

    .line 203
    .line 204
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/i3;->d:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    :cond_10
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/j3;->j:Lcom/join/android/app/mgsim/wufun/databinding/c7;

    .line 210
    .line 211
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->j:Lcom/join/android/app/mgsim/wufun/databinding/c7;

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
    const-wide/16 v0, 0x40

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->l:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->j:Lcom/join/android/app/mgsim/wufun/databinding/c7;

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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/j3;->G(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/j3;->F(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
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
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/j3;->j:Lcom/join/android/app/mgsim/wufun/databinding/c7;

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j3;->D(Lcom/join/kotlin/domain/common/LoadBindClickProxy;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x36

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    check-cast p2, Lcom/join/kotlin/ui/notice/NoticeViewModle;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j3;->E(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-ne v1, p1, :cond_2

    .line 23
    .line 24
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j3;->B(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/16 v0, 0x8

    .line 31
    .line 32
    if-ne v0, p1, :cond_3

    .line 33
    .line 34
    check-cast p2, Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/j3;->C(Lcom/join/kotlin/ui/notice/ClickProxy;)V

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
