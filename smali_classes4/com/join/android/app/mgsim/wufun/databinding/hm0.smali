.class public Lcom/join/android/app/mgsim/wufun/databinding/hm0;
.super Lcom/join/android/app/mgsim/wufun/databinding/gm0;
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
.field private final m:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Landroid/widget/RelativeLayout;
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->z:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15
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

    move-object v11, p0

    const/4 v3, 0x4

    const/4 v12, 0x4

    .line 2
    aget-object v0, p3, v12

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v13, 0x1

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v14, 0x3

    aget-object v0, p3, v14

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/join/android/app/mgsim/wufun/databinding/gm0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 4
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->m:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 10
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->n:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x5

    .line 12
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->o:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 14
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->p:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x7

    .line 16
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->q:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0x9

    .line 18
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->r:Landroid/widget/RelativeLayout;

    .line 19
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v3, v11, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 23
    invoke-virtual {p0, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 24
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v12}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->s:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, p0, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->t:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->u:Landroid/view/View$OnClickListener;

    .line 27
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v14}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->v:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, p0, v13}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v11, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->w:Landroid/view/View$OnClickListener;

    .line 29
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->invalidateAll()V

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
            "ViewModleArchive",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v0, 0x8

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

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
            "ViewModleArchiveDatas",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

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
            "ViewModleImagepath",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

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
            "ViewModleTitle",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

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
.method public B(Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V
    .locals 4
    .param p1    # Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "AfterTextChange"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->k:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x20

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x2

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

.method public C(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V
    .locals 4
    .param p1    # Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "BeforTextChange"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->l:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x10

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x5

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

.method public D(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "OnClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->j:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x40

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x21

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

.method public E(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->i:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v2, 0x80

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

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
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->j:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_1
    if-eqz v0, :cond_a

    .line 24
    .line 25
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->j:Landroid/view/View$OnClickListener;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_3
    if-eqz v0, :cond_a

    .line 35
    .line 36
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->j:Landroid/view/View$OnClickListener;

    .line 41
    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    :cond_5
    if-eqz v0, :cond_a

    .line 46
    .line 47
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->j:Landroid/view/View$OnClickListener;

    .line 52
    .line 53
    if-eqz p1, :cond_7

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    :cond_7
    if-eqz v0, :cond_a

    .line 57
    .line 58
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->j:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    if-eqz p1, :cond_9

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    :cond_9
    if-eqz v0, :cond_a

    .line 68
    .line 69
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_a
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->l:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->k:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    .line 14
    .line 15
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->i:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 16
    .line 17
    const-wide/16 v8, 0x18f

    .line 18
    .line 19
    and-long/2addr v8, v2

    .line 20
    const-wide/16 v12, 0x184

    .line 21
    .line 22
    const-wide/16 v14, 0x182

    .line 23
    .line 24
    const-wide/16 v16, 0x181

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    cmp-long v18, v8, v4

    .line 28
    .line 29
    if-eqz v18, :cond_18

    .line 30
    .line 31
    and-long v8, v2, v16

    .line 32
    .line 33
    const/16 v18, 0x8

    .line 34
    .line 35
    const/4 v11, 0x1

    .line 36
    cmp-long v19, v8, v4

    .line 37
    .line 38
    if-eqz v19, :cond_a

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getImagepath()Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v8, 0x0

    .line 48
    :goto_0
    invoke-virtual {v1, v10, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 49
    .line 50
    .line 51
    if-eqz v8, :cond_1

    .line 52
    .line 53
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v8, 0x0

    .line 61
    :goto_1
    if-nez v8, :cond_2

    .line 62
    .line 63
    const/4 v9, 0x1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/4 v9, 0x0

    .line 66
    :goto_2
    if-eqz v8, :cond_3

    .line 67
    .line 68
    const/16 v20, 0x1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v20, 0x0

    .line 72
    .line 73
    :goto_3
    if-eqz v19, :cond_5

    .line 74
    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    const-wide/16 v21, 0x1000

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    const-wide/16 v21, 0x800

    .line 81
    .line 82
    :goto_4
    or-long v2, v2, v21

    .line 83
    .line 84
    :cond_5
    and-long v21, v2, v16

    .line 85
    .line 86
    cmp-long v19, v21, v4

    .line 87
    .line 88
    if-eqz v19, :cond_7

    .line 89
    .line 90
    if-eqz v20, :cond_6

    .line 91
    .line 92
    const-wide/16 v21, 0x400

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    const-wide/16 v21, 0x200

    .line 96
    .line 97
    :goto_5
    or-long v2, v2, v21

    .line 98
    .line 99
    :cond_7
    if-eqz v9, :cond_8

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    goto :goto_6

    .line 103
    :cond_8
    const/16 v9, 0x8

    .line 104
    .line 105
    :goto_6
    if-eqz v20, :cond_9

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_9
    const/16 v19, 0x8

    .line 109
    .line 110
    goto :goto_8

    .line 111
    :cond_a
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    :goto_7
    const/16 v19, 0x0

    .line 114
    .line 115
    :goto_8
    and-long v20, v2, v14

    .line 116
    .line 117
    cmp-long v22, v20, v4

    .line 118
    .line 119
    if-eqz v22, :cond_11

    .line 120
    .line 121
    if-eqz v7, :cond_b

    .line 122
    .line 123
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchiveDatas()Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    .line 126
    move-result-object v20

    .line 127
    move-object/from16 v14, v20

    .line 128
    .line 129
    goto :goto_9

    .line 130
    :cond_b
    const/4 v14, 0x0

    .line 131
    :goto_9
    invoke-virtual {v1, v11, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 132
    .line 133
    .line 134
    if-eqz v14, :cond_c

    .line 135
    .line 136
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    check-cast v14, Ljava/util/List;

    .line 141
    .line 142
    goto :goto_a

    .line 143
    :cond_c
    const/4 v14, 0x0

    .line 144
    :goto_a
    if-eqz v14, :cond_d

    .line 145
    .line 146
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v14

    .line 150
    goto :goto_b

    .line 151
    :cond_d
    const/4 v14, 0x0

    .line 152
    :goto_b
    if-le v14, v11, :cond_e

    .line 153
    .line 154
    goto :goto_c

    .line 155
    :cond_e
    const/4 v11, 0x0

    .line 156
    :goto_c
    if-eqz v22, :cond_10

    .line 157
    .line 158
    if-eqz v11, :cond_f

    .line 159
    .line 160
    const-wide/16 v14, 0x4000

    .line 161
    .line 162
    goto :goto_d

    .line 163
    :cond_f
    const-wide/16 v14, 0x2000

    .line 164
    .line 165
    :goto_d
    or-long/2addr v2, v14

    .line 166
    :cond_10
    if-eqz v11, :cond_12

    .line 167
    .line 168
    :cond_11
    const/16 v18, 0x0

    .line 169
    .line 170
    :cond_12
    and-long v14, v2, v12

    .line 171
    .line 172
    cmp-long v11, v14, v4

    .line 173
    .line 174
    if-eqz v11, :cond_14

    .line 175
    .line 176
    if-eqz v7, :cond_13

    .line 177
    .line 178
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    goto :goto_e

    .line 183
    :cond_13
    const/4 v11, 0x0

    .line 184
    :goto_e
    const/4 v14, 0x2

    .line 185
    invoke-virtual {v1, v14, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 186
    .line 187
    .line 188
    if-eqz v11, :cond_14

    .line 189
    .line 190
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    check-cast v11, Ljava/lang/String;

    .line 195
    .line 196
    goto :goto_f

    .line 197
    :cond_14
    const/4 v11, 0x0

    .line 198
    :goto_f
    const-wide/16 v14, 0x188

    .line 199
    .line 200
    and-long v22, v2, v14

    .line 201
    .line 202
    cmp-long v14, v22, v4

    .line 203
    .line 204
    if-eqz v14, :cond_17

    .line 205
    .line 206
    if-eqz v7, :cond_15

    .line 207
    .line 208
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    goto :goto_10

    .line 213
    :cond_15
    const/4 v7, 0x0

    .line 214
    :goto_10
    const/4 v14, 0x3

    .line 215
    invoke-virtual {v1, v14, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 216
    .line 217
    .line 218
    if-eqz v7, :cond_16

    .line 219
    .line 220
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    check-cast v7, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 225
    .line 226
    goto :goto_11

    .line 227
    :cond_16
    const/4 v7, 0x0

    .line 228
    :goto_11
    if-eqz v7, :cond_17

    .line 229
    .line 230
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v14

    .line 234
    invoke-virtual {v7}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPlayTime()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    move-object v15, v8

    .line 239
    move/from16 v8, v18

    .line 240
    .line 241
    move/from16 v12, v19

    .line 242
    .line 243
    goto :goto_12

    .line 244
    :cond_17
    move-object v15, v8

    .line 245
    move/from16 v8, v18

    .line 246
    .line 247
    move/from16 v12, v19

    .line 248
    .line 249
    const/4 v7, 0x0

    .line 250
    const/4 v14, 0x0

    .line 251
    goto :goto_12

    .line 252
    :cond_18
    const/4 v7, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    const/4 v9, 0x0

    .line 255
    const/4 v11, 0x0

    .line 256
    const/4 v12, 0x0

    .line 257
    const/4 v14, 0x0

    .line 258
    const/4 v15, 0x0

    .line 259
    :goto_12
    const-wide/16 v24, 0x100

    .line 260
    .line 261
    and-long v24, v2, v24

    .line 262
    .line 263
    cmp-long v13, v24, v4

    .line 264
    .line 265
    if-eqz v13, :cond_19

    .line 266
    .line 267
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->b:Landroid/widget/LinearLayout;

    .line 268
    .line 269
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->v:Landroid/view/View$OnClickListener;

    .line 270
    .line 271
    invoke-virtual {v13, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->c:Landroid/widget/ImageView;

    .line 275
    .line 276
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->w:Landroid/view/View$OnClickListener;

    .line 277
    .line 278
    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->d:Landroid/widget/ImageView;

    .line 282
    .line 283
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->u:Landroid/view/View$OnClickListener;

    .line 284
    .line 285
    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->e:Landroid/widget/ImageView;

    .line 289
    .line 290
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->s:Landroid/view/View$OnClickListener;

    .line 291
    .line 292
    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->g:Landroid/widget/TextView;

    .line 296
    .line 297
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->t:Landroid/view/View$OnClickListener;

    .line 298
    .line 299
    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    :cond_19
    and-long v16, v2, v16

    .line 303
    .line 304
    cmp-long v10, v16, v4

    .line 305
    .line 306
    if-eqz v10, :cond_1a

    .line 307
    .line 308
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->d:Landroid/widget/ImageView;

    .line 309
    .line 310
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->r:Landroid/widget/RelativeLayout;

    .line 314
    .line 315
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 319
    .line 320
    const/4 v10, 0x0

    .line 321
    const/4 v12, 0x0

    .line 322
    invoke-static {v9, v15, v12, v10}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    .line 324
    .line 325
    :cond_1a
    const-wide/16 v9, 0x184

    .line 326
    .line 327
    and-long/2addr v9, v2

    .line 328
    cmp-long v12, v9, v4

    .line 329
    .line 330
    if-eqz v12, :cond_1b

    .line 331
    .line 332
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->n:Landroid/widget/TextView;

    .line 333
    .line 334
    invoke-static {v9, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    :cond_1b
    const-wide/16 v9, 0x188

    .line 338
    .line 339
    and-long/2addr v9, v2

    .line 340
    cmp-long v11, v9, v4

    .line 341
    .line 342
    if-eqz v11, :cond_1c

    .line 343
    .line 344
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->o:Landroid/widget/TextView;

    .line 345
    .line 346
    invoke-static {v9, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->p:Landroid/widget/TextView;

    .line 350
    .line 351
    invoke-static {v9, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    :cond_1c
    const-wide/16 v9, 0x182

    .line 355
    .line 356
    and-long/2addr v9, v2

    .line 357
    cmp-long v7, v9, v4

    .line 358
    .line 359
    if-eqz v7, :cond_1d

    .line 360
    .line 361
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->q:Landroid/widget/ImageView;

    .line 362
    .line 363
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    :cond_1d
    const-wide/16 v7, 0x130

    .line 367
    .line 368
    and-long/2addr v2, v7

    .line 369
    cmp-long v7, v2, v4

    .line 370
    .line 371
    if-eqz v7, :cond_1e

    .line 372
    .line 373
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 374
    .line 375
    const/4 v3, 0x0

    .line 376
    invoke-static {v2, v0, v6, v3, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 377
    .line 378
    .line 379
    :cond_1e
    return-void

    .line 380
    :catchall_0
    move-exception v0

    .line 381
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->x:J

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->F(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->I(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->G(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->H(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
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
    const/4 v0, 0x5

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    check-cast p2, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->C(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-ne v0, p1, :cond_1

    .line 12
    .line 13
    check-cast p2, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->B(Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v0, 0x21

    .line 20
    .line 21
    if-ne v0, p1, :cond_2

    .line 22
    .line 23
    check-cast p2, Landroid/view/View$OnClickListener;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->D(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v0, 0x32

    .line 30
    .line 31
    if-ne v0, p1, :cond_3

    .line 32
    .line 33
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/hm0;->E(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    const/4 p1, 0x0

    .line 41
    :goto_1
    return p1
.end method
