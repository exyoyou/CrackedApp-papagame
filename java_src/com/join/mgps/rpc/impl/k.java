package com.join.mgps.rpc.impl;

import app.mgsim.arena.ArenaLobbyServer;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class k extends l {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static l f72429e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b7.k f72430d;

    public k(b7.k service) {
        super(service);
        this.f72430d = (b7.k) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72365n).create(b7.k.class);
    }

    public static l n0() {
        if (f72429e == null) {
            f72429e = new k((b7.k) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72357l).create(b7.k.class));
        }
        return f72429e;
    }

    @Override // com.join.mgps.rpc.impl.l, com.join.mgps.rpc.l
    public GameWorldResponse<DiscoveryMainDataBean> C(Map<String, String> params) {
        try {
            b7.k kVar = this.f72430d;
            if (kVar != null) {
                return kVar.C(params).execute().body();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return super.C(params);
    }

    @Override // com.join.mgps.rpc.impl.l, com.join.mgps.rpc.l
    public GameWorldResponse<List<ArenaGameInfo>> J(String game_ids) {
        try {
            b7.k kVar = this.f72430d;
            if (kVar != null) {
                return kVar.J(game_ids).execute().body();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return J(game_ids);
    }

    @Override // com.join.mgps.rpc.impl.l, com.join.mgps.rpc.l
    public ResultArenaBean<ArenaLobbyServer> a0(int uid, String token) {
        try {
            b7.k kVar = this.f72430d;
            if (kVar != null) {
                return kVar.a0(uid, token).execute().body();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return super.a0(uid, token);
    }
}
