package com.join.mgps.rpc.impl;

import app.mgsim.arena.ArenaLobbyServer;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.ArchiveRecordBean;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.ArenaLobbyPlayCheck;
import com.join.mgps.dto.ArenaSelectServer;
import com.join.mgps.dto.ArenaWelcomeLobby;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.BattleStatus;
import com.join.mgps.dto.CloudCreateInfo;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.CloudStatus;
import com.join.mgps.dto.CreateArchiveRecordBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.GameDataBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.GameListBean;
import com.join.mgps.dto.GameWorldGlobalData;
import com.join.mgps.dto.GameWorldRealTimeWorshipBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.GameWorldTrophy;
import com.join.mgps.dto.GameWorldUserInfoWrap;
import com.join.mgps.dto.GameWorldWorship;
import com.join.mgps.dto.GameworldFightRecoderResultBean;
import com.join.mgps.dto.GetPaiWeiPlayCodeBean;
import com.join.mgps.dto.GradeListData;
import com.join.mgps.dto.GradeRankListData;
import com.join.mgps.dto.InWorldDataBean;
import com.join.mgps.dto.InvitationPassBean;
import com.join.mgps.dto.Message;
import com.join.mgps.dto.NetBattleGetMatchAvailableServerBean;
import com.join.mgps.dto.NetBattleInviteBean;
import com.join.mgps.dto.NetBattleOnlineCount;
import com.join.mgps.dto.NetBattleStartBattleBean;
import com.join.mgps.dto.NetBattleUserInfoResultBean;
import com.join.mgps.dto.NetGetBattleUdpPortBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.NewGameDataBean;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.WelcomeInDataBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class l implements com.join.mgps.rpc.l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l f72431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static l f72432c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.k f72433a;

    public l(b7.k service) {
        this.f72433a = service;
    }

    public static l n0() {
        if (f72431b == null) {
            f72431b = new l((b7.k) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72357l).create(b7.k.class));
        }
        return f72431b;
    }

    public static l o0() {
        l lVar = new l((b7.k) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72361m).create(b7.k.class));
        f72432c = lVar;
        return lVar;
    }

    public static l p0() {
        l lVar = new l((b7.k) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72357l).create(b7.k.class));
        f72431b = lVar;
        return lVar;
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameWorldWorship> A(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.A(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleStartBattleBean> B(int uid, String token, String gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.B(uid, token, gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<DiscoveryMainDataBean> C(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.C(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<ArenaWelcomeLobby> D(int uid, long game_id, String token, String role, int room_id) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.D(uid, game_id, token, role, room_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultResMainBean<PaiWeiDataBean> E(String uid, String token, String gameid, String refresh, String sign) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.E(uid, token, gameid, refresh, sign).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultResMainBean<GameListBean> F(int uid, String token, int pn) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.F(uid, token, pn).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<List<GameWorldRealTimeWorshipBean>> G(long gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.G(gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleGetMatchAvailableServerBean> H(int uid, String token, String gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.H(uid, token, gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<Message> I(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.I(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<List<ArenaGameInfo>> J(String game_ids) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.J(game_ids).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultResMainBean<GetPaiWeiPlayCodeBean> K(String uid, String gameid, String token, String sign) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.K(uid, gameid, token, sign).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultResMainBean<GameListBannerBean> L(String uid) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.L(uid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultResMainBean<NewArenaGameListBean> M(int rom_type, int game_type, int pn) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.M(rom_type, game_type, pn).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleInviteBean> N(int uid, String token, String gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.N(uid, token, gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameWorldUserInfoWrap> O(long gameId, int uid, int s_uid) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.O(gameId, uid, s_uid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<List<GameWorldTrophy>> P(long gameId, int limit) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.P(gameId, limit).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountTokenSuccess> Q(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.Q(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultArenaBean<BattleChallengeConfig> R(int uid, String token, long game_id) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.R(uid, token, game_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GradeListData> S(long game_id) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.S(game_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameDataBean> T(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.T(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<InvitationPassBean> U(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.U(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<InvitationPassBean> V(String gameId, String uid) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.V(gameId, uid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NewGameDataBean> W(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.W(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<ArchiveRecordBean> X(String gameId, int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.X(gameId, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleOnlineCount> Y(String gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.Y(gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<CreateArchiveRecordBean> Z(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.Z(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountresultData<AccountBean>> a(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.a(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultArenaBean<ArenaLobbyServer> a0(int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.a0(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountresultData<AccountBean>> b(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.b(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<InWorldDataBean> b0(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.b0(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleInviteBean> c(int uid, String token, String gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.c(uid, token, gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameworldFightRecoderResultBean> c0(String gameId, int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.c0(gameId, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountTokenSuccess> d(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.d(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse d0(int uid, String token, String gameId, int uid2, long roomid) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.d0(uid, token, gameId, uid2, roomid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountTokenSuccess> e(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.e(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleUserInfoResultBean> e0(String gameId, int tuid, int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.e0(gameId, tuid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultResMainBean<PaiWeiDataBean> f(String uid, String token, String gameid, String refresh) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.f(uid, token, gameid, refresh).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<ArenaLobbyPlayCheck> f0(String uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.f0(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountTokenSuccess> g(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.g(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<List<ArenaSelectServer>> g0(String a10, String a11, String a12, int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.g0(a10, a11, a12, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountTokenSuccess> h(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.h(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleUserInfoResultBean> h0(String gameId, int tuid, int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.h0(gameId, tuid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountBean> i(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.i(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<ArenaWelcomeLobby> i0(int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.i0(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountTokenSuccess> j(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.j(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetGetBattleUdpPortBean> j0(String gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.j0(gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<AccountResultMainBean> k(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.k(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GradeRankListData> k0(long game_id, int start_rank, int grade_number, String rank_cond, int limit) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.k0(game_id, start_rank, grade_number, rank_cond, limit).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountresultData<AccountBean>> l(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.l(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<WelcomeInDataBean> l0(String gameId, int uid, String token, String role_name) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.l0(gameId, uid, token, role_name).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameWorldWorship> m(long gameId, int uid, int to_uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.m(gameId, uid, to_uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public b7.k m0() {
        return this.f72433a;
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<List<PspBattleServer>> n() {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.n().execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<CloudList> o(int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.o(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NewGameDataBean> p(String gameId, int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.p(gameId, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<NetBattleUserInfoResultBean> q(String gameId, int tuid, int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.q(gameId, tuid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameWorldGlobalData> r(long gameId) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.r(gameId).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameDataBean> s(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.s(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<BattleStatus> t(int uid, String token) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.t(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<CloudStatus> u(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.u(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public ResultResMainBean<GetPaiWeiPlayCodeBean> v(String uid, String gameid) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.v(uid, gameid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<CreateArchiveRecordBean> w(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.w(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public AccountResultMainBean<AccountresultData<AccountBean>> x(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.x(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<GameDataBean> y(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.y(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.l
    public GameWorldResponse<CloudCreateInfo> z(Map<String, String> params) {
        try {
            b7.k kVar = this.f72433a;
            if (kVar != null) {
                return kVar.z(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
