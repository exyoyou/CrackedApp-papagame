.class public Lcom/join/android/app/mgsim/wufun/databinding/lz;
.super Lcom/join/android/app/mgsim/wufun/databinding/kz;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final n:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final o:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final f:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:J


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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->n:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->o:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/lz;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/kz;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 4
    aget-object p1, p3, v0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object v1, p3, p1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 8
    aget-object v2, p3, v1

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 10
    aget-object p3, p3, v2

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p3, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, v2}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->j:Landroid/view/View$OnClickListener;

    .line 14
    new-instance p2, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p2, p0, p1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->k:Landroid/view/View$OnClickListener;

    .line 15
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->l:Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/lz;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public B(Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->e:Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x8

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

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

.method public C(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "PicUrl1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->b:Ljava/lang/String;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x23

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

.method public D(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "PicUrl2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->c:Ljava/lang/String;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x24

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

.method public E(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "PicUrl3"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->d:Ljava/lang/String;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x25

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
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->e:Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    :cond_1
    if-eqz p2, :cond_6

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;->verticalPicClick(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->e:Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    :cond_3
    if-eqz p2, :cond_6

    .line 33
    .line 34
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;->verticalPicClick(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->b:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kz;->e:Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    :cond_5
    if-eqz p2, :cond_6

    .line 46
    .line 47
    invoke-interface {v1, p1}, Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;->verticalPicClick(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kz;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/kz;->d:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/kz;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-wide/16 v8, 0x11

    .line 18
    .line 19
    and-long v10, v2, v8

    .line 20
    .line 21
    const-wide/16 v12, 0x800

    .line 22
    .line 23
    const/4 v15, 0x0

    .line 24
    cmp-long v16, v10, v4

    .line 25
    .line 26
    if-eqz v16, :cond_2

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v10, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v10, 0x0

    .line 33
    :goto_0
    if-eqz v16, :cond_3

    .line 34
    .line 35
    if-eqz v10, :cond_1

    .line 36
    .line 37
    const-wide/16 v16, 0x1000

    .line 38
    .line 39
    or-long v2, v2, v16

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    or-long/2addr v2, v12

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v10, 0x0

    .line 45
    :cond_3
    :goto_1
    const-wide/16 v16, 0x12

    .line 46
    .line 47
    and-long v18, v2, v16

    .line 48
    .line 49
    const-wide/16 v20, 0x2000

    .line 50
    .line 51
    cmp-long v11, v18, v4

    .line 52
    .line 53
    if-eqz v11, :cond_6

    .line 54
    .line 55
    if-nez v6, :cond_4

    .line 56
    .line 57
    const/16 v18, 0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/16 v18, 0x0

    .line 61
    .line 62
    :goto_2
    if-eqz v11, :cond_7

    .line 63
    .line 64
    if-eqz v18, :cond_5

    .line 65
    .line 66
    const-wide/16 v22, 0x4000

    .line 67
    .line 68
    or-long v2, v2, v22

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    or-long v2, v2, v20

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_6
    const/16 v18, 0x0

    .line 75
    .line 76
    :cond_7
    :goto_3
    const-wide/16 v22, 0x14

    .line 77
    .line 78
    and-long v24, v2, v22

    .line 79
    .line 80
    const-wide/16 v26, 0x200

    .line 81
    .line 82
    cmp-long v11, v24, v4

    .line 83
    .line 84
    if-eqz v11, :cond_a

    .line 85
    .line 86
    if-nez v7, :cond_8

    .line 87
    .line 88
    const/16 v19, 0x1

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    const/16 v19, 0x0

    .line 92
    .line 93
    :goto_4
    if-eqz v11, :cond_b

    .line 94
    .line 95
    if-eqz v19, :cond_9

    .line 96
    .line 97
    const-wide/16 v24, 0x400

    .line 98
    .line 99
    or-long v2, v2, v24

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_9
    or-long v2, v2, v26

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_a
    const/16 v19, 0x0

    .line 106
    .line 107
    :cond_b
    :goto_5
    and-long v20, v2, v20

    .line 108
    .line 109
    cmp-long v11, v20, v4

    .line 110
    .line 111
    if-eqz v11, :cond_c

    .line 112
    .line 113
    const-string v11, ""

    .line 114
    .line 115
    if-ne v6, v11, :cond_c

    .line 116
    .line 117
    const/4 v11, 0x1

    .line 118
    goto :goto_6

    .line 119
    :cond_c
    const/4 v11, 0x0

    .line 120
    :goto_6
    and-long v20, v2, v26

    .line 121
    .line 122
    cmp-long v24, v20, v4

    .line 123
    .line 124
    if-eqz v24, :cond_d

    .line 125
    .line 126
    const-string v14, ""

    .line 127
    .line 128
    if-ne v7, v14, :cond_d

    .line 129
    .line 130
    const/4 v14, 0x1

    .line 131
    goto :goto_7

    .line 132
    :cond_d
    const/4 v14, 0x0

    .line 133
    :goto_7
    and-long/2addr v12, v2

    .line 134
    cmp-long v21, v12, v4

    .line 135
    .line 136
    if-eqz v21, :cond_e

    .line 137
    .line 138
    const-string v12, ""

    .line 139
    .line 140
    if-ne v0, v12, :cond_e

    .line 141
    .line 142
    const/4 v12, 0x1

    .line 143
    goto :goto_8

    .line 144
    :cond_e
    const/4 v12, 0x0

    .line 145
    :goto_8
    and-long v24, v2, v22

    .line 146
    .line 147
    const/16 v13, 0x8

    .line 148
    .line 149
    cmp-long v21, v24, v4

    .line 150
    .line 151
    if-eqz v21, :cond_12

    .line 152
    .line 153
    if-eqz v19, :cond_f

    .line 154
    .line 155
    const/4 v14, 0x1

    .line 156
    :cond_f
    if-eqz v21, :cond_11

    .line 157
    .line 158
    if-eqz v14, :cond_10

    .line 159
    .line 160
    const-wide/32 v24, 0x10000

    .line 161
    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_10
    const-wide/32 v24, 0x8000

    .line 165
    .line 166
    .line 167
    :goto_9
    or-long v2, v2, v24

    .line 168
    .line 169
    :cond_11
    if-eqz v14, :cond_12

    .line 170
    .line 171
    const/16 v14, 0x8

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_12
    const/4 v14, 0x0

    .line 175
    :goto_a
    and-long v24, v2, v8

    .line 176
    .line 177
    cmp-long v19, v24, v4

    .line 178
    .line 179
    if-eqz v19, :cond_16

    .line 180
    .line 181
    if-eqz v10, :cond_13

    .line 182
    .line 183
    const/4 v12, 0x1

    .line 184
    :cond_13
    if-eqz v19, :cond_15

    .line 185
    .line 186
    if-eqz v12, :cond_14

    .line 187
    .line 188
    const-wide/16 v24, 0x40

    .line 189
    .line 190
    goto :goto_b

    .line 191
    :cond_14
    const-wide/16 v24, 0x20

    .line 192
    .line 193
    :goto_b
    or-long v2, v2, v24

    .line 194
    .line 195
    :cond_15
    if-eqz v12, :cond_16

    .line 196
    .line 197
    const/16 v10, 0x8

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_16
    const/4 v10, 0x0

    .line 201
    :goto_c
    and-long v24, v2, v16

    .line 202
    .line 203
    cmp-long v12, v24, v4

    .line 204
    .line 205
    if-eqz v12, :cond_1a

    .line 206
    .line 207
    if-eqz v18, :cond_17

    .line 208
    .line 209
    const/16 v20, 0x1

    .line 210
    .line 211
    goto :goto_d

    .line 212
    :cond_17
    move/from16 v20, v11

    .line 213
    .line 214
    :goto_d
    if-eqz v12, :cond_19

    .line 215
    .line 216
    if-eqz v20, :cond_18

    .line 217
    .line 218
    const-wide/16 v11, 0x100

    .line 219
    .line 220
    goto :goto_e

    .line 221
    :cond_18
    const-wide/16 v11, 0x80

    .line 222
    .line 223
    :goto_e
    or-long/2addr v2, v11

    .line 224
    :cond_19
    if-eqz v20, :cond_1a

    .line 225
    .line 226
    goto :goto_f

    .line 227
    :cond_1a
    const/4 v13, 0x0

    .line 228
    :goto_f
    const-wide/16 v11, 0x10

    .line 229
    .line 230
    and-long/2addr v11, v2

    .line 231
    cmp-long v18, v11, v4

    .line 232
    .line 233
    if-eqz v18, :cond_1b

    .line 234
    .line 235
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 236
    .line 237
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->k:Landroid/view/View$OnClickListener;

    .line 238
    .line 239
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 243
    .line 244
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->l:Landroid/view/View$OnClickListener;

    .line 245
    .line 246
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 250
    .line 251
    iget-object v12, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->j:Landroid/view/View$OnClickListener;

    .line 252
    .line 253
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    :cond_1b
    and-long v11, v2, v22

    .line 257
    .line 258
    const/4 v8, 0x0

    .line 259
    cmp-long v9, v11, v4

    .line 260
    .line 261
    if-eqz v9, :cond_1c

    .line 262
    .line 263
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 264
    .line 265
    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 269
    .line 270
    invoke-static {v9, v7, v8, v15}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    :cond_1c
    const-wide/16 v11, 0x11

    .line 274
    .line 275
    and-long/2addr v11, v2

    .line 276
    cmp-long v7, v11, v4

    .line 277
    .line 278
    if-eqz v7, :cond_1d

    .line 279
    .line 280
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 281
    .line 282
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 286
    .line 287
    invoke-static {v7, v0, v8, v15}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    :cond_1d
    and-long v2, v2, v16

    .line 291
    .line 292
    cmp-long v0, v2, v4

    .line 293
    .line 294
    if-eqz v0, :cond_1e

    .line 295
    .line 296
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 297
    .line 298
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/lz;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 302
    .line 303
    invoke-static {v0, v6, v8, v15}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    :cond_1e
    return-void

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lz;->m:J

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
    const/16 v0, 0x24

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lz;->D(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x25

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lz;->E(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v0, 0x23

    .line 22
    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    check-cast p2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lz;->C(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 v0, 0x8

    .line 32
    .line 33
    if-ne v0, p1, :cond_3

    .line 34
    .line 35
    check-cast p2, Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lz;->B(Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;)V

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
