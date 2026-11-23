.class public Lcom/join/android/app/mgsim/wufun/databinding/m0;
.super Lcom/join/android/app/mgsim/wufun/databinding/l0;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final m:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final n:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final i:Landroid/widget/TextView;
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

.field private l:J


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
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->n:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a037a

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x5

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->m:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->n:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/m0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    const/4 v3, 0x4

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v9, 0x2

    aget-object v0, p3, v9

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v10, 0x1

    aget-object v0, p3, v10

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/join/android/app/mgsim/wufun/databinding/l0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->i:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 11
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v9}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->j:Landroid/view/View$OnClickListener;

    .line 12
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v10}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->k:Landroid/view/View$OnClickListener;

    .line 13
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/m0;->invalidateAll()V

    return-void
.end method

.method private w(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmBtnCancelText",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 5
    .line 6
    const-wide/16 v0, 0x4

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

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

.method private x(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "VmBtnConfirmText",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 5
    .line 6
    const-wide/16 v0, 0x8

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

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
            "VmContent",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 5
    .line 6
    const-wide/16 v0, 0x2

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

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
            "VmTitle",
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
    iget-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 5
    .line 6
    const-wide/16 v0, 0x1

    .line 7
    .line 8
    or-long/2addr p1, v0

    .line 9
    iput-wide p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

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
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->h:Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    :cond_1
    if-eqz p2, :cond_4

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;->onCancelClick()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->h:Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    :cond_3
    if-eqz p2, :cond_4

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;->onConfirmClick()V

    .line 28
    .line 29
    .line 30
    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/l0;->g:Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;

    .line 12
    .line 13
    const-wide/16 v6, 0x5f

    .line 14
    .line 15
    and-long/2addr v6, v2

    .line 16
    const-wide/16 v11, 0x52

    .line 17
    .line 18
    const-wide/16 v13, 0x51

    .line 19
    .line 20
    const-wide/16 v15, 0x80

    .line 21
    .line 22
    const-wide/16 v17, 0x5c

    .line 23
    .line 24
    const/4 v10, 0x1

    .line 25
    const/4 v8, 0x0

    .line 26
    cmp-long v21, v6, v4

    .line 27
    .line 28
    if-eqz v21, :cond_d

    .line 29
    .line 30
    and-long v6, v2, v13

    .line 31
    .line 32
    cmp-long v21, v6, v4

    .line 33
    .line 34
    if-eqz v21, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v6, 0x0

    .line 44
    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 45
    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v6, 0x0

    .line 57
    :goto_1
    and-long v21, v2, v11

    .line 58
    .line 59
    cmp-long v7, v21, v4

    .line 60
    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;->getContent()Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v7, 0x0

    .line 71
    :goto_2
    invoke-virtual {v1, v10, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 72
    .line 73
    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const/4 v7, 0x0

    .line 84
    :goto_3
    and-long v21, v2, v17

    .line 85
    .line 86
    cmp-long v23, v21, v4

    .line 87
    .line 88
    if-eqz v23, :cond_8

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;->getBtnCancelText()Landroidx/lifecycle/MutableLiveData;

    .line 93
    .line 94
    .line 95
    move-result-object v21

    .line 96
    move-object/from16 v8, v21

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    const/4 v8, 0x0

    .line 100
    :goto_4
    const/4 v9, 0x2

    .line 101
    invoke-virtual {v1, v9, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 102
    .line 103
    .line 104
    if-eqz v8, :cond_5

    .line 105
    .line 106
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Ljava/lang/String;

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_5
    const/4 v8, 0x0

    .line 114
    :goto_5
    if-nez v8, :cond_6

    .line 115
    .line 116
    const/4 v9, 0x1

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    const/4 v9, 0x0

    .line 119
    :goto_6
    if-eqz v23, :cond_9

    .line 120
    .line 121
    if-eqz v9, :cond_7

    .line 122
    .line 123
    const-wide/16 v23, 0x100

    .line 124
    .line 125
    or-long v2, v2, v23

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_7
    or-long/2addr v2, v15

    .line 129
    goto :goto_7

    .line 130
    :cond_8
    const/4 v8, 0x0

    .line 131
    const/4 v9, 0x0

    .line 132
    :cond_9
    :goto_7
    const-wide/16 v19, 0x58

    .line 133
    .line 134
    and-long v23, v2, v19

    .line 135
    .line 136
    cmp-long v25, v23, v4

    .line 137
    .line 138
    if-eqz v25, :cond_c

    .line 139
    .line 140
    if-eqz v0, :cond_a

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;->getBtnConfirmText()Landroidx/lifecycle/MutableLiveData;

    .line 143
    .line 144
    .line 145
    move-result-object v23

    .line 146
    move-object/from16 v10, v23

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_a
    const/4 v10, 0x0

    .line 150
    :goto_8
    const/4 v13, 0x3

    .line 151
    invoke-virtual {v1, v13, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 152
    .line 153
    .line 154
    if-eqz v10, :cond_b

    .line 155
    .line 156
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    check-cast v13, Ljava/lang/String;

    .line 161
    .line 162
    move-object/from16 v22, v13

    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_b
    const/16 v22, 0x0

    .line 166
    .line 167
    :goto_9
    move-object/from16 v26, v10

    .line 168
    .line 169
    move-object v10, v6

    .line 170
    move v6, v9

    .line 171
    move-object/from16 v9, v26

    .line 172
    .line 173
    goto :goto_b

    .line 174
    :cond_c
    move-object v10, v6

    .line 175
    move v6, v9

    .line 176
    const/4 v9, 0x0

    .line 177
    goto :goto_a

    .line 178
    :cond_d
    const/4 v6, 0x0

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v8, 0x0

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    :goto_a
    const/16 v22, 0x0

    .line 184
    .line 185
    :goto_b
    and-long v13, v2, v15

    .line 186
    .line 187
    cmp-long v15, v13, v4

    .line 188
    .line 189
    if-eqz v15, :cond_10

    .line 190
    .line 191
    if-eqz v0, :cond_e

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;->getBtnConfirmText()Landroidx/lifecycle/MutableLiveData;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    :cond_e
    const/4 v0, 0x3

    .line 198
    invoke-virtual {v1, v0, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    .line 199
    .line 200
    .line 201
    if-eqz v9, :cond_f

    .line 202
    .line 203
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    move-object/from16 v22, v0

    .line 208
    .line 209
    check-cast v22, Ljava/lang/String;

    .line 210
    .line 211
    :cond_f
    move-object/from16 v0, v22

    .line 212
    .line 213
    const-string v9, ""

    .line 214
    .line 215
    if-ne v0, v9, :cond_11

    .line 216
    .line 217
    const/4 v9, 0x1

    .line 218
    goto :goto_c

    .line 219
    :cond_10
    move-object/from16 v0, v22

    .line 220
    .line 221
    :cond_11
    const/4 v9, 0x0

    .line 222
    :goto_c
    and-long v13, v2, v17

    .line 223
    .line 224
    cmp-long v15, v13, v4

    .line 225
    .line 226
    if-eqz v15, :cond_16

    .line 227
    .line 228
    if-eqz v6, :cond_12

    .line 229
    .line 230
    const/16 v23, 0x1

    .line 231
    .line 232
    goto :goto_d

    .line 233
    :cond_12
    move/from16 v23, v9

    .line 234
    .line 235
    :goto_d
    if-eqz v15, :cond_14

    .line 236
    .line 237
    if-eqz v23, :cond_13

    .line 238
    .line 239
    const-wide/16 v13, 0x400

    .line 240
    .line 241
    goto :goto_e

    .line 242
    :cond_13
    const-wide/16 v13, 0x200

    .line 243
    .line 244
    :goto_e
    or-long/2addr v2, v13

    .line 245
    :cond_14
    if-eqz v23, :cond_15

    .line 246
    .line 247
    const/16 v6, 0x8

    .line 248
    .line 249
    const/16 v21, 0x8

    .line 250
    .line 251
    goto :goto_f

    .line 252
    :cond_15
    const/16 v21, 0x0

    .line 253
    .line 254
    :goto_f
    move/from16 v6, v21

    .line 255
    .line 256
    goto :goto_10

    .line 257
    :cond_16
    const/4 v6, 0x0

    .line 258
    :goto_10
    const-wide/16 v13, 0x40

    .line 259
    .line 260
    and-long/2addr v13, v2

    .line 261
    cmp-long v9, v13, v4

    .line 262
    .line 263
    if-eqz v9, :cond_17

    .line 264
    .line 265
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/l0;->b:Landroid/widget/TextView;

    .line 266
    .line 267
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->k:Landroid/view/View$OnClickListener;

    .line 268
    .line 269
    invoke-virtual {v9, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->i:Landroid/widget/TextView;

    .line 273
    .line 274
    iget-object v13, v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->j:Landroid/view/View$OnClickListener;

    .line 275
    .line 276
    invoke-virtual {v9, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    :cond_17
    const-wide/16 v13, 0x58

    .line 280
    .line 281
    and-long/2addr v13, v2

    .line 282
    cmp-long v9, v13, v4

    .line 283
    .line 284
    if-eqz v9, :cond_18

    .line 285
    .line 286
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/l0;->b:Landroid/widget/TextView;

    .line 287
    .line 288
    invoke-static {v9, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    :cond_18
    const-wide/16 v13, 0x54

    .line 292
    .line 293
    and-long/2addr v13, v2

    .line 294
    cmp-long v0, v13, v4

    .line 295
    .line 296
    if-eqz v0, :cond_19

    .line 297
    .line 298
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->i:Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    :cond_19
    and-long v8, v2, v17

    .line 304
    .line 305
    cmp-long v0, v8, v4

    .line 306
    .line 307
    if-eqz v0, :cond_1a

    .line 308
    .line 309
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/m0;->i:Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 312
    .line 313
    .line 314
    :cond_1a
    and-long v8, v2, v11

    .line 315
    .line 316
    cmp-long v0, v8, v4

    .line 317
    .line 318
    if-eqz v0, :cond_1b

    .line 319
    .line 320
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/l0;->e:Landroid/widget/TextView;

    .line 321
    .line 322
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    :cond_1b
    const-wide/16 v6, 0x51

    .line 326
    .line 327
    and-long/2addr v2, v6

    .line 328
    cmp-long v0, v2, v4

    .line 329
    .line 330
    if-eqz v0, :cond_1c

    .line 331
    .line 332
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/l0;->f:Landroid/widget/TextView;

    .line 333
    .line 334
    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    :cond_1c
    return-void

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

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
    const-wide/16 v0, 0x40

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/m0;->x(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/m0;->w(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/m0;->y(Landroidx/lifecycle/MutableLiveData;I)Z

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
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/m0;->z(Landroidx/lifecycle/MutableLiveData;I)Z

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
    const/16 v0, 0x36

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/m0;->u(Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;)V

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
    check-cast p2, Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/m0;->t(Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;)V

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

.method public t(Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->h:Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 5
    .line 6
    const-wide/16 v2, 0x20

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

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

.method public u(Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Vm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/l0;->g:Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 5
    .line 6
    const-wide/16 v2, 0x10

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/m0;->l:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x36

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
