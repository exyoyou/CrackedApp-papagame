.class public interface abstract Lcom/join/kotlin/network/api/GameApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J8\u0010\u000e\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\n\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u00110\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J8\u0010\u0013\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\n\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u00110\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J8\u0010\u0015\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\n\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u00110\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020!0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J.\u0010\"\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010$\u0018\u00010#0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020!0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J.\u0010%\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010&\u0018\u00010#0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020!0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J.\u0010\'\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010(\u0018\u00010#0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020)0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J.\u0010*\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010+\u0018\u00010#0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020)0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020.0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020.0\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002020\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008J&\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001040\u00032\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002050\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0008\u00a8\u00066"
    }
    d2 = {
        "Lcom/join/kotlin/network/api/GameApiService;",
        "",
        "getGameZone",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;",
        "request",
        "Lcom/join/mgps/dto/RequestModel;",
        "Lcom/join/kotlin/zone/model/request/GameZoneRequest;",
        "(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sourceAngel",
        "",
        "Lcom/join/kotlin/quark/model/request/AngelRequest;",
        "sourceShareCreate",
        "Lcom/join/kotlin/quark/model/request/AngelCreateRequest;",
        "wishPoolList",
        "Ljava/util/ArrayList;",
        "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        "Lkotlin/collections/ArrayList;",
        "Lcom/join/kotlin/quark/model/request/WishPoolRequest;",
        "resourceList",
        "Lcom/join/kotlin/quark/model/request/SourceListRequest;",
        "resourceSearch",
        "Lcom/join/kotlin/quark/model/request/SourceSearchRequest;",
        "webDiskHome",
        "Lcom/join/kotlin/quark/model/bean/SourceTabListBean;",
        "Lcom/join/kotlin/quark/model/request/SourceTabRequest;",
        "wishPoolWant",
        "Lcom/join/kotlin/quark/model/request/SourceWantRequest;",
        "getGameDetail",
        "Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;",
        "Lcom/join/kotlin/discount/model/request/GameDetailRequest;",
        "getCommentList",
        "Lcom/join/kotlin/discount/model/bean/CommentDataBean;",
        "Lcom/join/kotlin/discount/model/request/CommonRequest;",
        "getGameDetailCouponList",
        "",
        "Lcom/join/kotlin/discount/model/bean/CouponItemBean;",
        "getGameDetailGiftList",
        "Lcom/join/kotlin/discount/model/bean/GiftItemTypeBean;",
        "similarRecList",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        "Lcom/join/mgps/dto/RequestGameIdArgs;",
        "getGameServerList",
        "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;",
        "nostalgiaGameTabMeta",
        "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
        "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListArgs;",
        "nostalgiaGameList",
        "getDailyDiscover",
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;",
        "Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;",
        "getDailyRankGame",
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;",
        "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
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


# virtual methods
.method public abstract getCommentList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/discount/model/request/CommonRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/discount/model/bean/CommentDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v9/comment/list"
    .end annotation
.end method

.method public abstract getDailyDiscover(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v10/game/daily_discover"
    .end annotation
.end method

.method public abstract getDailyRankGame(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v10/game/daily_discover_ranking"
    .end annotation
.end method

.method public abstract getGameDetail(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/discount/model/request/GameDetailRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v9/game/gameInfo"
    .end annotation
.end method

.method public abstract getGameDetailCouponList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/discount/model/request/CommonRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/discount/model/bean/CouponItemBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v9/gameCoupon/discountCoupon"
    .end annotation
.end method

.method public abstract getGameDetailGiftList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/discount/model/request/CommonRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/discount/model/bean/GiftItemTypeBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v9/gameGift/discountGift"
    .end annotation
.end method

.method public abstract getGameServerList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v9/gameServer/discountServer"
    .end annotation
.end method

.method public abstract getGameZone(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/zone/model/request/GameZoneRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game/zone"
    .end annotation
.end method

.method public abstract nostalgiaGameList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListArgs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v10/simulator/nostalgia_game_list"
    .end annotation
.end method

.method public abstract nostalgiaGameTabMeta(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListArgs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v10/simulator/nostalgia_game_list"
    .end annotation
.end method

.method public abstract resourceList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/quark/model/request/SourceListRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v8/webdisk/resource/list"
    .end annotation
.end method

.method public abstract resourceSearch(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/quark/model/request/SourceSearchRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v8/webdisk/resource/search"
    .end annotation
.end method

.method public abstract similarRecList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v7/game_detail/similar_rec/list"
    .end annotation
.end method

.method public abstract sourceAngel(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/quark/model/request/AngelRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v8/web_disk/wish_pool/angel"
    .end annotation
.end method

.method public abstract sourceShareCreate(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/quark/model/request/AngelCreateRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v8/web_disk/wish_pool/create"
    .end annotation
.end method

.method public abstract webDiskHome(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/quark/model/request/SourceTabRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/quark/model/bean/SourceTabListBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v8/webdisk/home"
    .end annotation
.end method

.method public abstract wishPoolList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/quark/model/request/WishPoolRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v8/web_disk/wish_pool/list"
    .end annotation
.end method

.method public abstract wishPoolWant(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/kotlin/quark/model/request/SourceWantRequest;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v8/web_disk/wish_pool/want"
    .end annotation
.end method
