package com.join.mgps.rpc.impl;

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
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public class i implements com.join.mgps.rpc.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f72422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static i f72423c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.i f72424a;

    class a implements Callback<ResponseModel<DataGameListBean>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.callbacks.m f72425b;

        a(final com.join.mgps.callbacks.m val$callback) {
            this.f72425b = val$callback;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable t10) {
            com.join.mgps.callbacks.m mVar = this.f72425b;
            if (mVar != null) {
                mVar.a(t10);
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            com.join.mgps.callbacks.m mVar = this.f72425b;
            if (mVar != null) {
                mVar.onSuccess(response.body());
            }
        }
    }

    public i(b7.i service) {
        this.f72424a = service;
    }

    private static void O0(boolean init) {
        if (f72422b == null || init) {
            f72422b = new i((b7.i) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.B).create(b7.i.class));
        }
    }

    public static i P0() {
        O0(false);
        return f72422b;
    }

    public static i Q0() {
        if (f72423c == null) {
            f72423c = new i((b7.i) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.C).create(b7.i.class));
        }
        return f72423c;
    }

    public static void R0() {
        O0(true);
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel A(RequestModel<RequestEndGameReportReasonArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.A(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<SimulatorAchievementBean> A0(RequestModel<RequestSimulatorAchievementListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.A0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<EndGameBean>> B(RequestModel<RequestEndGameListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.B(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<BbsDetailBean> B0(RequestModel<RequestBbsDetailArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.B0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<RecommendDataBean> C(RequestModel<RecommendArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.C(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<InformationCommentBackV2> C0(RequestModel<GameInformationCommentRequestV2> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.C0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel D(RequestModel<GameInformationCommentPraiseArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.D(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<CommonGameInfoBean>> D0(RequestModel<RequestEndGameAdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.D0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> E(RequestModel<RequestCreateEndGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.E(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<DiscoveryBannerBean> E0(RequestModel<RequestInfoArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.E0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<EndGameDetailBean> F(RequestModel<RequestEndGameDetailArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.F(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> F0(RequestModel<RequestBbsReplyArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.F0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<FavoriteGameListBean> G(RequestModel<FavoriteGameListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.G(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameBespeakBean> G0(RequestModel<RequestGameBespeakArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.G0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<UninstallAppReasonBean> H(RequestModel request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.H(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel H0(RequestModel<EndGameRecordArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.H0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<SimulatorRecomBean>> I(RequestModel<RequestSimulatorRecomGamesArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.I(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> I0(RequestModel<RequestSimulatorMomentLikeArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.I0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel J(RequestModel<UninstallAppReasonSubmitArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.J(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameMainV4DataBean> J0(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.J0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> K(RequestModel<RequestBbsPraiseArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.K(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<CommonAdBean>> K0(RequestModel<RequestCommonAdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.K0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<LegendZoneResultData> L(RequestModel<LegendZoneRequest> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.L(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<BbsCommentListBean>> L0(RequestModel<RequestBbsCommentListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.L0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel M(RequestModel<RequestDeleteUserCustomGameTag> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.M(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public void M0(RequestModel<QueryDownloadInfoRequestArgs> request, com.join.mgps.callbacks.m<ResponseModel<DataGameListBean>> callback) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                iVar.X0(request).enqueue(new a(callback));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<CollectionModuleSevenBean> N(RequestModel<CollectionModuleSevenArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.N(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public b7.i N0() {
        return this.f72424a;
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<H5GameDataBean> O(RequestModel<RequestMiniGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.O(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameBespeakBean> P(RequestModel<RequestGameBespeakArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.P(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<ModFeedbackBean> Q(RequestModel<RequestModFeedbackArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.Q(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<UninstallOnlineGameBean> R(RequestModel<UninstallOnlineGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.R(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<EndGameNameBean> S(RequestModel<RequestEndGameNameListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.S(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<ServerListData> T(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.T(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<SimulatorExitPlayResponseData> U(RequestModel<SimulatorExitPlayRequestArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.U(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<DiscoveryHeaderBean> V(RequestModel<DiscoveryHeaderArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.V(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel W(RequestModel<RequestFeedbackUserCustomTag> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.W(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel X(RequestModel<DiscoveryHeaderMenuClickArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.X(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameBbsPostListBean> Y(RequestModel<RequestBbsRecommendArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.Y(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<UserGameListBean>> Z(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.Z(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<CloudGamingCfgInfo> a(RequestModel<RequestGameCfgInfoArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.a(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<EndGameDetailBean.RankingListBean>> a0(RequestModel<RequestEndGameDetailArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.a0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<BbsTagListBean>> b(RequestModel<RequestBbsTagListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.b(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<CollectionBeanSub>> b0(RequestModel<RequestGameIdArgs> requestInterface) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.b0(requestInterface).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<LegendServerRemindResult> c(RequestModel<LegendServerRemindRequest> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.c(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> c0(RequestModel<VideoAdWatchLogRequest> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.c0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<CommonGameInfoBean>> d(RequestModel<RequestSimulatorRecomGamesArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.d(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<BbsListBean>> d0(RequestModel<RequestBbsListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.d0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<SimulatorMomentBean> e(RequestModel<RequestSimulatorMomentListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.e(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GamedetialModleFourBean> e0(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.e0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameMainV4DataBean> f(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.f(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<QueryDownloadInfoResponseData> f0(RequestModel<QueryDownloadInfoRequestArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.f0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel g(RequestModel<AddGameInformationCommentArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.g(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<QueueAdBean> g0(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.g0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<H5GameDataBean> h(RequestModel<RequestMiniGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.h(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> h0(RequestModel<RequestSimulatorMomentLikeArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.h0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<SearchGameListBean> i(RequestModel<RequestSearchGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.i(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> i0(RequestModel<RequestBbsDispraiseArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.i0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<NoticeListData> j(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.j(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<String>> j0(RequestModel<RequestSearchUserCustomGameTag> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.j0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<ArchievePathMultiBean> k(RequestModel<ArchievePathMultiArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.k(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<ModGameDetailBean> k0(RequestModel<RequestModGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.k0(request.makeSign()).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<CollectionBeanSub>> l(RequestModel<RequestGameIdArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.l(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<EndGameListBean> l0(RequestModel<RequestEndGameTypeArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.l0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<UninstallGuessLikeBean> m(RequestModel<UninstallGuessLikeArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.m(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<BossBean>> m0(RequestModel<RequestBossListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.m0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameDetailDataBean> n(RequestModel<GameDetailRequest> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.n(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<ListUserCustomGameTagBean> n0(RequestModel<RequestAddUserCustomGameTag> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.n0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameMainV4DataBean.EndGameConfigBean> o(RequestModel<RequestEndGameListArgs> requestModel) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.o(requestModel).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<UninstallGuessLikeBean> o0(RequestModel<UninstallGuessLikeArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.o0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<CheckGameVersionResponseData> p(RequestModel<CheckGameVersionRequestArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.p(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<SearchGameListBean> p0(RequestModel<RequestSearchGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.p0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel q(RequestModel<RequestDeleteUserCustomTag> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.q(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<BbsCommentListBean>> q0(RequestModel<RequestBbsCommentListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.q0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<EndGameReportTypeBean>> r(RequestModel<RequestEndGameReportReasonArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.r(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResultMainBean<List<SearchDataBean>> r0(CommonRequestBean<AppDataBackupBean> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.r0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<VideoAdCfgBean> s(RequestModel<VideoAdCfgRequestArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.s(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<MiniGameSdkDtoResponseResponseData> s0(RequestModel<MiniGameSdkDtoRequestArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.s0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<CommonGameInfoBean>> t(RequestModel<RequestMiniGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.t(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<DomainInfoBean> t0(RequestModel<RequestDomainInfoArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.t0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<BbsCommentListBean>> u(RequestModel<RequestBbsCommentListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.u(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<MessageDetailFeedBackBean> u0(RequestModel<MessageDetailFeedBackArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.u0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<FavoriteGameListBean> v(RequestModel<FavoriteGameListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.v(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<GameExpressResultData> v0(RequestModel<GameExpressRequest> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.v0(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<List<CollectionBeanSub>> w(RequestModel<RequestRankingListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.w(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<Boolean> w0(RequestModel<MessageDetailFeedBackArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.w0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<SearchGameListBean> x(RequestModel<RequestSearchGameArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.x(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<ListUserCustomGameTagBean> x0(RequestModel<RequestListUserCustomGameTagArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.x0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<LegendServerRemindResult> y(RequestModel<LegendServerRemindRequest> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.y(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<SimulatorAllAchievementBean> y0(RequestModel<RequestSimulatorAchievementListArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.y0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<NetGameZoneResultData> z(RequestModel<NetGameZoneRequest> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.z(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.k
    public ResponseModel<ModFeedbackBean> z0(RequestModel<RequestModFeedbackArgs> request) {
        try {
            b7.i iVar = this.f72424a;
            if (iVar != null) {
                return iVar.z0(request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
