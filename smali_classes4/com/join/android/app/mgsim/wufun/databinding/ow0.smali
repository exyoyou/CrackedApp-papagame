.class public Lcom/join/android/app/mgsim/wufun/databinding/ow0;
.super Lcom/join/android/app/mgsim/wufun/databinding/nw0;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final q:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final r:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final g:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Landroid/widget/TextView;
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

.field private final n:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroidx/databinding/InverseBindingListener;

.field private p:J


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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->q:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9
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

    const/4 v3, 0x6

    const/4 v7, 0x1

    .line 2
    aget-object v0, p3, v7

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v8, 0x2

    aget-object v0, p3, v8

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/mgsim/wufun/databinding/nw0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 3
    new-instance p1, Lcom/join/android/app/mgsim/wufun/databinding/ow0$a;

    invoke-direct {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/ow0$a;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/ow0;)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->o:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->g:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 8
    aget-object v1, p3, p1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->h:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 10
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->i:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 12
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->j:Landroid/widget/EditText;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 14
    aget-object p3, p3, v1

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->k:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 19
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, v8}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->l:Landroid/view/View$OnClickListener;

    .line 20
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, p1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->m:Landroid/view/View$OnClickListener;

    .line 21
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v7}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->n:Landroid/view/View$OnClickListener;

    .line 22
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->invalidateAll()V

    return-void
.end method

.method private A(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleSendCodeButnColor",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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

.method private B(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleSendCodeButnText",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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

.method private C(Landroidx/lifecycle/MutableLiveData;I)Z
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v0, 0x8

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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

.method static synthetic w(Lcom/join/android/app/mgsim/wufun/databinding/ow0;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->j:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method private x(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleAccount",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v0, 0x10

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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
            "ViewModleCodeText",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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

.method private z(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewModleMoble",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v0, 0x20

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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
    if-eq p1, v1, :cond_4

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->f:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_1
    if-eqz v0, :cond_6

    .line 18
    .line 19
    if-eqz p2, :cond_6

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendUnbindThridPart(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->f:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_3
    if-eqz v0, :cond_6

    .line 38
    .line 39
    if-eqz p2, :cond_6

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendsmsCode(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->e:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    :cond_5
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/join/kotlin/ui/notice/ClickProxy;->onClickBack()V

    .line 60
    .line 61
    .line 62
    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->f:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 12
    .line 13
    const-wide/16 v6, 0x17f

    .line 14
    .line 15
    and-long/2addr v6, v2

    .line 16
    const-wide/16 v8, 0x148

    .line 17
    .line 18
    const-wide/16 v10, 0x144

    .line 19
    .line 20
    const-wide/16 v14, 0x142

    .line 21
    .line 22
    const-wide/16 v16, 0x150

    .line 23
    .line 24
    const-wide/16 v18, 0x141

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    const/4 v13, 0x0

    .line 28
    cmp-long v22, v6, v4

    .line 29
    .line 30
    if-eqz v22, :cond_10

    .line 31
    .line 32
    and-long v6, v2, v18

    .line 33
    .line 34
    cmp-long v22, v6, v4

    .line 35
    .line 36
    if-eqz v22, :cond_1

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnText()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v6, v13

    .line 46
    :goto_0
    invoke-virtual {v1, v12, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 47
    .line 48
    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v6, v13

    .line 59
    :goto_1
    and-long v22, v2, v14

    .line 60
    .line 61
    const/4 v7, 0x1

    .line 62
    cmp-long v24, v22, v4

    .line 63
    .line 64
    if-eqz v24, :cond_4

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getSendCodeButnColor()Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    .line 71
    move-result-object v22

    .line 72
    move-object/from16 v12, v22

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object v12, v13

    .line 76
    :goto_2
    invoke-virtual {v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 77
    .line 78
    .line 79
    if-eqz v12, :cond_3

    .line 80
    .line 81
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Ljava/lang/Integer;

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move-object v12, v13

    .line 89
    :goto_3
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    const/4 v12, 0x0

    .line 95
    :goto_4
    and-long v23, v2, v10

    .line 96
    .line 97
    cmp-long v25, v23, v4

    .line 98
    .line 99
    if-eqz v25, :cond_8

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getCodeText()Landroidx/lifecycle/MutableLiveData;

    .line 104
    .line 105
    .line 106
    move-result-object v23

    .line 107
    move-object/from16 v7, v23

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_5
    move-object v7, v13

    .line 111
    :goto_5
    const/4 v14, 0x2

    .line 112
    invoke-virtual {v1, v14, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 113
    .line 114
    .line 115
    if-eqz v7, :cond_6

    .line 116
    .line 117
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_6
    move-object v7, v13

    .line 125
    :goto_6
    if-eqz v7, :cond_7

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    goto :goto_7

    .line 132
    :cond_7
    const/4 v14, 0x0

    .line 133
    :goto_7
    const/4 v15, 0x6

    .line 134
    if-ne v14, v15, :cond_9

    .line 135
    .line 136
    const/16 v22, 0x1

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_8
    move-object v7, v13

    .line 140
    :cond_9
    const/16 v22, 0x0

    .line 141
    .line 142
    :goto_8
    and-long v14, v2, v8

    .line 143
    .line 144
    cmp-long v23, v14, v4

    .line 145
    .line 146
    if-eqz v23, :cond_b

    .line 147
    .line 148
    if-eqz v0, :cond_a

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    goto :goto_9

    .line 155
    :cond_a
    move-object v14, v13

    .line 156
    :goto_9
    const/4 v15, 0x3

    .line 157
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 158
    .line 159
    .line 160
    if-eqz v14, :cond_b

    .line 161
    .line 162
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    check-cast v14, Ljava/lang/String;

    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_b
    move-object v14, v13

    .line 170
    :goto_a
    and-long v26, v2, v16

    .line 171
    .line 172
    cmp-long v15, v26, v4

    .line 173
    .line 174
    if-eqz v15, :cond_d

    .line 175
    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getAccount()Landroidx/lifecycle/MutableLiveData;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    goto :goto_b

    .line 183
    :cond_c
    move-object v15, v13

    .line 184
    :goto_b
    const/4 v8, 0x4

    .line 185
    invoke-virtual {v1, v8, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 186
    .line 187
    .line 188
    if-eqz v15, :cond_d

    .line 189
    .line 190
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/String;

    .line 195
    .line 196
    goto :goto_c

    .line 197
    :cond_d
    move-object v8, v13

    .line 198
    :goto_c
    const-wide/16 v20, 0x160

    .line 199
    .line 200
    and-long v28, v2, v20

    .line 201
    .line 202
    cmp-long v9, v28, v4

    .line 203
    .line 204
    if-eqz v9, :cond_f

    .line 205
    .line 206
    if-eqz v0, :cond_e

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->getMoble()Landroidx/lifecycle/MutableLiveData;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    goto :goto_d

    .line 213
    :cond_e
    move-object v0, v13

    .line 214
    :goto_d
    const/4 v9, 0x5

    .line 215
    invoke-virtual {v1, v9, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 216
    .line 217
    .line 218
    if-eqz v0, :cond_f

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ljava/lang/String;

    .line 225
    .line 226
    move v9, v12

    .line 227
    goto :goto_e

    .line 228
    :cond_f
    move v9, v12

    .line 229
    move-object v0, v13

    .line 230
    :goto_e
    move/from16 v12, v22

    .line 231
    .line 232
    goto :goto_f

    .line 233
    :cond_10
    move-object v0, v13

    .line 234
    move-object v6, v0

    .line 235
    move-object v7, v6

    .line 236
    move-object v8, v7

    .line 237
    move-object v14, v8

    .line 238
    const/4 v9, 0x0

    .line 239
    const/4 v12, 0x0

    .line 240
    :goto_f
    const-wide/16 v22, 0x100

    .line 241
    .line 242
    and-long v22, v2, v22

    .line 243
    .line 244
    cmp-long v15, v22, v4

    .line 245
    .line 246
    if-eqz v15, :cond_11

    .line 247
    .line 248
    iget-object v15, v1, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->b:Landroid/widget/ImageView;

    .line 249
    .line 250
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->n:Landroid/view/View$OnClickListener;

    .line 251
    .line 252
    invoke-virtual {v15, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->j:Landroid/widget/EditText;

    .line 256
    .line 257
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->o:Landroidx/databinding/InverseBindingListener;

    .line 258
    .line 259
    invoke-static {v10, v13, v13, v13, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V

    .line 260
    .line 261
    .line 262
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->k:Landroid/widget/TextView;

    .line 263
    .line 264
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->l:Landroid/view/View$OnClickListener;

    .line 265
    .line 266
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->c:Landroid/widget/TextView;

    .line 270
    .line 271
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->m:Landroid/view/View$OnClickListener;

    .line 272
    .line 273
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    :cond_11
    and-long v10, v2, v16

    .line 277
    .line 278
    cmp-long v13, v10, v4

    .line 279
    .line 280
    if-eqz v13, :cond_12

    .line 281
    .line 282
    iget-object v10, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->h:Landroid/widget/TextView;

    .line 283
    .line 284
    invoke-static {v10, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    :cond_12
    const-wide/16 v10, 0x160

    .line 288
    .line 289
    and-long/2addr v10, v2

    .line 290
    cmp-long v8, v10, v4

    .line 291
    .line 292
    if-eqz v8, :cond_13

    .line 293
    .line 294
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->i:Landroid/widget/TextView;

    .line 295
    .line 296
    invoke-static {v8, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    :cond_13
    const-wide/16 v10, 0x144

    .line 300
    .line 301
    and-long/2addr v10, v2

    .line 302
    cmp-long v0, v10, v4

    .line 303
    .line 304
    if-eqz v0, :cond_14

    .line 305
    .line 306
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->j:Landroid/widget/EditText;

    .line 307
    .line 308
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 309
    .line 310
    .line 311
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->c:Landroid/widget/TextView;

    .line 312
    .line 313
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    .line 315
    .line 316
    :cond_14
    and-long v7, v2, v18

    .line 317
    .line 318
    cmp-long v0, v7, v4

    .line 319
    .line 320
    if-eqz v0, :cond_15

    .line 321
    .line 322
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->k:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    :cond_15
    const-wide/16 v6, 0x142

    .line 328
    .line 329
    and-long/2addr v6, v2

    .line 330
    cmp-long v0, v6, v4

    .line 331
    .line 332
    if-eqz v0, :cond_16

    .line 333
    .line 334
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->k:Landroid/widget/TextView;

    .line 335
    .line 336
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    .line 338
    .line 339
    :cond_16
    const-wide/16 v6, 0x148

    .line 340
    .line 341
    and-long/2addr v2, v6

    .line 342
    cmp-long v0, v2, v4

    .line 343
    .line 344
    if-eqz v0, :cond_17

    .line 345
    .line 346
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->c:Landroid/widget/TextView;

    .line 347
    .line 348
    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->d:Landroid/widget/TextView;

    .line 352
    .line 353
    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 354
    .line 355
    .line 356
    :cond_17
    return-void

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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
    if-eqz p1, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->z(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->x(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->C(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->y(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->A(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :cond_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->B(Landroidx/lifecycle/MutableLiveData;I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
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
    const/16 v0, 0x32

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->u(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V

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
    check-cast p2, Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->t(Lcom/join/kotlin/ui/notice/ClickProxy;)V

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

.method public t(Lcom/join/kotlin/ui/notice/ClickProxy;)V
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->e:Lcom/join/kotlin/ui/notice/ClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v2, 0x80

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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

.method public u(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/nw0;->f:Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

    .line 5
    .line 6
    const-wide/16 v2, 0x40

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ow0;->p:J

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
