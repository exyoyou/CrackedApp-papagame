.class public Lcom/join/android/app/mgsim/wufun/databinding/ly;
.super Lcom/join/android/app/mgsim/wufun/databinding/ky;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final C:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final D:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final A:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:J

.field private final t:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final u:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final v:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final y:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final z:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->D:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a1b3d

    .line 9
    .line 10
    .line 11
    const/16 v2, 0xf

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
    const/16 v2, 0x10

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
    const/16 v2, 0x11

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a19b0

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x12

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a1b4a

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x13

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    .line 47
    .line 48
    const v1, 0x7f0a1b40

    .line 49
    .line 50
    .line 51
    const/16 v2, 0x14

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    .line 55
    .line 56
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->C:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->D:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ly;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20
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

    const/16 v4, 0xe

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x9

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0xa

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x12

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x10

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x11

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v14, 0x3

    aget-object v11, p3, v14

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0xb

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x6

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/4 v3, 0x2

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0xf

    aget-object v17, p3, v17

    check-cast v17, Landroid/view/View;

    const/16 v18, 0x14

    aget-object v18, p3, v18

    check-cast v18, Landroid/view/View;

    const/16 v19, 0x13

    aget-object v19, p3, v19

    check-cast v19, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/join/android/app/mgsim/wufun/databinding/ky;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    aget-object v3, p3, v0

    check-cast v3, Landroidx/constraintlayout/widget/Group;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->u:Landroidx/constraintlayout/widget/Group;

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xc

    .line 8
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->v:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 10
    aget-object v3, p3, v3

    check-cast v3, Landroidx/constraintlayout/widget/Group;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->w:Landroidx/constraintlayout/widget/Group;

    .line 11
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0x8

    .line 12
    aget-object v3, p3, v3

    check-cast v3, Landroidx/constraintlayout/widget/Group;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->x:Landroidx/constraintlayout/widget/Group;

    .line 13
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/ky;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 24
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 25
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->y:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->z:Landroid/view/View$OnClickListener;

    .line 27
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/ly;->A:Landroid/view/View$OnClickListener;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/ly;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 3
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
    if-eq p1, v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p1, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->r:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->s:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-eqz v2, :cond_7

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    :cond_2
    if-eqz p2, :cond_7

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getUse_tip()Lcom/join/kotlin/discount/model/bean/CouponUseTip;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;->showUseTip(Lcom/join/kotlin/discount/model/bean/CouponUseTip;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->r:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->s:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    :cond_4
    if-eqz p2, :cond_7

    .line 44
    .line 45
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;->onDetailClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->r:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->s:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 52
    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    :cond_6
    if-eqz p2, :cond_7

    .line 57
    .line 58
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/CouponListClickProxy;->onUnSupportClick(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

    .line 59
    .line 60
    .line 61
    :cond_7
    :goto_1
    return-void
.end method

.method protected executeBindings()V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->r:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 12
    .line 13
    const-wide/16 v6, 0x5

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    cmp-long v16, v8, v4

    .line 18
    .line 19
    if-eqz v16, :cond_10

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getRange_op()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getCoupon_name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getCoupon_type()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v17

    .line 35
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getAmount()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v18

    .line 39
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getThreshold_text()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v19

    .line 43
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getUse_tip()Lcom/join/kotlin/discount/model/bean/CouponUseTip;

    .line 44
    .line 45
    .line 46
    move-result-object v20

    .line 47
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getDiscount()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v21

    .line 51
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getThreshold()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v22

    .line 55
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->formatBalance()Landroid/text/SpannableStringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v23

    .line 59
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getUse_time_text()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v24

    .line 63
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getUse_range_text()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v25

    .line 67
    move-object/from16 v12, v22

    .line 68
    .line 69
    move-object/from16 v13, v24

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v13, 0x0

    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/16 v21, 0x0

    .line 85
    .line 86
    const/16 v23, 0x0

    .line 87
    .line 88
    const/16 v25, 0x0

    .line 89
    .line 90
    :goto_0
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-static/range {v17 .. v17}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 95
    .line 96
    .line 97
    move-result v17

    .line 98
    if-eqz v20, :cond_1

    .line 99
    .line 100
    const/16 v20, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    const/16 v20, 0x0

    .line 104
    .line 105
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v15, "\u6ee1"

    .line 111
    .line 112
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    new-instance v14, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v15, "\u4f7f\u7528\u65f6\u95f4:"

    .line 128
    .line 129
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    if-eqz v16, :cond_3

    .line 140
    .line 141
    if-eqz v20, :cond_2

    .line 142
    .line 143
    const-wide/32 v14, 0x10000

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    const-wide/32 v14, 0x8000

    .line 148
    .line 149
    .line 150
    :goto_2
    or-long/2addr v2, v14

    .line 151
    :cond_3
    if-eqz v8, :cond_4

    .line 152
    .line 153
    const/4 v14, 0x1

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    const/4 v14, 0x0

    .line 156
    :goto_3
    if-nez v8, :cond_5

    .line 157
    .line 158
    const/4 v15, 0x1

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    const/4 v15, 0x0

    .line 161
    :goto_4
    if-nez v17, :cond_6

    .line 162
    .line 163
    const/16 v16, 0x1

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_6
    const/16 v16, 0x0

    .line 167
    .line 168
    :goto_5
    if-eqz v17, :cond_7

    .line 169
    .line 170
    const/16 v17, 0x1

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_7
    const/16 v17, 0x0

    .line 174
    .line 175
    :goto_6
    if-eqz v20, :cond_8

    .line 176
    .line 177
    const/16 v20, 0x0

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_8
    const/16 v20, 0x8

    .line 181
    .line 182
    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v11, "\u53ef\u7528"

    .line 191
    .line 192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    and-long v11, v2, v6

    .line 200
    .line 201
    cmp-long v26, v11, v4

    .line 202
    .line 203
    if-eqz v26, :cond_a

    .line 204
    .line 205
    if-eqz v15, :cond_9

    .line 206
    .line 207
    const-wide/16 v11, 0x40

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_9
    const-wide/16 v11, 0x20

    .line 211
    .line 212
    :goto_8
    or-long/2addr v2, v11

    .line 213
    :cond_a
    and-long v11, v2, v6

    .line 214
    .line 215
    cmp-long v26, v11, v4

    .line 216
    .line 217
    if-eqz v26, :cond_c

    .line 218
    .line 219
    if-eqz v16, :cond_b

    .line 220
    .line 221
    const-wide/32 v11, 0x40000

    .line 222
    .line 223
    .line 224
    or-long/2addr v2, v11

    .line 225
    const-wide/32 v11, 0x400000

    .line 226
    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_b
    const-wide/32 v11, 0x20000

    .line 230
    .line 231
    .line 232
    or-long/2addr v2, v11

    .line 233
    const-wide/32 v11, 0x200000

    .line 234
    .line 235
    .line 236
    :goto_9
    or-long/2addr v2, v11

    .line 237
    :cond_c
    and-long v11, v2, v6

    .line 238
    .line 239
    cmp-long v26, v11, v4

    .line 240
    .line 241
    if-eqz v26, :cond_e

    .line 242
    .line 243
    if-eqz v17, :cond_d

    .line 244
    .line 245
    const-wide/16 v11, 0x4000

    .line 246
    .line 247
    or-long/2addr v2, v11

    .line 248
    const-wide/32 v11, 0x100000

    .line 249
    .line 250
    .line 251
    goto :goto_a

    .line 252
    :cond_d
    const-wide/16 v11, 0x2000

    .line 253
    .line 254
    or-long/2addr v2, v11

    .line 255
    const-wide/32 v11, 0x80000

    .line 256
    .line 257
    .line 258
    :goto_a
    or-long/2addr v2, v11

    .line 259
    :cond_e
    if-eqz v16, :cond_f

    .line 260
    .line 261
    const/4 v11, 0x0

    .line 262
    goto :goto_b

    .line 263
    :cond_f
    const/16 v11, 0x8

    .line 264
    .line 265
    :goto_b
    move-object/from16 v12, v18

    .line 266
    .line 267
    move-object/from16 v27, v19

    .line 268
    .line 269
    move/from16 v28, v20

    .line 270
    .line 271
    move-object/from16 v29, v21

    .line 272
    .line 273
    move-object/from16 v30, v23

    .line 274
    .line 275
    move-object/from16 v31, v25

    .line 276
    .line 277
    const-wide/16 v18, 0x20

    .line 278
    .line 279
    goto :goto_c

    .line 280
    :cond_10
    const/4 v8, 0x0

    .line 281
    const/4 v9, 0x0

    .line 282
    const/4 v10, 0x0

    .line 283
    const/4 v11, 0x0

    .line 284
    const/4 v12, 0x0

    .line 285
    const/4 v13, 0x0

    .line 286
    const/4 v14, 0x0

    .line 287
    const/4 v15, 0x0

    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    const/16 v17, 0x0

    .line 291
    .line 292
    const-wide/16 v18, 0x20

    .line 293
    .line 294
    const/16 v27, 0x0

    .line 295
    .line 296
    const/16 v28, 0x0

    .line 297
    .line 298
    const/16 v29, 0x0

    .line 299
    .line 300
    const/16 v30, 0x0

    .line 301
    .line 302
    const/16 v31, 0x0

    .line 303
    .line 304
    :goto_c
    and-long v18, v2, v18

    .line 305
    .line 306
    cmp-long v20, v18, v4

    .line 307
    .line 308
    if-eqz v20, :cond_15

    .line 309
    .line 310
    const/4 v6, -0x1

    .line 311
    if-ne v8, v6, :cond_11

    .line 312
    .line 313
    const/4 v6, 0x1

    .line 314
    goto :goto_d

    .line 315
    :cond_11
    const/4 v6, 0x0

    .line 316
    :goto_d
    if-eqz v20, :cond_13

    .line 317
    .line 318
    if-eqz v6, :cond_12

    .line 319
    .line 320
    const-wide/16 v7, 0x400

    .line 321
    .line 322
    goto :goto_e

    .line 323
    :cond_12
    const-wide/16 v7, 0x200

    .line 324
    .line 325
    :goto_e
    or-long/2addr v2, v7

    .line 326
    :cond_13
    if-eqz v6, :cond_14

    .line 327
    .line 328
    const-string v6, "\u4e0d\u9002\u7528\u8303\u56f4"

    .line 329
    .line 330
    goto :goto_f

    .line 331
    :cond_14
    const-string v6, "\u9002\u7528\u8303\u56f4"

    .line 332
    .line 333
    goto :goto_f

    .line 334
    :cond_15
    const/4 v6, 0x0

    .line 335
    :goto_f
    const-wide/32 v7, 0x304000

    .line 336
    .line 337
    .line 338
    and-long/2addr v7, v2

    .line 339
    cmp-long v20, v7, v4

    .line 340
    .line 341
    if-eqz v20, :cond_17

    .line 342
    .line 343
    if-eqz v0, :cond_16

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CouponItemBean;->getRepeatable()Ljava/lang/Boolean;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    goto :goto_10

    .line 350
    :cond_16
    const/4 v0, 0x0

    .line 351
    :goto_10
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    const-wide/32 v7, 0x204000

    .line 356
    .line 357
    .line 358
    and-long/2addr v7, v2

    .line 359
    cmp-long v20, v7, v4

    .line 360
    .line 361
    if-eqz v20, :cond_18

    .line 362
    .line 363
    xor-int/lit8 v7, v0, 0x1

    .line 364
    .line 365
    goto :goto_11

    .line 366
    :cond_17
    const/4 v0, 0x0

    .line 367
    :cond_18
    const/4 v7, 0x0

    .line 368
    :goto_11
    const-wide/16 v18, 0x5

    .line 369
    .line 370
    and-long v20, v2, v18

    .line 371
    .line 372
    cmp-long v8, v20, v4

    .line 373
    .line 374
    if-eqz v8, :cond_26

    .line 375
    .line 376
    if-eqz v15, :cond_19

    .line 377
    .line 378
    const-string v6, "\u5168\u90e8\u9002\u7528"

    .line 379
    .line 380
    :cond_19
    if-eqz v17, :cond_1a

    .line 381
    .line 382
    move v15, v7

    .line 383
    goto :goto_12

    .line 384
    :cond_1a
    const/4 v15, 0x0

    .line 385
    :goto_12
    if-eqz v17, :cond_1b

    .line 386
    .line 387
    goto :goto_13

    .line 388
    :cond_1b
    const/4 v0, 0x0

    .line 389
    :goto_13
    if-eqz v16, :cond_1c

    .line 390
    .line 391
    const/4 v7, 0x1

    .line 392
    :cond_1c
    if-eqz v8, :cond_1e

    .line 393
    .line 394
    if-eqz v15, :cond_1d

    .line 395
    .line 396
    const-wide/16 v16, 0x1000

    .line 397
    .line 398
    goto :goto_14

    .line 399
    :cond_1d
    const-wide/16 v16, 0x800

    .line 400
    .line 401
    :goto_14
    or-long v2, v2, v16

    .line 402
    .line 403
    :cond_1e
    const-wide/16 v16, 0x5

    .line 404
    .line 405
    and-long v18, v2, v16

    .line 406
    .line 407
    cmp-long v8, v18, v4

    .line 408
    .line 409
    if-eqz v8, :cond_20

    .line 410
    .line 411
    if-eqz v0, :cond_1f

    .line 412
    .line 413
    const-wide/16 v18, 0x100

    .line 414
    .line 415
    goto :goto_15

    .line 416
    :cond_1f
    const-wide/16 v18, 0x80

    .line 417
    .line 418
    :goto_15
    or-long v2, v2, v18

    .line 419
    .line 420
    :cond_20
    and-long v20, v2, v16

    .line 421
    .line 422
    cmp-long v8, v20, v4

    .line 423
    .line 424
    if-eqz v8, :cond_22

    .line 425
    .line 426
    if-eqz v7, :cond_21

    .line 427
    .line 428
    const-wide/16 v16, 0x10

    .line 429
    .line 430
    goto :goto_16

    .line 431
    :cond_21
    const-wide/16 v16, 0x8

    .line 432
    .line 433
    :goto_16
    or-long v2, v2, v16

    .line 434
    .line 435
    :cond_22
    if-eqz v15, :cond_23

    .line 436
    .line 437
    const/4 v8, 0x0

    .line 438
    goto :goto_17

    .line 439
    :cond_23
    const/16 v8, 0x8

    .line 440
    .line 441
    :goto_17
    if-eqz v0, :cond_24

    .line 442
    .line 443
    const/4 v0, 0x0

    .line 444
    goto :goto_18

    .line 445
    :cond_24
    const/16 v0, 0x8

    .line 446
    .line 447
    :goto_18
    if-eqz v7, :cond_25

    .line 448
    .line 449
    const/16 v22, 0x0

    .line 450
    .line 451
    goto :goto_19

    .line 452
    :cond_25
    const/16 v22, 0x8

    .line 453
    .line 454
    :goto_19
    move v15, v8

    .line 455
    move/from16 v7, v22

    .line 456
    .line 457
    goto :goto_1a

    .line 458
    :cond_26
    const/4 v0, 0x0

    .line 459
    const/4 v6, 0x0

    .line 460
    const/4 v7, 0x0

    .line 461
    const/4 v15, 0x0

    .line 462
    :goto_1a
    const-wide/16 v16, 0x5

    .line 463
    .line 464
    and-long v16, v2, v16

    .line 465
    .line 466
    cmp-long v8, v16, v4

    .line 467
    .line 468
    if-eqz v8, :cond_27

    .line 469
    .line 470
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->u:Landroidx/constraintlayout/widget/Group;

    .line 471
    .line 472
    invoke-virtual {v8, v15}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->v:Landroid/widget/ImageView;

    .line 476
    .line 477
    move/from16 v15, v28

    .line 478
    .line 479
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    .line 481
    .line 482
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->w:Landroidx/constraintlayout/widget/Group;

    .line 483
    .line 484
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->x:Landroidx/constraintlayout/widget/Group;

    .line 488
    .line 489
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->b:Landroid/widget/TextView;

    .line 493
    .line 494
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->b:Landroid/widget/TextView;

    .line 498
    .line 499
    move-object/from16 v7, v31

    .line 500
    .line 501
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 502
    .line 503
    .line 504
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->d:Landroid/widget/TextView;

    .line 505
    .line 506
    move-object/from16 v7, v29

    .line 507
    .line 508
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 509
    .line 510
    .line 511
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->e:Landroid/widget/TextView;

    .line 512
    .line 513
    move-object/from16 v7, v27

    .line 514
    .line 515
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->i:Landroid/widget/TextView;

    .line 519
    .line 520
    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->j:Landroid/widget/TextView;

    .line 524
    .line 525
    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 526
    .line 527
    .line 528
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->k:Landroid/widget/TextView;

    .line 529
    .line 530
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 531
    .line 532
    .line 533
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->k:Landroid/widget/TextView;

    .line 534
    .line 535
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->l:Landroid/widget/TextView;

    .line 539
    .line 540
    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 541
    .line 542
    .line 543
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->m:Landroid/widget/TextView;

    .line 544
    .line 545
    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 546
    .line 547
    .line 548
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->n:Landroid/widget/TextView;

    .line 549
    .line 550
    move-object/from16 v6, v30

    .line 551
    .line 552
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    :cond_27
    const-wide/16 v6, 0x4

    .line 556
    .line 557
    and-long/2addr v2, v6

    .line 558
    cmp-long v0, v2, v4

    .line 559
    .line 560
    if-eqz v0, :cond_28

    .line 561
    .line 562
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->v:Landroid/widget/ImageView;

    .line 563
    .line 564
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->z:Landroid/view/View$OnClickListener;

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    .line 568
    .line 569
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->c:Landroid/widget/TextView;

    .line 570
    .line 571
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->y:Landroid/view/View$OnClickListener;

    .line 572
    .line 573
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    .line 575
    .line 576
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ky;->k:Landroid/widget/TextView;

    .line 577
    .line 578
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ly;->A:Landroid/view/View$OnClickListener;

    .line 579
    .line 580
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    .line 582
    .line 583
    :cond_28
    return-void

    .line 584
    :catchall_0
    move-exception v0

    .line 585
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ly;->u(Lcom/join/kotlin/discount/model/bean/CouponItemBean;)V

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ly;->t(Lcom/join/kotlin/discount/proxy/CouponListClickProxy;)V

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->s:Lcom/join/kotlin/discount/proxy/CouponListClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ky;->r:Lcom/join/kotlin/discount/model/bean/CouponItemBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ly;->B:J

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
