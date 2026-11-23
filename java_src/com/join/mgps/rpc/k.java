package com.join.mgps.rpc;

import com.join.kotlin.discount.model.bean.GameDetailDataBean;
import com.join.kotlin.discount.model.request.GameDetailRequest;
import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.kotlin.ui.coupon.ServerListData;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressResultData;
import com.join.kotlin.ui.gameexpress.model.request.GameExpressRequest;
import com.join.kotlin.ui.hmcloud.model.QueueAdBean;
import com.join.kotlin.ui.legendgame.data.LegendServerRemindRequest;
import com.join.kotlin.ui.legendgame.data.LegendServerRemindResult;
import com.join.kotlin.ui.legendgame.data.LegendZoneRequest;
import com.join.kotlin.ui.legendgame.data.LegendZoneResultData;
import com.join.kotlin.ui.netgame.data.NetGameZoneRequest;
import com.join.kotlin.ui.netgame.data.NetGameZoneResultData;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.recomend.RecommendDataBean;
import com.join.mgps.dto.AddGameInformationCommentArgs;
import com.join.mgps.dto.AppDataBackupBean;
import com.join.mgps.dto.ArchievePathMultiArgs;
import com.join.mgps.dto.ArchievePathMultiBean;
import com.join.mgps.dto.BbsCommentListBean;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.BbsListBean;
import com.join.mgps.dto.BbsTagListBean;
import com.join.mgps.dto.BossBean;
import com.join.mgps.dto.CheckGameVersionRequestArgs;
import com.join.mgps.dto.CheckGameVersionResponseData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionModuleSevenArgs;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DiscoveryBannerBean;
import com.join.mgps.dto.DiscoveryHeaderArgs;
import com.join.mgps.dto.DiscoveryHeaderBean;
import com.join.mgps.dto.DiscoveryHeaderMenuClickArgs;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.EndGameBean;
import com.join.mgps.dto.EndGameDetailBean;
import com.join.mgps.dto.EndGameListBean;
import com.join.mgps.dto.EndGameNameBean;
import com.join.mgps.dto.EndGameRecordArgs;
import com.join.mgps.dto.EndGameReportTypeBean;
import com.join.mgps.dto.FavoriteGameListArgs;
import com.join.mgps.dto.FavoriteGameListBean;
import com.join.mgps.dto.GameBbsPostListBean;
import com.join.mgps.dto.GameBespeakBean;
import com.join.mgps.dto.GameInformationCommentPraiseArgs;
import com.join.mgps.dto.GameInformationCommentRequestV2;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.H5GameDataBean;
import com.join.mgps.dto.InformationCommentBackV2;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.MessageDetailFeedBackArgs;
import com.join.mgps.dto.MessageDetailFeedBackBean;
import com.join.mgps.dto.MiniGameSdkDtoRequestArgs;
import com.join.mgps.dto.MiniGameSdkDtoResponseResponseData;
import com.join.mgps.dto.ModFeedbackBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RecommendArgs;
import com.join.mgps.dto.RequestAddUserCustomGameTag;
import com.join.mgps.dto.RequestBbsCommentListArgs;
import com.join.mgps.dto.RequestBbsDetailArgs;
import com.join.mgps.dto.RequestBbsDispraiseArgs;
import com.join.mgps.dto.RequestBbsListArgs;
import com.join.mgps.dto.RequestBbsPraiseArgs;
import com.join.mgps.dto.RequestBbsRecommendArgs;
import com.join.mgps.dto.RequestBbsReplyArgs;
import com.join.mgps.dto.RequestBbsTagListArgs;
import com.join.mgps.dto.RequestBossListArgs;
import com.join.mgps.dto.RequestCommonAdArgs;
import com.join.mgps.dto.RequestCreateEndGameArgs;
import com.join.mgps.dto.RequestDeleteUserCustomGameTag;
import com.join.mgps.dto.RequestDeleteUserCustomTag;
import com.join.mgps.dto.RequestDomainInfoArgs;
import com.join.mgps.dto.RequestEndGameAdArgs;
import com.join.mgps.dto.RequestEndGameDetailArgs;
import com.join.mgps.dto.RequestEndGameListArgs;
import com.join.mgps.dto.RequestEndGameNameListArgs;
import com.join.mgps.dto.RequestEndGameReportReasonArgs;
import com.join.mgps.dto.RequestEndGameTypeArgs;
import com.join.mgps.dto.RequestFeedbackUserCustomTag;
import com.join.mgps.dto.RequestGameBespeakArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestInfoArgs;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestMiniGameArgs;
import com.join.mgps.dto.RequestModFeedbackArgs;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestRankingListArgs;
import com.join.mgps.dto.RequestSearchGameArgs;
import com.join.mgps.dto.RequestSearchUserCustomGameTag;
import com.join.mgps.dto.RequestSimulatorAchievementListArgs;
import com.join.mgps.dto.RequestSimulatorMomentLikeArgs;
import com.join.mgps.dto.RequestSimulatorMomentListArgs;
import com.join.mgps.dto.RequestSimulatorRecomGamesArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchDataBean;
import com.join.mgps.dto.SearchGameListBean;
import com.join.mgps.dto.SimulatorAchievementBean;
import com.join.mgps.dto.SimulatorAllAchievementBean;
import com.join.mgps.dto.SimulatorExitPlayRequestArgs;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.dto.SimulatorMomentBean;
import com.join.mgps.dto.SimulatorRecomBean;
import com.join.mgps.dto.UninstallAppReasonBean;
import com.join.mgps.dto.UninstallAppReasonSubmitArgs;
import com.join.mgps.dto.UninstallGuessLikeArgs;
import com.join.mgps.dto.UninstallGuessLikeBean;
import com.join.mgps.dto.UninstallOnlineGameArgs;
import com.join.mgps.dto.UninstallOnlineGameBean;
import com.join.mgps.dto.UserGameListBean;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.dto.VideoAdWatchLogRequest;
import com.join.mgps.dto.hmcloud.CloudGamingCfgInfo;
import com.join.mgps.dto.hmcloud.RequestGameCfgInfoArgs;
import java.util.List;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface k {
    @POST("/v7/game/feedback/create")
    ResponseModel A(@Body RequestModel<RequestEndGameReportReasonArgs> request);

    @POST("/v7/game/achievement/detail")
    ResponseModel<SimulatorAchievementBean> A0(@Body RequestModel<RequestSimulatorAchievementListArgs> requestModel);

    @POST("/v7/game/endgame/main/list")
    ResponseModel<List<EndGameBean>> B(@Body RequestModel<RequestEndGameListArgs> request);

    @POST("/v7/bbs/post/detail")
    ResponseModel<BbsDetailBean> B0(@Body RequestModel<RequestBbsDetailArgs> request);

    @POST("/v6/app/recommendSetup")
    ResponseModel<RecommendDataBean> C(@Body RequestModel<RecommendArgs> request);

    @POST("/v1/information/comment/list")
    ResponseModel<InformationCommentBackV2> C0(@Body RequestModel<GameInformationCommentRequestV2> request);

    @POST("/v1/information/comment/praise")
    ResponseModel D(@Body RequestModel<GameInformationCommentPraiseArgs> request);

    @POST("/v7/game/endgame/ad")
    ResponseModel<List<CommonGameInfoBean>> D0(@Body RequestModel<RequestEndGameAdArgs> request);

    @POST("/v7/game/endgame/create")
    ResponseModel<Boolean> E(@Body RequestModel<RequestCreateEndGameArgs> request);

    @POST("/v7/home/discover/config")
    ResponseModel<DiscoveryBannerBean> E0(@Body RequestModel<RequestInfoArgs> request);

    @POST("/v7/game/endgame/main/detail")
    ResponseModel<EndGameDetailBean> F(@Body RequestModel<RequestEndGameDetailArgs> request);

    @POST("/v7/bbs/post/reply")
    ResponseModel<Boolean> F0(@Body RequestModel<RequestBbsReplyArgs> request);

    @POST("/v7/favorites/search/game_list")
    ResponseModel<FavoriteGameListBean> G(@Body RequestModel<FavoriteGameListArgs> request);

    @POST("/v7/game/unbespeak")
    ResponseModel<GameBespeakBean> G0(@Body RequestModel<RequestGameBespeakArgs> request);

    @POST("/v7/uninstall/app/reason")
    ResponseModel<UninstallAppReasonBean> H(@Body RequestModel<UninstallAppReasonSubmitArgs> request);

    @POST("/v7/game/endgame/challenge/url")
    ResponseModel H0(@Body RequestModel<EndGameRecordArgs> request);

    @POST("/v7/game/gameSurface/recGame")
    ResponseModel<List<SimulatorRecomBean>> I(@Body RequestModel<RequestSimulatorRecomGamesArgs> request);

    @POST("/v7/simulator/game/achievement/praise")
    ResponseModel<Boolean> I0(@Body RequestModel<RequestSimulatorMomentLikeArgs> request);

    @POST("/v7/uninstall/app/reason_submit")
    ResponseModel J(@Body RequestModel<UninstallAppReasonSubmitArgs> request);

    @POST("/v5/game/gameSurface")
    ResponseModel<GameMainV4DataBean> J0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/bbs/resource/praise")
    ResponseModel<Boolean> K(@Body RequestModel<RequestBbsPraiseArgs> request);

    @POST("/v7/advert/generalAd")
    ResponseModel<List<CommonAdBean>> K0(@Body RequestModel<RequestCommonAdArgs> request);

    @POST("/v10/game/legend_zone")
    ResponseModel<LegendZoneResultData> L(@Body RequestModel<LegendZoneRequest> request);

    @POST("/v7/bbs/post/reply/list")
    ResponseModel<List<BbsCommentListBean>> L0(@Body RequestModel<RequestBbsCommentListArgs> request);

    @POST("/v7/game/delete_user_custom_game_tag")
    ResponseModel M(@Body RequestModel<RequestDeleteUserCustomGameTag> request);

    @POST("/v4/game/gameDownloadDetail")
    void M0(@Body RequestModel<QueryDownloadInfoRequestArgs> request, com.join.mgps.callbacks.m<ResponseModel<DataGameListBean>> callback);

    @POST("/v8/subject/template/index")
    ResponseModel<CollectionModuleSevenBean> N(@Body RequestModel<CollectionModuleSevenArgs> request);

    @POST("/v7/cloud_game/top_game")
    ResponseModel<H5GameDataBean> O(@Body RequestModel<RequestMiniGameArgs> request);

    @POST("/v7/game/bespeak")
    ResponseModel<GameBespeakBean> P(@Body RequestModel<RequestGameBespeakArgs> request);

    @POST("/v5/game/mod_question_collect")
    ResponseModel<ModFeedbackBean> Q(@Body RequestModel<RequestModFeedbackArgs> request);

    @POST("/v7/game/install")
    ResponseModel<UninstallOnlineGameBean> R(@Body RequestModel<UninstallOnlineGameArgs> request);

    @POST("/v7/game/endgame/game/list")
    ResponseModel<EndGameNameBean> S(@Body RequestModel<RequestEndGameNameListArgs> request);

    @POST("/v7/game/openserver/list")
    ResponseModel<ServerListData> T(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v5/game/simulatorExitPlayPanel")
    ResponseModel<SimulatorExitPlayResponseData> U(@Body RequestModel<SimulatorExitPlayRequestArgs> request);

    @POST("/v10/discover/index")
    ResponseModel<DiscoveryHeaderBean> V(@Body RequestModel<DiscoveryHeaderArgs> request);

    @POST("/v7/game/feedback_user_custom_tag")
    ResponseModel W(@Body RequestModel<RequestFeedbackUserCustomTag> request);

    @POST("/v10/discover/click_menu")
    ResponseModel X(@Body RequestModel<DiscoveryHeaderMenuClickArgs> request);

    @POST("/v7/bbs/post/recommend")
    ResponseModel<GameBbsPostListBean> Y(@Body RequestModel<RequestBbsRecommendArgs> request);

    @POST("/v7/game/endgame/user_game/list")
    ResponseModel<List<UserGameListBean>> Z(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v10/game/cloud_gaming/cfg_info")
    ResponseModel<CloudGamingCfgInfo> a(@Body RequestModel<RequestGameCfgInfoArgs> request);

    @POST("/v7/game/endgame/rangking/list")
    ResponseModel<List<EndGameDetailBean.RankingListBean>> a0(@Body RequestModel<RequestEndGameDetailArgs> request);

    @POST("/v7/bbs/tag/list")
    ResponseModel<List<BbsTagListBean>> b(@Body RequestModel<RequestBbsTagListArgs> request);

    @POST(h.f72325b2)
    ResponseModel<List<CollectionBeanSub>> b0(@Body RequestModel<RequestGameIdArgs> requestInterface);

    @POST("/v10/game/legend_zone/server_remind")
    ResponseModel<LegendServerRemindResult> c(@Body RequestModel<LegendServerRemindRequest> request);

    @POST(h.f72372o2)
    ResponseModel<Boolean> c0(@Body RequestModel<VideoAdWatchLogRequest> request);

    @POST("/v7/game/hot_game/list")
    ResponseModel<List<CommonGameInfoBean>> d(@Body RequestModel<RequestSimulatorRecomGamesArgs> request);

    @POST("/v7/bbs/post/list")
    ResponseModel<List<BbsListBean>> d0(@Body RequestModel<RequestBbsListArgs> request);

    @POST("/v7/simulator/game/achievement_updates_v2")
    ResponseModel<SimulatorMomentBean> e(@Body RequestModel<RequestSimulatorMomentListArgs> request);

    @POST("/v7/game/gameInfo")
    ResponseModel<GamedetialModleFourBean> e0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/gameSurface")
    ResponseModel<GameMainV4DataBean> f(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/downloadInfo")
    ResponseModel<QueryDownloadInfoResponseData> f0(@Body RequestModel<QueryDownloadInfoRequestArgs> request);

    @POST("/v1/information/comment/add")
    ResponseModel g(@Body RequestModel<AddGameInformationCommentArgs> request);

    @POST("/v10/game/cloud_gaming/queue_ad_v2")
    ResponseModel<QueueAdBean> g0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/mini_h5_game/list")
    ResponseModel<H5GameDataBean> h(@Body RequestModel<RequestMiniGameArgs> request);

    @POST("/v7/simulator/game/achievement/cancel_praise")
    ResponseModel<Boolean> h0(@Body RequestModel<RequestSimulatorMomentLikeArgs> request);

    @POST("/v7/search/pd/gameSearchList")
    ResponseModel<SearchGameListBean> i(@Body RequestModel<RequestSearchGameArgs> request);

    @POST("/v7/bbs/resource/dispraise")
    ResponseModel<Boolean> i0(@Body RequestModel<RequestBbsDispraiseArgs> request);

    @POST("/v7/game_detail/activity/list")
    ResponseModel<NoticeListData> j(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/search_user_custom_game_tag")
    ResponseModel<List<String>> j0(@Body RequestModel<RequestSearchUserCustomGameTag> request);

    @POST("/v7/game/stand_alone/cloud_archive_local_path")
    ResponseModel<ArchievePathMultiBean> k(@Body RequestModel<ArchievePathMultiArgs> request);

    @POST("/v5/game/standAloneStartUpPanel")
    ResponseModel<ModGameDetailBean> k0(@Body RequestModel<RequestModGameArgs> request);

    @POST("/v7/game_detail/similar_rec/list")
    ResponseModel<List<CollectionBeanSub>> l(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/endgame/game_type/list")
    ResponseModel<EndGameListBean> l0(@Body RequestModel<RequestEndGameTypeArgs> request);

    @POST("/v7/uninstall/app/index")
    ResponseModel<UninstallGuessLikeBean> m(@Body RequestModel<UninstallGuessLikeArgs> request);

    @POST("/v7/game/endgame/boos/list")
    ResponseModel<List<BossBean>> m0(@Body RequestModel<RequestBossListArgs> request);

    @POST("/v9/game/gameInfo")
    ResponseModel<GameDetailDataBean> n(@Body RequestModel<GameDetailRequest> request);

    @POST("/v7/game/add_user_custom_game_tag")
    ResponseModel<ListUserCustomGameTagBean> n0(@Body RequestModel<RequestAddUserCustomGameTag> request);

    @POST("/v7/game/endgame/common/config")
    ResponseModel<GameMainV4DataBean.EndGameConfigBean> o(@Body RequestModel<RequestEndGameListArgs> requestModel);

    @POST("/v7/uninstall/game/index")
    ResponseModel<UninstallGuessLikeBean> o0(@Body RequestModel<UninstallGuessLikeArgs> request);

    @POST("/v7/game/version")
    ResponseModel<CheckGameVersionResponseData> p(@Body RequestModel<CheckGameVersionRequestArgs> request);

    @POST("/v8/search/search_sp_zone_list")
    ResponseModel<SearchGameListBean> p0(@Body RequestModel<RequestSearchGameArgs> request);

    @POST("/v7/game/delete_user_custom_tag")
    ResponseModel q(@Body RequestModel<RequestDeleteUserCustomTag> request);

    @POST("/v7/bbs/post/reply/detail_list")
    ResponseModel<List<BbsCommentListBean>> q0(@Body RequestModel<RequestBbsCommentListArgs> request);

    @POST("/v7/game/feedback/list")
    ResponseModel<List<EndGameReportTypeBean>> r(@Body RequestModel<RequestEndGameReportReasonArgs> request);

    @POST(h.f72327c1)
    ResultMainBean<List<SearchDataBean>> r0(@Body CommonRequestBean<AppDataBackupBean> requestInterface);

    @POST(h.f72368n2)
    ResponseModel<VideoAdCfgBean> s(@Body RequestModel<VideoAdCfgRequestArgs> request);

    @POST("/v7/minigame/sdk_ad_cfg")
    ResponseModel<MiniGameSdkDtoResponseResponseData> s0(@Body RequestModel<MiniGameSdkDtoRequestArgs> request);

    @POST("/v7/mini_game/list")
    ResponseModel<List<CommonGameInfoBean>> t(@Body RequestModel<RequestMiniGameArgs> request);

    @POST("/game/private/domain/info")
    ResponseModel<DomainInfoBean> t0(@Body RequestModel<RequestDomainInfoArgs> request);

    @POST("/v7/bbs/post/comment/list")
    ResponseModel<List<BbsCommentListBean>> u(@Body RequestModel<RequestBbsCommentListArgs> request);

    @POST("/v7/game/feedback_detail")
    ResponseModel<MessageDetailFeedBackBean> u0(@Body RequestModel<MessageDetailFeedBackArgs> request);

    @POST("/v7/favorites/game_list")
    ResponseModel<FavoriteGameListBean> v(@Body RequestModel<FavoriteGameListArgs> request);

    @POST("/v10/game/good_game_express")
    ResponseModel<GameExpressResultData> v0(@Body RequestModel<GameExpressRequest> request);

    @POST("/v7/game_detail/ranking/list")
    ResponseModel<List<CollectionBeanSub>> w(@Body RequestModel<RequestRankingListArgs> request);

    @POST("/v7/game/feedback_reply")
    ResponseModel<Boolean> w0(@Body RequestModel<MessageDetailFeedBackArgs> request);

    @POST("/v7_2/search/gameSearchList")
    ResponseModel<SearchGameListBean> x(@Body RequestModel<RequestSearchGameArgs> request);

    @POST("/v7/game/list_user_custom_game_tag")
    ResponseModel<ListUserCustomGameTagBean> x0(@Body RequestModel<RequestListUserCustomGameTagArgs> request);

    @POST("/v10/game/legend_zone/cancel_server_remind")
    ResponseModel<LegendServerRemindResult> y(@Body RequestModel<LegendServerRemindRequest> request);

    @POST("/v7/game/achievement/all_achievement")
    ResponseModel<SimulatorAllAchievementBean> y0(@Body RequestModel<RequestSimulatorAchievementListArgs> request);

    @POST("/v10/game/net_game_zone")
    ResponseModel<NetGameZoneResultData> z(@Body RequestModel<NetGameZoneRequest> request);

    @POST("/v5/game/mod_game_feedback")
    ResponseModel<ModFeedbackBean> z0(@Body RequestModel<RequestModFeedbackArgs> request);
}
