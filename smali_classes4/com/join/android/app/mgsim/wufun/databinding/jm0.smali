.class public Lcom/join/android/app/mgsim/wufun/databinding/jm0;
.super Lcom/join/android/app/mgsim/wufun/databinding/im0;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final A:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final z:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final q:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Landroid/view/View;
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

.field private final w:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final x:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:J


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->A:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a103a

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
    const v1, 0x7f0a1087

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->z:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->A:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/jm0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v3, 0x0

    const/4 v14, 0x3

    .line 2
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v2, 0x4

    aget-object v0, p3, v2

    move-object/from16 v17, v0

    check-cast v17, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x5

    aget-object v0, p3, v1

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/join/android/app/mgsim/wufun/databinding/im0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->q:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 9
    aget-object v3, p3, v0

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 11
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->s:Landroid/view/View;

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->h:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/im0;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 20
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 21
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->t:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->u:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->v:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->w:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->x:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Boolean;)V
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
            "IsChoice"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->p:Ljava/lang/Boolean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x16

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->p:Ljava/lang/Boolean;

    .line 14
    .line 15
    const-wide/16 v7, 0xd

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    const/16 v13, 0x8

    .line 20
    .line 21
    const-wide/16 v14, 0x9

    .line 22
    .line 23
    const/4 v11, 0x1

    .line 24
    cmp-long v18, v9, v4

    .line 25
    .line 26
    if-eqz v18, :cond_1a

    .line 27
    .line 28
    and-long v9, v2, v14

    .line 29
    .line 30
    cmp-long v18, v9, v4

    .line 31
    .line 32
    if-eqz v18, :cond_15

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 45
    .line 46
    .line 47
    move-result v19

    .line 48
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v20

    .line 52
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v21

    .line 56
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    .line 57
    .line 58
    .line 59
    move-result v22

    .line 60
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    .line 61
    .line 62
    .line 63
    move-result v23

    .line 64
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v24

    .line 68
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v25

    .line 72
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    .line 73
    .line 74
    .line 75
    move-result v26

    .line 76
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v27

    .line 80
    move/from16 v12, v19

    .line 81
    .line 82
    move/from16 v7, v22

    .line 83
    .line 84
    move/from16 v8, v23

    .line 85
    .line 86
    move/from16 v4, v26

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 v4, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    const/16 v20, 0x0

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v24, 0x0

    .line 100
    .line 101
    const/16 v25, 0x0

    .line 102
    .line 103
    const/16 v27, 0x0

    .line 104
    .line 105
    :goto_0
    if-ne v9, v13, :cond_1

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const/4 v5, 0x0

    .line 110
    :goto_1
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    if-ne v12, v11, :cond_2

    .line 115
    .line 116
    const/4 v10, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    const/4 v10, 0x0

    .line 119
    :goto_2
    if-nez v20, :cond_3

    .line 120
    .line 121
    const/4 v12, 0x1

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    const/4 v12, 0x0

    .line 124
    :goto_3
    if-ne v7, v11, :cond_4

    .line 125
    .line 126
    const/4 v7, 0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_4
    const/4 v7, 0x0

    .line 129
    :goto_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    if-ne v4, v11, :cond_5

    .line 134
    .line 135
    const/4 v4, 0x1

    .line 136
    goto :goto_5

    .line 137
    :cond_5
    const/4 v4, 0x0

    .line 138
    :goto_5
    if-eqz v18, :cond_7

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    const-wide/16 v30, 0x800

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_6
    const-wide/16 v30, 0x400

    .line 146
    .line 147
    :goto_6
    or-long v2, v2, v30

    .line 148
    .line 149
    :cond_7
    and-long v30, v2, v14

    .line 150
    .line 151
    const-wide/16 v28, 0x0

    .line 152
    .line 153
    cmp-long v18, v30, v28

    .line 154
    .line 155
    if-eqz v18, :cond_9

    .line 156
    .line 157
    if-eqz v10, :cond_8

    .line 158
    .line 159
    const-wide/16 v30, 0x80

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_8
    const-wide/16 v30, 0x40

    .line 163
    .line 164
    :goto_7
    or-long v2, v2, v30

    .line 165
    .line 166
    :cond_9
    and-long v30, v2, v14

    .line 167
    .line 168
    cmp-long v18, v30, v28

    .line 169
    .line 170
    if-eqz v18, :cond_b

    .line 171
    .line 172
    if-eqz v12, :cond_a

    .line 173
    .line 174
    const-wide/16 v30, 0x200

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_a
    const-wide/16 v30, 0x100

    .line 178
    .line 179
    :goto_8
    or-long v2, v2, v30

    .line 180
    .line 181
    :cond_b
    and-long v30, v2, v14

    .line 182
    .line 183
    cmp-long v18, v30, v28

    .line 184
    .line 185
    if-eqz v18, :cond_d

    .line 186
    .line 187
    if-eqz v7, :cond_c

    .line 188
    .line 189
    const-wide/16 v30, 0x2000

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_c
    const-wide/16 v30, 0x1000

    .line 193
    .line 194
    :goto_9
    or-long v2, v2, v30

    .line 195
    .line 196
    :cond_d
    and-long v30, v2, v14

    .line 197
    .line 198
    cmp-long v18, v30, v28

    .line 199
    .line 200
    if-eqz v18, :cond_f

    .line 201
    .line 202
    if-eqz v4, :cond_e

    .line 203
    .line 204
    const-wide/32 v30, 0x20000

    .line 205
    .line 206
    .line 207
    goto :goto_a

    .line 208
    :cond_e
    const-wide/32 v30, 0x10000

    .line 209
    .line 210
    .line 211
    :goto_a
    or-long v2, v2, v30

    .line 212
    .line 213
    :cond_f
    if-eqz v5, :cond_10

    .line 214
    .line 215
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->j:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    const v13, 0x7f080d4d

    .line 222
    .line 223
    .line 224
    goto :goto_b

    .line 225
    :cond_10
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->j:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    const v13, 0x7f080d1c

    .line 232
    .line 233
    .line 234
    :goto_b
    invoke-static {v5, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    if-eqz v10, :cond_11

    .line 239
    .line 240
    const/4 v10, 0x0

    .line 241
    goto :goto_c

    .line 242
    :cond_11
    const/16 v10, 0x8

    .line 243
    .line 244
    :goto_c
    if-eqz v12, :cond_12

    .line 245
    .line 246
    const/16 v12, 0x8

    .line 247
    .line 248
    goto :goto_d

    .line 249
    :cond_12
    const/4 v12, 0x0

    .line 250
    :goto_d
    if-eqz v7, :cond_13

    .line 251
    .line 252
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->h:Landroid/widget/ImageView;

    .line 253
    .line 254
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    const v13, 0x7f080432

    .line 259
    .line 260
    .line 261
    goto :goto_e

    .line 262
    :cond_13
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->h:Landroid/widget/ImageView;

    .line 263
    .line 264
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    const v13, 0x7f080431

    .line 269
    .line 270
    .line 271
    :goto_e
    invoke-static {v7, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    if-eqz v4, :cond_14

    .line 276
    .line 277
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->c:Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    const v13, 0x7f080504

    .line 284
    .line 285
    .line 286
    goto :goto_f

    .line 287
    :cond_14
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->c:Landroid/widget/ImageView;

    .line 288
    .line 289
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    const v13, 0x7f080503

    .line 294
    .line 295
    .line 296
    :goto_f
    invoke-static {v4, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    goto :goto_10

    .line 301
    :cond_15
    const/4 v4, 0x0

    .line 302
    const/4 v5, 0x0

    .line 303
    const/4 v7, 0x0

    .line 304
    const/4 v8, 0x0

    .line 305
    const/4 v9, 0x0

    .line 306
    const/4 v10, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    const/16 v20, 0x0

    .line 309
    .line 310
    const/16 v21, 0x0

    .line 311
    .line 312
    const/16 v24, 0x0

    .line 313
    .line 314
    const/16 v25, 0x0

    .line 315
    .line 316
    const/16 v27, 0x0

    .line 317
    .line 318
    :goto_10
    if-eqz v0, :cond_16

    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsChoice()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    goto :goto_11

    .line 325
    :cond_16
    const/4 v0, 0x0

    .line 326
    :goto_11
    if-ne v0, v11, :cond_17

    .line 327
    .line 328
    const/4 v0, 0x1

    .line 329
    goto :goto_12

    .line 330
    :cond_17
    const/4 v0, 0x0

    .line 331
    :goto_12
    const-wide/16 v22, 0xd

    .line 332
    .line 333
    and-long v30, v2, v22

    .line 334
    .line 335
    const-wide/16 v28, 0x0

    .line 336
    .line 337
    cmp-long v13, v30, v28

    .line 338
    .line 339
    if-eqz v13, :cond_19

    .line 340
    .line 341
    if-eqz v0, :cond_18

    .line 342
    .line 343
    const-wide/16 v16, 0x20

    .line 344
    .line 345
    or-long v2, v2, v16

    .line 346
    .line 347
    goto :goto_13

    .line 348
    :cond_18
    const-wide/16 v16, 0x20

    .line 349
    .line 350
    const-wide/16 v30, 0x10

    .line 351
    .line 352
    or-long v2, v2, v30

    .line 353
    .line 354
    goto :goto_13

    .line 355
    :cond_19
    const-wide/16 v16, 0x20

    .line 356
    .line 357
    :goto_13
    move v13, v0

    .line 358
    move/from16 v32, v12

    .line 359
    .line 360
    move-object/from16 v0, v20

    .line 361
    .line 362
    move-object/from16 v33, v21

    .line 363
    .line 364
    move-object/from16 v34, v24

    .line 365
    .line 366
    move-object/from16 v12, v25

    .line 367
    .line 368
    move-object/from16 v35, v27

    .line 369
    .line 370
    goto :goto_14

    .line 371
    :cond_1a
    move-wide/from16 v28, v4

    .line 372
    .line 373
    const-wide/16 v16, 0x20

    .line 374
    .line 375
    const/4 v0, 0x0

    .line 376
    const/4 v4, 0x0

    .line 377
    const/4 v5, 0x0

    .line 378
    const/4 v7, 0x0

    .line 379
    const/4 v8, 0x0

    .line 380
    const/4 v9, 0x0

    .line 381
    const/4 v10, 0x0

    .line 382
    const/4 v12, 0x0

    .line 383
    const/4 v13, 0x0

    .line 384
    const/16 v32, 0x0

    .line 385
    .line 386
    const/16 v33, 0x0

    .line 387
    .line 388
    const/16 v34, 0x0

    .line 389
    .line 390
    const/16 v35, 0x0

    .line 391
    .line 392
    :goto_14
    and-long v16, v2, v16

    .line 393
    .line 394
    cmp-long v20, v16, v28

    .line 395
    .line 396
    if-eqz v20, :cond_1b

    .line 397
    .line 398
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    xor-int/2addr v6, v11

    .line 403
    goto :goto_15

    .line 404
    :cond_1b
    const/4 v6, 0x0

    .line 405
    :goto_15
    const-wide/16 v16, 0xd

    .line 406
    .line 407
    and-long v20, v2, v16

    .line 408
    .line 409
    cmp-long v11, v20, v28

    .line 410
    .line 411
    if-eqz v11, :cond_20

    .line 412
    .line 413
    if-eqz v13, :cond_1c

    .line 414
    .line 415
    goto :goto_16

    .line 416
    :cond_1c
    const/4 v6, 0x0

    .line 417
    :goto_16
    if-eqz v11, :cond_1e

    .line 418
    .line 419
    if-eqz v6, :cond_1d

    .line 420
    .line 421
    const-wide/32 v16, 0x8000

    .line 422
    .line 423
    .line 424
    goto :goto_17

    .line 425
    :cond_1d
    const-wide/16 v16, 0x4000

    .line 426
    .line 427
    :goto_17
    or-long v2, v2, v16

    .line 428
    .line 429
    :cond_1e
    if-eqz v6, :cond_1f

    .line 430
    .line 431
    goto :goto_18

    .line 432
    :cond_1f
    const/16 v13, 0x8

    .line 433
    .line 434
    goto :goto_19

    .line 435
    :cond_20
    :goto_18
    const/4 v13, 0x0

    .line 436
    :goto_19
    and-long/2addr v14, v2

    .line 437
    const-wide/16 v16, 0x0

    .line 438
    .line 439
    cmp-long v6, v14, v16

    .line 440
    .line 441
    if-eqz v6, :cond_21

    .line 442
    .line 443
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->b:Landroid/widget/TextView;

    .line 444
    .line 445
    invoke-static {v6, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->c:Landroid/widget/ImageView;

    .line 449
    .line 450
    invoke-static {v6, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 451
    .line 452
    .line 453
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->d:Landroid/widget/TextView;

    .line 454
    .line 455
    invoke-static {v4, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 459
    .line 460
    move/from16 v12, v32

    .line 461
    .line 462
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 466
    .line 467
    const/4 v6, 0x0

    .line 468
    const/4 v8, 0x0

    .line 469
    invoke-static {v4, v0, v6, v8}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 470
    .line 471
    .line 472
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->s:Landroid/view/View;

    .line 473
    .line 474
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .line 476
    .line 477
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->h:Landroid/widget/ImageView;

    .line 478
    .line 479
    invoke-static {v0, v7}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 480
    .line 481
    .line 482
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->i:Landroid/widget/TextView;

    .line 483
    .line 484
    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->j:Landroid/widget/TextView;

    .line 488
    .line 489
    invoke-static {v0, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->j:Landroid/widget/TextView;

    .line 493
    .line 494
    move-object/from16 v4, v35

    .line 495
    .line 496
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 500
    .line 501
    move-object/from16 v4, v33

    .line 502
    .line 503
    const/4 v5, 0x0

    .line 504
    const/4 v6, 0x0

    .line 505
    invoke-static {v0, v4, v5, v6}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->m:Landroid/widget/TextView;

    .line 509
    .line 510
    move-object/from16 v4, v34

    .line 511
    .line 512
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 513
    .line 514
    .line 515
    :cond_21
    const-wide/16 v4, 0x8

    .line 516
    .line 517
    and-long/2addr v4, v2

    .line 518
    const-wide/16 v6, 0x0

    .line 519
    .line 520
    cmp-long v0, v4, v6

    .line 521
    .line 522
    if-eqz v0, :cond_22

    .line 523
    .line 524
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->c:Landroid/widget/ImageView;

    .line 525
    .line 526
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->x:Landroid/view/View$OnClickListener;

    .line 527
    .line 528
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    .line 530
    .line 531
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->r:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 532
    .line 533
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->u:Landroid/view/View$OnClickListener;

    .line 534
    .line 535
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    .line 537
    .line 538
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->g:Landroid/widget/ImageView;

    .line 539
    .line 540
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->v:Landroid/view/View$OnClickListener;

    .line 541
    .line 542
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .line 544
    .line 545
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->h:Landroid/widget/ImageView;

    .line 546
    .line 547
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->w:Landroid/view/View$OnClickListener;

    .line 548
    .line 549
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->j:Landroid/widget/TextView;

    .line 553
    .line 554
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->t:Landroid/view/View$OnClickListener;

    .line 555
    .line 556
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    .line 558
    .line 559
    :cond_22
    const-wide/16 v4, 0xd

    .line 560
    .line 561
    and-long/2addr v2, v4

    .line 562
    const-wide/16 v4, 0x0

    .line 563
    .line 564
    cmp-long v0, v2, v4

    .line 565
    .line 566
    if-eqz v0, :cond_23

    .line 567
    .line 568
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/im0;->k:Landroid/widget/TextView;

    .line 569
    .line 570
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 571
    .line 572
    .line 573
    :cond_23
    return-void

    .line 574
    :catchall_0
    move-exception v0

    .line 575
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->B(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->z(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->A(Ljava/lang/Boolean;)V

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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/im0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/jm0;->y:J

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
