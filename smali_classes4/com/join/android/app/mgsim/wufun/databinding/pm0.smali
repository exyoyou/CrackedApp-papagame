.class public Lcom/join/android/app/mgsim/wufun/databinding/pm0;
.super Lcom/join/android/app/mgsim/wufun/databinding/om0;
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
.field private final p:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
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

.field private final w:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->z:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a103a

    .line 9
    .line 10
    .line 11
    const/16 v2, 0xc

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a1087

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xd

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->z:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/pm0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18
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

    const/4 v3, 0x0

    const/4 v14, 0x2

    .line 2
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v13, 0x5

    aget-object v0, p3, v13

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v0, p3, v2

    move-object/from16 v16, v0

    check-cast v16, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x4

    aget-object v0, p3, v1

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/join/android/app/mgsim/wufun/databinding/om0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

    .line 4
    iget-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->p:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 9
    aget-object v2, p3, v0

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 11
    aget-object v2, p3, v2

    check-cast v2, Landroid/view/View;

    iput-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->r:Landroid/view/View;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v2, v15, Lcom/join/android/app/mgsim/wufun/databinding/om0;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 19
    invoke-virtual {v15, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 20
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v15, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->s:Landroid/view/View$OnClickListener;

    .line 21
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x5

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->t:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->u:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x3

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->v:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x4

    invoke-direct {v0, v15, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v15, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->w:Landroid/view/View$OnClickListener;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "IsChoice"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->o:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public B(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->m:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_8

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_6

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq p1, v2, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    if-eq p1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->m:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->n:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_1
    if-eqz v0, :cond_b

    .line 26
    .line 27
    invoke-interface {v2, p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->m:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->n:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_3
    if-eqz v0, :cond_b

    .line 39
    .line 40
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->m:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->n:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 47
    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    :cond_5
    if-eqz v0, :cond_b

    .line 52
    .line 53
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->m:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->n:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 60
    .line 61
    if-eqz p2, :cond_7

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    :cond_7
    if-eqz v0, :cond_b

    .line 65
    .line 66
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->m:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->n:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 73
    .line 74
    if-eqz p2, :cond_9

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_9
    const/4 v2, 0x0

    .line 79
    :goto_0
    if-eqz v2, :cond_b

    .line 80
    .line 81
    if-eqz p1, :cond_a

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    :cond_a
    if-eqz v0, :cond_b

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickImage(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_b
    :goto_1
    return-void
.end method

.method protected executeBindings()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->m:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 12
    .line 13
    const-wide/16 v6, 0x9

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    cmp-long v12, v8, v4

    .line 18
    .line 19
    if-eqz v12, :cond_1d

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 36
    .line 37
    .line 38
    move-result v14

    .line 39
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v16

    .line 47
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    .line 48
    .line 49
    .line 50
    move-result v17

    .line 51
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    .line 52
    .line 53
    .line 54
    move-result v18

    .line 55
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v19

    .line 59
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v20

    .line 63
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    .line 64
    .line 65
    .line 66
    move-result v21

    .line 67
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v22

    .line 71
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowType()I

    .line 72
    .line 73
    .line 74
    move-result v23

    .line 75
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    move/from16 v10, v17

    .line 80
    .line 81
    move/from16 v11, v21

    .line 82
    .line 83
    move/from16 v4, v23

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v11, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v18, 0x0

    .line 98
    .line 99
    const/16 v19, 0x0

    .line 100
    .line 101
    const/16 v20, 0x0

    .line 102
    .line 103
    const/16 v22, 0x0

    .line 104
    .line 105
    :goto_0
    const/16 v5, 0x8

    .line 106
    .line 107
    const/4 v6, 0x1

    .line 108
    if-ne v8, v5, :cond_1

    .line 109
    .line 110
    const/4 v7, 0x1

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const/4 v7, 0x0

    .line 113
    :goto_1
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    if-ne v14, v6, :cond_2

    .line 118
    .line 119
    const/4 v13, 0x1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const/4 v13, 0x0

    .line 122
    :goto_2
    if-nez v15, :cond_3

    .line 123
    .line 124
    const/4 v14, 0x1

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    const/4 v14, 0x0

    .line 127
    :goto_3
    if-ne v10, v6, :cond_4

    .line 128
    .line 129
    const/4 v10, 0x1

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    const/4 v10, 0x0

    .line 132
    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v18

    .line 136
    if-ne v11, v6, :cond_5

    .line 137
    .line 138
    const/4 v11, 0x1

    .line 139
    goto :goto_5

    .line 140
    :cond_5
    const/4 v11, 0x0

    .line 141
    :goto_5
    if-ne v4, v6, :cond_6

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_6
    const/4 v6, 0x0

    .line 145
    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v12, :cond_8

    .line 150
    .line 151
    if-eqz v7, :cond_7

    .line 152
    .line 153
    const-wide/16 v27, 0x800

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_7
    const-wide/16 v27, 0x400

    .line 157
    .line 158
    :goto_7
    or-long v2, v2, v27

    .line 159
    .line 160
    :cond_8
    const-wide/16 v25, 0x9

    .line 161
    .line 162
    and-long v27, v2, v25

    .line 163
    .line 164
    const-wide/16 v23, 0x0

    .line 165
    .line 166
    cmp-long v4, v27, v23

    .line 167
    .line 168
    if-eqz v4, :cond_a

    .line 169
    .line 170
    if-eqz v13, :cond_9

    .line 171
    .line 172
    const-wide/16 v27, 0x20

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_9
    const-wide/16 v27, 0x10

    .line 176
    .line 177
    :goto_8
    or-long v2, v2, v27

    .line 178
    .line 179
    :cond_a
    and-long v27, v2, v25

    .line 180
    .line 181
    cmp-long v4, v27, v23

    .line 182
    .line 183
    if-eqz v4, :cond_c

    .line 184
    .line 185
    if-eqz v14, :cond_b

    .line 186
    .line 187
    const-wide/16 v27, 0x200

    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_b
    const-wide/16 v27, 0x100

    .line 191
    .line 192
    :goto_9
    or-long v2, v2, v27

    .line 193
    .line 194
    :cond_c
    and-long v27, v2, v25

    .line 195
    .line 196
    cmp-long v4, v27, v23

    .line 197
    .line 198
    if-eqz v4, :cond_e

    .line 199
    .line 200
    if-eqz v10, :cond_d

    .line 201
    .line 202
    const-wide/32 v27, 0x8000

    .line 203
    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_d
    const-wide/16 v27, 0x4000

    .line 207
    .line 208
    :goto_a
    or-long v2, v2, v27

    .line 209
    .line 210
    :cond_e
    and-long v27, v2, v25

    .line 211
    .line 212
    cmp-long v4, v27, v23

    .line 213
    .line 214
    if-eqz v4, :cond_10

    .line 215
    .line 216
    if-eqz v11, :cond_f

    .line 217
    .line 218
    const-wide/32 v27, 0x20000

    .line 219
    .line 220
    .line 221
    goto :goto_b

    .line 222
    :cond_f
    const-wide/32 v27, 0x10000

    .line 223
    .line 224
    .line 225
    :goto_b
    or-long v2, v2, v27

    .line 226
    .line 227
    :cond_10
    and-long v27, v2, v25

    .line 228
    .line 229
    cmp-long v4, v27, v23

    .line 230
    .line 231
    if-eqz v4, :cond_12

    .line 232
    .line 233
    if-eqz v6, :cond_11

    .line 234
    .line 235
    const-wide/16 v27, 0x2000

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_11
    const-wide/16 v27, 0x1000

    .line 239
    .line 240
    :goto_c
    or-long v2, v2, v27

    .line 241
    .line 242
    :cond_12
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->j:Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    if-eqz v7, :cond_13

    .line 249
    .line 250
    const v7, 0x7f080d4d

    .line 251
    .line 252
    .line 253
    goto :goto_d

    .line 254
    :cond_13
    const v7, 0x7f080d1c

    .line 255
    .line 256
    .line 257
    :goto_d
    invoke-static {v4, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    if-eqz v13, :cond_14

    .line 262
    .line 263
    const/4 v7, 0x0

    .line 264
    goto :goto_e

    .line 265
    :cond_14
    const/16 v7, 0x8

    .line 266
    .line 267
    :goto_e
    if-eqz v14, :cond_15

    .line 268
    .line 269
    const/16 v12, 0x8

    .line 270
    .line 271
    goto :goto_f

    .line 272
    :cond_15
    const/4 v12, 0x0

    .line 273
    :goto_f
    if-eqz v10, :cond_16

    .line 274
    .line 275
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->h:Landroid/widget/ImageView;

    .line 276
    .line 277
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    const v13, 0x7f080432

    .line 282
    .line 283
    .line 284
    goto :goto_10

    .line 285
    :cond_16
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->h:Landroid/widget/ImageView;

    .line 286
    .line 287
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    const v13, 0x7f080431

    .line 292
    .line 293
    .line 294
    :goto_10
    invoke-static {v10, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    if-eqz v11, :cond_17

    .line 299
    .line 300
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->c:Landroid/widget/ImageView;

    .line 301
    .line 302
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 303
    .line 304
    .line 305
    move-result-object v11

    .line 306
    const v13, 0x7f080504

    .line 307
    .line 308
    .line 309
    goto :goto_11

    .line 310
    :cond_17
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->c:Landroid/widget/ImageView;

    .line 311
    .line 312
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    const v13, 0x7f080503

    .line 317
    .line 318
    .line 319
    :goto_11
    invoke-static {v11, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    if-eqz v6, :cond_18

    .line 324
    .line 325
    goto :goto_12

    .line 326
    :cond_18
    const/4 v5, 0x0

    .line 327
    :goto_12
    if-eqz v9, :cond_19

    .line 328
    .line 329
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    goto :goto_13

    .line 334
    :cond_19
    const/4 v0, 0x0

    .line 335
    :goto_13
    const-wide/16 v13, 0x9

    .line 336
    .line 337
    and-long v27, v2, v13

    .line 338
    .line 339
    const-wide/16 v13, 0x0

    .line 340
    .line 341
    cmp-long v6, v27, v13

    .line 342
    .line 343
    if-eqz v6, :cond_1b

    .line 344
    .line 345
    if-eqz v0, :cond_1a

    .line 346
    .line 347
    const-wide/16 v13, 0x80

    .line 348
    .line 349
    goto :goto_14

    .line 350
    :cond_1a
    const-wide/16 v13, 0x40

    .line 351
    .line 352
    :goto_14
    or-long/2addr v2, v13

    .line 353
    :cond_1b
    if-eqz v0, :cond_1c

    .line 354
    .line 355
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->p:Landroid/widget/LinearLayout;

    .line 356
    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const v6, 0x7f080d14

    .line 362
    .line 363
    .line 364
    goto :goto_15

    .line 365
    :cond_1c
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->p:Landroid/widget/LinearLayout;

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    const v6, 0x7f080d13

    .line 372
    .line 373
    .line 374
    :goto_15
    invoke-static {v0, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    move v14, v12

    .line 379
    move-object/from16 v9, v18

    .line 380
    .line 381
    move-object/from16 v6, v20

    .line 382
    .line 383
    move-object/from16 v13, v22

    .line 384
    .line 385
    move-object v12, v0

    .line 386
    move-object/from16 v0, v16

    .line 387
    .line 388
    move-object/from16 v16, v19

    .line 389
    .line 390
    const-wide/16 v18, 0x9

    .line 391
    .line 392
    goto :goto_16

    .line 393
    :cond_1d
    move-wide/from16 v18, v6

    .line 394
    .line 395
    const/4 v0, 0x0

    .line 396
    const/4 v4, 0x0

    .line 397
    const/4 v5, 0x0

    .line 398
    const/4 v6, 0x0

    .line 399
    const/4 v7, 0x0

    .line 400
    const/4 v8, 0x0

    .line 401
    const/4 v9, 0x0

    .line 402
    const/4 v10, 0x0

    .line 403
    const/4 v11, 0x0

    .line 404
    const/4 v12, 0x0

    .line 405
    const/4 v13, 0x0

    .line 406
    const/4 v14, 0x0

    .line 407
    const/4 v15, 0x0

    .line 408
    const/16 v16, 0x0

    .line 409
    .line 410
    :goto_16
    and-long v18, v2, v18

    .line 411
    .line 412
    const-wide/16 v22, 0x0

    .line 413
    .line 414
    cmp-long v20, v18, v22

    .line 415
    .line 416
    move-wide/from16 v18, v2

    .line 417
    .line 418
    if-eqz v20, :cond_1e

    .line 419
    .line 420
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->b:Landroid/widget/TextView;

    .line 421
    .line 422
    invoke-static {v2, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 423
    .line 424
    .line 425
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->c:Landroid/widget/ImageView;

    .line 426
    .line 427
    invoke-static {v2, v11}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 428
    .line 429
    .line 430
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->d:Landroid/widget/TextView;

    .line 431
    .line 432
    invoke-static {v2, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 433
    .line 434
    .line 435
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->p:Landroid/widget/LinearLayout;

    .line 436
    .line 437
    invoke-static {v2, v12}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 438
    .line 439
    .line 440
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 441
    .line 442
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 443
    .line 444
    .line 445
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 446
    .line 447
    const/4 v3, 0x0

    .line 448
    const/4 v6, 0x0

    .line 449
    invoke-static {v2, v15, v3, v6}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 450
    .line 451
    .line 452
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->r:Landroid/view/View;

    .line 453
    .line 454
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->g:Landroid/widget/ImageView;

    .line 458
    .line 459
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    .line 461
    .line 462
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->h:Landroid/widget/ImageView;

    .line 463
    .line 464
    invoke-static {v2, v10}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 465
    .line 466
    .line 467
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->i:Landroid/widget/TextView;

    .line 468
    .line 469
    invoke-static {v2, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->j:Landroid/widget/TextView;

    .line 473
    .line 474
    invoke-static {v2, v4}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 475
    .line 476
    .line 477
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->j:Landroid/widget/TextView;

    .line 478
    .line 479
    invoke-static {v2, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 480
    .line 481
    .line 482
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 483
    .line 484
    const/4 v3, 0x0

    .line 485
    const/4 v4, 0x0

    .line 486
    invoke-static {v2, v0, v3, v4}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->l:Landroid/widget/TextView;

    .line 490
    .line 491
    move-object/from16 v2, v16

    .line 492
    .line 493
    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 494
    .line 495
    .line 496
    :cond_1e
    const-wide/16 v2, 0x8

    .line 497
    .line 498
    and-long v2, v18, v2

    .line 499
    .line 500
    const-wide/16 v4, 0x0

    .line 501
    .line 502
    cmp-long v0, v2, v4

    .line 503
    .line 504
    if-eqz v0, :cond_1f

    .line 505
    .line 506
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->c:Landroid/widget/ImageView;

    .line 507
    .line 508
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->v:Landroid/view/View$OnClickListener;

    .line 509
    .line 510
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    .line 512
    .line 513
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 514
    .line 515
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->s:Landroid/view/View$OnClickListener;

    .line 516
    .line 517
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    .line 519
    .line 520
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->g:Landroid/widget/ImageView;

    .line 521
    .line 522
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->t:Landroid/view/View$OnClickListener;

    .line 523
    .line 524
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->h:Landroid/widget/ImageView;

    .line 528
    .line 529
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->u:Landroid/view/View$OnClickListener;

    .line 530
    .line 531
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    .line 533
    .line 534
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->j:Landroid/widget/TextView;

    .line 535
    .line 536
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->w:Landroid/view/View$OnClickListener;

    .line 537
    .line 538
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    :cond_1f
    return-void

    .line 542
    :catchall_0
    move-exception v0

    .line 543
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

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
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->B(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x9

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->z(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v0, 0x16

    .line 22
    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    check-cast p2, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->A(Ljava/lang/Boolean;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 p1, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    :goto_1
    return p1
.end method

.method public z(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->n:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/pm0;->x:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x9

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
