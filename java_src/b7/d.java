package b7;

import com.join.mgps.activity.login.LoginCfgsBean;
import com.join.mgps.activity.recomend.RecommendDataBean;
import com.join.mgps.activity.screenshot.ScreenShortListItemBean;
import com.join.mgps.activity.screenshot.ScreenshortTabBean;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.APKVersionRequestargs;
import com.join.mgps.dto.AllAppId;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ArenaAdData;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.BaiduAdDataMain;
import com.join.mgps.dto.BattlehallDatabean;
import com.join.mgps.dto.BootPageData;
import com.join.mgps.dto.BootPageRequestArgs;
import com.join.mgps.dto.CategoryBean;
import com.join.mgps.dto.CheckAppVersionBean;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.ClassifyBean;
import com.join.mgps.dto.ClassifyGameBean;
import com.join.mgps.dto.CollectionBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.CollectionDataBean;
import com.join.mgps.dto.CollectionModuleBean;
import com.join.mgps.dto.CommentSendMessageResultBean;
import com.join.mgps.dto.CommitContextDataBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.CommonRequestBeanInterface;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.DetailResultBeanV3;
import com.join.mgps.dto.DownDeductCoinResponse;
import com.join.mgps.dto.EverydayNewGameResponse;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.GameDiscoverMainBean;
import com.join.mgps.dto.GameDownInfo;
import com.join.mgps.dto.GameFactoryListBean;
import com.join.mgps.dto.GameHeadAd;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.GameInformationCommentRequest;
import com.join.mgps.dto.GameListAndHeadAdAndCollectionInfoBean;
import com.join.mgps.dto.GameListAndHeadAdBean;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.dto.GameMainSimulatorResponse;
import com.join.mgps.dto.GameMainV3DataBean;
import com.join.mgps.dto.GameOLDataBean;
import com.join.mgps.dto.GameOLFirstBean;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GameOLNoOpenTestBean;
import com.join.mgps.dto.GamePariseRequest;
import com.join.mgps.dto.GameReplyMessageListBean;
import com.join.mgps.dto.GameShareData;
import com.join.mgps.dto.GameSignleCompanyListbean;
import com.join.mgps.dto.GameSortBean;
import com.join.mgps.dto.GameSortRequestBean;
import com.join.mgps.dto.GameTopicBean;
import com.join.mgps.dto.GameVerByBg;
import com.join.mgps.dto.GameVerByBgRequestargs;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GamedetialMoreGiftData;
import com.join.mgps.dto.GamesurFaceMainBean;
import com.join.mgps.dto.GiftPackageArgs;
import com.join.mgps.dto.GiftPackageBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageInfoArgs;
import com.join.mgps.dto.GiftPackageInfoBean;
import com.join.mgps.dto.GiftPackageOperationArgs;
import com.join.mgps.dto.GiftPackageOperationBean;
import com.join.mgps.dto.HandShankAdBean;
import com.join.mgps.dto.HomeGameCarefullyBean;
import com.join.mgps.dto.IgnoreNoticeRequestArgs;
import com.join.mgps.dto.InformationCommentBack;
import com.join.mgps.dto.InformationMainBean;
import com.join.mgps.dto.InformationSendBack;
import com.join.mgps.dto.InformationSendRequestBean;
import com.join.mgps.dto.MatchBattleManagementBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.MustPlayData;
import com.join.mgps.dto.MustPlayNetDataBean;
import com.join.mgps.dto.PAPAHomeBean;
import com.join.mgps.dto.PAPAMainBean;
import com.join.mgps.dto.PariseBackData;
import com.join.mgps.dto.PariseRequest;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.PopupAdBean;
import com.join.mgps.dto.RankingDataBean;
import com.join.mgps.dto.RankingItemDataBean;
import com.join.mgps.dto.RecomCentrebean;
import com.join.mgps.dto.RecomDataAllBean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RecomRequestArgs;
import com.join.mgps.dto.RecomRequestBean;
import com.join.mgps.dto.RecomeWifiDatabean;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.RegisterRequestBean;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.RequestArenaRoomListArgs;
import com.join.mgps.dto.RequestBattlehallArgs;
import com.join.mgps.dto.RequestClassifyArgs;
import com.join.mgps.dto.RequestCollectionArgs;
import com.join.mgps.dto.RequestCommitArgs;
import com.join.mgps.dto.RequestCompanyNameArgs;
import com.join.mgps.dto.RequestDownloadCenterArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestGameShareTag;
import com.join.mgps.dto.RequestGoogleRankArgs;
import com.join.mgps.dto.RequestHandShankAdListArgs;
import com.join.mgps.dto.RequestInfoArgs;
import com.join.mgps.dto.RequestInfoIdArgs;
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestPnAndPcAndUidArgs;
import com.join.mgps.dto.RequestPnAndPcArgs;
import com.join.mgps.dto.RequestPnArgs;
import com.join.mgps.dto.RequestSNKGameArgs;
import com.join.mgps.dto.RequestScreenshortListArgs;
import com.join.mgps.dto.RequestSearchPageArgs;
import com.join.mgps.dto.RequestSiliencebean;
import com.join.mgps.dto.RequestSimulatorArgs;
import com.join.mgps.dto.RequestTypePn;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.RequestWarIndexArgs;
import com.join.mgps.dto.ResponseDownloadCenterAd;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultValbean;
import com.join.mgps.dto.RewardBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.SearchAppBean;
import com.join.mgps.dto.SearchAutoBean;
import com.join.mgps.dto.SearchGameFavoriteListBean;
import com.join.mgps.dto.SearchGameListBean;
import com.join.mgps.dto.SearchIntegratedBean;
import com.join.mgps.dto.SearchPageBean;
import com.join.mgps.dto.SearchPostsBean;
import com.join.mgps.dto.SearchRecommendBean;
import com.join.mgps.dto.SendAppinfoMainbean;
import com.join.mgps.dto.ServiceStateForMore;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SimulatorAreaDataBean;
import com.join.mgps.dto.SimulatorAreaRequest;
import com.join.mgps.dto.StandAloneListBean;
import com.join.mgps.dto.StatisticMainBean;
import com.join.mgps.dto.TodayWufunBean;
import com.join.mgps.dto.TodayWufunTopic;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.dto.WarIndexDataBean;
import com.join.mgps.dto.WarIndexResultMainBean;
import com.join.mgps.dto.WarModuleBean;
import com.join.mgps.dto.WufunMarketHomeBean;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface d {
    @POST(com.join.mgps.rpc.h.X1)
    Call<ResultMainBean<List<DetailResultBeanV3>>> A(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(com.join.mgps.rpc.h.f72358l0)
    Call<ResultMainBean<List<CollectionDataBean>>> A0(@Body CommonRequestBean<RequestSimulatorArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.f72344h2)
    Call<ResultMainBean<DownDeductCoinResponse>> A1(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(com.join.mgps.rpc.h.X1)
    Call<ResultMainBean<List<GamedetialModleFourBean>>> B(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72355k1)
    Call<ResultMainBean<List<GiftPackageDataInfoBean>>> B0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.f72356k2)
    Call<ResultMainBean<List<GameHeadAd>>> B1(@Body CommonRequestBean request);

    @POST("/user/personal_center_prompt_title")
    Call<ResultMainBean<List<ResultValbean>>> C(@Body CommonRequestBean<RequestUserCenterArgs> requestInterfac);

    @POST(com.join.mgps.rpc.h.f72354k0)
    Call<ResultMainBean<EverydayNewGameResponse>> C0(@Body CommonRequestBean<RequestSimulatorArgs> requestInterface);

    @POST("/advertisement/down_load_center_ad")
    Call<ResultMainBean<List<RecomDatabean>>> C1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.F1)
    Call<ResultMainBean<GamedetialMoreGiftData>> D(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.M1)
    Call<ResultMainBean<List<GameTopicBean>>> D0(@Body CommonRequestBean<GameTopicBean> request);

    @POST(com.join.mgps.rpc.h.f72359l1)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> D1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.f72347i1)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> E(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.f72331d2)
    Call<ResultMainBean<List<CollectionBeanSub>>> E0(@Body CommonRequestBean<RequestCompanyNameArgs> requestInterface);

    @POST("/android/v4/search/integrated_game_list")
    Call<ResultMainBean<SearchGameListBean>> E1(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.W0)
    Call<ForumBannerBean.ForumBannerResponseBean> F(@Body ForumBannerBean.ForumBannerRequestBean requestBean);

    @POST(com.join.mgps.rpc.h.U1)
    Call<ResultMainBean<List<BootPageData>>> F0(@Body CommonRequestBean<BootPageRequestArgs> request);

    @POST("/ver/check_battle_plugin_ver_so")
    Call<ResultMainBean<List<ApkVersionbean>>> F1(@Body CommonRequestBean<APKVersionRequestargs> requestInterfac);

    @POST("/android/v2/message/replynoticemessagelist")
    Call<GameReplyMessageListBean> G(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.D1)
    Call<ResultMainBean<List<RecommendInfomationBean>>> G0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v4/search/integrated_list")
    Call<ResultMainBean<SearchIntegratedBean>> G1(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.S1)
    Call<ResultMainBean<List<String>>> H(@Body CommonRequestBean<IgnoreNoticeRequestArgs> requestInterface);

    @POST("/game/game_company_game_list")
    Call<ResultMainBean<GameFactoryListBean>> H0(@Body CommonRequestBean<Integer> requestInterfac);

    @POST("/android/v2/message/surplusunreadmessage")
    Call<MessageRedPointBean> H1(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.C1)
    Call<ResultMainBean<List<RewardBean>>> I(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> request);

    @POST(com.join.mgps.rpc.h.B0)
    Call<ResultMainBean<List<DetailResultBean>>> I0(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(com.join.mgps.rpc.h.f72370o0)
    Call<ResultMainBean<List<CommentSendMessageResultBean>>> I1(@Body CommonRequestBean<RegisterRequestBean> requestInterface);

    @POST(com.join.mgps.rpc.h.H0)
    Call<ResultMainBean<List<SearchPageBean>>> J(@Body CommonRequestBean<RequestSearchPageArgs> requestBeanInterface);

    @POST("/android/v3/scanning/setting")
    Call<ResultMainBean<SNKGameInfoBean>> J0(@Body CommonRequestBean request);

    @POST("/simulator/simulator_fba_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> J1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST("/advertisement/down_load_speed_tips_ad")
    Call<ResultMainBean<List<RecomDatabean>>> K(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72340g2)
    Call<ResultMainBean<PayGameDetialBean>> K0(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST("/android/v5/lobby/info")
    Call<ResultMainBean<ArenaAdData>> K1(@Body CommonRequestBean<CollectionCommentRequest> request);

    @POST("/game/gametypelistv2/indexv2")
    Call<ResultMainBean<ClassifyBean>> L(@Body CommonRequestBean<GameSortRequestBean> request);

    @POST(com.join.mgps.rpc.h.f72350j0)
    Call<ResultMainBean<List<CollectionDataBean>>> L0(@Body CommonRequestBean<RequestSimulatorArgs> requestInterface);

    @POST("/android/v4/real_name/config")
    Call<ResultMainBean<LoginCfgsBean>> L1(@Body CommonRequestBean<RequestUidtagidTagdes> request);

    @POST(com.join.mgps.rpc.h.f72335f0)
    Call<ResultMainBean<List<PAPAHomeBean>>> M(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.K1)
    Call<ResultMainBean> M0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.A1)
    Call<ResultMainBean<PopupAdBean>> M1(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> request);

    @POST("/largesingle/game_google_ranking")
    Call<ResultMainBean<List<AppBean>>> N(@Body CommonRequestBean<RequestGoogleRankArgs> requestInterfac);

    @POST(com.join.mgps.rpc.h.f72390u1)
    Call<GiftPackageOperationBean> N0(@Body CommonRequestBean<GiftPackageOperationArgs> request);

    @POST("/android/v5/game/watch_ad_log/add")
    Call<ResultMainBean<SearchPostsBean>> N1(@Body CommonRequestBean<RequestInfoArgs> request);

    @POST("/game_down_load/down_info")
    Call<ResultMainBean<GameDownInfo>> O(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.L1)
    Call<ResultMainBean<List<CollectionBeanSub>>> O0(@Body CommonRequestBean<RequestTypePn> request);

    @POST("/simulator/simulator_gba_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> O1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST(com.join.mgps.rpc.h.X0)
    Call<ResultMainBean<List<ForumBannerBean.ForumAreaBannerMessagesData>>> P(@Body ForumBannerBean.ForumBannerRequestBean requestBean);

    @POST("/android/v2/game/gamescreenshot/getTypeList")
    Call<ResultMainBean<List<ScreenshortTabBean>>> P0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/simulator/simulator_psp_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> P1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST(com.join.mgps.rpc.h.f72366n0)
    Call<ResultMainBean<List<ShowViewDataBean>>> Q(@Body CommonRequestBean<ArrayList> requestInterface);

    @POST(com.join.mgps.rpc.h.E1)
    Call<ResultMainBean<List<RecommendInfomationBean>>> Q0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/simulator/simulator_fc_index")
    Call<ResultMainBean<SimulatorAreaDataBean>> Q1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST(com.join.mgps.rpc.h.f72321a1)
    Call<GameDiscoverMainBean> R(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.R0)
    Call<ResultMainBean<InformationCommentBack>> R0(@Body CommonRequestBean<GameInformationCommentRequest> requestInterface);

    @POST(com.join.mgps.rpc.h.f72339g1)
    Call<RecomDataAllBean> S(@Body CommonRequestBean requestInterface);

    @POST(com.join.mgps.rpc.h.G0)
    Call<SearchAppBean> S0(@Body CommonRequestBean<RequestKeywordArgs> requestBeanInterface);

    @POST(com.join.mgps.rpc.h.f72384s1)
    Call<GiftPackageBean> T(@Body CommonRequestBean<GiftPackageArgs> request);

    @POST(com.join.mgps.rpc.h.f72348i2)
    Call<ResultMainBean<List<TodayWufunBean>>> T0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.B1)
    Call<ResultMainBean<List<VipPopData>>> U(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> request);

    @POST(com.join.mgps.rpc.h.T0)
    Call<ResultMainBean<List<PariseBackData>>> U0(@Body CommonRequestBean<PariseRequest> requestInterface);

    @POST(com.join.mgps.rpc.h.f72324b1)
    Call<GamesurFaceMainBean> V(@Body RecomRequestBean<RequestAppDetialArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.T1)
    Call<ResultMainBean<HandShankAdBean>> V0(@Body CommonRequestBean<RequestHandShankAdListArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.f72360l2)
    Call<ResultMainBean<List<StandAloneListBean>>> W(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.f72374p0)
    Call<ResultMainBean<List<CommentSendMessageResultBean>>> W0(@Body CommonRequestBean<SendAppinfoMainbean> requestInterface);

    @POST(com.join.mgps.rpc.h.f72332e0)
    Call<ResultMainBean<List<StatisticMainBean>>> X(@Body CommonRequestBeanInterface requestInterface);

    @POST(com.join.mgps.rpc.h.O1)
    Call<ResultMainBean<List<RecomDatabean>>> X0(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(com.join.mgps.rpc.h.W1)
    Call<ResultMainBean<List<GameMainDataBean>>> Y(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72346i0)
    Call<ResultMainBean<WufunMarketHomeBean>> Y0(@Body CommonRequestBean request);

    @POST("/android/v3/advertisement/downloadcenterad/index")
    Call<ResultMainBean<ResponseDownloadCenterAd>> Z(@Body CommonRequestBean<RequestDownloadCenterArgs> request);

    @POST(com.join.mgps.rpc.h.Y0)
    Call<ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean>> Z0(@Body ForumBannerBean.ForumBannerRequestBean requestBean);

    @POST("/v4/personal_center/index")
    ResultMainBean<UserCenterBean> a(@Body CommonRequestBean<RequestUserCenterArgs> requestInterfac);

    @POST(com.join.mgps.rpc.h.f72337f2)
    Call<ResultMainBean<CollectionBeanSub>> a0(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(com.join.mgps.rpc.h.N0)
    Call<ResultMainBean<InformationCommentBack>> a1(@Body CommonRequestBean<RequestCommitArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.f72336f1)
    Call<ResultMainBean<List<PariseBackData>>> b(@Body CommonRequestBean<GamePariseRequest> requestInterface);

    @POST(com.join.mgps.rpc.h.f72362m0)
    Call<ResultMainBean<List<CheckAppVersionBean>>> b0(@Body CommonRequestBean<AllAppId> request);

    @POST("/game/game_ver_by_pg")
    Call<ResultMainBean<GameVerByBg>> b1(@Body RecomRequestBean<GameVerByBgRequestargs> request);

    @POST(com.join.mgps.rpc.h.Z0)
    Call<ResultMainBean<List<MustPlayNetDataBean>>> c(@Body CommonRequestBeanInterface commonRequestBean);

    @POST(com.join.mgps.rpc.h.I0)
    Call<SearchRecommendBean> c0(@Body CommonRequestBean commonRequestBean);

    @POST(com.join.mgps.rpc.h.f72352j2)
    Call<ResultMainBean<List<TodayWufunTopic>>> c1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.Y1)
    Call<ResultMainBean> d(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v4/search/integrated_rand_game_favorites")
    Call<ResultMainBean<SearchPageBean>> d0(@Body CommonRequestBean<RequestSearchPageArgs> requestBeanInterface);

    @POST("/game/gametypesort/indexv2")
    Call<ResultMainBean<List<GameSortBean>>> d1(@Body CommonRequestBean<GameSortRequestBean> request);

    @POST(com.join.mgps.rpc.h.f72401y0)
    Call<WarIndexResultMainBean<List<WarIndexDataBean>>> e(@Body CommonRequestBean<RequestWarIndexArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.Q0)
    Call<ResultMainBean<CommitContextDataBean>> e0(@Body CommonRequestBean<InformationSendRequestBean> requestInterface);

    @POST(com.join.mgps.rpc.h.f72396w1)
    Call<ResultMainBean<BattlehallDatabean>> e1(@Body CommonRequestBean<RequestBattlehallArgs> request);

    @POST(com.join.mgps.rpc.h.f72371o1)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> f(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST("/android/v3/share/gamestartbootcommenttaglist")
    Call<ResultMainBean<GameShareData>> f0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72375p1)
    Call<ResultMainBean<GameSignleCompanyListbean>> f1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.J1)
    Call<ResultMainBean> g(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72367n1)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> g0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.D0)
    Call<ResultMainBean<List<CollectionBeanSub>>> g1(@Body CommonRequestBean<RequestClassifyArgs> requestBeanInterface);

    @POST("/battle/battle_room_game_list_cfg")
    Call<ResultMainBean<ArenaGameRoomListConfig>> h(@Body CommonRequestBean<RequestArenaRoomListArgs> requestInterfac);

    @POST(com.join.mgps.rpc.h.Z0)
    Call<ResultMainBean<MustPlayData>> h0(@Body CommonRequestBean<RecomRequestArgs> requestBean);

    @POST("/android/v2/game/gametypestate")
    Call<ResultMainBean<ClassfyTypeBean>> h1(@Body CommonRequestBean<ClassifyGameBean> request);

    @POST(com.join.mgps.rpc.h.Z1)
    Call<ResultMainBean<List<ResultValbean>>> i(@Body CommonRequestBean<RequestSiliencebean> request);

    @POST(com.join.mgps.rpc.h.R1)
    Call<ResultMainBean<List<PariseBackData>>> i0(@Body CommonRequestBean<PariseRequest> requestInterface);

    @POST(com.join.mgps.rpc.h.V0)
    Call<ResultMainBean<List<APKVersionMainBean>>> i1(@Body CommonRequestBean<APKVersionRequestargs> request);

    @POST(com.join.mgps.rpc.h.M0)
    Call<InformationMainBean> j(@Body CommonRequestBean<RequestPnArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.Q1)
    Call<ResultMainBean<InformationSendBack>> j0(@Body CommonRequestBean<InformationSendRequestBean> requestInterface);

    @POST(com.join.mgps.rpc.h.H1)
    Call<ResultMainBean> j1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v2/game/gamescreenshot/index")
    Call<ResultMainBean<List<ScreenShortListItemBean>>> k(@Body CommonRequestBean<RequestScreenshortListArgs> request);

    @POST(com.join.mgps.rpc.h.f72381r1)
    Call<SearchAppBean> k0(@Body CommonRequestBean requestBeanInterface);

    @POST(com.join.mgps.rpc.h.f72387t1)
    Call<GiftPackageInfoBean> k1(@Body CommonRequestBean<GiftPackageInfoArgs> request);

    @POST(com.join.mgps.rpc.h.f72343h1)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> l(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST("/android/v3/scanning/matching")
    Call<ResultMainBean<List<CollectionBeanSub>>> l0(@Body CommonRequestBean<RequestSNKGameArgs> request);

    @POST("/android/v3/community/tag")
    Call<ResultMainBean<String>> l1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72378q1)
    Call<ResultMainBean<List<RecomCentrebean>>> m(@Body CommonRequestBean<RequestPnArgs> request);

    @POST("/android/v3/share/gamestartbootcommentadd")
    Call<ResultMainBean<List<ResultValbean>>> m0(@Body CommonRequestBean<RequestGameShareTag> request);

    @POST("/simulator/simulator_play_game_surface_state")
    Call<ResultMainBean<GameMainSimulatorResponse>> m1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.I1)
    Call<ResultMainBean> n(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72364m2)
    Call<ResultMainBean<List<StandAloneListBean>>> n0(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.f72377q0)
    Call<CategoryBean> n1(@Body CommonRequestBean<ArrayList> request);

    @POST(com.join.mgps.rpc.h.f72334e2)
    Call<ResultMainBean<List<MatchBattleManagementBean>>> o(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(com.join.mgps.rpc.h.J0)
    Call<CollectionBean> o0(@Body CommonRequestBean<RequestCollectionArgs> request);

    @POST("/home/game_carefully")
    Call<ResultMainBean<HomeGameCarefullyBean>> o1(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.W1)
    Call<ResultMainBean<GameMainV3DataBean>> p(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(com.join.mgps.rpc.h.f72338g0)
    Call<ResultMainBean<PAPAMainBean>> p0(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.N1)
    Call<ResultMainBean<List<RecomDatabean>>> p1(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(com.join.mgps.rpc.h.f72393v1)
    Call<ResultMainBean<RecomeWifiDatabean>> q(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.E0)
    Call<SearchAutoBean> q0(@Body CommonRequestBean<RequestKeywordArgs> requestBeanInterface);

    @POST("/user/personal_center_home_page/indexv2")
    Call<ResultMainBean<UserCenterBean>> q1(@Body CommonRequestBean<RequestUserCenterArgs> requestInterfac);

    @POST(com.join.mgps.rpc.h.f72405z1)
    Call<ResultMainBean<PopupAdBean>> r(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> request);

    @POST(com.join.mgps.rpc.h.P1)
    Call<ResultMainBean<InformationCommentBack>> r0(@Body CommonRequestBean<GameInformationCommentRequest> requestInterface);

    @POST("/android/v4/ranking/gamelists")
    Call<ResultMainBean<RankingItemDataBean>> r1(@Body CommonRequestBean<RequestTypePn> requestBeanInterface);

    @POST(com.join.mgps.rpc.h.f72402y1)
    Call<ResultMainBean<List<BaiduAdDataMain>>> s(@Body CommonRequestBean<RequestPnArgs> request);

    @POST("/largesingle/crackv2")
    Call<ResultMainBean<GameListAndHeadAdBean>> s0(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterfac);

    @POST(com.join.mgps.rpc.h.J0)
    Call<CollectionModuleBean> s1(@Body CommonRequestBean<RequestCollectionArgs> request);

    @POST("/android/v4/game/gamerecommendsetup")
    Call<ResultMainBean<RecommendDataBean>> t(@Body CommonRequestBean<RequestTypePn> request);

    @POST(com.join.mgps.rpc.h.f72351j1)
    Call<ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>>> t0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(com.join.mgps.rpc.h.G1)
    Call<ResultMainBean<List<ServiceStateForMore>>> t1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v3/single_channel/gamecompanygamelist")
    Call<ResultMainBean<GameFactoryListBean>> u(@Body CommonRequestBean<Integer> requestInterfac);

    @POST("/game/game_ranking_top_5")
    Call<ResultMainBean<List<RankingDataBean>>> u0(@Body CommonRequestBean<GameSortRequestBean> request);

    @POST(com.join.mgps.rpc.h.f72363m1)
    Call<ResultMainBean<GameOLDataBean<GameOLFirstBean>>> u1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST("/largesingle/recommend")
    Call<ResultMainBean<GameListAndHeadAdAndCollectionInfoBean>> v(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterfac);

    @POST(com.join.mgps.rpc.h.F0)
    Call<ResultMainBean<SearchPageBean>> v0(@Body CommonRequestBean<RequestSearchPageArgs> requestBeanInterface);

    @POST("/android/v3/share/gamestartbootcommenttagadd")
    Call<ResultMainBean<List<ResultValbean>>> v1(@Body CommonRequestBean<RequestUidtagidTagdes> request);

    @POST(com.join.mgps.rpc.h.K0)
    Call<ResultMainBean<List<GameInformationBean>>> w(@Body CommonRequestBean<RequestInfoIdArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.f72404z0)
    Call<ResultMainBean<String[]>> w0(@Body CommonRequestBeanInterface requestInterface);

    @POST("/home/recommendlocation")
    Call<ResultMainBean<List<RecomDatabean>>> w1(@Body CommonRequestBean requestInterfac);

    @POST(com.join.mgps.rpc.h.f72399x1)
    Call<ResultMainBean<List<GameOLHeadAdBean>>> x(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(com.join.mgps.rpc.h.O0)
    Call<ResultMainBean<CommitContextDataBean>> x0(@Body CommonRequestBean request);

    @POST("/android/v4/search/integrated_posts_list")
    Call<ResultMainBean<SearchPostsBean>> x1(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.A0)
    Call<WarModuleBean> y(@Body CommonRequestBeanInterface requestInterface);

    @POST(com.join.mgps.rpc.h.f72322a2)
    Call<ResultMainBean<List<CollectionBeanSub>>> y0(@Body CommonRequestBean<RequestGameIdArgs> requestInterface);

    @POST(com.join.mgps.rpc.h.f72328c2)
    Call<ResultMainBean<List<CollectionBeanSub>>> y1(@Body CommonRequestBean<RequestGameIdArgs> requestInterface);

    @POST("/largesingle/languecnv2")
    Call<ResultMainBean<GameListAndHeadAdBean>> z(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterfac);

    @POST("/android/v4/search/integrated_game_favorite_list")
    Call<ResultMainBean<SearchGameFavoriteListBean>> z0(@Body CommonRequestBean request);

    @POST(com.join.mgps.rpc.h.U0)
    Call<ResultMainBean<List<APKVersionMainBean>>> z1(@Body CommonRequestBean<APKVersionRequestargs> request);
}
