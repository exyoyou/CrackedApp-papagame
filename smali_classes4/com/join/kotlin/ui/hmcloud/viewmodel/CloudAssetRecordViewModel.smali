.class public final Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u000b2\u0014\u0010$\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020!0%J\u000e\u0010\'\u001a\u00020!2\u0006\u0010(\u001a\u00020)J\u000e\u0010*\u001a\u00020!2\u0006\u0010(\u001a\u00020)J\u000e\u0010+\u001a\u00020!2\u0006\u0010(\u001a\u00020)J\u000e\u0010,\u001a\u00020!2\u0006\u0010(\u001a\u00020)R\u001f\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\tR\u001b\u0010\u001a\u001a\u00020\u001b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006-"
    }
    d2 = {
        "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "title",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getTitle",
        "()Landroidx/lifecycle/MutableLiveData;",
        "type",
        "",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "page",
        "Lcom/join/kotlin/quark/model/bean/Page;",
        "getPage",
        "()Lcom/join/kotlin/quark/model/bean/Page;",
        "setPage",
        "(Lcom/join/kotlin/quark/model/bean/Page;)V",
        "listData",
        "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;",
        "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
        "getListData",
        "rpcAccountClientV2",
        "Lcom/join/mgps/rpc/RpcAccountClientV2;",
        "getRpcAccountClientV2",
        "()Lcom/join/mgps/rpc/RpcAccountClientV2;",
        "rpcAccountClientV2$delegate",
        "Lkotlin/Lazy;",
        "propUse",
        "",
        "cardId",
        "cardNo",
        "call",
        "Lkotlin/Function1;",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;",
        "playtimeRecord",
        "refresh",
        "",
        "diamondRecord",
        "coinRecord",
        "propRecord",
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
.field private final listData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:Lcom/join/kotlin/quark/model/bean/Page;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rpcAccountClientV2$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    const-string v1, "\u8d44\u4ea7\u8bb0\u5f55"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->type:I

    .line 15
    .line 16
    new-instance v1, Lcom/join/kotlin/quark/model/bean/Page;

    .line 17
    .line 18
    const/16 v2, 0x14

    .line 19
    .line 20
    invoke-direct {v1, v0, v2}, Lcom/join/kotlin/quark/model/bean/Page;-><init>(II)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/h;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/h;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->rpcAccountClientV2$delegate:Lkotlin/Lazy;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->playtimeRecord$lambda$4(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->coinRecord$lambda$10(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propUse$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final coinRecord$lambda$10(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lkotlin/Unit;
    .locals 14

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getDataList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v10, v1

    .line 27
    check-cast v10, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    .line 28
    .line 29
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    .line 30
    .line 31
    const/4 v9, 0x4

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x4

    .line 34
    const/4 v13, 0x0

    .line 35
    move-object v8, v1

    .line 36
    invoke-direct/range {v8 .. v13}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;-><init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    const/4 v6, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_2
    new-instance v10, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v5, 0x0

    .line 76
    const/16 v8, 0x10

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    move-object v0, v10

    .line 80
    move v3, p0

    .line 81
    invoke-direct/range {v0 .. v9}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    move-object v0, p1

    .line 85
    iget-object v0, v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    invoke-virtual {v0, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    return-object v0
.end method

.method private static final coinRecord$lambda$11(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    new-instance v8, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v9, 0x38

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v4, p0

    .line 30
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p1, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static synthetic d(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->diamondRecord$lambda$7(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final diamondRecord$lambda$7(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lkotlin/Unit;
    .locals 14

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getDataList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v10, v1

    .line 27
    check-cast v10, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$CoinLog;

    .line 28
    .line 29
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    .line 30
    .line 31
    const/4 v9, 0x3

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x4

    .line 34
    const/4 v13, 0x0

    .line 35
    move-object v8, v1

    .line 36
    invoke-direct/range {v8 .. v13}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;-><init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    const/4 v6, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_2
    new-instance v10, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v5, 0x0

    .line 76
    const/16 v8, 0x10

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    move-object v0, v10

    .line 80
    move v3, p0

    .line 81
    invoke-direct/range {v0 .. v9}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    move-object v0, p1

    .line 85
    iget-object v0, v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    invoke-virtual {v0, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    return-object v0
.end method

.method private static final diamondRecord$lambda$8(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    new-instance v8, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v9, 0x38

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v4, p0

    .line 30
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p1, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static synthetic e(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->diamondRecord$lambda$8(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->coinRecord$lambda$11(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propRecord$lambda$13(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Lcom/join/mgps/rpc/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->rpcAccountClientV2_delegate$lambda$0()Lcom/join/mgps/rpc/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propRecord$lambda$14(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->playtimeRecord$lambda$5(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propUse$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final playtimeRecord$lambda$4(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;)Lkotlin/Unit;
    .locals 14

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    new-instance v8, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;->getInfo()Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v3, v0

    .line 21
    :goto_0
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v1, v8

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;-><init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;->getDataList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v10, v2

    .line 52
    check-cast v10, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;

    .line 53
    .line 54
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    .line 55
    .line 56
    const/4 v9, 0x2

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x4

    .line 59
    const/4 v13, 0x0

    .line 60
    move-object v8, v2

    .line 61
    invoke-direct/range {v8 .. v13}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;-><init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    const/4 v6, 0x1

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const/4 v0, 0x0

    .line 94
    const/4 v6, 0x0

    .line 95
    :goto_2
    new-instance v10, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    const/4 v5, 0x0

    .line 99
    const/16 v8, 0x10

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v0, v10

    .line 103
    move v3, p0

    .line 104
    invoke-direct/range {v0 .. v9}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    move-object v0, p1

    .line 108
    iget-object v0, v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    invoke-virtual {v0, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    .line 115
    return-object v0
.end method

.method private static final playtimeRecord$lambda$5(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    new-instance v8, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v9, 0x38

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v4, p0

    .line 30
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p1, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final propRecord$lambda$13(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;)Lkotlin/Unit;
    .locals 14

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;->getDataList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v10, v1

    .line 27
    check-cast v10, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    .line 28
    .line 29
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    .line 30
    .line 31
    const/4 v9, 0x5

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x4

    .line 34
    const/4 v13, 0x0

    .line 35
    move-object v8, v1

    .line 36
    invoke-direct/range {v8 .. v13}, Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;-><init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;->getErrorMsg()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    const/4 v6, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v0, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_2
    new-instance v10, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v5, 0x0

    .line 76
    const/16 v8, 0x10

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    move-object v0, v10

    .line 80
    move v3, p0

    .line 81
    invoke-direct/range {v0 .. v9}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    move-object v0, p1

    .line 85
    iget-object v0, v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    invoke-virtual {v0, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    return-object v0
.end method

.method private static final propRecord$lambda$14(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    new-instance v8, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v9, 0x38

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    move-object v1, v0

    .line 29
    move v4, p0

    .line 30
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p1, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final propUse$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final propUse$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final rpcAccountClientV2_delegate$lambda$0()Lcom/join/mgps/rpc/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final coinRecord(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$coinRecord$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$coinRecord$1;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/viewmodel/d;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/d;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/viewmodel/e;

    .line 13
    .line 14
    invoke-direct {v2, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/e;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1, v2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->launch(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final diamondRecord(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$diamondRecord$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$diamondRecord$1;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/viewmodel/k;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/k;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/viewmodel/b;

    .line 13
    .line 14
    invoke-direct {v2, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/b;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1, v2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->launch(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getListData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Lcom/join/kotlin/quark/model/bean/Page;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRpcAccountClientV2()Lcom/join/mgps/rpc/c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->rpcAccountClientV2$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/join/mgps/rpc/c;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final playtimeRecord(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$playtimeRecord$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$playtimeRecord$1;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/viewmodel/a;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/a;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/viewmodel/c;

    .line 13
    .line 14
    invoke-direct {v2, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/c;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1, v2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->launch(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final propRecord(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/viewmodel/f;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/f;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/viewmodel/g;

    .line 13
    .line 14
    invoke-direct {v2, p1, p0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/g;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1, v2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->launch(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final propUse(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cardId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "call"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p1, p2, p0, v1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;-><init>(Ljava/lang/String;ILcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/join/kotlin/ui/hmcloud/viewmodel/i;

    .line 18
    .line 19
    invoke-direct {p1, p3}, Lcom/join/kotlin/ui/hmcloud/viewmodel/i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/join/kotlin/ui/hmcloud/viewmodel/j;

    .line 23
    .line 24
    invoke-direct {p2, p3}, Lcom/join/kotlin/ui/hmcloud/viewmodel/j;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, p1, p2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->launch(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setPage(Lcom/join/kotlin/quark/model/bean/Page;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/quark/model/bean/Page;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->type:I

    .line 2
    .line 3
    return-void
.end method
