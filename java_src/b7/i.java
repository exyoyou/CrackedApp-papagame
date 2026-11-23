package b7;

import com.join.kotlin.discount.model.bean.GameDetailDataBean;
import com.join.kotlin.discount.model.request.GameDetailRequest;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.coupon.CouponListMainData;
import com.join.kotlin.ui.coupon.CouponRequest;
import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.kotlin.ui.coupon.ServerListData;
import com.join.kotlin.ui.findgame.data.CategoryListMain;
import com.join.kotlin.ui.findgame.data.CategoryRequest;
import com.join.kotlin.ui.findgame.data.EverdayNewResultData;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.FindClassifyResultData;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressResultData;
import com.join.kotlin.ui.gameexpress.model.request.GameExpressRequest;
import com.join.kotlin.ui.hmcloud.model.QueueAdBean;
import com.join.kotlin.ui.legendgame.data.LegendServerRemindRequest;
import com.join.kotlin.ui.legendgame.data.LegendServerRemindResult;
import com.join.kotlin.ui.legendgame.data.LegendZoneRequest;
import com.join.kotlin.ui.legendgame.data.LegendZoneResultData;
import com.join.kotlin.ui.netgame.data.NetGameZoneRequest;
import com.join.kotlin.ui.netgame.data.NetGameZoneResultData;
import com.join.kotlin.ui.userrecom.UserRecomRequestArgs;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.mygame.data.RecommendGameListBean;
import com.join.mgps.activity.recomend.RecommendDataBean;
import com.join.mgps.activity.search.SearchAutoData;
import com.join.mgps.activity.search.SearchAutoDataV1;
import com.join.mgps.activity.search.SearchIndexData;
import com.join.mgps.activity.vipzone.bean.LuckAddressrequest;
import com.join.mgps.activity.vipzone.bean.LuckHistoryResult;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
import com.join.mgps.activity.vipzone.bean.SpecialZoneResultbean;
import com.join.mgps.activity.vipzone.bean.SpecialgamelistRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterResultData;
import com.join.mgps.dto.AddGameInformationCommentArgs;
import com.join.mgps.dto.AppDataBackupBean;
import com.join.mgps.dto.ArchievePathMultiArgs;
import com.join.mgps.dto.ArchievePathMultiBean;
import com.join.mgps.dto.ArchiveDataAddPd;
import com.join.mgps.dto.BbsCommentListBean;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.BbsListBean;
import com.join.mgps.dto.BbsTagListBean;
import com.join.mgps.dto.BossBean;
import com.join.mgps.dto.CfgInfoRequestArgs;
import com.join.mgps.dto.CheckGameVersionRequestArgs;
import com.join.mgps.dto.CheckGameVersionResponseData;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionModuleSevenArgs;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.dto.CommonAdBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ConfigData;
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
import com.join.mgps.dto.FirstScreenAdDtoData;
import com.join.mgps.dto.GameBbsPostListBean;
import com.join.mgps.dto.GameBespeakBean;
import com.join.mgps.dto.GameInformationCommentPraiseArgs;
import com.join.mgps.dto.GameInformationCommentRequestV2;
import com.join.mgps.dto.GameMD5ResultInfo;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.GameMd5Data;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamelistRankingmainbean;
import com.join.mgps.dto.H5GameDataBean;
import com.join.mgps.dto.InformationCommentBackV2;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.MessageDetailFeedBackArgs;
import com.join.mgps.dto.MessageDetailFeedBackBean;
import com.join.mgps.dto.MiniGameSdkDtoRequestArgs;
import com.join.mgps.dto.MiniGameSdkDtoResponseResponseData;
import com.join.mgps.dto.ModFeedbackBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.ModGameRecommendAdBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PAPAHomeBeanV6;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.PapaHomeBeanV9;
import com.join.mgps.dto.PapaHomeCheckNewDataBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.QueryDownloadInfoResponseData;
import com.join.mgps.dto.RankingMainDataBean;
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
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestMiniGameArgs;
import com.join.mgps.dto.RequestModFeedbackArgs;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModGameRecommendAdArgs;
import com.join.mgps.dto.RequestModGameTagArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestOnlineCouponArgs;
import com.join.mgps.dto.RequestRankingListArgs;
import com.join.mgps.dto.RequestSearchGameArgs;
import com.join.mgps.dto.RequestSearchUserCustomGameTag;
import com.join.mgps.dto.RequestSimulatorAchievementListArgs;
import com.join.mgps.dto.RequestSimulatorMomentLikeArgs;
import com.join.mgps.dto.RequestSimulatorMomentListArgs;
import com.join.mgps.dto.RequestSimulatorRecomGamesArgs;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchDataBean;
import com.join.mgps.dto.SearchGameListBean;
import com.join.mgps.dto.SimulatorAchievementBean;
import com.join.mgps.dto.SimulatorAllAchievementBean;
import com.join.mgps.dto.SimulatorExitPlayRequestArgs;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.join.mgps.dto.SimulatorMomentBean;
import com.join.mgps.dto.SimulatorRecomBean;
import com.join.mgps.dto.UninstallAppReasonBean;
import com.join.mgps.dto.UninstallAppReasonSubmitArgs;
import com.join.mgps.dto.UninstallGuessLikeArgs;
import com.join.mgps.dto.UninstallGuessLikeBean;
import com.join.mgps.dto.UninstallOnlineGameArgs;
import com.join.mgps.dto.UninstallOnlineGameBean;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.dto.UserGameListBean;
import com.join.mgps.dto.VideoAdCfgBean;
import com.join.mgps.dto.VideoAdCfgRequestArgs;
import com.join.mgps.dto.VideoAdWatchLogRequest;
import com.join.mgps.dto.hmcloud.CloudGamingCfgInfo;
import com.join.mgps.dto.hmcloud.RequestGameCfgInfoArgs;
import com.papa91.common.RealNameCheckInfo;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface i {
    @POST("/v7/game/feedback/create")
    Call<ResponseModel> A(@Body RequestModel<RequestEndGameReportReasonArgs> request);

    @POST("/v7/game/achievement/detail")
    Call<ResponseModel<SimulatorAchievementBean>> A0(@Body RequestModel<RequestSimulatorAchievementListArgs> request);

    @POST("/v7/home/recommend/set_state")
    Call<ResponseModel<PapaHomeCheckNewDataBean>> A1(@Body RequestModel<RequestOnlineCouponArgs> request);

    @POST("/v7/game/endgame/main/list")
    Call<ResponseModel<List<EndGameBean>>> B(@Body RequestModel<RequestEndGameListArgs> request);

    @POST("/v7/bbs/post/detail")
    Call<ResponseModel<BbsDetailBean>> B0(@Body RequestModel<RequestBbsDetailArgs> request);

    @POST("/v5/search/collectedGameSearchList")
    Call<ResponseModel<SearchGameListBean>> B1(@Body RequestModel<RequestKeywordArgs> requestBeanInterface);

    @POST("/v6/app/recommendSetup")
    Call<ResponseModel<RecommendDataBean>> C(@Body RequestModel<RecommendArgs> request);

    @POST("/v1/information/comment/list")
    Call<ResponseModel<InformationCommentBackV2>> C0(@Body RequestModel<GameInformationCommentRequestV2> request);

    @POST("/v6/app/firstScreenAdvert")
    Call<ResponseModel<FirstScreenAdDtoData>> C1(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v1/information/comment/praise")
    Call<ResponseModel> D(@Body RequestModel<GameInformationCommentPraiseArgs> request);

    @POST("/v7/game/endgame/ad")
    Call<ResponseModel<List<CommonGameInfoBean>>> D0(@Body RequestModel<RequestEndGameAdArgs> request);

    @POST("/v7/game/downloadRecommend")
    Call<ResponseModel<List<CommonGameInfoBean>>> D1(@Body RequestModel<QueryDownloadInfoRequestArgs> request);

    @POST("/v7/game/endgame/create")
    Call<ResponseModel<Boolean>> E(@Body RequestModel<RequestCreateEndGameArgs> request);

    @POST("/v7/home/discover/config")
    Call<ResponseModel<DiscoveryBannerBean>> E0(@Body RequestModel<RequestInfoArgs> request);

    @POST("/v6/game/cloudArchive/reportDownload")
    Call<ResponseModel> E1(@Body RequestModel<ArchiveArgs> request);

    @POST("/v7/game/endgame/main/detail")
    Call<ResponseModel<EndGameDetailBean>> F(@Body RequestModel<RequestEndGameDetailArgs> request);

    @POST("/v7/bbs/post/reply")
    Call<ResponseModel<Boolean>> F0(@Body RequestModel<RequestBbsReplyArgs> request);

    @POST("/v7/ranking/game_rank")
    Call<ResponseModel<RankingMainDataBean>> F1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/favorites/search/game_list")
    Call<ResponseModel<FavoriteGameListBean>> G(@Body RequestModel<FavoriteGameListArgs> request);

    @POST("/v7/game/unbespeak")
    Call<ResponseModel<GameBespeakBean>> G0(@Body RequestModel<RequestGameBespeakArgs> request);

    @POST("/v6/game/cloudArchive/communityList")
    Call<ResponseModel<List<ArchiveData>>> G1(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/uninstall/app/reason")
    Call<ResponseModel<UninstallAppReasonBean>> H(@Body RequestModel request);

    @POST("/v7/game/endgame/challenge/url")
    Call<ResponseModel> H0(@Body RequestModel<EndGameRecordArgs> request);

    @POST("/v6/game/activity/list")
    Call<ResponseModel<NoticeListData>> H1(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/gameSurface/recGame")
    Call<ResponseModel<List<SimulatorRecomBean>>> I(@Body RequestModel<RequestSimulatorRecomGamesArgs> request);

    @POST("/v7/simulator/game/achievement/praise")
    Call<ResponseModel<Boolean>> I0(@Body RequestModel<RequestSimulatorMomentLikeArgs> request);

    @POST("/v5/special_game_board/every_day_luck_draw_result")
    Call<ResponseModel<PrizeBean>> I1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/uninstall/app/reason_submit")
    Call<ResponseModel> J(@Body RequestModel<UninstallAppReasonSubmitArgs> request);

    @POST("/v7/game/gameSurface")
    Call<ResponseModel<GameMainV4DataBean>> J0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v5/special_game_board/every_day_luck_draw_record")
    Call<ResponseModel<LuckHistoryResult>> J1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/bbs/resource/praise")
    Call<ResponseModel<Boolean>> K(@Body RequestModel<RequestBbsPraiseArgs> request);

    @POST("/v7/advert/generalAd")
    Call<ResponseModel<List<CommonAdBean>>> K0(@Body RequestModel<RequestCommonAdArgs> request);

    @POST("/v4/game/myGameRecommend")
    Call<ResponseModel<DataGameListBean>> K1(@Body RequestModel<QueryDownloadInfoRequestArgs> request);

    @POST("/v10/game/legend_zone")
    Call<ResponseModel<LegendZoneResultData>> L(@Body RequestModel<LegendZoneRequest> request);

    @POST("/v7/bbs/post/reply/list")
    Call<ResponseModel<List<BbsCommentListBean>>> L0(@Body RequestModel<RequestBbsCommentListArgs> request);

    @POST("/v5/special_game_board/every_day_luck_draw_address")
    Call<ResponseModel<PrizeBean>> L1(@Body RequestModel<LuckAddressrequest> request);

    @POST("/v7/game/delete_user_custom_game_tag")
    Call<ResponseModel> M(@Body RequestModel<RequestDeleteUserCustomGameTag> request);

    @POST("/v6/configure/cfg_info")
    Call<ResponseModel<ConfigData>> M0(@Body RequestModel<CfgInfoRequestArgs> request);

    @POST("/v6/game/cloudArchive/updateReleased")
    Call<ResponseModel> M1(@Body RequestModel<ArchiveArgs> request);

    @POST("/v8/subject/template/index")
    Call<ResponseModel<CollectionModuleSevenBean>> N(@Body RequestModel<CollectionModuleSevenArgs> request);

    @POST("/v6/game/cloudArchive/releasedList")
    Call<ResponseModel<List<ArchiveData>>> N0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v6/game/old/gameInfo")
    Call<ResponseModel<CollectionBeanSub>> N1(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/cloud_game/top_game")
    Call<ResponseModel<H5GameDataBean>> O(@Body RequestModel<RequestMiniGameArgs> request);

    @POST("/v5/special_game_board/ranking_game_list")
    Call<ResponseModel<List<CollectionBeanSub>>> O0(@Body RequestModel<SpecialgamelistRequestBean> request);

    @POST("/v6/game/game_type")
    Call<ResponseModel<FindChoiceResultData>> O1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game/bespeak")
    Call<ResponseModel<GameBespeakBean>> P(@Body RequestModel<RequestGameBespeakArgs> request);

    @POST("/v6/game/cloudArchive/communityListAddPd")
    Call<ResponseModel<ArchiveDataAddPd>> P0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v6/game/old/gameInfo")
    Call<ResponseModel<GamedetialModleFourBean>> P1(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v5/game/mod_question_collect")
    Call<ResponseModel<ModFeedbackBean>> Q(@Body RequestModel<RequestModFeedbackArgs> request);

    @POST("/v5/special_game_board/index")
    Call<ResponseModel<SpecialZoneResultbean>> Q0(@Body RequestModel<VipCenterRequestBean> request);

    @POST("/v7/game/install")
    Call<ResponseModel<UninstallOnlineGameBean>> R(@Body RequestModel<UninstallOnlineGameArgs> request);

    @POST("/v6/game/cloudArchive/delReleased")
    Call<ResponseModel> R0(@Body RequestModel<ArchiveArgs> request);

    @POST("/v7/game/endgame/game/list")
    Call<ResponseModel<EndGameNameBean>> S(@Body RequestModel<RequestEndGameNameListArgs> request);

    @POST("/v6/game/openserver/list")
    Call<ResponseModel<ServerListData>> S0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/openserver/list")
    Call<ResponseModel<ServerListData>> T(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/simulatorIndex/getInfo")
    Call<ResponseModel<SimulatorFastEntryBean>> T0(@Body RequestModel<RequestOnlineCouponArgs> request);

    @POST("/v5/game/simulatorExitPlayPanel")
    Call<ResponseModel<SimulatorExitPlayResponseData>> U(@Body RequestModel<SimulatorExitPlayRequestArgs> request);

    @POST("/v7/home/game/recommend")
    Call<ResponseModel<List<CollectionBeanSub>>> U0(@Body RequestModel<UserRecomRequestArgs> request);

    @POST("/v10/discover/index")
    Call<ResponseModel<DiscoveryHeaderBean>> V(@Body RequestModel<DiscoveryHeaderArgs> request);

    @POST("/v6/ranking/game_favorites_rank")
    Call<ResponseModel<GamelistRankingmainbean>> V0(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game/feedback_user_custom_tag")
    Call<ResponseModel> W(@Body RequestModel<RequestFeedbackUserCustomTag> request);

    @POST("/v6/game/cloudArchive/delDownloaded")
    Call<ResponseModel> W0(@Body RequestModel<ArchiveArgs> request);

    @POST("/v10/discover/click_menu")
    Call<ResponseModel> X(@Body RequestModel<DiscoveryHeaderMenuClickArgs> request);

    @POST("/v4/game/gameDownloadDetail")
    Call<ResponseModel<DataGameListBean>> X0(@Body RequestModel<QueryDownloadInfoRequestArgs> request);

    @POST("/v7/bbs/post/recommend")
    Call<ResponseModel<GameBbsPostListBean>> Y(@Body RequestModel<RequestBbsRecommendArgs> request);

    @POST("/v9/realName/auth/check")
    Call<ResponseModel<RealNameCheckInfo>> Y0(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game/endgame/user_game/list")
    Call<ResponseModel<List<UserGameListBean>>> Z(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v8/search/search_auto")
    Call<ResponseModel<SearchAutoDataV1>> Z0(@Body RequestModel<RequestKeywordArgs> requestBeanInterface);

    @POST("/v10/game/cloud_gaming/cfg_info")
    Call<ResponseModel<CloudGamingCfgInfo>> a(@Body RequestModel<RequestGameCfgInfoArgs> request);

    @POST("/v7/game/endgame/rangking/list")
    Call<ResponseModel<List<EndGameDetailBean.RankingListBean>>> a0(@Body RequestModel<RequestEndGameDetailArgs> request);

    @POST("/v10/personal_center/index")
    Call<ResponseModel<UserCenterBean>> a1(@Body RequestModel<RequestUserCenterArgs> requestInterfac);

    @POST("/v7/bbs/tag/list")
    Call<ResponseModel<List<BbsTagListBean>>> b(@Body RequestModel<RequestBbsTagListArgs> request);

    @POST(com.join.mgps.rpc.h.f72325b2)
    Call<ResponseModel<List<CollectionBeanSub>>> b0(@Body RequestModel<RequestGameIdArgs> requestInterface);

    @POST("/v5/special_game_board/every_day_luck_draw")
    Call<ResponseModel<VipCenterResultData>> b1(@Body RequestModel<VipCenterRequestBean> request);

    @POST("/v10/game/legend_zone/server_remind")
    Call<ResponseModel<LegendServerRemindResult>> c(@Body RequestModel<LegendServerRemindRequest> request);

    @POST(com.join.mgps.rpc.h.f72372o2)
    Call<ResponseModel<Boolean>> c0(@Body RequestModel<VideoAdWatchLogRequest> request);

    @POST("/v4/game/gameDownloadDetail")
    Call<ResponseModel<DataGameListBean>> c1(@Body RequestModel<QueryDownloadInfoRequestArgs> request);

    @POST("/v7/game/hot_game/list")
    Call<ResponseModel<List<CommonGameInfoBean>>> d(@Body RequestModel<RequestSimulatorRecomGamesArgs> request);

    @POST("/v7/bbs/post/list")
    Call<ResponseModel<List<BbsListBean>>> d0(@Body RequestModel<RequestBbsListArgs> request);

    @POST("/v6/game/coupon/list")
    Call<ResponseModel<CouponListMainData>> d1(@Body RequestModel<CouponRequest> request);

    @POST("/v7/simulator/game/achievement_updates_v2")
    Call<ResponseModel<SimulatorMomentBean>> e(@Body RequestModel<RequestSimulatorMomentListArgs> request);

    @POST("/v7/game/gameInfo")
    Call<ResponseModel<GamedetialModleFourBean>> e0(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/home/recommend/state")
    Call<ResponseModel<PapaHomeCheckNewDataBean>> e1(@Body RequestModel<RequestOnlineCouponArgs> request);

    @POST("/v7/game/gameSurface")
    Call<ResponseModel<GameMainV4DataBean>> f(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/downloadInfo")
    Call<ResponseModel<QueryDownloadInfoResponseData>> f0(@Body RequestModel<QueryDownloadInfoRequestArgs> request);

    @POST("/v7/non_online/user/transform")
    Call<ResponseModel<OnlineCouponConfigBean>> f1(@Body RequestModel<RequestOnlineCouponArgs> request);

    @POST("/v1/information/comment/add")
    Call<ResponseModel> g(@Body RequestModel<AddGameInformationCommentArgs> request);

    @POST("/v10/game/cloud_gaming/queue_ad_v2")
    Call<ResponseModel<QueueAdBean>> g0(@Body RequestModel<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72342h0)
    Call<ResponseModel<PAPAHomeBeanV6>> g1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/mini_h5_game/list")
    Call<ResponseModel<H5GameDataBean>> h(@Body RequestModel<RequestMiniGameArgs> request);

    @POST("/v7/simulator/game/achievement/cancel_praise")
    Call<ResponseModel<Boolean>> h0(@Body RequestModel<RequestSimulatorMomentLikeArgs> request);

    @POST("/v6/game/cloudArchive/communityList/v2")
    Call<ResponseModel<List<ArchiveData>>> h1(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/search/pd/gameSearchList")
    Call<ResponseModel<SearchGameListBean>> i(@Body RequestModel<RequestSearchGameArgs> request);

    @POST("/v7/bbs/resource/dispraise")
    Call<ResponseModel<Boolean>> i0(@Body RequestModel<RequestBbsDispraiseArgs> request);

    @POST("/v7/home/game_choice_ness")
    Call<ResponseModel<FindChoiceResultData>> i1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game_detail/activity/list")
    Call<ResponseModel<NoticeListData>> j(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/search_user_custom_game_tag")
    Call<ResponseModel<List<String>>> j0(@Body RequestModel<RequestSearchUserCustomGameTag> request);

    @POST("/v6_4/ranking/game_rank")
    Call<ResponseModel<RankingMainDataBean>> j1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game/stand_alone/cloud_archive_local_path")
    Call<ResponseModel<ArchievePathMultiBean>> k(@Body RequestModel<ArchievePathMultiArgs> request);

    @POST("/v6/game/cloudArchive/standAloneStartUpPanel")
    Call<ResponseModel<ModGameDetailBean>> k0(@Body RequestModel<RequestModGameArgs> request);

    @POST("/v7/game/stand_alone/startUpPanelRecAd")
    Call<ResponseModel<ModGameRecommendAdBean>> k1(@Body RequestModel<RequestModGameRecommendAdArgs> request);

    @POST("/v7/game_detail/similar_rec/list")
    Call<ResponseModel<List<CollectionBeanSub>>> l(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game/endgame/game_type/list")
    Call<ResponseModel<EndGameListBean>> l0(@Body RequestModel<RequestEndGameTypeArgs> request);

    @POST("/v7/search/gameSearchIndex")
    Call<ResponseModel<SearchIndexData>> l1(@Body RequestModel<RequestUidtagidTagdes> requestBeanInterface);

    @POST("/v7/uninstall/app/index")
    Call<ResponseModel<UninstallGuessLikeBean>> m(@Body RequestModel<UninstallGuessLikeArgs> request);

    @POST("/v7/game/endgame/boos/list")
    Call<ResponseModel<List<BossBean>>> m0(@Body RequestModel<RequestBossListArgs> request);

    @POST("/v5/search/gameSearchAuto")
    Call<ResponseModel<SearchAutoData>> m1(@Body RequestModel<RequestKeywordArgs> requestBeanInterface);

    @POST("/v9/game/gameInfo")
    Call<ResponseModel<GameDetailDataBean>> n(@Body RequestModel<GameDetailRequest> request);

    @POST("/v7/game/add_user_custom_game_tag")
    Call<ResponseModel<ListUserCustomGameTagBean>> n0(@Body RequestModel<RequestAddUserCustomGameTag> request);

    @POST("/v9/home/home_page")
    Call<ResponseModel<PapaHomeBeanV9>> n1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game/endgame/common/config")
    Call<ResponseModel<GameMainV4DataBean.EndGameConfigBean>> o(@Body RequestModel<RequestEndGameListArgs> requestModel);

    @POST("/v7/uninstall/game/index")
    Call<ResponseModel<UninstallGuessLikeBean>> o0(@Body RequestModel<UninstallGuessLikeArgs> request);

    @POST("/v7/home/the_new")
    Call<ResponseModel<EverdayNewResultData>> o1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game/version")
    Call<ResponseModel<CheckGameVersionResponseData>> p(@Body RequestModel<CheckGameVersionRequestArgs> request);

    @POST("/v8/search/search_sp_zone_list")
    Call<ResponseModel<SearchGameListBean>> p0(@Body RequestModel<RequestSearchGameArgs> request);

    @POST("/v7/home/home_page")
    Call<ResponseModel<PAPAHomeBeanV7>> p1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/game/delete_user_custom_tag")
    Call<ResponseModel> q(@Body RequestModel<RequestDeleteUserCustomTag> request);

    @POST("/v7/bbs/post/reply/detail_list")
    Call<ResponseModel<List<BbsCommentListBean>>> q0(@Body RequestModel<RequestBbsCommentListArgs> request);

    @POST("/v6/game/take/coupon")
    Call<ResponseModel> q1(@Body RequestModel<CouponRequest> request);

    @POST("/v7/game/feedback/list")
    Call<ResponseModel<List<EndGameReportTypeBean>>> r(@Body RequestModel<RequestEndGameReportReasonArgs> request);

    @POST(com.join.mgps.rpc.h.f72327c1)
    Call<ResultMainBean<List<SearchDataBean>>> r0(@Body CommonRequestBean<AppDataBackupBean> requestInterface);

    @POST("/v4/game/fileMd5State")
    Call<ResponseModel<GameMD5ResultInfo>> r1(@Body RequestModel<GameMd5Data> request);

    @POST(com.join.mgps.rpc.h.f72368n2)
    Call<ResponseModel<VideoAdCfgBean>> s(@Body RequestModel<VideoAdCfgRequestArgs> request);

    @POST("/v7/minigame/sdk_ad_cfg")
    Call<ResponseModel<MiniGameSdkDtoResponseResponseData>> s0(@Body RequestModel<MiniGameSdkDtoRequestArgs> request);

    @POST("/v6/game/cloudArchive/comment")
    Call<ResponseModel> s1(@Body RequestModel<ArchiveArgs> request);

    @POST("/v7/mini_game/list")
    Call<ResponseModel<List<CommonGameInfoBean>>> t(@Body RequestModel<RequestMiniGameArgs> request);

    @POST("/game/private/domain/info")
    Call<ResponseModel<DomainInfoBean>> t0(@Body RequestModel<RequestDomainInfoArgs> request);

    @POST("/v6/game/cloudArchive/tagList")
    Call<ResponseModel<List<ModGameArchiveTagBean>>> t1(@Body RequestModel<RequestModGameTagArgs> request);

    @POST("/v7/bbs/post/comment/list")
    Call<ResponseModel<List<BbsCommentListBean>>> u(@Body RequestModel<RequestBbsCommentListArgs> request);

    @POST("/v7/game/feedback_detail")
    Call<ResponseModel<MessageDetailFeedBackBean>> u0(@Body RequestModel<MessageDetailFeedBackArgs> request);

    @POST("/v9/game/game_type")
    Call<ResponseModel<FindClassifyResultData>> u1(@Body RequestModel<LuckHistoryrequest> request);

    @POST("/v7/favorites/game_list")
    Call<ResponseModel<FavoriteGameListBean>> v(@Body RequestModel<FavoriteGameListArgs> request);

    @POST("/v10/game/good_game_express")
    Call<ResponseModel<GameExpressResultData>> v0(@Body RequestModel<GameExpressRequest> request);

    @POST("/v6/game/cloudArchive/downloadedList")
    Call<ResponseModel<List<ArchiveData>>> v1(@Body RequestModel<RequestGameIdArgs> request);

    @POST("/v7/game_detail/ranking/list")
    Call<ResponseModel<List<CollectionBeanSub>>> w(@Body RequestModel<RequestRankingListArgs> request);

    @POST("/v7/game/feedback_reply")
    Call<ResponseModel<Boolean>> w0(@Body RequestModel<MessageDetailFeedBackArgs> request);

    @POST("/v6/game/cloudArchive/delComment")
    Call<ResponseModel> w1(@Body RequestModel<ArchiveArgs> request);

    @POST("/v7_2/search/gameSearchList")
    Call<ResponseModel<SearchGameListBean>> x(@Body RequestModel<RequestSearchGameArgs> request);

    @POST("/v7/game/list_user_custom_game_tag")
    Call<ResponseModel<ListUserCustomGameTagBean>> x0(@Body RequestModel<RequestListUserCustomGameTagArgs> request);

    @POST("/v7/game/myGameRecommend")
    Call<ResponseModel<RecommendGameListBean>> x1(@Body RequestModel<QueryDownloadInfoRequestArgs> request);

    @POST("/v10/game/legend_zone/cancel_server_remind")
    Call<ResponseModel<LegendServerRemindResult>> y(@Body RequestModel<LegendServerRemindRequest> request);

    @POST("/v7/game/achievement/all_achievement")
    Call<ResponseModel<SimulatorAllAchievementBean>> y0(@Body RequestModel<RequestSimulatorAchievementListArgs> request);

    @POST("/v6/game/game_type_game_list")
    Call<ResponseModel<CategoryListMain>> y1(@Body RequestModel<CategoryRequest> request);

    @POST("/v10/game/net_game_zone")
    Call<ResponseModel<NetGameZoneResultData>> z(@Body RequestModel<NetGameZoneRequest> request);

    @POST("/v5/game/mod_game_feedback")
    Call<ResponseModel<ModFeedbackBean>> z0(@Body RequestModel<RequestModFeedbackArgs> request);

    @POST("/v4/game/downloadRecommend")
    Call<ResponseModel<DataGameListBean>> z1(@Body RequestModel<QueryDownloadInfoRequestArgs> request);
}
