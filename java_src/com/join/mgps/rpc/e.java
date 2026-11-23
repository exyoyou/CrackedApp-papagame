package com.join.mgps.rpc;

import com.join.mgps.activity.recomend.RecommendDataBean;
import com.join.mgps.activity.screenshot.ScreenShortListItemBean;
import com.join.mgps.activity.screenshot.ScreenshortTabBean;
import com.join.mgps.dto.APKVersionMainBean;
import com.join.mgps.dto.APKVersionRequestargs;
import com.join.mgps.dto.AllAppId;
import com.join.mgps.dto.ApkVersionbean;
import com.join.mgps.dto.AppBean;
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
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface e {
    @POST(h.X1)
    ResultMainBean<List<DetailResultBeanV3>> A(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(h.f72358l0)
    ResultMainBean<List<CollectionDataBean>> A0(@Body CommonRequestBean<RequestSimulatorArgs> requestInterface);

    @POST(h.f72344h2)
    ResultMainBean<DownDeductCoinResponse> A1(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(h.X1)
    ResultMainBean<List<GamedetialModleFourBean>> B(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72355k1)
    ResultMainBean<List<GiftPackageDataInfoBean>> B0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.f72356k2)
    ResultMainBean<List<GameHeadAd>> B1(@Body CommonRequestBean request);

    @POST("/user/personal_center_prompt_title")
    ResultMainBean<List<ResultValbean>> C(@Body CommonRequestBean<RequestUserCenterArgs> requestInterfac);

    @POST(h.f72354k0)
    ResultMainBean<EverydayNewGameResponse> C0(@Body CommonRequestBean<RequestSimulatorArgs> requestInterface);

    @POST("/advertisement/down_load_center_ad")
    ResultMainBean<List<RecomDatabean>> C1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.F1)
    ResultMainBean<GamedetialMoreGiftData> D(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.M1)
    ResultMainBean<List<GameTopicBean>> D0(@Body CommonRequestBean<GameTopicBean> request);

    @POST(h.f72359l1)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> D1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.f72347i1)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> E(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.f72331d2)
    ResultMainBean<List<CollectionBeanSub>> E0(@Body CommonRequestBean<RequestCompanyNameArgs> requestInterface);

    @POST("/android/v4/search/integrated_game_list")
    ResultMainBean<SearchGameListBean> E1(@Body CommonRequestBean request);

    @POST(h.W0)
    ForumBannerBean.ForumBannerResponseBean F(@Body ForumBannerBean.ForumBannerRequestBean requestBean);

    @POST(h.U1)
    ResultMainBean<List<BootPageData>> F0(@Body CommonRequestBean<BootPageRequestArgs> request);

    @POST("/ver/check_battle_plugin_ver_so")
    ResultMainBean<List<ApkVersionbean>> F1(@Body CommonRequestBean<APKVersionRequestargs> requestInterfac);

    @POST("/android/v2/message/replynoticemessagelist")
    GameReplyMessageListBean G(@Body CommonRequestBean request);

    @POST(h.D1)
    ResultMainBean<List<RecommendInfomationBean>> G0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v4/search/integrated_list")
    ResultMainBean<SearchIntegratedBean> G1(@Body CommonRequestBean request);

    @POST(h.S1)
    ResultMainBean<List<String>> H(@Body CommonRequestBean<IgnoreNoticeRequestArgs> requestInterface);

    @POST("/game/game_company_game_list")
    ResultMainBean<GameFactoryListBean> H0(@Body CommonRequestBean<Integer> requestInterfac);

    @POST("/android/v2/message/surplusunreadmessage")
    MessageRedPointBean H1(@Body CommonRequestBean request);

    @POST(h.C1)
    ResultMainBean<List<RewardBean>> I(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> request);

    @POST(h.B0)
    ResultMainBean<List<DetailResultBean>> I0(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(h.f72370o0)
    ResultMainBean<List<CommentSendMessageResultBean>> I1(@Body CommonRequestBean<RegisterRequestBean> requestInterface);

    @POST(h.H0)
    ResultMainBean<List<SearchPageBean>> J(@Body CommonRequestBean<RequestSearchPageArgs> requestBeanInterface);

    @POST("/android/v3/scanning/setting")
    ResultMainBean<SNKGameInfoBean> J0(@Body CommonRequestBean request);

    @POST("/simulator/simulator_fba_index")
    ResultMainBean<SimulatorAreaDataBean> J1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST("/advertisement/down_load_speed_tips_ad")
    ResultMainBean<List<RecomDatabean>> K(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72340g2)
    ResultMainBean<PayGameDetialBean> K0(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST("/simulator/simulator_psp_index")
    ResultMainBean<SimulatorAreaDataBean> K1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST("/game/gametypelistv2/indexv2")
    ResultMainBean<ClassifyBean> L(@Body CommonRequestBean<GameSortRequestBean> request);

    @POST(h.f72350j0)
    ResultMainBean<List<CollectionDataBean>> L0(@Body CommonRequestBean<RequestSimulatorArgs> requestInterface);

    @POST("/simulator/simulator_fc_index")
    ResultMainBean<SimulatorAreaDataBean> L1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST(h.f72335f0)
    ResultMainBean<List<PAPAHomeBean>> M(@Body CommonRequestBean request);

    @POST(h.K1)
    ResultMainBean M0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/simulator/simulator_gba_index")
    ResultMainBean<SimulatorAreaDataBean> M1(@Body RecomRequestBean<SimulatorAreaRequest> request);

    @POST("/largesingle/game_google_ranking")
    ResultMainBean<List<AppBean>> N(@Body CommonRequestBean<RequestGoogleRankArgs> requestInterfac);

    @POST(h.f72390u1)
    GiftPackageOperationBean N0(@Body CommonRequestBean<GiftPackageOperationArgs> request);

    @POST("/game_down_load/down_info")
    ResultMainBean<GameDownInfo> O(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.L1)
    ResultMainBean<List<CollectionBeanSub>> O0(@Body CommonRequestBean<RequestTypePn> request);

    @POST(h.X0)
    ResultMainBean<List<ForumBannerBean.ForumAreaBannerMessagesData>> P(@Body ForumBannerBean.ForumBannerRequestBean requestBean);

    @POST("/android/v2/game/gamescreenshot/getTypeList")
    ResultMainBean<List<ScreenshortTabBean>> P0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72366n0)
    ResultMainBean<List<ShowViewDataBean>> Q(@Body CommonRequestBean<ArrayList> requestInterface);

    @POST(h.E1)
    ResultMainBean<List<RecommendInfomationBean>> Q0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72321a1)
    GameDiscoverMainBean R(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterface);

    @POST(h.R0)
    ResultMainBean<InformationCommentBack> R0(@Body CommonRequestBean<GameInformationCommentRequest> requestInterface);

    @POST(h.f72339g1)
    RecomDataAllBean S(@Body CommonRequestBean requestInterface);

    @POST(h.G0)
    SearchAppBean S0(@Body CommonRequestBean<RequestKeywordArgs> requestBeanInterface);

    @POST(h.f72384s1)
    GiftPackageBean T(@Body CommonRequestBean<GiftPackageArgs> request);

    @POST(h.f72348i2)
    ResultMainBean<List<TodayWufunBean>> T0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.B1)
    ResultMainBean<List<VipPopData>> U(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> request);

    @POST(h.T0)
    ResultMainBean<List<PariseBackData>> U0(@Body CommonRequestBean<PariseRequest> requestInterface);

    @POST(h.f72324b1)
    GamesurFaceMainBean V(@Body RecomRequestBean<RequestAppDetialArgs> requestInterface);

    @POST(h.T1)
    ResultMainBean<HandShankAdBean> V0(@Body CommonRequestBean<RequestHandShankAdListArgs> requestInterface);

    @POST(h.f72360l2)
    ResultMainBean<List<StandAloneListBean>> W(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72374p0)
    ResultMainBean<List<CommentSendMessageResultBean>> W0(@Body CommonRequestBean<SendAppinfoMainbean> requestInterface);

    @POST(h.f72332e0)
    ResultMainBean<List<StatisticMainBean>> X(@Body CommonRequestBeanInterface requestInterface);

    @POST(h.O1)
    ResultMainBean<List<RecomDatabean>> X0(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(h.W1)
    ResultMainBean<List<GameMainDataBean>> Y(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72346i0)
    ResultMainBean<WufunMarketHomeBean> Y0(@Body CommonRequestBean request);

    @POST("/android/v3/advertisement/downloadcenterad/index")
    ResultMainBean<ResponseDownloadCenterAd> Z(@Body CommonRequestBean<RequestDownloadCenterArgs> request);

    @POST(h.Y0)
    ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean> Z0(@Body ForumBannerBean.ForumBannerRequestBean requestBean);

    @POST("/v4/personal_center/index")
    ResultMainBean<UserCenterBean> a(@Body CommonRequestBean<RequestUserCenterArgs> requestInterfac);

    @POST(h.f72337f2)
    ResultMainBean<CollectionBeanSub> a0(@Body RecomRequestBean<RequestAppDetialArgs> request);

    @POST(h.N0)
    ResultMainBean<InformationCommentBack> a1(@Body CommonRequestBean<RequestCommitArgs> requestInterface);

    @POST(h.f72336f1)
    ResultMainBean<List<PariseBackData>> b(@Body CommonRequestBean<GamePariseRequest> requestInterface);

    @POST(h.f72362m0)
    ResultMainBean<List<CheckAppVersionBean>> b0(@Body CommonRequestBean<AllAppId> request);

    @POST("/game/game_ver_by_pg")
    ResultMainBean<GameVerByBg> b1(@Body RecomRequestBean<GameVerByBgRequestargs> request);

    @POST(h.Z0)
    ResultMainBean<List<MustPlayNetDataBean>> c(@Body CommonRequestBeanInterface commonRequestBean);

    @POST(h.I0)
    SearchRecommendBean c0(@Body CommonRequestBean commonRequestBean);

    @POST(h.f72352j2)
    ResultMainBean<List<TodayWufunTopic>> c1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.Y1)
    ResultMainBean d(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v4/search/integrated_rand_game_favorites")
    ResultMainBean<SearchPageBean> d0(@Body CommonRequestBean<RequestSearchPageArgs> requestBeanInterface);

    @POST("/game/gametypesort/indexv2")
    ResultMainBean<List<GameSortBean>> d1(@Body CommonRequestBean<GameSortRequestBean> request);

    @POST(h.f72401y0)
    WarIndexResultMainBean<List<WarIndexDataBean>> e(@Body CommonRequestBean<RequestWarIndexArgs> requestInterface);

    @POST(h.Q0)
    ResultMainBean<CommitContextDataBean> e0(@Body CommonRequestBean<InformationSendRequestBean> requestInterface);

    @POST(h.f72396w1)
    ResultMainBean<BattlehallDatabean> e1(@Body CommonRequestBean<RequestBattlehallArgs> request);

    @POST(h.f72371o1)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> f(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST("/android/v3/share/gamestartbootcommenttaglist")
    ResultMainBean<GameShareData> f0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72375p1)
    ResultMainBean<GameSignleCompanyListbean> f1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.J1)
    ResultMainBean g(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72367n1)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> g0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.D0)
    ResultMainBean<List<CollectionBeanSub>> g1(@Body CommonRequestBean<RequestClassifyArgs> requestBeanInterface);

    @POST("/battle/battle_room_game_list_cfg")
    ResultMainBean<ArenaGameRoomListConfig> h(@Body CommonRequestBean<RequestArenaRoomListArgs> requestInterfac);

    @POST(h.Z0)
    ResultMainBean<MustPlayData> h0(@Body CommonRequestBean<RecomRequestArgs> requestBean);

    @POST("/android/v2/game/gametypestate")
    ResultMainBean<ClassfyTypeBean> h1(@Body CommonRequestBean<ClassifyGameBean> request);

    @POST(h.Z1)
    ResultMainBean<List<ResultValbean>> i(@Body CommonRequestBean<RequestSiliencebean> request);

    @POST(h.R1)
    ResultMainBean<List<PariseBackData>> i0(@Body CommonRequestBean<PariseRequest> requestInterface);

    @POST(h.V0)
    ResultMainBean<List<APKVersionMainBean>> i1(@Body CommonRequestBean<APKVersionRequestargs> request);

    @POST(h.M0)
    InformationMainBean j(@Body CommonRequestBean<RequestPnArgs> requestInterface);

    @POST(h.Q1)
    ResultMainBean<InformationSendBack> j0(@Body CommonRequestBean<InformationSendRequestBean> requestInterface);

    @POST(h.H1)
    ResultMainBean j1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v2/game/gamescreenshot/index")
    ResultMainBean<List<ScreenShortListItemBean>> k(@Body CommonRequestBean<RequestScreenshortListArgs> request);

    @POST(h.f72381r1)
    SearchAppBean k0(@Body CommonRequestBean requestBeanInterface);

    @POST(h.f72387t1)
    GiftPackageInfoBean k1(@Body CommonRequestBean<GiftPackageInfoArgs> request);

    @POST(h.f72343h1)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> l(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST("/android/v3/scanning/matching")
    ResultMainBean<List<CollectionBeanSub>> l0(@Body CommonRequestBean<RequestSNKGameArgs> request);

    @POST("/android/v3/community/tag")
    ResultMainBean<String> l1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72378q1)
    ResultMainBean<List<RecomCentrebean>> m(@Body CommonRequestBean<RequestPnArgs> request);

    @POST("/android/v3/share/gamestartbootcommentadd")
    ResultMainBean<List<ResultValbean>> m0(@Body CommonRequestBean<RequestGameShareTag> request);

    @POST("/simulator/simulator_play_game_surface_state")
    ResultMainBean<GameMainSimulatorResponse> m1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.I1)
    ResultMainBean n(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72364m2)
    ResultMainBean<List<StandAloneListBean>> n0(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72377q0)
    CategoryBean n1(@Body CommonRequestBean<ArrayList> request);

    @POST(h.f72334e2)
    ResultMainBean<List<MatchBattleManagementBean>> o(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(h.J0)
    CollectionBean o0(@Body CommonRequestBean<RequestCollectionArgs> request);

    @POST("/home/game_carefully")
    ResultMainBean<HomeGameCarefullyBean> o1(@Body CommonRequestBean request);

    @POST(h.W1)
    ResultMainBean<GameMainV3DataBean> p(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST(h.f72338g0)
    ResultMainBean<PAPAMainBean> p0(@Body CommonRequestBean request);

    @POST(h.N1)
    ResultMainBean<List<RecomDatabean>> p1(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(h.f72393v1)
    ResultMainBean<RecomeWifiDatabean> q(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.E0)
    SearchAutoBean q0(@Body CommonRequestBean<RequestKeywordArgs> requestBeanInterface);

    @POST("/user/personal_center_home_page/indexv2")
    ResultMainBean<UserCenterBean> q1(@Body CommonRequestBean<RequestUserCenterArgs> requestInterfac);

    @POST(h.f72405z1)
    ResultMainBean<PopupAdBean> r(@Body CommonRequestBean<RequestPnAndPcAndUidArgs> request);

    @POST(h.P1)
    ResultMainBean<InformationCommentBack> r0(@Body CommonRequestBean<GameInformationCommentRequest> requestInterface);

    @POST("/android/v4/ranking/gamelists")
    ResultMainBean<RankingItemDataBean> r1(@Body CommonRequestBean<RequestTypePn> requestBeanInterface);

    @POST(h.f72402y1)
    ResultMainBean<List<BaiduAdDataMain>> s(@Body CommonRequestBean<RequestPnArgs> request);

    @POST("/largesingle/crackv2")
    ResultMainBean<GameListAndHeadAdBean> s0(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterfac);

    @POST(h.J0)
    CollectionModuleBean s1(@Body CommonRequestBean<RequestCollectionArgs> request);

    @POST("/android/v4/game/gamerecommendsetup")
    ResultMainBean<RecommendDataBean> t(@Body CommonRequestBean<RequestTypePn> request);

    @POST(h.f72351j1)
    ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>> t0(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST(h.G1)
    ResultMainBean<List<ServiceStateForMore>> t1(@Body CommonRequestBean<RequestGameIdArgs> request);

    @POST("/android/v3/single_channel/gamecompanygamelist")
    ResultMainBean<GameFactoryListBean> u(@Body CommonRequestBean<Integer> requestInterfac);

    @POST("/game/game_ranking_top_5")
    ResultMainBean<List<RankingDataBean>> u0(@Body CommonRequestBean<GameSortRequestBean> request);

    @POST(h.f72363m1)
    ResultMainBean<GameOLDataBean<GameOLFirstBean>> u1(@Body CommonRequestBean<RequestPnAndPcArgs> request);

    @POST("/largesingle/recommend")
    ResultMainBean<GameListAndHeadAdAndCollectionInfoBean> v(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterfac);

    @POST(h.F0)
    ResultMainBean<SearchPageBean> v0(@Body CommonRequestBean<RequestSearchPageArgs> requestBeanInterface);

    @POST("/android/v3/share/gamestartbootcommenttagadd")
    ResultMainBean<List<ResultValbean>> v1(@Body CommonRequestBean<RequestUidtagidTagdes> request);

    @POST(h.K0)
    ResultMainBean<List<GameInformationBean>> w(@Body CommonRequestBean<RequestInfoIdArgs> requestInterface);

    @POST(h.f72404z0)
    ResultMainBean<String[]> w0(@Body CommonRequestBeanInterface requestInterface);

    @POST("/home/recommendlocation")
    ResultMainBean<List<RecomDatabean>> w1(@Body CommonRequestBean requestInterfac);

    @POST(h.f72399x1)
    ResultMainBean<List<GameOLHeadAdBean>> x(@Body CommonRequestBean<RequestPnArgs> request);

    @POST(h.O0)
    ResultMainBean<CommitContextDataBean> x0(@Body CommonRequestBean request);

    @POST("/android/v4/search/integrated_posts_list")
    ResultMainBean<SearchPostsBean> x1(@Body CommonRequestBean request);

    @POST(h.A0)
    WarModuleBean y(@Body CommonRequestBeanInterface requestInterface);

    @POST(h.f72322a2)
    ResultMainBean<List<CollectionBeanSub>> y0(@Body CommonRequestBean<RequestGameIdArgs> requestInterface);

    @POST(h.f72328c2)
    ResultMainBean<List<CollectionBeanSub>> y1(@Body CommonRequestBean<RequestGameIdArgs> requestInterface);

    @POST("/largesingle/languecnv2")
    ResultMainBean<GameListAndHeadAdBean> z(@Body CommonRequestBean<RequestPnAndPcArgs> requestInterfac);

    @POST("/android/v4/search/integrated_game_favorite_list")
    ResultMainBean<SearchGameFavoriteListBean> z0(@Body CommonRequestBean request);

    @POST(h.U0)
    ResultMainBean<List<APKVersionMainBean>> z1(@Body CommonRequestBean<APKVersionRequestargs> request);
}
