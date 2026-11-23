package com.join.mgps.rpc.impl;

import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBackGameReqBean;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendCardBean;
import com.join.mgps.dto.FriendRecommendRequest;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class h implements com.join.mgps.rpc.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f72420b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.h f72421a;

    public h(b7.h service) {
        this.f72421a = service;
    }

    public static h p() {
        if (f72420b == null) {
            f72420b = new h((b7.h) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.I).create(b7.h.class));
        }
        return f72420b;
    }

    public static h q() {
        h hVar = new h((b7.h) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.I).create(b7.h.class));
        f72420b = hVar;
        return hVar;
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<FriendBean>> a(FriendRecommendRequest request) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.a(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<FriendAccountInfo> b(String uid, String token) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.b(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<FriendCardBean> c(String uid, String token, String ruid) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.c(uid, token, ruid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<FriendAccountInfo> d(String uid, String token, String ruid) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.d(uid, token, ruid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel e(Map<String, Object> map) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.e(map).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<FriendBean>> f(String uid, String token, int limit, int page) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.f(uid, token, limit, page).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel g(Map<String, Object> map) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.g(map).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel h(Map<String, Object> map) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.h(map).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel i(FriendReqBean request) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.i(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<FriendBean>> j(int uid, String token, String account) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.j(uid, token, account).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<List<FriendBean>> k(String uid, String token, int limit, int page) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.k(uid, token, limit, page).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel l(Map<String, Object> map) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.l(map).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel<FriendBackGameRspBean> m(FriendBackGameReqBean request) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.m(request).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.j
    public ResponseModel n(Map<String, Object> map) {
        try {
            b7.h hVar = this.f72421a;
            if (hVar != null) {
                return hVar.n(map).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public b7.h o() {
        return this.f72421a;
    }
}
