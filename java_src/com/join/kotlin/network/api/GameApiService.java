package com.join.kotlin.network.api;

import com.join.kotlin.autocode.dailyfind.model.DailyDiscoverDataBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankListDataBean;
import com.join.kotlin.autocode.dailyfind.model.args.DailyDiscoverArgs;
import com.join.kotlin.discount.model.bean.CommentDataBean;
import com.join.kotlin.discount.model.bean.CouponItemBean;
import com.join.kotlin.discount.model.bean.GameDetailDataBean;
import com.join.kotlin.discount.model.bean.GameServerInfoBean;
import com.join.kotlin.discount.model.bean.GiftItemTypeBean;
import com.join.kotlin.discount.model.request.CommonRequest;
import com.join.kotlin.discount.model.request.GameDetailRequest;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.model.bean.SourceTabListBean;
import com.join.kotlin.quark.model.request.AngelCreateRequest;
import com.join.kotlin.quark.model.request.AngelRequest;
import com.join.kotlin.quark.model.request.SourceListRequest;
import com.join.kotlin.quark.model.request.SourceSearchRequest;
import com.join.kotlin.quark.model.request.SourceTabRequest;
import com.join.kotlin.quark.model.request.SourceWantRequest;
import com.join.kotlin.quark.model.request.WishPoolRequest;
import com.join.kotlin.ui.nostalgia.model.NostalgiaGameListArgs;
import com.join.kotlin.ui.nostalgia.model.NostalgiaGameListData;
import com.join.kotlin.zone.model.bean.GameZoneDataBean;
import com.join.kotlin.zone.model.request.GameZoneRequest;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\r0\u0006H§@¢\u0006\u0002\u0010\bJ8\u0010\u000e\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\n\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u00110\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00120\u0006H§@¢\u0006\u0002\u0010\bJ8\u0010\u0013\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\n\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u00110\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00140\u0006H§@¢\u0006\u0002\u0010\bJ8\u0010\u0015\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fj\n\u0012\u0004\u0012\u00020\u0010\u0018\u0001`\u00110\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00160\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00190\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020!0\u0006H§@¢\u0006\u0002\u0010\bJ.\u0010\"\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010$\u0018\u00010#0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020!0\u0006H§@¢\u0006\u0002\u0010\bJ.\u0010%\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010&\u0018\u00010#0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020!0\u0006H§@¢\u0006\u0002\u0010\bJ.\u0010'\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010(\u0018\u00010#0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020)0\u0006H§@¢\u0006\u0002\u0010\bJ.\u0010*\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010+\u0018\u00010#0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020)0\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020.0\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020.0\u0006H§@¢\u0006\u0002\u0010\bJ&\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002020\u0006H§@¢\u0006\u0002\u0010\bJ&\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001040\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002050\u0006H§@¢\u0006\u0002\u0010\b¨\u00066"}, d2 = {"Lcom/join/kotlin/network/api/GameApiService;", "", "getGameZone", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;", PointCategory.REQUEST, "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/kotlin/zone/model/request/GameZoneRequest;", "(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sourceAngel", "", "Lcom/join/kotlin/quark/model/request/AngelRequest;", "sourceShareCreate", "Lcom/join/kotlin/quark/model/request/AngelCreateRequest;", "wishPoolList", "Ljava/util/ArrayList;", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "Lkotlin/collections/ArrayList;", "Lcom/join/kotlin/quark/model/request/WishPoolRequest;", "resourceList", "Lcom/join/kotlin/quark/model/request/SourceListRequest;", "resourceSearch", "Lcom/join/kotlin/quark/model/request/SourceSearchRequest;", "webDiskHome", "Lcom/join/kotlin/quark/model/bean/SourceTabListBean;", "Lcom/join/kotlin/quark/model/request/SourceTabRequest;", "wishPoolWant", "Lcom/join/kotlin/quark/model/request/SourceWantRequest;", "getGameDetail", "Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;", "Lcom/join/kotlin/discount/model/request/GameDetailRequest;", "getCommentList", "Lcom/join/kotlin/discount/model/bean/CommentDataBean;", "Lcom/join/kotlin/discount/model/request/CommonRequest;", "getGameDetailCouponList", "", "Lcom/join/kotlin/discount/model/bean/CouponItemBean;", "getGameDetailGiftList", "Lcom/join/kotlin/discount/model/bean/GiftItemTypeBean;", "similarRecList", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lcom/join/mgps/dto/RequestGameIdArgs;", "getGameServerList", "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;", "nostalgiaGameTabMeta", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListArgs;", "nostalgiaGameList", "getDailyDiscover", "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;", "Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;", "getDailyRankGame", "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GameApiService {
    @POST("/v9/comment/list")
    @Nullable
    Object getCommentList(@Body @NotNull RequestModel<CommonRequest> requestModel, @NotNull Continuation<? super ResponseModel<CommentDataBean>> continuation);

    @POST("/v10/game/daily_discover")
    @Nullable
    Object getDailyDiscover(@Body @NotNull RequestModel<DailyDiscoverArgs> requestModel, @NotNull Continuation<? super ResponseModel<DailyDiscoverDataBean>> continuation);

    @POST("/v10/game/daily_discover_ranking")
    @Nullable
    Object getDailyRankGame(@Body @NotNull RequestModel<LuckHistoryrequest> requestModel, @NotNull Continuation<? super ResponseModel<DailyRankListDataBean>> continuation);

    @POST("/v9/game/gameInfo")
    @Nullable
    Object getGameDetail(@Body @NotNull RequestModel<GameDetailRequest> requestModel, @NotNull Continuation<? super ResponseModel<GameDetailDataBean>> continuation);

    @POST("/v9/gameCoupon/discountCoupon")
    @Nullable
    Object getGameDetailCouponList(@Body @NotNull RequestModel<CommonRequest> requestModel, @NotNull Continuation<? super ResponseModel<List<CouponItemBean>>> continuation);

    @POST("/v9/gameGift/discountGift")
    @Nullable
    Object getGameDetailGiftList(@Body @NotNull RequestModel<CommonRequest> requestModel, @NotNull Continuation<? super ResponseModel<List<GiftItemTypeBean>>> continuation);

    @POST("/v9/gameServer/discountServer")
    @Nullable
    Object getGameServerList(@Body @NotNull RequestModel<RequestGameIdArgs> requestModel, @NotNull Continuation<? super ResponseModel<List<GameServerInfoBean>>> continuation);

    @POST("/v7/game/zone")
    @Nullable
    Object getGameZone(@Body @NotNull RequestModel<GameZoneRequest> requestModel, @NotNull Continuation<? super ResponseModel<GameZoneDataBean>> continuation);

    @POST("/v10/simulator/nostalgia_game_list")
    @Nullable
    Object nostalgiaGameList(@Body @NotNull RequestModel<NostalgiaGameListArgs> requestModel, @NotNull Continuation<? super ResponseModel<NostalgiaGameListData>> continuation);

    @POST("/v10/simulator/nostalgia_game_list")
    @Nullable
    Object nostalgiaGameTabMeta(@Body @NotNull RequestModel<NostalgiaGameListArgs> requestModel, @NotNull Continuation<? super ResponseModel<NostalgiaGameListData>> continuation);

    @POST("/v8/webdisk/resource/list")
    @Nullable
    Object resourceList(@Body @NotNull RequestModel<SourceListRequest> requestModel, @NotNull Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>> continuation);

    @POST("/v8/webdisk/resource/search")
    @Nullable
    Object resourceSearch(@Body @NotNull RequestModel<SourceSearchRequest> requestModel, @NotNull Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>> continuation);

    @POST("/v7/game_detail/similar_rec/list")
    @Nullable
    Object similarRecList(@Body @NotNull RequestModel<RequestGameIdArgs> requestModel, @NotNull Continuation<? super ResponseModel<List<CollectionBeanSub>>> continuation);

    @POST("/v8/web_disk/wish_pool/angel")
    @Nullable
    Object sourceAngel(@Body @NotNull RequestModel<AngelRequest> requestModel, @NotNull Continuation<? super ResponseModel<Boolean>> continuation);

    @POST("/v8/web_disk/wish_pool/create")
    @Nullable
    Object sourceShareCreate(@Body @NotNull RequestModel<AngelCreateRequest> requestModel, @NotNull Continuation<? super ResponseModel<Boolean>> continuation);

    @POST("/v8/webdisk/home")
    @Nullable
    Object webDiskHome(@Body @NotNull RequestModel<SourceTabRequest> requestModel, @NotNull Continuation<? super ResponseModel<SourceTabListBean>> continuation);

    @POST("/v8/web_disk/wish_pool/list")
    @Nullable
    Object wishPoolList(@Body @NotNull RequestModel<WishPoolRequest> requestModel, @NotNull Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>> continuation);

    @POST("/v8/web_disk/wish_pool/want")
    @Nullable
    Object wishPoolWant(@Body @NotNull RequestModel<SourceWantRequest> requestModel, @NotNull Continuation<? super ResponseModel<Boolean>> continuation);
}
