.class public Lcom/join/android/app/mgsim/wufun/databinding/bc;
.super Lcom/join/android/app/mgsim/wufun/databinding/ac;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final w:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final x:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final m:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Landroid/widget/ImageView;
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

.field private v:J


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->x:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a1076

    .line 9
    .line 10
    .line 11
    const/16 v2, 0xd

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0e61

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xe

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    .line 23
    .line 24
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->w:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->x:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/bc;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14
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

    move-object v12, p0

    const/4 v3, 0x0

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/join/android/app/mgsim/wufun/databinding/ac;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 4
    iget-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/ac;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/ac;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->m:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->n:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 10
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->o:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xb

    .line 12
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->p:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xc

    .line 14
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->q:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 16
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->r:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x9

    .line 18
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->s:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/ac;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/ac;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v2, v12, Lcom/join/android/app/mgsim/wufun/databinding/ac;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 24
    invoke-virtual {p0, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 25
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->t:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v13}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v12, Lcom/join/android/app/mgsim/wufun/databinding/bc;->u:Landroid/view/View$OnClickListener;

    .line 27
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/bc;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public A(Lcom/join/kotlin/ui/coupon/ClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/coupon/ClickProxy;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ac;->l:Lcom/join/kotlin/ui/coupon/ClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

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

.method public B(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Isdiscount"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ac;->k:Ljava/lang/Boolean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x19

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ac;->j:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ac;->l:Lcom/join/kotlin/ui/coupon/ClickProxy;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    :cond_1
    if-eqz p2, :cond_4

    .line 17
    .line 18
    invoke-interface {v1, p1}, Lcom/join/kotlin/ui/coupon/ClickProxy;->onClickMore(Lcom/join/mgps/dto/BTGameCouponBean;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ac;->j:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ac;->l:Lcom/join/kotlin/ui/coupon/ClickProxy;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    :cond_3
    if-eqz p2, :cond_4

    .line 30
    .line 31
    invoke-interface {v1, p1}, Lcom/join/kotlin/ui/coupon/ClickProxy;->onClickGet(Lcom/join/mgps/dto/BTGameCouponBean;)V

    .line 32
    .line 33
    .line 34
    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->j:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->k:Ljava/lang/Boolean;

    .line 14
    .line 15
    const-wide/16 v7, 0x9

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    cmp-long v14, v9, v4

    .line 20
    .line 21
    if-eqz v14, :cond_9

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->isShowDetial()Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getUsable_gamesShow()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getCoupon_name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getUsable_games()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getUse_condition_no_price()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getEffect_time_hint()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v18

    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->isReceivable()Z

    .line 50
    .line 51
    .line 52
    move-result v19

    .line 53
    move-object/from16 v11, v16

    .line 54
    .line 55
    move-object/from16 v12, v17

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    const/16 v19, 0x0

    .line 66
    .line 67
    :goto_0
    if-eqz v14, :cond_2

    .line 68
    .line 69
    if-eqz v9, :cond_1

    .line 70
    .line 71
    const-wide/16 v20, 0x800

    .line 72
    .line 73
    or-long v2, v2, v20

    .line 74
    .line 75
    const-wide/32 v20, 0x8000

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const-wide/16 v20, 0x400

    .line 80
    .line 81
    or-long v2, v2, v20

    .line 82
    .line 83
    const-wide/16 v20, 0x4000

    .line 84
    .line 85
    :goto_1
    or-long v2, v2, v20

    .line 86
    .line 87
    :cond_2
    and-long v20, v2, v7

    .line 88
    .line 89
    cmp-long v14, v20, v4

    .line 90
    .line 91
    if-eqz v14, :cond_4

    .line 92
    .line 93
    if-eqz v19, :cond_3

    .line 94
    .line 95
    const-wide/16 v20, 0x20

    .line 96
    .line 97
    or-long v2, v2, v20

    .line 98
    .line 99
    const-wide/16 v20, 0x80

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    const-wide/16 v20, 0x10

    .line 103
    .line 104
    or-long v2, v2, v20

    .line 105
    .line 106
    const-wide/16 v20, 0x40

    .line 107
    .line 108
    :goto_2
    or-long v2, v2, v20

    .line 109
    .line 110
    :cond_4
    if-eqz v9, :cond_5

    .line 111
    .line 112
    const/4 v14, 0x0

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    const/16 v14, 0x8

    .line 115
    .line 116
    :goto_3
    if-eqz v9, :cond_6

    .line 117
    .line 118
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->s:Landroid/widget/ImageView;

    .line 119
    .line 120
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    const v13, 0x7f0804bb

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->s:Landroid/widget/ImageView;

    .line 129
    .line 130
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    const v13, 0x7f080d5b

    .line 135
    .line 136
    .line 137
    :goto_4
    invoke-static {v9, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    new-instance v13, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->p:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const v8, 0x7f120549

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->q:Landroid/widget/TextView;

    .line 175
    .line 176
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    const v13, 0x7f120548

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    .line 198
    .line 199
    if-eqz v19, :cond_7

    .line 200
    .line 201
    const v13, 0x7f0600e6

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_7
    const v13, 0x7f0600e7

    .line 206
    .line 207
    .line 208
    :goto_5
    invoke-static {v11, v13}, Landroidx/databinding/ViewDataBinding;->getColorFromResource(Landroid/view/View;I)I

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-eqz v19, :cond_8

    .line 213
    .line 214
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v13}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    const v4, 0x7f12015a

    .line 221
    .line 222
    .line 223
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    goto :goto_6

    .line 228
    :cond_8
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    .line 229
    .line 230
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    const v5, 0x7f12020a

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    :goto_6
    move-object/from16 v5, v18

    .line 242
    .line 243
    move/from16 v13, v19

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_9
    const/4 v4, 0x0

    .line 247
    const/4 v5, 0x0

    .line 248
    const/4 v7, 0x0

    .line 249
    const/4 v8, 0x0

    .line 250
    const/4 v9, 0x0

    .line 251
    const/4 v10, 0x0

    .line 252
    const/4 v11, 0x0

    .line 253
    const/4 v12, 0x0

    .line 254
    const/4 v13, 0x0

    .line 255
    const/4 v14, 0x0

    .line 256
    const/4 v15, 0x0

    .line 257
    :goto_7
    const-wide/16 v18, 0xb

    .line 258
    .line 259
    and-long v24, v2, v18

    .line 260
    .line 261
    const-wide/32 v26, 0x20000

    .line 262
    .line 263
    .line 264
    const-wide/32 v28, 0x10000

    .line 265
    .line 266
    .line 267
    const-wide/16 v30, 0xa

    .line 268
    .line 269
    const-wide/16 v22, 0x0

    .line 270
    .line 271
    cmp-long v32, v24, v22

    .line 272
    .line 273
    if-eqz v32, :cond_10

    .line 274
    .line 275
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    and-long v24, v2, v30

    .line 280
    .line 281
    cmp-long v32, v24, v22

    .line 282
    .line 283
    if-eqz v32, :cond_b

    .line 284
    .line 285
    if-eqz v6, :cond_a

    .line 286
    .line 287
    const-wide/16 v24, 0x200

    .line 288
    .line 289
    or-long v2, v2, v24

    .line 290
    .line 291
    const-wide/16 v24, 0x2000

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_a
    const-wide/16 v24, 0x100

    .line 295
    .line 296
    or-long v2, v2, v24

    .line 297
    .line 298
    const-wide/16 v24, 0x1000

    .line 299
    .line 300
    :goto_8
    or-long v2, v2, v24

    .line 301
    .line 302
    :cond_b
    and-long v24, v2, v18

    .line 303
    .line 304
    const-wide/16 v22, 0x0

    .line 305
    .line 306
    cmp-long v32, v24, v22

    .line 307
    .line 308
    if-eqz v32, :cond_d

    .line 309
    .line 310
    if-eqz v6, :cond_c

    .line 311
    .line 312
    or-long v2, v2, v26

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_c
    or-long v2, v2, v28

    .line 316
    .line 317
    :cond_d
    :goto_9
    and-long v24, v2, v30

    .line 318
    .line 319
    cmp-long v32, v24, v22

    .line 320
    .line 321
    if-eqz v32, :cond_11

    .line 322
    .line 323
    if-eqz v6, :cond_e

    .line 324
    .line 325
    const/16 v24, 0x8

    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_e
    const/16 v24, 0x0

    .line 329
    .line 330
    :goto_a
    if-eqz v6, :cond_f

    .line 331
    .line 332
    const/16 v16, 0x0

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_f
    const/16 v16, 0x8

    .line 336
    .line 337
    :goto_b
    move/from16 v34, v16

    .line 338
    .line 339
    move/from16 v33, v24

    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_10
    const/4 v6, 0x0

    .line 343
    :cond_11
    const/16 v33, 0x0

    .line 344
    .line 345
    const/16 v34, 0x0

    .line 346
    .line 347
    :goto_c
    const-wide/32 v16, 0x30000

    .line 348
    .line 349
    .line 350
    and-long v16, v2, v16

    .line 351
    .line 352
    const-wide/16 v22, 0x0

    .line 353
    .line 354
    cmp-long v24, v16, v22

    .line 355
    .line 356
    if-eqz v24, :cond_14

    .line 357
    .line 358
    and-long v16, v2, v28

    .line 359
    .line 360
    cmp-long v24, v16, v22

    .line 361
    .line 362
    if-eqz v24, :cond_12

    .line 363
    .line 364
    if-eqz v0, :cond_12

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getAmount()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v16

    .line 370
    goto :goto_d

    .line 371
    :cond_12
    const/16 v16, 0x0

    .line 372
    .line 373
    :goto_d
    and-long v24, v2, v26

    .line 374
    .line 375
    cmp-long v17, v24, v22

    .line 376
    .line 377
    if-eqz v17, :cond_13

    .line 378
    .line 379
    if-eqz v0, :cond_13

    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/join/mgps/dto/BTGameCouponBean;->getDiscount()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    goto :goto_e

    .line 386
    :cond_13
    const/4 v0, 0x0

    .line 387
    goto :goto_e

    .line 388
    :cond_14
    const/4 v0, 0x0

    .line 389
    const/16 v16, 0x0

    .line 390
    .line 391
    :goto_e
    and-long v17, v2, v18

    .line 392
    .line 393
    cmp-long v19, v17, v22

    .line 394
    .line 395
    if-eqz v19, :cond_16

    .line 396
    .line 397
    if-eqz v6, :cond_15

    .line 398
    .line 399
    move-object/from16 v16, v0

    .line 400
    .line 401
    :cond_15
    move-object/from16 v0, v16

    .line 402
    .line 403
    goto :goto_f

    .line 404
    :cond_16
    const/4 v0, 0x0

    .line 405
    :goto_f
    const-wide/16 v16, 0x9

    .line 406
    .line 407
    and-long v16, v2, v16

    .line 408
    .line 409
    cmp-long v6, v16, v22

    .line 410
    .line 411
    if-eqz v6, :cond_17

    .line 412
    .line 413
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->b:Landroid/widget/TextView;

    .line 414
    .line 415
    invoke-static {v6, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->c:Landroid/widget/TextView;

    .line 419
    .line 420
    invoke-static {v6, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->o:Landroid/widget/LinearLayout;

    .line 424
    .line 425
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->p:Landroid/widget/TextView;

    .line 429
    .line 430
    invoke-static {v6, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->q:Landroid/widget/TextView;

    .line 434
    .line 435
    invoke-static {v6, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->s:Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-static {v6, v9}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 441
    .line 442
    .line 443
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->f:Landroid/widget/TextView;

    .line 444
    .line 445
    invoke-static {v6, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    .line 449
    .line 450
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 451
    .line 452
    .line 453
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    .line 454
    .line 455
    invoke-static {v6, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    .line 459
    .line 460
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    .line 462
    .line 463
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->i:Landroid/widget/TextView;

    .line 464
    .line 465
    invoke-static {v4, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 466
    .line 467
    .line 468
    :cond_17
    and-long v4, v2, v30

    .line 469
    .line 470
    const-wide/16 v6, 0x0

    .line 471
    .line 472
    cmp-long v8, v4, v6

    .line 473
    .line 474
    if-eqz v8, :cond_18

    .line 475
    .line 476
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->n:Landroid/widget/TextView;

    .line 477
    .line 478
    move/from16 v5, v33

    .line 479
    .line 480
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 481
    .line 482
    .line 483
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->r:Landroid/widget/TextView;

    .line 484
    .line 485
    move/from16 v5, v34

    .line 486
    .line 487
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    :cond_18
    const-wide/16 v4, 0x8

    .line 491
    .line 492
    and-long/2addr v2, v4

    .line 493
    cmp-long v4, v2, v6

    .line 494
    .line 495
    if-eqz v4, :cond_19

    .line 496
    .line 497
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->s:Landroid/widget/ImageView;

    .line 498
    .line 499
    iget-object v3, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->u:Landroid/view/View$OnClickListener;

    .line 500
    .line 501
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    .line 503
    .line 504
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->h:Landroid/widget/TextView;

    .line 505
    .line 506
    iget-object v3, v1, Lcom/join/android/app/mgsim/wufun/databinding/bc;->t:Landroid/view/View$OnClickListener;

    .line 507
    .line 508
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    .line 510
    .line 511
    :cond_19
    if-eqz v19, :cond_1a

    .line 512
    .line 513
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ac;->g:Landroid/widget/TextView;

    .line 514
    .line 515
    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    :cond_1a
    return-void

    .line 519
    :catchall_0
    move-exception v0

    .line 520
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

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
    const-wide/16 v0, 0x8

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

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
    .locals 0
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

    const/4 p1, 0x0

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
    const/4 v0, 0x3

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    check-cast p2, Lcom/join/mgps/dto/BTGameCouponBean;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/bc;->z(Lcom/join/mgps/dto/BTGameCouponBean;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x19

    .line 11
    .line 12
    if-ne v0, p1, :cond_1

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/bc;->B(Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 v0, 0x8

    .line 21
    .line 22
    if-ne v0, p1, :cond_2

    .line 23
    .line 24
    check-cast p2, Lcom/join/kotlin/ui/coupon/ClickProxy;

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/bc;->A(Lcom/join/kotlin/ui/coupon/ClickProxy;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    :goto_1
    return p1
.end method

.method public z(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .locals 4
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Album"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ac;->j:Lcom/join/mgps/dto/BTGameCouponBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/bc;->v:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x3

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
