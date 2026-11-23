.class public Lcom/join/android/app/mgsim/wufun/databinding/w4;
.super Lcom/join/android/app/mgsim/wufun/databinding/v4;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final z:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final s:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final u:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final v:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Landroidx/databinding/InverseBindingListener;

.field private x:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->z:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a0ff8

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a00dc

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0a0160

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x9

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    .line 30
    .line 31
    const v1, 0x7f0a0dd6

    .line 32
    .line 33
    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    .line 38
    .line 39
    const v1, 0x7f0a0a79

    .line 40
    .line 41
    .line 42
    const/16 v2, 0xb

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a04e1

    .line 48
    .line 49
    .line 50
    const/16 v2, 0xc

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0a14b8

    .line 56
    .line 57
    .line 58
    const/16 v2, 0xd

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0a165c

    .line 64
    .line 65
    .line 66
    const/16 v2, 0xe

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a1b84

    .line 72
    .line 73
    .line 74
    const/16 v2, 0xf

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    .line 78
    .line 79
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->z:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/w4;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19
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

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    const/16 v4, 0x8

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v14, 0x1

    aget-object v5, p3, v14

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0x9

    aget-object v6, p3, v6

    check-cast v6, Lcom/youth/banner/Banner;

    const/4 v7, 0x4

    aget-object v7, p3, v7

    check-cast v7, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/16 v8, 0xc

    aget-object v8, p3, v8

    check-cast v8, Landroid/view/View;

    const/16 v9, 0xb

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v13, 0x3

    aget-object v10, p3, v13

    check-cast v10, Landroid/widget/ImageView;

    const/16 v11, 0xa

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/RelativeLayout;

    const/4 v12, 0x7

    aget-object v12, p3, v12

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v13, v16

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v14, v16

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Lcom/google/android/material/tabs/TabLayout;

    move-object/from16 v15, v16

    const/4 v3, 0x2

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x6

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0xf

    aget-object v18, p3, v18

    check-cast v18, Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x3

    invoke-direct/range {v0 .. v18}, Lcom/join/android/app/mgsim/wufun/databinding/v4;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Lcom/youth/banner/Banner;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/ImageView;Landroid/widget/EditText;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager/widget/ViewPager;)V

    .line 3
    new-instance v0, Lcom/join/android/app/mgsim/wufun/databinding/w4$a;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/join/android/app/mgsim/wufun/databinding/w4$a;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/w4;)V

    iput-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->w:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 5
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->e:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->s:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 13
    invoke-virtual {v1, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 14
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->t:Landroid/view/View$OnClickListener;

    .line 15
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->u:Landroid/view/View$OnClickListener;

    .line 16
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->v:Landroid/view/View$OnClickListener;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/w4;->invalidateAll()V

    return-void
.end method

.method private w(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmSearchKeyword",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

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

.method private x(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmShowBanner",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

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

.method private y(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmTitle",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

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
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p1, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->r:Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    :cond_1
    if-eqz p2, :cond_6

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;->onSearchClick()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->r:Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    :cond_3
    if-eqz p2, :cond_6

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;->onShareClick()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->r:Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;

    .line 35
    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    :cond_5
    if-eqz p2, :cond_6

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;->onBackClick()V

    .line 42
    .line 43
    .line 44
    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->q:Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 12
    .line 13
    const-wide/16 v6, 0x2f

    .line 14
    .line 15
    and-long/2addr v6, v2

    .line 16
    const-wide/16 v8, 0x2c

    .line 17
    .line 18
    const-wide/16 v10, 0x2a

    .line 19
    .line 20
    const-wide/16 v12, 0x29

    .line 21
    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    cmp-long v16, v6, v4

    .line 25
    .line 26
    if-eqz v16, :cond_a

    .line 27
    .line 28
    and-long v6, v2, v12

    .line 29
    .line 30
    cmp-long v16, v6, v4

    .line 31
    .line 32
    if-eqz v16, :cond_1

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v6, v15

    .line 42
    :goto_0
    invoke-virtual {v1, v14, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 43
    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v6, v15

    .line 55
    :goto_1
    and-long v16, v2, v10

    .line 56
    .line 57
    cmp-long v7, v16, v4

    .line 58
    .line 59
    if-eqz v7, :cond_7

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getShowBanner()Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    move-object/from16 v14, v16

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move-object v14, v15

    .line 71
    :goto_2
    const/4 v12, 0x1

    .line 72
    invoke-virtual {v1, v12, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 73
    .line 74
    .line 75
    if-eqz v14, :cond_3

    .line 76
    .line 77
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    check-cast v12, Ljava/lang/Boolean;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move-object v12, v15

    .line 85
    :goto_3
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-eqz v7, :cond_5

    .line 90
    .line 91
    if-eqz v12, :cond_4

    .line 92
    .line 93
    const-wide/16 v13, 0x80

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    const-wide/16 v13, 0x40

    .line 97
    .line 98
    :goto_4
    or-long/2addr v2, v13

    .line 99
    :cond_5
    if-eqz v12, :cond_6

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_6
    const/16 v14, 0x8

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_7
    :goto_5
    const/4 v14, 0x0

    .line 106
    :goto_6
    and-long v12, v2, v8

    .line 107
    .line 108
    cmp-long v7, v12, v4

    .line 109
    .line 110
    if-eqz v7, :cond_9

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getSearchKeyword()Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_7

    .line 119
    :cond_8
    move-object v0, v15

    .line 120
    :goto_7
    const/4 v7, 0x2

    .line 121
    invoke-virtual {v1, v7, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 122
    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/String;

    .line 131
    .line 132
    goto :goto_8

    .line 133
    :cond_9
    move-object v0, v15

    .line 134
    goto :goto_8

    .line 135
    :cond_a
    move-object v0, v15

    .line 136
    move-object v6, v0

    .line 137
    const/4 v14, 0x0

    .line 138
    :goto_8
    const-wide/16 v12, 0x20

    .line 139
    .line 140
    and-long/2addr v12, v2

    .line 141
    cmp-long v7, v12, v4

    .line 142
    .line 143
    if-eqz v7, :cond_b

    .line 144
    .line 145
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->c:Landroid/widget/ImageView;

    .line 146
    .line 147
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->u:Landroid/view/View$OnClickListener;

    .line 148
    .line 149
    invoke-virtual {v7, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->h:Landroid/widget/ImageView;

    .line 153
    .line 154
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->v:Landroid/view/View$OnClickListener;

    .line 155
    .line 156
    invoke-virtual {v7, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->l:Landroid/widget/EditText;

    .line 160
    .line 161
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->w:Landroidx/databinding/InverseBindingListener;

    .line 162
    .line 163
    invoke-static {v7, v15, v15, v15, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 164
    .line 165
    .line 166
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->o:Landroid/widget/TextView;

    .line 167
    .line 168
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/w4;->t:Landroid/view/View$OnClickListener;

    .line 169
    .line 170
    invoke-virtual {v7, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    :cond_b
    and-long/2addr v10, v2

    .line 174
    cmp-long v7, v10, v4

    .line 175
    .line 176
    if-eqz v7, :cond_c

    .line 177
    .line 178
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->e:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 179
    .line 180
    invoke-virtual {v7, v14}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :cond_c
    and-long v7, v2, v8

    .line 184
    .line 185
    cmp-long v9, v7, v4

    .line 186
    .line 187
    if-eqz v9, :cond_d

    .line 188
    .line 189
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->l:Landroid/widget/EditText;

    .line 190
    .line 191
    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    :cond_d
    const-wide/16 v7, 0x29

    .line 195
    .line 196
    and-long/2addr v2, v7

    .line 197
    cmp-long v0, v2, v4

    .line 198
    .line 199
    if-eqz v0, :cond_e

    .line 200
    .line 201
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->n:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_e
    return-void

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

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
    const-wide/16 v0, 0x20

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/w4;->w(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/w4;->y(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
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
    const/16 v0, 0x36

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/w4;->u(Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x8

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/w4;->t(Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    return p1
.end method

.method public t(Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->r:Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x10

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

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

.method public u(Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->q:Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x8

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/w4;->x:J

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
