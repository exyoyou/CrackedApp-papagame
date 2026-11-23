.class public Lcom/join/android/app/mgsim/wufun/databinding/rm0;
.super Lcom/join/android/app/mgsim/wufun/databinding/qm0;
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
.field private final r:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->B:Landroid/util/SparseIntArray;

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->A:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->B:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/rm0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    invoke-direct/range {v0 .. v15}, Lcom/join/android/app/mgsim/wufun/databinding/qm0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->r:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 9
    aget-object v3, p3, v0

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 11
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->t:Landroid/view/View;

    .line 12
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->h:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 20
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 21
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->u:Landroid/view/View$OnClickListener;

    .line 22
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->v:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->w:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->x:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->y:Landroid/view/View$OnClickListener;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public B(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

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

.method public C(Ljava/lang/Boolean;)V
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->p:Ljava/lang/Boolean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

    .line 5
    .line 6
    const-wide/16 v2, 0x8

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

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

.method public D(Ljava/lang/Boolean;)V
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
            "IsShowName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->q:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public E(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->o:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

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
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->n:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->p:Ljava/lang/Boolean;

    .line 14
    .line 15
    const-wide/16 v7, 0x1a

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    const/16 v13, 0x8

    .line 20
    .line 21
    const-wide/16 v14, 0x12

    .line 22
    .line 23
    const/4 v11, 0x1

    .line 24
    cmp-long v18, v9, v4

    .line 25
    .line 26
    if-eqz v18, :cond_22

    .line 27
    .line 28
    and-long v9, v2, v14

    .line 29
    .line 30
    cmp-long v18, v9, v4

    .line 31
    .line 32
    if-eqz v18, :cond_1d

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
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 45
    .line 46
    .line 47
    move-result v19

    .line 48
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 49
    .line 50
    .line 51
    move-result v20

    .line 52
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v21

    .line 56
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v22

    .line 60
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    .line 61
    .line 62
    .line 63
    move-result v23

    .line 64
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    .line 65
    .line 66
    .line 67
    move-result v24

    .line 68
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNickname()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v25

    .line 72
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v26

    .line 76
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    .line 77
    .line 78
    .line 79
    move-result v27

    .line 80
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v28

    .line 84
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowType()I

    .line 85
    .line 86
    .line 87
    move-result v29

    .line 88
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 89
    .line 90
    .line 91
    move-result v30

    .line 92
    move/from16 v12, v20

    .line 93
    .line 94
    move/from16 v7, v23

    .line 95
    .line 96
    move/from16 v8, v24

    .line 97
    .line 98
    move/from16 v4, v27

    .line 99
    .line 100
    move/from16 v5, v29

    .line 101
    .line 102
    move/from16 v27, v30

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v9, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v12, 0x0

    .line 112
    const/16 v19, 0x0

    .line 113
    .line 114
    const/16 v21, 0x0

    .line 115
    .line 116
    const/16 v22, 0x0

    .line 117
    .line 118
    const/16 v25, 0x0

    .line 119
    .line 120
    const/16 v26, 0x0

    .line 121
    .line 122
    const/16 v27, 0x0

    .line 123
    .line 124
    const/16 v28, 0x0

    .line 125
    .line 126
    :goto_0
    if-ne v9, v13, :cond_1

    .line 127
    .line 128
    const/4 v9, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    const/4 v9, 0x0

    .line 131
    :goto_1
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v19

    .line 135
    if-ne v12, v11, :cond_2

    .line 136
    .line 137
    const/4 v12, 0x1

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    const/4 v12, 0x0

    .line 140
    :goto_2
    if-nez v21, :cond_3

    .line 141
    .line 142
    const/16 v31, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_3
    const/16 v31, 0x0

    .line 146
    .line 147
    :goto_3
    if-ne v7, v11, :cond_4

    .line 148
    .line 149
    const/4 v7, 0x1

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    const/4 v7, 0x0

    .line 152
    :goto_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    if-ne v4, v11, :cond_5

    .line 157
    .line 158
    const/4 v4, 0x1

    .line 159
    goto :goto_5

    .line 160
    :cond_5
    const/4 v4, 0x0

    .line 161
    :goto_5
    if-ne v5, v11, :cond_6

    .line 162
    .line 163
    const/4 v5, 0x1

    .line 164
    goto :goto_6

    .line 165
    :cond_6
    const/4 v5, 0x0

    .line 166
    :goto_6
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    if-eqz v18, :cond_8

    .line 171
    .line 172
    if-eqz v9, :cond_7

    .line 173
    .line 174
    const-wide/16 v32, 0x4000

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_7
    const-wide/16 v32, 0x2000

    .line 178
    .line 179
    :goto_7
    or-long v2, v2, v32

    .line 180
    .line 181
    :cond_8
    and-long v32, v2, v14

    .line 182
    .line 183
    const-wide/16 v29, 0x0

    .line 184
    .line 185
    cmp-long v18, v32, v29

    .line 186
    .line 187
    if-eqz v18, :cond_a

    .line 188
    .line 189
    if-eqz v12, :cond_9

    .line 190
    .line 191
    const-wide/16 v32, 0x100

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_9
    const-wide/16 v32, 0x80

    .line 195
    .line 196
    :goto_8
    or-long v2, v2, v32

    .line 197
    .line 198
    :cond_a
    and-long v32, v2, v14

    .line 199
    .line 200
    cmp-long v18, v32, v29

    .line 201
    .line 202
    if-eqz v18, :cond_c

    .line 203
    .line 204
    if-eqz v31, :cond_b

    .line 205
    .line 206
    const-wide/16 v32, 0x1000

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_b
    const-wide/16 v32, 0x800

    .line 210
    .line 211
    :goto_9
    or-long v2, v2, v32

    .line 212
    .line 213
    :cond_c
    and-long v32, v2, v14

    .line 214
    .line 215
    cmp-long v18, v32, v29

    .line 216
    .line 217
    if-eqz v18, :cond_e

    .line 218
    .line 219
    if-eqz v7, :cond_d

    .line 220
    .line 221
    const-wide/32 v32, 0x40000

    .line 222
    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_d
    const-wide/32 v32, 0x20000

    .line 226
    .line 227
    .line 228
    :goto_a
    or-long v2, v2, v32

    .line 229
    .line 230
    :cond_e
    and-long v32, v2, v14

    .line 231
    .line 232
    cmp-long v18, v32, v29

    .line 233
    .line 234
    if-eqz v18, :cond_10

    .line 235
    .line 236
    if-eqz v4, :cond_f

    .line 237
    .line 238
    const-wide/32 v32, 0x400000

    .line 239
    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_f
    const-wide/32 v32, 0x200000

    .line 243
    .line 244
    .line 245
    :goto_b
    or-long v2, v2, v32

    .line 246
    .line 247
    :cond_10
    and-long v32, v2, v14

    .line 248
    .line 249
    cmp-long v18, v32, v29

    .line 250
    .line 251
    if-eqz v18, :cond_12

    .line 252
    .line 253
    if-eqz v5, :cond_11

    .line 254
    .line 255
    const-wide/32 v32, 0x10000

    .line 256
    .line 257
    .line 258
    goto :goto_c

    .line 259
    :cond_11
    const-wide/32 v32, 0x8000

    .line 260
    .line 261
    .line 262
    :goto_c
    or-long v2, v2, v32

    .line 263
    .line 264
    :cond_12
    if-eqz v9, :cond_13

    .line 265
    .line 266
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->j:Landroid/widget/TextView;

    .line 267
    .line 268
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    const v11, 0x7f080d4d

    .line 273
    .line 274
    .line 275
    goto :goto_d

    .line 276
    :cond_13
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->j:Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    const v11, 0x7f080d1c

    .line 283
    .line 284
    .line 285
    :goto_d
    invoke-static {v9, v11}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    if-eqz v12, :cond_14

    .line 290
    .line 291
    const/4 v11, 0x0

    .line 292
    goto :goto_e

    .line 293
    :cond_14
    const/16 v11, 0x8

    .line 294
    .line 295
    :goto_e
    if-eqz v31, :cond_15

    .line 296
    .line 297
    const/16 v12, 0x8

    .line 298
    .line 299
    goto :goto_f

    .line 300
    :cond_15
    const/4 v12, 0x0

    .line 301
    :goto_f
    if-eqz v7, :cond_16

    .line 302
    .line 303
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->h:Landroid/widget/ImageView;

    .line 304
    .line 305
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    const v14, 0x7f080432

    .line 310
    .line 311
    .line 312
    goto :goto_10

    .line 313
    :cond_16
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->h:Landroid/widget/ImageView;

    .line 314
    .line 315
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    const v14, 0x7f080431

    .line 320
    .line 321
    .line 322
    :goto_10
    invoke-static {v7, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    if-eqz v4, :cond_17

    .line 327
    .line 328
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->c:Landroid/widget/ImageView;

    .line 329
    .line 330
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    const v14, 0x7f080504

    .line 335
    .line 336
    .line 337
    goto :goto_11

    .line 338
    :cond_17
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->c:Landroid/widget/ImageView;

    .line 339
    .line 340
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    const v14, 0x7f080503

    .line 345
    .line 346
    .line 347
    :goto_11
    invoke-static {v4, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    if-eqz v5, :cond_18

    .line 352
    .line 353
    const/16 v5, 0x8

    .line 354
    .line 355
    goto :goto_12

    .line 356
    :cond_18
    const/4 v5, 0x0

    .line 357
    :goto_12
    if-eqz v10, :cond_19

    .line 358
    .line 359
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v10

    .line 363
    goto :goto_13

    .line 364
    :cond_19
    const/4 v10, 0x0

    .line 365
    :goto_13
    const-wide/16 v13, 0x12

    .line 366
    .line 367
    and-long v34, v2, v13

    .line 368
    .line 369
    const-wide/16 v13, 0x0

    .line 370
    .line 371
    cmp-long v15, v34, v13

    .line 372
    .line 373
    if-eqz v15, :cond_1b

    .line 374
    .line 375
    if-eqz v10, :cond_1a

    .line 376
    .line 377
    const-wide/16 v13, 0x400

    .line 378
    .line 379
    goto :goto_14

    .line 380
    :cond_1a
    const-wide/16 v13, 0x200

    .line 381
    .line 382
    :goto_14
    or-long/2addr v2, v13

    .line 383
    :cond_1b
    if-eqz v10, :cond_1c

    .line 384
    .line 385
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->r:Landroid/widget/LinearLayout;

    .line 386
    .line 387
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    const v13, 0x7f080d14

    .line 392
    .line 393
    .line 394
    goto :goto_15

    .line 395
    :cond_1c
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->r:Landroid/widget/LinearLayout;

    .line 396
    .line 397
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    const v13, 0x7f080d13

    .line 402
    .line 403
    .line 404
    :goto_15
    invoke-static {v10, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    goto :goto_16

    .line 409
    :cond_1d
    const/4 v4, 0x0

    .line 410
    const/4 v5, 0x0

    .line 411
    const/4 v7, 0x0

    .line 412
    const/4 v8, 0x0

    .line 413
    const/4 v9, 0x0

    .line 414
    const/4 v10, 0x0

    .line 415
    const/4 v11, 0x0

    .line 416
    const/4 v12, 0x0

    .line 417
    const/16 v19, 0x0

    .line 418
    .line 419
    const/16 v21, 0x0

    .line 420
    .line 421
    const/16 v22, 0x0

    .line 422
    .line 423
    const/16 v25, 0x0

    .line 424
    .line 425
    const/16 v26, 0x0

    .line 426
    .line 427
    const/16 v28, 0x0

    .line 428
    .line 429
    :goto_16
    if-eqz v0, :cond_1e

    .line 430
    .line 431
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsChoice()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    goto :goto_17

    .line 436
    :cond_1e
    const/4 v0, 0x0

    .line 437
    :goto_17
    const/4 v13, 0x1

    .line 438
    if-ne v0, v13, :cond_1f

    .line 439
    .line 440
    const/4 v0, 0x1

    .line 441
    goto :goto_18

    .line 442
    :cond_1f
    const/4 v0, 0x0

    .line 443
    :goto_18
    const-wide/16 v13, 0x1a

    .line 444
    .line 445
    and-long v34, v2, v13

    .line 446
    .line 447
    const-wide/16 v13, 0x0

    .line 448
    .line 449
    cmp-long v15, v34, v13

    .line 450
    .line 451
    if-eqz v15, :cond_21

    .line 452
    .line 453
    if-eqz v0, :cond_20

    .line 454
    .line 455
    const-wide/16 v15, 0x40

    .line 456
    .line 457
    or-long/2addr v2, v15

    .line 458
    goto :goto_19

    .line 459
    :cond_20
    const-wide/16 v15, 0x40

    .line 460
    .line 461
    const-wide/16 v29, 0x20

    .line 462
    .line 463
    or-long v2, v2, v29

    .line 464
    .line 465
    goto :goto_19

    .line 466
    :cond_21
    const-wide/16 v15, 0x40

    .line 467
    .line 468
    :goto_19
    move-object/from16 v17, v9

    .line 469
    .line 470
    move v9, v12

    .line 471
    move-object/from16 v36, v22

    .line 472
    .line 473
    move-object/from16 v37, v25

    .line 474
    .line 475
    move-object/from16 v38, v28

    .line 476
    .line 477
    move-object v12, v10

    .line 478
    move-object/from16 v10, v21

    .line 479
    .line 480
    move-object/from16 v21, v19

    .line 481
    .line 482
    move/from16 v19, v0

    .line 483
    .line 484
    move-object/from16 v0, v26

    .line 485
    .line 486
    goto :goto_1a

    .line 487
    :cond_22
    move-wide v13, v4

    .line 488
    const-wide/16 v15, 0x40

    .line 489
    .line 490
    const/4 v0, 0x0

    .line 491
    const/4 v4, 0x0

    .line 492
    const/4 v5, 0x0

    .line 493
    const/4 v7, 0x0

    .line 494
    const/4 v8, 0x0

    .line 495
    const/4 v9, 0x0

    .line 496
    const/4 v10, 0x0

    .line 497
    const/4 v11, 0x0

    .line 498
    const/4 v12, 0x0

    .line 499
    const/16 v17, 0x0

    .line 500
    .line 501
    const/16 v19, 0x0

    .line 502
    .line 503
    const/16 v21, 0x0

    .line 504
    .line 505
    const/16 v36, 0x0

    .line 506
    .line 507
    const/16 v37, 0x0

    .line 508
    .line 509
    const/16 v38, 0x0

    .line 510
    .line 511
    :goto_1a
    and-long/2addr v15, v2

    .line 512
    cmp-long v22, v15, v13

    .line 513
    .line 514
    if-eqz v22, :cond_23

    .line 515
    .line 516
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    const/4 v15, 0x1

    .line 521
    xor-int/2addr v6, v15

    .line 522
    goto :goto_1b

    .line 523
    :cond_23
    const/4 v6, 0x0

    .line 524
    :goto_1b
    const-wide/16 v15, 0x1a

    .line 525
    .line 526
    and-long v25, v2, v15

    .line 527
    .line 528
    cmp-long v15, v25, v13

    .line 529
    .line 530
    if-eqz v15, :cond_28

    .line 531
    .line 532
    if-eqz v19, :cond_24

    .line 533
    .line 534
    goto :goto_1c

    .line 535
    :cond_24
    const/4 v6, 0x0

    .line 536
    :goto_1c
    if-eqz v15, :cond_26

    .line 537
    .line 538
    if-eqz v6, :cond_25

    .line 539
    .line 540
    const-wide/32 v13, 0x100000

    .line 541
    .line 542
    .line 543
    goto :goto_1d

    .line 544
    :cond_25
    const-wide/32 v13, 0x80000

    .line 545
    .line 546
    .line 547
    :goto_1d
    or-long/2addr v2, v13

    .line 548
    :cond_26
    if-eqz v6, :cond_27

    .line 549
    .line 550
    goto :goto_1e

    .line 551
    :cond_27
    const/16 v13, 0x8

    .line 552
    .line 553
    goto :goto_1f

    .line 554
    :cond_28
    :goto_1e
    const/4 v13, 0x0

    .line 555
    :goto_1f
    const-wide/16 v14, 0x12

    .line 556
    .line 557
    and-long/2addr v14, v2

    .line 558
    const-wide/16 v18, 0x0

    .line 559
    .line 560
    cmp-long v6, v14, v18

    .line 561
    .line 562
    if-eqz v6, :cond_29

    .line 563
    .line 564
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->b:Landroid/widget/TextView;

    .line 565
    .line 566
    invoke-static {v6, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 567
    .line 568
    .line 569
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->c:Landroid/widget/ImageView;

    .line 570
    .line 571
    invoke-static {v0, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 572
    .line 573
    .line 574
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->d:Landroid/widget/TextView;

    .line 575
    .line 576
    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 577
    .line 578
    .line 579
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->r:Landroid/widget/LinearLayout;

    .line 580
    .line 581
    invoke-static {v0, v12}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 582
    .line 583
    .line 584
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 585
    .line 586
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 587
    .line 588
    .line 589
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 590
    .line 591
    const/4 v4, 0x0

    .line 592
    const/4 v6, 0x0

    .line 593
    invoke-static {v0, v10, v4, v6}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 594
    .line 595
    .line 596
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->t:Landroid/view/View;

    .line 597
    .line 598
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 599
    .line 600
    .line 601
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->g:Landroid/widget/ImageView;

    .line 602
    .line 603
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    .line 605
    .line 606
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->h:Landroid/widget/ImageView;

    .line 607
    .line 608
    invoke-static {v0, v7}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 609
    .line 610
    .line 611
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->i:Landroid/widget/TextView;

    .line 612
    .line 613
    move-object/from16 v4, v21

    .line 614
    .line 615
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 616
    .line 617
    .line 618
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->j:Landroid/widget/TextView;

    .line 619
    .line 620
    move-object/from16 v9, v17

    .line 621
    .line 622
    invoke-static {v0, v9}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 623
    .line 624
    .line 625
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->j:Landroid/widget/TextView;

    .line 626
    .line 627
    move-object/from16 v4, v38

    .line 628
    .line 629
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 630
    .line 631
    .line 632
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 633
    .line 634
    move-object/from16 v4, v36

    .line 635
    .line 636
    const/4 v5, 0x0

    .line 637
    const/4 v6, 0x0

    .line 638
    invoke-static {v0, v4, v5, v6}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    .line 640
    .line 641
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->m:Landroid/widget/TextView;

    .line 642
    .line 643
    move-object/from16 v4, v37

    .line 644
    .line 645
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 646
    .line 647
    .line 648
    :cond_29
    const-wide/16 v4, 0x10

    .line 649
    .line 650
    and-long/2addr v4, v2

    .line 651
    const-wide/16 v6, 0x0

    .line 652
    .line 653
    cmp-long v0, v4, v6

    .line 654
    .line 655
    if-eqz v0, :cond_2a

    .line 656
    .line 657
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->c:Landroid/widget/ImageView;

    .line 658
    .line 659
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->y:Landroid/view/View$OnClickListener;

    .line 660
    .line 661
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    .line 663
    .line 664
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->s:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 665
    .line 666
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->u:Landroid/view/View$OnClickListener;

    .line 667
    .line 668
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    .line 670
    .line 671
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->g:Landroid/widget/ImageView;

    .line 672
    .line 673
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->x:Landroid/view/View$OnClickListener;

    .line 674
    .line 675
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    .line 677
    .line 678
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->h:Landroid/widget/ImageView;

    .line 679
    .line 680
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->w:Landroid/view/View$OnClickListener;

    .line 681
    .line 682
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->j:Landroid/widget/TextView;

    .line 686
    .line 687
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->v:Landroid/view/View$OnClickListener;

    .line 688
    .line 689
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    .line 691
    .line 692
    :cond_2a
    const-wide/16 v4, 0x1a

    .line 693
    .line 694
    and-long/2addr v2, v4

    .line 695
    const-wide/16 v4, 0x0

    .line 696
    .line 697
    cmp-long v0, v2, v4

    .line 698
    .line 699
    if-eqz v0, :cond_2b

    .line 700
    .line 701
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->k:Landroid/widget/TextView;

    .line 702
    .line 703
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 704
    .line 705
    .line 706
    :cond_2b
    return-void

    .line 707
    :catchall_0
    move-exception v0

    .line 708
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

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
    const-wide/16 v0, 0x10

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->z:J

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
    const/16 v0, 0x18

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->D(Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x1b

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->E(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v0, 0x9

    .line 22
    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->B(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 v0, 0x16

    .line 32
    .line 33
    if-ne v0, p1, :cond_3

    .line 34
    .line 35
    check-cast p2, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/rm0;->C(Ljava/lang/Boolean;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 p1, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    :goto_1
    return p1
.end method
