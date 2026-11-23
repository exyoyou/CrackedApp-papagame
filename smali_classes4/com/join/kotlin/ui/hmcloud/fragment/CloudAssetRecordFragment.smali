.class public final Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;
.super Lcom/join/kotlin/base/fragment/BaseVmDbFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment<",
        "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/zk;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0018H\u0016J\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eJ\u0008\u0010\u001f\u001a\u00020\u0018H\u0016J\u0008\u0010 \u001a\u00020\u0018H\u0016J\u000e\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012\u00a8\u0006$"
    }
    d2 = {
        "Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;",
        "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;",
        "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentCloudAssetRecordBinding;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "mAdapter",
        "Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "parentExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getParentExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setParentExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "extBean",
        "getExtBean",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createObserver",
        "onPageSelected",
        "position",
        "",
        "onDestroy",
        "lazyLoadData",
        "loadData",
        "refresh",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/ui/hmcloud/fragment/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->initView$lambda$7(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->createObserver$lambda$8(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->initView$lambda$1(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(ILcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->onPageSelected$lambda$9(ILcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    return-void
.end method

.method public static synthetic R()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic S(Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;ILcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->initView$lambda$6$lambda$5(Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;ILcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->initView$lambda$6(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private static final createObserver$lambda$8(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "loadSir"

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    move-object v2, v0

    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/zk;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/join/android/app/mgsim/wufun/databinding/zk;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 26
    .line 27
    const-string p0, "xrvList"

    .line 28
    .line 29
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v0, p1

    .line 37
    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadListData$default(Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/kingja/loadsir/core/b;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private final getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initView$lambda$1(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->loadData(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final initView$lambda$6(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "view"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->getViewType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x5

    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_6

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->getData()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v1, v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v0, v2

    .line 49
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getCardId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move-object v5, v2

    .line 79
    :goto_2
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const-string v5, "btnUse"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getTitle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    move-object v5, v2

    .line 97
    :goto_3
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v1, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getCardId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getCardNo()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    :cond_5
    new-instance v3, Lcom/join/kotlin/ui/hmcloud/fragment/d;

    .line 135
    .line 136
    invoke-direct {v3, p1, v0, p0, p3}, Lcom/join/kotlin/ui/hmcloud/fragment/d;-><init>(Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2, p2, v3}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propUse(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    return-void
.end method

.method private static final initView$lambda$6$lambda$5(Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;ILcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    const-string p0, "\u4f7f\u7528\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    .line 5
    .line 6
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;->getStatus()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->toBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog$b;->setStatus(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog$b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/join/mgps/Util/e0;->k()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog$b;->setUseTime(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog$b;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v2, v0

    .line 47
    :goto_0
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->setData(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p2}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;->getErrorMsg()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const/4 v1, 0x0

    .line 66
    :goto_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonReport:Lcom/papa/sim/statistic/Event;

    .line 75
    .line 76
    iget-object v2, p2, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object p2, p2, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getCardId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move-object v2, v0

    .line 96
    :goto_3
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getTitle()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    move-object v2, v0

    .line 108
    :goto_4
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const-string v2, "btnUse"

    .line 113
    .line 114
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    const-string v2, "succ"

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    const-string v2, "fail"

    .line 124
    .line 125
    :goto_5
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/ExtBean;->setResultCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;->getTitle()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    goto :goto_6

    .line 138
    :cond_6
    if-nez p4, :cond_7

    .line 139
    .line 140
    const-string v0, "\u672a\u77e5"

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_7
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;->getErrorMsg()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_8
    :goto_6
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 160
    .line 161
    .line 162
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p0
.end method

.method private static final initView$lambda$7(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->getCollapse()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->setCollapse(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;->setCollapse(Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final onPageSelected$lambda$9(ILcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V
    .locals 2

    .line 1
    const-string v0, "cloudGameTimeRecord"

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "cloudGamePropRecord"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v0, "cloudGameCoinRecord"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "cloudGameDiamondRecord"

    .line 22
    .line 23
    :cond_3
    :goto_0
    iget-object p0, p1, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object v0, p1, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/dto/ExtBean;->setParent(Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getListData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/c;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/c;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/zk;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/zk;->n(Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/zk;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/zk;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    const-string v0, "clContainer"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/e;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/e;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 51
    .line 52
    const-string v1, "_type"

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->setType(I)V

    .line 60
    .line 61
    .line 62
    const-string v0, "parentExtBean"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    instance-of v0, p1, Lcom/join/mgps/dto/ExtBean;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    check-cast p1, Lcom/join/mgps/dto/ExtBean;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 p1, 0x0

    .line 76
    :goto_0
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/zk;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/zk;->c:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment$initView$3$1$1;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment$initView$3$1$1;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingListener(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment$initView$3$1$2;

    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment$initView$3$1$2;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/f;

    .line 126
    .line 127
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/f;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    .line 128
    .line 129
    .line 130
    const v1, 0x7f0a192f

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter/base/BaseQuickAdapter$b;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->getMAdapter()Lcom/join/kotlin/ui/hmcloud/adapter/CloudAssetRecordAdapter;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/fragment/g;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/g;-><init>(Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    .line 143
    .line 144
    .line 145
    const v1, 0x7f0a1a3d

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter/base/BaseQuickAdapter$b;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public lazyLoadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "loadSir"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->loadData(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final loadData(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->playtimeRecord(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getType()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x2

    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->diamondRecord(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getType()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x3

    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->coinRecord(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getType()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x4

    .line 81
    if-ne v0, v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propRecord(Z)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/kotlin/base/fragment/BaseVmDbFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMHandler()Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/fragment/b;

    .line 14
    .line 15
    invoke-direct {v1, p1, p0}, Lcom/join/kotlin/ui/hmcloud/fragment/b;-><init>(ILcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x320

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method
