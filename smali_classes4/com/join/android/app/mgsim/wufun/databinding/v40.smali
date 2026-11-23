.class public Lcom/join/android/app/mgsim/wufun/databinding/v40;
.super Lcom/join/android/app/mgsim/wufun/databinding/u40;
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
.field private final m:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
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

.field private v:J


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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/v40;->w:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->x:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/v40;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    move-object/from16 v13, p0

    const/4 v3, 0x0

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v14, 0x2

    aget-object v0, p3, v14

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v15, 0x1

    aget-object v0, p3, v15

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v12, 0x4

    aget-object v0, p3, v12

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v0, p3, v2

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v14, 0x3

    move-object/from16 v2, p2

    const/4 v15, 0x4

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/join/android/app/mgsim/wufun/databinding/u40;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->m:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 6
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->n:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 8
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->o:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x9

    .line 10
    aget-object v2, p3, v2

    check-cast v2, Landroid/view/View;

    iput-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->p:Landroid/view/View;

    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v2, v13, Lcom/join/android/app/mgsim/wufun/databinding/u40;->j:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 21
    invoke-virtual {v13, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 22
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v13, v14}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->q:Landroid/view/View$OnClickListener;

    .line 23
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v13, v15}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->r:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v13, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->s:Landroid/view/View$OnClickListener;

    .line 25
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->t:Landroid/view/View$OnClickListener;

    .line 26
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v1, 0x2

    invoke-direct {v0, v13, v1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v13, Lcom/join/android/app/mgsim/wufun/databinding/v40;->u:Landroid/view/View$OnClickListener;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/v40;->invalidateAll()V

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
    if-eq p1, v0, :cond_8

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p1, v1, :cond_6

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_4

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->k:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->l:Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    :cond_1
    if-eqz p2, :cond_a

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;->onUploadSourceClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->k:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->l:Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    :cond_3
    if-eqz p2, :cond_a

    .line 39
    .line 40
    invoke-interface {v1, p1}, Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;->onWantClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->k:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->l:Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    :cond_5
    if-eqz p2, :cond_a

    .line 52
    .line 53
    invoke-interface {v1, p1}, Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;->onWantClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->k:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->l:Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;

    .line 60
    .line 61
    if-eqz v1, :cond_7

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    :cond_7
    if-eqz p2, :cond_a

    .line 65
    .line 66
    invoke-interface {v1, p1}, Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;->onWantClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->k:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->l:Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;

    .line 73
    .line 74
    if-eqz v1, :cond_9

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    :cond_9
    if-eqz p2, :cond_a

    .line 78
    .line 79
    invoke-interface {v1, p1}, Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;->onViewSourceClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V

    .line 80
    .line 81
    .line 82
    :cond_a
    :goto_0
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
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->k:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 12
    .line 13
    const-wide/16 v6, 0x5

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    cmp-long v12, v8, v4

    .line 18
    .line 19
    if-eqz v12, :cond_1a

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getWanters()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->wantVisible()Z

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getStatus()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getTypeColor()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v14

    .line 39
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getTitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getWanted()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v16

    .line 47
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getAvatar()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v17

    .line 51
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->hideUploadView()Z

    .line 52
    .line 53
    .line 54
    move-result v18

    .line 55
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getAuthorName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v19

    .line 59
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->withWant()Z

    .line 60
    .line 61
    .line 62
    move-result v20

    .line 63
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;->getTypeName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    const/16 v16, 0x0

    .line 75
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
    :goto_0
    if-eqz v12, :cond_2

    .line 85
    .line 86
    if-eqz v9, :cond_1

    .line 87
    .line 88
    const-wide/16 v21, 0x100

    .line 89
    .line 90
    or-long v2, v2, v21

    .line 91
    .line 92
    const-wide/16 v21, 0x4000

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const-wide/16 v21, 0x80

    .line 96
    .line 97
    or-long v2, v2, v21

    .line 98
    .line 99
    const-wide/16 v21, 0x2000

    .line 100
    .line 101
    :goto_1
    or-long v2, v2, v21

    .line 102
    .line 103
    :cond_2
    and-long v21, v2, v6

    .line 104
    .line 105
    cmp-long v12, v21, v4

    .line 106
    .line 107
    if-eqz v12, :cond_4

    .line 108
    .line 109
    if-eqz v18, :cond_3

    .line 110
    .line 111
    const-wide/16 v21, 0x40

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const-wide/16 v21, 0x20

    .line 115
    .line 116
    :goto_2
    or-long v2, v2, v21

    .line 117
    .line 118
    :cond_4
    and-long v21, v2, v6

    .line 119
    .line 120
    cmp-long v12, v21, v4

    .line 121
    .line 122
    if-eqz v12, :cond_6

    .line 123
    .line 124
    if-eqz v20, :cond_5

    .line 125
    .line 126
    const-wide/16 v21, 0x10

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    const-wide/16 v21, 0x8

    .line 130
    .line 131
    :goto_3
    or-long v2, v2, v21

    .line 132
    .line 133
    :cond_6
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v8, "\u4eba\u60f3\u8981"

    .line 146
    .line 147
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    if-eqz v9, :cond_7

    .line 155
    .line 156
    const/16 v22, 0x0

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    const/16 v22, 0x8

    .line 160
    .line 161
    :goto_4
    if-eqz v9, :cond_8

    .line 162
    .line 163
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    const v10, 0x7f07150f

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_8
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    .line 174
    .line 175
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    const v10, 0x7f071310

    .line 180
    .line 181
    .line 182
    :goto_5
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    invoke-static/range {v16 .. v16}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    if-eqz v18, :cond_9

    .line 195
    .line 196
    const/16 v16, 0x8

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_9
    const/16 v16, 0x0

    .line 200
    .line 201
    :goto_6
    if-eqz v20, :cond_a

    .line 202
    .line 203
    const/16 v18, 0x0

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_a
    const/16 v18, 0x8

    .line 207
    .line 208
    :goto_7
    const/4 v11, 0x1

    .line 209
    if-lez v12, :cond_b

    .line 210
    .line 211
    const/4 v12, 0x1

    .line 212
    goto :goto_8

    .line 213
    :cond_b
    const/4 v12, 0x0

    .line 214
    :goto_8
    if-eqz v10, :cond_c

    .line 215
    .line 216
    const/16 v23, 0x1

    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_c
    const/16 v23, 0x0

    .line 220
    .line 221
    :goto_9
    if-nez v10, :cond_d

    .line 222
    .line 223
    const/16 v24, 0x1

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_d
    const/16 v24, 0x0

    .line 227
    .line 228
    :goto_a
    if-ne v10, v11, :cond_e

    .line 229
    .line 230
    const/4 v10, 0x1

    .line 231
    goto :goto_b

    .line 232
    :cond_e
    const/4 v10, 0x0

    .line 233
    :goto_b
    if-nez v13, :cond_f

    .line 234
    .line 235
    goto :goto_c

    .line 236
    :cond_f
    const/4 v11, 0x0

    .line 237
    :goto_c
    and-long v25, v2, v6

    .line 238
    .line 239
    cmp-long v13, v25, v4

    .line 240
    .line 241
    if-eqz v13, :cond_11

    .line 242
    .line 243
    if-eqz v12, :cond_10

    .line 244
    .line 245
    const-wide/16 v25, 0x400

    .line 246
    .line 247
    goto :goto_d

    .line 248
    :cond_10
    const-wide/16 v25, 0x200

    .line 249
    .line 250
    :goto_d
    or-long v2, v2, v25

    .line 251
    .line 252
    :cond_11
    and-long v25, v2, v6

    .line 253
    .line 254
    cmp-long v13, v25, v4

    .line 255
    .line 256
    if-eqz v13, :cond_13

    .line 257
    .line 258
    if-eqz v24, :cond_12

    .line 259
    .line 260
    const-wide/16 v25, 0x1000

    .line 261
    .line 262
    or-long v2, v2, v25

    .line 263
    .line 264
    const-wide/32 v25, 0x10000

    .line 265
    .line 266
    .line 267
    goto :goto_e

    .line 268
    :cond_12
    const-wide/16 v25, 0x800

    .line 269
    .line 270
    or-long v2, v2, v25

    .line 271
    .line 272
    const-wide/32 v25, 0x8000

    .line 273
    .line 274
    .line 275
    :goto_e
    or-long v2, v2, v25

    .line 276
    .line 277
    :cond_13
    and-long v25, v2, v6

    .line 278
    .line 279
    cmp-long v13, v25, v4

    .line 280
    .line 281
    if-eqz v13, :cond_15

    .line 282
    .line 283
    if-eqz v10, :cond_14

    .line 284
    .line 285
    const-wide/32 v25, 0x40000

    .line 286
    .line 287
    .line 288
    goto :goto_f

    .line 289
    :cond_14
    const-wide/32 v25, 0x20000

    .line 290
    .line 291
    .line 292
    :goto_f
    or-long v2, v2, v25

    .line 293
    .line 294
    :cond_15
    if-eqz v12, :cond_16

    .line 295
    .line 296
    const/4 v12, 0x0

    .line 297
    goto :goto_10

    .line 298
    :cond_16
    const/16 v12, 0x8

    .line 299
    .line 300
    :goto_10
    if-eqz v24, :cond_17

    .line 301
    .line 302
    const-string v13, "\u6536\u96c6\u4e2d"

    .line 303
    .line 304
    goto :goto_11

    .line 305
    :cond_17
    const-string v13, "\u5df2\u5b9e\u73b0"

    .line 306
    .line 307
    :goto_11
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->j:Landroid/view/View;

    .line 308
    .line 309
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    if-eqz v24, :cond_18

    .line 314
    .line 315
    const v7, 0x7f081070

    .line 316
    .line 317
    .line 318
    goto :goto_12

    .line 319
    :cond_18
    const v7, 0x7f08106e

    .line 320
    .line 321
    .line 322
    :goto_12
    invoke-static {v6, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    if-eqz v10, :cond_19

    .line 327
    .line 328
    const/4 v10, 0x0

    .line 329
    goto :goto_13

    .line 330
    :cond_19
    const/16 v10, 0x8

    .line 331
    .line 332
    :goto_13
    move/from16 v7, v16

    .line 333
    .line 334
    move-object/from16 v27, v17

    .line 335
    .line 336
    move/from16 v28, v18

    .line 337
    .line 338
    move-object/from16 v29, v19

    .line 339
    .line 340
    move/from16 v30, v22

    .line 341
    .line 342
    move/from16 v31, v23

    .line 343
    .line 344
    goto :goto_14

    .line 345
    :cond_1a
    const/4 v9, 0x0

    .line 346
    const/4 v0, 0x0

    .line 347
    const/4 v6, 0x0

    .line 348
    const/4 v7, 0x0

    .line 349
    const/4 v8, 0x0

    .line 350
    const/4 v10, 0x0

    .line 351
    const/4 v11, 0x0

    .line 352
    const/4 v12, 0x0

    .line 353
    const/4 v13, 0x0

    .line 354
    const/4 v14, 0x0

    .line 355
    const/4 v15, 0x0

    .line 356
    const/16 v27, 0x0

    .line 357
    .line 358
    const/16 v28, 0x0

    .line 359
    .line 360
    const/16 v29, 0x0

    .line 361
    .line 362
    const/16 v30, 0x0

    .line 363
    .line 364
    const/16 v31, 0x0

    .line 365
    .line 366
    :goto_14
    const-wide/16 v16, 0x4

    .line 367
    .line 368
    and-long v16, v2, v16

    .line 369
    .line 370
    cmp-long v18, v16, v4

    .line 371
    .line 372
    if-eqz v18, :cond_1b

    .line 373
    .line 374
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->n:Landroid/widget/ImageView;

    .line 375
    .line 376
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->q:Landroid/view/View$OnClickListener;

    .line 377
    .line 378
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->e:Landroid/widget/ImageView;

    .line 382
    .line 383
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->r:Landroid/view/View$OnClickListener;

    .line 384
    .line 385
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    .line 389
    .line 390
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->u:Landroid/view/View$OnClickListener;

    .line 391
    .line 392
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    .line 394
    .line 395
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->i:Landroid/widget/TextView;

    .line 396
    .line 397
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->s:Landroid/view/View$OnClickListener;

    .line 398
    .line 399
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    .line 401
    .line 402
    :cond_1b
    const-wide/16 v4, 0x5

    .line 403
    .line 404
    and-long/2addr v2, v4

    .line 405
    const-wide/16 v4, 0x0

    .line 406
    .line 407
    cmp-long v16, v2, v4

    .line 408
    .line 409
    if-eqz v16, :cond_1c

    .line 410
    .line 411
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->n:Landroid/widget/ImageView;

    .line 412
    .line 413
    move/from16 v3, v30

    .line 414
    .line 415
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->o:Landroid/widget/ImageView;

    .line 419
    .line 420
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->p:Landroid/view/View;

    .line 424
    .line 425
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 429
    .line 430
    move-object/from16 v3, v27

    .line 431
    .line 432
    const/4 v4, 0x0

    .line 433
    const/4 v5, 0x0

    .line 434
    invoke-static {v2, v3, v4, v5}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 435
    .line 436
    .line 437
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->c:Landroid/widget/TextView;

    .line 438
    .line 439
    move-object/from16 v3, v29

    .line 440
    .line 441
    invoke-static {v2, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 442
    .line 443
    .line 444
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->d:Landroid/widget/TextView;

    .line 445
    .line 446
    invoke-static {v2, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 447
    .line 448
    .line 449
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->e:Landroid/widget/ImageView;

    .line 450
    .line 451
    move/from16 v3, v28

    .line 452
    .line 453
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    .line 455
    .line 456
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    .line 457
    .line 458
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 459
    .line 460
    .line 461
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    .line 462
    .line 463
    invoke-static {v2, v9}, Landroidx/databinding/adapters/ViewBindingAdapter;->setPaddingRight(Landroid/view/View;F)V

    .line 464
    .line 465
    .line 466
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    .line 467
    .line 468
    invoke-static {v2, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 469
    .line 470
    .line 471
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->f:Landroid/widget/TextView;

    .line 472
    .line 473
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 474
    .line 475
    .line 476
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->g:Landroid/widget/TextView;

    .line 477
    .line 478
    invoke-static {v2, v14}, Lcom/join/kotlin/bindingadapter/ViewBindingTextviewKt;->textViewColorBinding(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->g:Landroid/widget/TextView;

    .line 482
    .line 483
    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 484
    .line 485
    .line 486
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->h:Landroid/widget/TextView;

    .line 487
    .line 488
    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->i:Landroid/widget/TextView;

    .line 492
    .line 493
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->j:Landroid/view/View;

    .line 497
    .line 498
    invoke-static {v0, v6}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 499
    .line 500
    .line 501
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/u40;->j:Landroid/view/View;

    .line 502
    .line 503
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/v40;->t:Landroid/view/View$OnClickListener;

    .line 504
    .line 505
    move/from16 v3, v31

    .line 506
    .line 507
    invoke-static {v0, v2, v3}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 508
    .line 509
    .line 510
    :cond_1c
    return-void

    .line 511
    :catchall_0
    move-exception v0

    .line 512
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

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
    check-cast p2, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/v40;->u(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V

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
    check-cast p2, Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/v40;->t(Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;)V

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

.method public t(Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->l:Lcom/join/kotlin/quark/proxy/SourceHopeItemClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

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

.method public u(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/quark/model/bean/SourceListItemBean;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/u40;->k:Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/v40;->v:J

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
