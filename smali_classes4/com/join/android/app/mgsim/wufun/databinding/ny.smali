.class public Lcom/join/android/app/mgsim/wufun/databinding/ny;
.super Lcom/join/android/app/mgsim/wufun/databinding/my;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final A:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final B:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final q:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final u:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final v:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final w:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final x:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final y:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:J


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->B:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a1b3d

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
    const v1, 0x7f0a19b4

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
    const v1, 0x7f0a19b5

    .line 25
    .line 26
    .line 27
    const/16 v2, 0xf

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a1b4a

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a1b23

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x11

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    .line 47
    .line 48
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->A:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->B:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ny;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17
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

    const/4 v3, 0x0

    const/16 v4, 0xa

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0xe

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0xf

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v14, 0x3

    aget-object v8, p3, v14

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x8

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x6

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0x9

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v12, p3, v13

    check-cast v12, Landroid/widget/TextView;

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v13, v16

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v14, v16

    const/16 v16, 0x11

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v15, v16

    const/16 v16, 0x10

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    invoke-direct/range {v0 .. v16}, Lcom/join/android/app/mgsim/wufun/databinding/my;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->q:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    aget-object v3, p3, v0

    check-cast v3, Landroidx/constraintlayout/widget/Group;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->r:Landroidx/constraintlayout/widget/Group;

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 8
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->s:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xc

    .line 10
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->t:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 12
    aget-object v4, p3, v3

    check-cast v4, Landroidx/constraintlayout/widget/Group;

    iput-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->u:Landroidx/constraintlayout/widget/Group;

    .line 13
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/my;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 22
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 23
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->v:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->w:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->x:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/ny;->y:Landroid/view/View$OnClickListener;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/ny;->invalidateAll()V

    return-void
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
    if-eq p1, v0, :cond_6

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p1, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->o:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->p:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    :cond_1
    if-eqz p2, :cond_8

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;->onReceiveClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->o:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->p:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    :cond_3
    if-eqz p2, :cond_8

    .line 36
    .line 37
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;->onUseClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->o:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->p:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    :cond_5
    if-eqz p2, :cond_8

    .line 49
    .line 50
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;->onDetailClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->o:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->p:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 57
    .line 58
    if-eqz v1, :cond_7

    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    :cond_7
    if-eqz p2, :cond_8

    .line 62
    .line 63
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;->onUnSupportClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

    .line 64
    .line 65
    .line 66
    :cond_8
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->o:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 12
    .line 13
    const-wide/16 v6, 0x5

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    const/4 v12, 0x1

    .line 18
    cmp-long v15, v8, v4

    .line 19
    .line 20
    if-eqz v15, :cond_11

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getRange_op()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getCoupon_name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getThreshold_text()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v16

    .line 36
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->receiveBtnText()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v17

    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->receiveBtnTextColor()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v18

    .line 44
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getRepeatable()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v19

    .line 48
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getAmount_text()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v20

    .line 52
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->formatBalance()Landroid/text/SpannableStringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v21

    .line 56
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getReceive_time_text()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v22

    .line 60
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getUse_range_text()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v23

    .line 64
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getState()Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object/from16 v13, v16

    .line 69
    .line 70
    move-object/from16 v14, v22

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const/16 v19, 0x0

    .line 83
    .line 84
    const/16 v20, 0x0

    .line 85
    .line 86
    const/16 v21, 0x0

    .line 87
    .line 88
    const/16 v23, 0x0

    .line 89
    .line 90
    :goto_0
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v11, "\u6ee1"

    .line 100
    .line 101
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    invoke-static/range {v19 .. v19}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v5, "\u9886\u53d6\u65f6\u95f4:"

    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v15, :cond_2

    .line 141
    .line 142
    if-eqz v13, :cond_1

    .line 143
    .line 144
    const-wide/16 v14, 0x100

    .line 145
    .line 146
    or-long/2addr v2, v14

    .line 147
    const-wide/16 v14, 0x400

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_1
    const-wide/16 v14, 0x80

    .line 151
    .line 152
    or-long/2addr v2, v14

    .line 153
    const-wide/16 v14, 0x200

    .line 154
    .line 155
    :goto_1
    or-long/2addr v2, v14

    .line 156
    :cond_2
    if-eqz v8, :cond_3

    .line 157
    .line 158
    const/4 v5, 0x1

    .line 159
    goto :goto_2

    .line 160
    :cond_3
    const/4 v5, 0x0

    .line 161
    :goto_2
    if-nez v8, :cond_4

    .line 162
    .line 163
    const/4 v14, 0x1

    .line 164
    goto :goto_3

    .line 165
    :cond_4
    const/4 v14, 0x0

    .line 166
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v10, "\u53ef\u7528"

    .line 175
    .line 176
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    const/16 v15, 0x8

    .line 184
    .line 185
    if-eqz v13, :cond_5

    .line 186
    .line 187
    const/16 v26, 0x0

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_5
    const/16 v26, 0x8

    .line 191
    .line 192
    :goto_4
    if-eqz v13, :cond_6

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_6
    const/4 v15, 0x0

    .line 196
    :goto_5
    if-eq v0, v12, :cond_7

    .line 197
    .line 198
    const/4 v13, 0x1

    .line 199
    goto :goto_6

    .line 200
    :cond_7
    const/4 v13, 0x0

    .line 201
    :goto_6
    if-ne v0, v12, :cond_8

    .line 202
    .line 203
    const/4 v0, 0x1

    .line 204
    goto :goto_7

    .line 205
    :cond_8
    const/4 v0, 0x0

    .line 206
    :goto_7
    and-long v27, v2, v6

    .line 207
    .line 208
    const-wide/16 v18, 0x0

    .line 209
    .line 210
    cmp-long v29, v27, v18

    .line 211
    .line 212
    if-eqz v29, :cond_a

    .line 213
    .line 214
    if-eqz v14, :cond_9

    .line 215
    .line 216
    const-wide/16 v27, 0x10

    .line 217
    .line 218
    or-long v2, v2, v27

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_9
    const-wide/16 v24, 0x8

    .line 222
    .line 223
    or-long v2, v2, v24

    .line 224
    .line 225
    :cond_a
    :goto_8
    and-long v27, v2, v6

    .line 226
    .line 227
    cmp-long v29, v27, v18

    .line 228
    .line 229
    if-eqz v29, :cond_c

    .line 230
    .line 231
    if-eqz v13, :cond_b

    .line 232
    .line 233
    const-wide/16 v27, 0x4000

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_b
    const-wide/16 v27, 0x2000

    .line 237
    .line 238
    :goto_9
    or-long v2, v2, v27

    .line 239
    .line 240
    :cond_c
    and-long v27, v2, v6

    .line 241
    .line 242
    cmp-long v29, v27, v18

    .line 243
    .line 244
    if-eqz v29, :cond_e

    .line 245
    .line 246
    if-eqz v0, :cond_d

    .line 247
    .line 248
    const-wide/16 v27, 0x1000

    .line 249
    .line 250
    goto :goto_a

    .line 251
    :cond_d
    const-wide/16 v27, 0x800

    .line 252
    .line 253
    :goto_a
    or-long v2, v2, v27

    .line 254
    .line 255
    :cond_e
    const/16 v27, 0x4

    .line 256
    .line 257
    if-eqz v13, :cond_f

    .line 258
    .line 259
    const/4 v13, 0x0

    .line 260
    goto :goto_b

    .line 261
    :cond_f
    const/4 v13, 0x4

    .line 262
    :goto_b
    if-eqz v0, :cond_10

    .line 263
    .line 264
    const/16 v27, 0x0

    .line 265
    .line 266
    :cond_10
    move-object/from16 v0, v17

    .line 267
    .line 268
    move-object/from16 v12, v20

    .line 269
    .line 270
    move-object/from16 v30, v21

    .line 271
    .line 272
    move-object/from16 v31, v23

    .line 273
    .line 274
    move/from16 v32, v26

    .line 275
    .line 276
    move/from16 v33, v27

    .line 277
    .line 278
    const-wide/16 v20, 0x8

    .line 279
    .line 280
    goto :goto_c

    .line 281
    :cond_11
    const/4 v0, 0x0

    .line 282
    const/4 v4, 0x0

    .line 283
    const/4 v5, 0x0

    .line 284
    const/4 v8, 0x0

    .line 285
    const/4 v9, 0x0

    .line 286
    const/4 v10, 0x0

    .line 287
    const/4 v11, 0x0

    .line 288
    const/4 v12, 0x0

    .line 289
    const/4 v13, 0x0

    .line 290
    const/4 v14, 0x0

    .line 291
    const/4 v15, 0x0

    .line 292
    const-wide/16 v20, 0x8

    .line 293
    .line 294
    const/16 v30, 0x0

    .line 295
    .line 296
    const/16 v31, 0x0

    .line 297
    .line 298
    const/16 v32, 0x0

    .line 299
    .line 300
    const/16 v33, 0x0

    .line 301
    .line 302
    :goto_c
    and-long v20, v2, v20

    .line 303
    .line 304
    const-wide/16 v18, 0x0

    .line 305
    .line 306
    cmp-long v23, v20, v18

    .line 307
    .line 308
    if-eqz v23, :cond_16

    .line 309
    .line 310
    const/4 v6, -0x1

    .line 311
    if-ne v8, v6, :cond_12

    .line 312
    .line 313
    const/16 v17, 0x1

    .line 314
    .line 315
    goto :goto_d

    .line 316
    :cond_12
    const/16 v17, 0x0

    .line 317
    .line 318
    :goto_d
    if-eqz v23, :cond_14

    .line 319
    .line 320
    if-eqz v17, :cond_13

    .line 321
    .line 322
    const-wide/16 v6, 0x40

    .line 323
    .line 324
    goto :goto_e

    .line 325
    :cond_13
    const-wide/16 v6, 0x20

    .line 326
    .line 327
    :goto_e
    or-long/2addr v2, v6

    .line 328
    :cond_14
    if-eqz v17, :cond_15

    .line 329
    .line 330
    const-string v6, "\u4e0d\u9002\u7528\u8303\u56f4"

    .line 331
    .line 332
    goto :goto_f

    .line 333
    :cond_15
    const-string v6, "\u9002\u7528\u8303\u56f4"

    .line 334
    .line 335
    :goto_f
    const-wide/16 v7, 0x5

    .line 336
    .line 337
    goto :goto_10

    .line 338
    :cond_16
    move-wide v7, v6

    .line 339
    const/4 v6, 0x0

    .line 340
    :goto_10
    and-long/2addr v7, v2

    .line 341
    const-wide/16 v17, 0x0

    .line 342
    .line 343
    cmp-long v20, v7, v17

    .line 344
    .line 345
    if-eqz v20, :cond_17

    .line 346
    .line 347
    if-eqz v14, :cond_18

    .line 348
    .line 349
    const-string v6, "\u5168\u90e8\u9002\u7528"

    .line 350
    .line 351
    goto :goto_11

    .line 352
    :cond_17
    const/4 v6, 0x0

    .line 353
    :cond_18
    :goto_11
    if-eqz v20, :cond_19

    .line 354
    .line 355
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->r:Landroidx/constraintlayout/widget/Group;

    .line 356
    .line 357
    invoke-virtual {v7, v15}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->s:Landroid/widget/LinearLayout;

    .line 361
    .line 362
    move/from16 v8, v33

    .line 363
    .line 364
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->t:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->t:Landroid/widget/TextView;

    .line 373
    .line 374
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    .line 376
    .line 377
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->u:Landroidx/constraintlayout/widget/Group;

    .line 378
    .line 379
    move/from16 v7, v32

    .line 380
    .line 381
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->b:Landroid/widget/TextView;

    .line 385
    .line 386
    move-object/from16 v7, v31

    .line 387
    .line 388
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->b:Landroid/widget/TextView;

    .line 392
    .line 393
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->f:Landroid/widget/TextView;

    .line 397
    .line 398
    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->g:Landroid/widget/TextView;

    .line 402
    .line 403
    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 404
    .line 405
    .line 406
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->h:Landroid/widget/TextView;

    .line 407
    .line 408
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 409
    .line 410
    .line 411
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->h:Landroid/widget/TextView;

    .line 412
    .line 413
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->i:Landroid/widget/TextView;

    .line 417
    .line 418
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 419
    .line 420
    .line 421
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->j:Landroid/widget/TextView;

    .line 422
    .line 423
    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->k:Landroid/widget/TextView;

    .line 427
    .line 428
    move-object/from16 v4, v30

    .line 429
    .line 430
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    :cond_19
    const-wide/16 v4, 0x4

    .line 434
    .line 435
    and-long/2addr v2, v4

    .line 436
    const-wide/16 v4, 0x0

    .line 437
    .line 438
    cmp-long v0, v2, v4

    .line 439
    .line 440
    if-eqz v0, :cond_1a

    .line 441
    .line 442
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->s:Landroid/widget/LinearLayout;

    .line 443
    .line 444
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->y:Landroid/view/View$OnClickListener;

    .line 445
    .line 446
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    .line 448
    .line 449
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->t:Landroid/widget/TextView;

    .line 450
    .line 451
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->v:Landroid/view/View$OnClickListener;

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    .line 455
    .line 456
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->c:Landroid/widget/TextView;

    .line 457
    .line 458
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->w:Landroid/view/View$OnClickListener;

    .line 459
    .line 460
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    .line 462
    .line 463
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/my;->h:Landroid/widget/TextView;

    .line 464
    .line 465
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ny;->x:Landroid/view/View$OnClickListener;

    .line 466
    .line 467
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    .line 469
    .line 470
    :cond_1a
    return-void

    .line 471
    :catchall_0
    move-exception v0

    .line 472
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

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
    const-wide/16 v0, 0x4

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

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
    const/16 v0, 0x1b

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ny;->u(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

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
    check-cast p2, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ny;->t(Lcom/join/kotlin/discount/proxy/CouponListClickProxy;)V

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

.method public t(Lcom/join/kotlin/discount/proxy/CouponListClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/discount/proxy/CouponListClickProxy;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->p:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

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

.method public u(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/discount/model/bean/CouponItemBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ItemData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/my;->o:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ny;->z:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x1b

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
