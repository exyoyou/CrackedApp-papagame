.class public Lcom/join/android/app/mgsim/wufun/databinding/ux;
.super Lcom/join/android/app/mgsim/wufun/databinding/tx;
.source "SourceFile"


# static fields
.field private static final k:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final l:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:J


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->l:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a0423

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    .line 14
    .line 15
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->k:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->l:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ux;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 6
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

    const/4 v3, 0x0

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/customview/MStarBar;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/join/android/app/mgsim/wufun/databinding/tx;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Lcom/join/mgps/customview/MStarBar;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->j:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/tx;->c:Lcom/join/mgps/customview/MStarBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->f:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 9
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->g:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 11
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->h:Landroid/widget/ProgressBar;

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 13
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->i:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/ux;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->j:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->j:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tx;->d:Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;

    .line 12
    .line 13
    const-wide/16 v6, 0x3

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    cmp-long v12, v8, v4

    .line 19
    .line 20
    if-eqz v12, :cond_9

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getStarCount()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getProgress()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getUserPercent()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v13

    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getType()I

    .line 41
    .line 42
    .line 43
    move-result v14

    .line 44
    invoke-virtual {v0}, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;->getMax()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v13, v10

    .line 50
    const/4 v0, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    :goto_0
    const/4 v15, 0x1

    .line 55
    if-ne v14, v15, :cond_1

    .line 56
    .line 57
    const/16 v16, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/16 v16, 0x0

    .line 61
    .line 62
    :goto_1
    const/4 v11, 0x2

    .line 63
    if-ne v14, v11, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/4 v15, 0x0

    .line 67
    :goto_2
    if-eqz v12, :cond_4

    .line 68
    .line 69
    if-eqz v16, :cond_3

    .line 70
    .line 71
    const-wide/16 v11, 0x8

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    const-wide/16 v11, 0x4

    .line 75
    .line 76
    :goto_3
    or-long/2addr v2, v11

    .line 77
    :cond_4
    and-long v11, v2, v6

    .line 78
    .line 79
    cmp-long v14, v11, v4

    .line 80
    .line 81
    if-eqz v14, :cond_6

    .line 82
    .line 83
    if-eqz v15, :cond_5

    .line 84
    .line 85
    const-wide/16 v11, 0x20

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    const-wide/16 v11, 0x10

    .line 89
    .line 90
    :goto_4
    or-long/2addr v2, v11

    .line 91
    :cond_6
    const/16 v11, 0x8

    .line 92
    .line 93
    if-eqz v16, :cond_7

    .line 94
    .line 95
    const/4 v12, 0x0

    .line 96
    goto :goto_5

    .line 97
    :cond_7
    const/16 v12, 0x8

    .line 98
    .line 99
    :goto_5
    if-eqz v15, :cond_8

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    :cond_8
    move/from16 v17, v8

    .line 103
    .line 104
    move v8, v0

    .line 105
    move v0, v11

    .line 106
    move/from16 v11, v17

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_9
    move-object v13, v10

    .line 110
    const/4 v0, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v11, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    :goto_6
    and-long/2addr v2, v6

    .line 116
    cmp-long v6, v2, v4

    .line 117
    .line 118
    if-eqz v6, :cond_a

    .line 119
    .line 120
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tx;->c:Lcom/join/mgps/customview/MStarBar;

    .line 121
    .line 122
    invoke-virtual {v2, v11}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 123
    .line 124
    .line 125
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->f:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-static {v2, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->f:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->g:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->h:Landroid/widget/ProgressBar;

    .line 141
    .line 142
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->h:Landroid/widget/ProgressBar;

    .line 146
    .line 147
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/ux;->i:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    :cond_a
    return-void

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->j:J

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
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->j:J

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

.method public n(Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/tx;->d:Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->j:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/ux;->j:J

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
    check-cast p2, Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/ux;->n(Lcom/join/kotlin/discount/model/bean/CommentDataProgressBean;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method
