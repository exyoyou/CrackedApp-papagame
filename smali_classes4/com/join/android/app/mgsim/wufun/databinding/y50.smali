.class public Lcom/join/android/app/mgsim/wufun/databinding/y50;
.super Lcom/join/android/app/mgsim/wufun/databinding/x50;
.source "SourceFile"


# static fields
.field private static final v:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final w:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final r:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private u:J


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->w:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a0a84

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->v:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/y50;->w:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/y50;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/16 v4, 0xb

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v5, 0x5

    aget-object v5, p3, v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v6, 0xf

    aget-object v6, p3, v6

    check-cast v6, Lcom/join/mgps/customview/DownloadNormalView;

    const/16 v7, 0x10

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v8, 0xe

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/ProgressBar;

    const/4 v9, 0x1

    aget-object v9, p3, v9

    check-cast v9, Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0xd

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x3

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/4 v13, 0x2

    aget-object v13, p3, v13

    check-cast v13, Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    const/4 v14, 0x7

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v16, 0xa

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/16 v16, 0x6

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x8

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v17}, Lcom/join/android/app/mgsim/wufun/databinding/x50;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/join/mgps/customview/DownloadNormalView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/papa91/arc/widget/htmltext/HtmlTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->d:Lcom/join/mgps/customview/DownloadNormalView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/y50;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 9
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/y50;->s:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 11
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/y50;->t:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->k:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/x50;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 23
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/y50;->invalidateAll()V

    return-void
.end method

.method private w(Lcom/join/kotlin/model/bean/DownState;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "DownState",
            "fieldId"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 11
    .line 12
    monitor-exit p0

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
    const/16 v0, 0x2f

    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 23
    .line 24
    const-wide/16 v2, 0x4

    .line 25
    .line 26
    or-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return p1

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    throw p1

    .line 34
    :cond_1
    const/16 v0, 0xe

    .line 35
    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    monitor-enter p0

    .line 39
    :try_start_2
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 40
    .line 41
    const-wide/16 v2, 0x8

    .line 42
    .line 43
    or-long/2addr v0, v2

    .line 44
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return p1

    .line 48
    :catchall_2
    move-exception p1

    .line 49
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50
    throw p1

    .line 51
    :cond_2
    const/16 v0, 0x29

    .line 52
    .line 53
    if-ne p2, v0, :cond_3

    .line 54
    .line 55
    monitor-enter p0

    .line 56
    :try_start_3
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 57
    .line 58
    const-wide/16 v2, 0x10

    .line 59
    .line 60
    or-long/2addr v0, v2

    .line 61
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return p1

    .line 65
    :catchall_3
    move-exception p1

    .line 66
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 67
    throw p1

    .line 68
    :cond_3
    const/16 v0, 0x26

    .line 69
    .line 70
    if-ne p2, v0, :cond_4

    .line 71
    .line 72
    monitor-enter p0

    .line 73
    :try_start_4
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 74
    .line 75
    const-wide/16 v2, 0x20

    .line 76
    .line 77
    or-long/2addr v0, v2

    .line 78
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return p1

    .line 82
    :catchall_4
    move-exception p1

    .line 83
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 84
    throw p1

    .line 85
    :cond_4
    const/16 v0, 0xc

    .line 86
    .line 87
    if-ne p2, v0, :cond_5

    .line 88
    .line 89
    monitor-enter p0

    .line 90
    :try_start_5
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 91
    .line 92
    const-wide/16 v2, 0x40

    .line 93
    .line 94
    or-long/2addr v0, v2

    .line 95
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return p1

    .line 99
    :catchall_5
    move-exception p1

    .line 100
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 101
    throw p1

    .line 102
    :cond_5
    const/4 v0, 0x7

    .line 103
    if-ne p2, v0, :cond_6

    .line 104
    .line 105
    monitor-enter p0

    .line 106
    :try_start_6
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 107
    .line 108
    const-wide/16 v2, 0x80

    .line 109
    .line 110
    or-long/2addr v0, v2

    .line 111
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return p1

    .line 115
    :catchall_6
    move-exception p1

    .line 116
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 117
    throw p1

    .line 118
    :cond_6
    const/4 p1, 0x0

    .line 119
    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->p:Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->q:Lcom/join/kotlin/model/bean/DownState;

    .line 14
    .line 15
    const-wide/16 v7, 0x102

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    cmp-long v14, v9, v4

    .line 20
    .line 21
    if-eqz v14, :cond_c

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showADLabel()Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->getGame()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->getLabelStr()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showSizeStr()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showHtmlName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showGfTagStr()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v18

    .line 49
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showRecTag()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    const/16 v18, 0x0

    .line 63
    .line 64
    :goto_0
    if-eqz v14, :cond_2

    .line 65
    .line 66
    if-eqz v9, :cond_1

    .line 67
    .line 68
    const-wide/32 v19, 0x10000

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const-wide/32 v19, 0x8000

    .line 73
    .line 74
    .line 75
    :goto_1
    or-long v2, v2, v19

    .line 76
    .line 77
    :cond_2
    and-long v19, v2, v7

    .line 78
    .line 79
    cmp-long v14, v19, v4

    .line 80
    .line 81
    if-eqz v14, :cond_4

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    const-wide/32 v19, 0x100000

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const-wide/32 v19, 0x80000

    .line 90
    .line 91
    .line 92
    :goto_2
    or-long v2, v2, v19

    .line 93
    .line 94
    :cond_4
    if-eqz v9, :cond_5

    .line 95
    .line 96
    const/4 v9, 0x0

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/16 v9, 0x8

    .line 99
    .line 100
    :goto_3
    if-eqz v0, :cond_6

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    const/16 v0, 0x8

    .line 105
    .line 106
    :goto_4
    if-eqz v10, :cond_7

    .line 107
    .line 108
    invoke-virtual {v10}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    invoke-virtual {v10}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowScore()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    goto :goto_5

    .line 117
    :cond_7
    const/4 v10, 0x0

    .line 118
    const/4 v14, 0x0

    .line 119
    :goto_5
    if-eqz v14, :cond_8

    .line 120
    .line 121
    invoke-virtual {v14}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v19

    .line 125
    invoke-virtual {v14}, Lcom/join/mgps/dto/GInfoBean;->showGfTag()Z

    .line 126
    .line 127
    .line 128
    move-result v20

    .line 129
    invoke-virtual {v14}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v14

    .line 133
    goto :goto_6

    .line 134
    :cond_8
    const/4 v14, 0x0

    .line 135
    const/16 v19, 0x0

    .line 136
    .line 137
    const/16 v20, 0x0

    .line 138
    .line 139
    :goto_6
    and-long v21, v2, v7

    .line 140
    .line 141
    cmp-long v23, v21, v4

    .line 142
    .line 143
    if-eqz v23, :cond_a

    .line 144
    .line 145
    if-eqz v20, :cond_9

    .line 146
    .line 147
    const-wide/16 v21, 0x1000

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_9
    const-wide/16 v21, 0x800

    .line 151
    .line 152
    :goto_7
    or-long v2, v2, v21

    .line 153
    .line 154
    :cond_a
    if-eqz v20, :cond_b

    .line 155
    .line 156
    const/16 v20, 0x0

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_b
    const/16 v20, 0x8

    .line 160
    .line 161
    :goto_8
    move-object/from16 v11, v16

    .line 162
    .line 163
    move-object/from16 v24, v17

    .line 164
    .line 165
    move-object/from16 v12, v18

    .line 166
    .line 167
    move-object/from16 v25, v19

    .line 168
    .line 169
    move/from16 v13, v20

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_c
    const/4 v0, 0x0

    .line 173
    const/4 v9, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    const/4 v11, 0x0

    .line 176
    const/4 v12, 0x0

    .line 177
    const/4 v13, 0x0

    .line 178
    const/4 v14, 0x0

    .line 179
    const/4 v15, 0x0

    .line 180
    const/16 v24, 0x0

    .line 181
    .line 182
    const/16 v25, 0x0

    .line 183
    .line 184
    :goto_9
    const-wide/16 v19, 0x1fd

    .line 185
    .line 186
    and-long v19, v2, v19

    .line 187
    .line 188
    const-wide/16 v21, 0x121

    .line 189
    .line 190
    const-wide/16 v26, 0x111

    .line 191
    .line 192
    const-wide/16 v28, 0x141

    .line 193
    .line 194
    const-wide/16 v30, 0x181

    .line 195
    .line 196
    const-wide/16 v32, 0x109

    .line 197
    .line 198
    const-wide/16 v34, 0x105

    .line 199
    .line 200
    cmp-long v23, v19, v4

    .line 201
    .line 202
    if-eqz v23, :cond_21

    .line 203
    .line 204
    and-long v19, v2, v32

    .line 205
    .line 206
    cmp-long v23, v19, v4

    .line 207
    .line 208
    if-eqz v23, :cond_d

    .line 209
    .line 210
    if-eqz v6, :cond_d

    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getDownText()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v19

    .line 216
    goto :goto_a

    .line 217
    :cond_d
    const/16 v19, 0x0

    .line 218
    .line 219
    :goto_a
    and-long v36, v2, v28

    .line 220
    .line 221
    cmp-long v8, v36, v4

    .line 222
    .line 223
    if-eqz v8, :cond_13

    .line 224
    .line 225
    if-eqz v6, :cond_e

    .line 226
    .line 227
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getDownMode()I

    .line 228
    .line 229
    .line 230
    move-result v20

    .line 231
    goto :goto_b

    .line 232
    :cond_e
    const/16 v20, 0x0

    .line 233
    .line 234
    :goto_b
    if-nez v20, :cond_f

    .line 235
    .line 236
    const/16 v20, 0x1

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_f
    const/16 v20, 0x0

    .line 240
    .line 241
    :goto_c
    if-eqz v8, :cond_11

    .line 242
    .line 243
    if-eqz v20, :cond_10

    .line 244
    .line 245
    const-wide/16 v36, 0x4000

    .line 246
    .line 247
    goto :goto_d

    .line 248
    :cond_10
    const-wide/16 v36, 0x2000

    .line 249
    .line 250
    :goto_d
    or-long v2, v2, v36

    .line 251
    .line 252
    :cond_11
    if-eqz v20, :cond_12

    .line 253
    .line 254
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->f:Landroid/widget/ProgressBar;

    .line 255
    .line 256
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    const v7, 0x7f080d05

    .line 261
    .line 262
    .line 263
    invoke-static {v8, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    goto :goto_e

    .line 268
    :cond_12
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->f:Landroid/widget/ProgressBar;

    .line 269
    .line 270
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    const v8, 0x7f080d0e

    .line 275
    .line 276
    .line 277
    invoke-static {v7, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    goto :goto_e

    .line 282
    :cond_13
    const/4 v7, 0x0

    .line 283
    :goto_e
    and-long v36, v2, v26

    .line 284
    .line 285
    cmp-long v8, v36, v4

    .line 286
    .line 287
    if-eqz v8, :cond_14

    .line 288
    .line 289
    if-eqz v6, :cond_14

    .line 290
    .line 291
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getStatusText()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    goto :goto_f

    .line 296
    :cond_14
    const/4 v8, 0x0

    .line 297
    :goto_f
    and-long v36, v2, v30

    .line 298
    .line 299
    cmp-long v23, v36, v4

    .line 300
    .line 301
    if-eqz v23, :cond_15

    .line 302
    .line 303
    if-eqz v6, :cond_15

    .line 304
    .line 305
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getButtonEnable()Z

    .line 306
    .line 307
    .line 308
    move-result v23

    .line 309
    goto :goto_10

    .line 310
    :cond_15
    const/16 v23, 0x0

    .line 311
    .line 312
    :goto_10
    and-long v36, v2, v34

    .line 313
    .line 314
    cmp-long v38, v36, v4

    .line 315
    .line 316
    if-eqz v38, :cond_1f

    .line 317
    .line 318
    if-eqz v6, :cond_16

    .line 319
    .line 320
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getUiMode()I

    .line 321
    .line 322
    .line 323
    move-result v36

    .line 324
    move/from16 v4, v36

    .line 325
    .line 326
    goto :goto_11

    .line 327
    :cond_16
    const/4 v4, 0x0

    .line 328
    :goto_11
    const/4 v5, 0x1

    .line 329
    if-nez v4, :cond_17

    .line 330
    .line 331
    const/16 v20, 0x1

    .line 332
    .line 333
    goto :goto_12

    .line 334
    :cond_17
    const/16 v20, 0x0

    .line 335
    .line 336
    :goto_12
    if-ne v4, v5, :cond_18

    .line 337
    .line 338
    goto :goto_13

    .line 339
    :cond_18
    const/4 v5, 0x0

    .line 340
    :goto_13
    if-eqz v38, :cond_1a

    .line 341
    .line 342
    if-eqz v20, :cond_19

    .line 343
    .line 344
    const-wide/16 v38, 0x400

    .line 345
    .line 346
    goto :goto_14

    .line 347
    :cond_19
    const-wide/16 v38, 0x200

    .line 348
    .line 349
    :goto_14
    or-long v2, v2, v38

    .line 350
    .line 351
    :cond_1a
    and-long v38, v2, v34

    .line 352
    .line 353
    const-wide/16 v36, 0x0

    .line 354
    .line 355
    cmp-long v4, v38, v36

    .line 356
    .line 357
    if-eqz v4, :cond_1c

    .line 358
    .line 359
    if-eqz v5, :cond_1b

    .line 360
    .line 361
    const-wide/32 v38, 0x40000

    .line 362
    .line 363
    .line 364
    goto :goto_15

    .line 365
    :cond_1b
    const-wide/32 v38, 0x20000

    .line 366
    .line 367
    .line 368
    :goto_15
    or-long v2, v2, v38

    .line 369
    .line 370
    :cond_1c
    if-eqz v20, :cond_1d

    .line 371
    .line 372
    const/4 v4, 0x0

    .line 373
    goto :goto_16

    .line 374
    :cond_1d
    const/16 v4, 0x8

    .line 375
    .line 376
    :goto_16
    if-eqz v5, :cond_1e

    .line 377
    .line 378
    goto :goto_17

    .line 379
    :cond_1e
    const/16 v16, 0x8

    .line 380
    .line 381
    goto :goto_18

    .line 382
    :cond_1f
    const/4 v4, 0x0

    .line 383
    :goto_17
    const/16 v16, 0x0

    .line 384
    .line 385
    :goto_18
    and-long v38, v2, v21

    .line 386
    .line 387
    const-wide/16 v36, 0x0

    .line 388
    .line 389
    cmp-long v5, v38, v36

    .line 390
    .line 391
    if-eqz v5, :cond_20

    .line 392
    .line 393
    if-eqz v6, :cond_20

    .line 394
    .line 395
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getProgress()I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    move/from16 v6, v16

    .line 400
    .line 401
    goto :goto_19

    .line 402
    :cond_20
    move/from16 v6, v16

    .line 403
    .line 404
    const/4 v5, 0x0

    .line 405
    :goto_19
    move-object/from16 v16, v8

    .line 406
    .line 407
    move/from16 v8, v23

    .line 408
    .line 409
    goto :goto_1a

    .line 410
    :cond_21
    move-wide/from16 v36, v4

    .line 411
    .line 412
    const/4 v4, 0x0

    .line 413
    const/4 v5, 0x0

    .line 414
    const/4 v6, 0x0

    .line 415
    const/4 v7, 0x0

    .line 416
    const/4 v8, 0x0

    .line 417
    const/16 v16, 0x0

    .line 418
    .line 419
    const/16 v19, 0x0

    .line 420
    .line 421
    :goto_1a
    and-long v34, v2, v34

    .line 422
    .line 423
    cmp-long v20, v34, v36

    .line 424
    .line 425
    if-eqz v20, :cond_22

    .line 426
    .line 427
    move-object/from16 v20, v7

    .line 428
    .line 429
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 430
    .line 431
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 435
    .line 436
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    .line 439
    goto :goto_1b

    .line 440
    :cond_22
    move-object/from16 v20, v7

    .line 441
    .line 442
    :goto_1b
    and-long v6, v2, v30

    .line 443
    .line 444
    cmp-long v4, v6, v36

    .line 445
    .line 446
    if-eqz v4, :cond_23

    .line 447
    .line 448
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 449
    .line 450
    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 451
    .line 452
    .line 453
    :cond_23
    const-wide/16 v6, 0x102

    .line 454
    .line 455
    and-long/2addr v6, v2

    .line 456
    cmp-long v4, v6, v36

    .line 457
    .line 458
    if-eqz v4, :cond_24

    .line 459
    .line 460
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/y50;->s:Landroid/widget/ImageView;

    .line 461
    .line 462
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/y50;->t:Landroid/widget/TextView;

    .line 466
    .line 467
    invoke-static {v4, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/y50;->t:Landroid/widget/TextView;

    .line 471
    .line 472
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 476
    .line 477
    const/4 v6, 0x0

    .line 478
    const/4 v7, 0x0

    .line 479
    invoke-static {v4, v14, v6, v7}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    .line 481
    .line 482
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->j:Landroid/widget/ImageView;

    .line 483
    .line 484
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->k:Lcom/papa91/arc/widget/htmltext/HtmlTextView;

    .line 488
    .line 489
    move-object/from16 v12, v24

    .line 490
    .line 491
    invoke-virtual {v0, v12}, Lcom/papa91/arc/widget/htmltext/HtmlTextView;->setHtml(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->l:Landroid/widget/TextView;

    .line 495
    .line 496
    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->m:Landroid/widget/TextView;

    .line 500
    .line 501
    move-object/from16 v12, v25

    .line 502
    .line 503
    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->n:Landroid/widget/TextView;

    .line 507
    .line 508
    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 509
    .line 510
    .line 511
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->o:Landroid/widget/TextView;

    .line 512
    .line 513
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 514
    .line 515
    .line 516
    :cond_24
    and-long v6, v2, v21

    .line 517
    .line 518
    const-wide/16 v8, 0x0

    .line 519
    .line 520
    cmp-long v0, v6, v8

    .line 521
    .line 522
    if-eqz v0, :cond_25

    .line 523
    .line 524
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->f:Landroid/widget/ProgressBar;

    .line 525
    .line 526
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 527
    .line 528
    .line 529
    :cond_25
    and-long v4, v2, v28

    .line 530
    .line 531
    cmp-long v0, v4, v8

    .line 532
    .line 533
    if-eqz v0, :cond_26

    .line 534
    .line 535
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->f:Landroid/widget/ProgressBar;

    .line 536
    .line 537
    move-object/from16 v7, v20

    .line 538
    .line 539
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    .line 541
    .line 542
    :cond_26
    and-long v4, v2, v32

    .line 543
    .line 544
    cmp-long v0, v4, v8

    .line 545
    .line 546
    if-eqz v0, :cond_27

    .line 547
    .line 548
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->h:Landroid/widget/TextView;

    .line 549
    .line 550
    move-object/from16 v4, v19

    .line 551
    .line 552
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    :cond_27
    and-long v2, v2, v26

    .line 556
    .line 557
    cmp-long v0, v2, v8

    .line 558
    .line 559
    if-eqz v0, :cond_28

    .line 560
    .line 561
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->i:Landroid/widget/TextView;

    .line 562
    .line 563
    move-object/from16 v8, v16

    .line 564
    .line 565
    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 566
    .line 567
    .line 568
    :cond_28
    return-void

    .line 569
    :catchall_0
    move-exception v0

    .line 570
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

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
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

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

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    check-cast p2, Lcom/join/kotlin/model/bean/DownState;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/y50;->w(Lcom/join/kotlin/model/bean/DownState;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
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
    check-cast p2, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u(Lcom/join/kotlin/ui/search/model/SearchGameBean;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0xd

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Lcom/join/kotlin/model/bean/DownState;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/y50;->t(Lcom/join/kotlin/model/bean/DownState;)V

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

.method public t(Lcom/join/kotlin/model/bean/DownState;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/model/bean/DownState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DownState"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/x50;->q:Lcom/join/kotlin/model/bean/DownState;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    or-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/16 p1, 0xd

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public u(Lcom/join/kotlin/ui/search/model/SearchGameBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/search/model/SearchGameBean;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/x50;->p:Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/y50;->u:J

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
