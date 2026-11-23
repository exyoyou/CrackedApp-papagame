package com.join.mgps.rpc.impl;

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
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d implements com.join.mgps.rpc.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static d f72412b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.d f72413a;

    public d(b7.d service) {
        this.f72413a = service;
    }

    public static d O1() {
        if (f72412b == null) {
            f72412b = new d((b7.d) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72345i).create(b7.d.class));
        }
        return f72412b;
    }

    public static d P1() {
        d dVar = new d((b7.d) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72345i).create(b7.d.class));
        f72412b = dVar;
        return dVar;
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<DetailResultBeanV3>> A(RecomRequestBean<RequestAppDetialArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.A(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionDataBean>> A0(CommonRequestBean<RequestSimulatorArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.A0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<DownDeductCoinResponse> A1(RecomRequestBean<RequestAppDetialArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.A1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GamedetialModleFourBean>> B(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.B(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GiftPackageDataInfoBean>> B0(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.B0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GameHeadAd>> B1(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.B1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ResultValbean>> C(CommonRequestBean<RequestUserCenterArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.C(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<EverydayNewGameResponse> C0(CommonRequestBean<RequestSimulatorArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.C0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecomDatabean>> C1(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.C1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GamedetialMoreGiftData> D(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.D(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GameTopicBean>> D0(CommonRequestBean<GameTopicBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.D0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> D1(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.D1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> E(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.E(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionBeanSub>> E0(CommonRequestBean<RequestCompanyNameArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.E0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SearchGameListBean> E1(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.E1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ForumBannerBean.ForumBannerResponseBean F(ForumBannerBean.ForumBannerRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.F(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<BootPageData>> F0(CommonRequestBean<BootPageRequestArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.F0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ApkVersionbean>> F1(CommonRequestBean<APKVersionRequestargs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.F1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public GameReplyMessageListBean G(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.G(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecommendInfomationBean>> G0(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.G0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SearchIntegratedBean> G1(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.G1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<String>> H(CommonRequestBean<IgnoreNoticeRequestArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.H(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameFactoryListBean> H0(CommonRequestBean<Integer> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.H0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public MessageRedPointBean H1(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.H1(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RewardBean>> I(CommonRequestBean<RequestPnAndPcAndUidArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.I(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<DetailResultBean>> I0(RecomRequestBean<RequestAppDetialArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.I0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CommentSendMessageResultBean>> I1(CommonRequestBean<RegisterRequestBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.I1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<SearchPageBean>> J(CommonRequestBean<RequestSearchPageArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.J(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SNKGameInfoBean> J0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.J0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SimulatorAreaDataBean> J1(RecomRequestBean<SimulatorAreaRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.J1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecomDatabean>> K(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.K(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<PayGameDetialBean> K0(RecomRequestBean<RequestAppDetialArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.K0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SimulatorAreaDataBean> K1(RecomRequestBean<SimulatorAreaRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.P1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<ClassifyBean> L(CommonRequestBean<GameSortRequestBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.L(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionDataBean>> L0(CommonRequestBean<RequestSimulatorArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.L0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SimulatorAreaDataBean> L1(RecomRequestBean<SimulatorAreaRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.Q1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<PAPAHomeBean>> M(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.M(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean M0(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.M0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SimulatorAreaDataBean> M1(RecomRequestBean<SimulatorAreaRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.O1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<AppBean>> N(CommonRequestBean<RequestGoogleRankArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.N(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public GiftPackageOperationBean N0(CommonRequestBean<GiftPackageOperationArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.N0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public b7.d N1() {
        return this.f72413a;
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameDownInfo> O(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.O(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionBeanSub>> O0(CommonRequestBean<RequestTypePn> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.O0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ForumBannerBean.ForumAreaBannerMessagesData>> P(ForumBannerBean.ForumBannerRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.P(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ScreenshortTabBean>> P0(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.P0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ShowViewDataBean>> Q(CommonRequestBean<ArrayList> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.Q(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecommendInfomationBean>> Q0(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.Q0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public GameDiscoverMainBean R(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.R(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<InformationCommentBack> R0(CommonRequestBean<GameInformationCommentRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.R0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public RecomDataAllBean S(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.S(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public SearchAppBean S0(CommonRequestBean<RequestKeywordArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.S0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public GiftPackageBean T(CommonRequestBean<GiftPackageArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.T(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<TodayWufunBean>> T0(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.T0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<VipPopData>> U(CommonRequestBean<RequestPnAndPcAndUidArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.U(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<PariseBackData>> U0(CommonRequestBean<PariseRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.U0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public GamesurFaceMainBean V(RecomRequestBean<RequestAppDetialArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.V(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<HandShankAdBean> V0(CommonRequestBean<RequestHandShankAdListArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.V0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<StandAloneListBean>> W(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.W(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CommentSendMessageResultBean>> W0(CommonRequestBean<SendAppinfoMainbean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.W0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<StatisticMainBean>> X(CommonRequestBeanInterface request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.X(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecomDatabean>> X0(CommonRequestBean<RequestPnArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.X0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GameMainDataBean>> Y(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.Y(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<WufunMarketHomeBean> Y0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.Y0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<ResponseDownloadCenterAd> Z(CommonRequestBean<RequestDownloadCenterArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.Z(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<ForumBannerBean.ForumBannerDataBannerBean> Z0(ForumBannerBean.ForumBannerRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.Z0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<UserCenterBean> a(CommonRequestBean<RequestUserCenterArgs> requestInterfac) {
        return null;
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<CollectionBeanSub> a0(RecomRequestBean<RequestAppDetialArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.a0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<InformationCommentBack> a1(CommonRequestBean<RequestCommitArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.a1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<PariseBackData>> b(CommonRequestBean<GamePariseRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.b(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CheckAppVersionBean>> b0(CommonRequestBean<AllAppId> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.b0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameVerByBg> b1(RecomRequestBean<GameVerByBgRequestargs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.b1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<MustPlayNetDataBean>> c(CommonRequestBeanInterface request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.c(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public SearchRecommendBean c0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.c0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<TodayWufunTopic>> c1(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.c1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean d(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.d(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SearchPageBean> d0(CommonRequestBean<RequestSearchPageArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.d0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GameSortBean>> d1(CommonRequestBean<GameSortRequestBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.d1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public WarIndexResultMainBean<List<WarIndexDataBean>> e(CommonRequestBean<RequestWarIndexArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.e(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<CommitContextDataBean> e0(CommonRequestBean<InformationSendRequestBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.e0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<BattlehallDatabean> e1(CommonRequestBean<RequestBattlehallArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.e1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> f(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.f(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameShareData> f0(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.f0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameSignleCompanyListbean> f1(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.f1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean g(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.g(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> g0(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.g0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionBeanSub>> g1(CommonRequestBean<RequestClassifyArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.g1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<ArenaGameRoomListConfig> h(CommonRequestBean<RequestArenaRoomListArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.h(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<MustPlayData> h0(CommonRequestBean<RecomRequestArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.h0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<ClassfyTypeBean> h1(CommonRequestBean<ClassifyGameBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.h1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ResultValbean>> i(CommonRequestBean<RequestSiliencebean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.i(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<PariseBackData>> i0(CommonRequestBean<PariseRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.i0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<APKVersionMainBean>> i1(CommonRequestBean<APKVersionRequestargs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.i1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public InformationMainBean j(CommonRequestBean<RequestPnArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.j(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<InformationSendBack> j0(CommonRequestBean<InformationSendRequestBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.j0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean j1(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.j1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ScreenShortListItemBean>> k(CommonRequestBean<RequestScreenshortListArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.k(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public SearchAppBean k0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.k0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public GiftPackageInfoBean k1(CommonRequestBean<GiftPackageInfoArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.k1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> l(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.l(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionBeanSub>> l0(CommonRequestBean<RequestSNKGameArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.l0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<String> l1(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.l1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecomCentrebean>> m(CommonRequestBean<RequestPnArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.m(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ResultValbean>> m0(CommonRequestBean<RequestGameShareTag> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.m0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameMainSimulatorResponse> m1(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.m1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean n(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.n(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<StandAloneListBean>> n0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.n0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CategoryBean n1(CommonRequestBean<ArrayList> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.n1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<MatchBattleManagementBean>> o(CommonRequestBean<RequestPnArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.o(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CollectionBean o0(CommonRequestBean<RequestCollectionArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.o0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<HomeGameCarefullyBean> o1(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.o1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameMainV3DataBean> p(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.p(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<PAPAMainBean> p0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.p0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecomDatabean>> p1(CommonRequestBean<RequestPnArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.p1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<RecomeWifiDatabean> q(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.q(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public SearchAutoBean q0(CommonRequestBean<RequestKeywordArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.q0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<UserCenterBean> q1(CommonRequestBean<RequestUserCenterArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.q1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<PopupAdBean> r(CommonRequestBean<RequestPnAndPcAndUidArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.r(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<InformationCommentBack> r0(CommonRequestBean<GameInformationCommentRequest> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.r0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<RankingItemDataBean> r1(CommonRequestBean<RequestTypePn> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.r1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<BaiduAdDataMain>> s(CommonRequestBean<RequestPnArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.s(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameListAndHeadAdBean> s0(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.s0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public CollectionModuleBean s1(CommonRequestBean<RequestCollectionArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.s1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<RecommendDataBean> t(CommonRequestBean<RequestTypePn> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.t(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameOLDataBean<GameOLNoOpenTestBean>> t0(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.t0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ServiceStateForMore>> t1(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.t1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameFactoryListBean> u(CommonRequestBean<Integer> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.u(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RankingDataBean>> u0(CommonRequestBean<GameSortRequestBean> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.u0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameOLDataBean<GameOLFirstBean>> u1(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.u1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameListAndHeadAdAndCollectionInfoBean> v(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.v(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SearchPageBean> v0(CommonRequestBean<RequestSearchPageArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.v0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<ResultValbean>> v1(CommonRequestBean<RequestUidtagidTagdes> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.v1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GameInformationBean>> w(CommonRequestBean<RequestInfoIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.w(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<String[]> w0(CommonRequestBeanInterface request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.w0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<RecomDatabean>> w1(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.w1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<GameOLHeadAdBean>> x(CommonRequestBean<RequestPnArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.x(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<CommitContextDataBean> x0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.x0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SearchPostsBean> x1(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.x1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public WarModuleBean y(CommonRequestBeanInterface request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.y(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionBeanSub>> y0(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.y0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<CollectionBeanSub>> y1(CommonRequestBean<RequestGameIdArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.y1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<GameListAndHeadAdBean> z(CommonRequestBean<RequestPnAndPcArgs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.z(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<SearchGameFavoriteListBean> z0(CommonRequestBean request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.z0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.e
    public ResultMainBean<List<APKVersionMainBean>> z1(CommonRequestBean<APKVersionRequestargs> request) {
        try {
            b7.d dVar = this.f72413a;
            if (dVar != null) {
                return dVar.z1(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
