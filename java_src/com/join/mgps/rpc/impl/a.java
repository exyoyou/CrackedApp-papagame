package com.join.mgps.rpc.impl;

import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.BluetoothHandleBlackListData;
import com.join.mgps.dto.CloudBackupsListBean;
import com.join.mgps.dto.CloudBackupsRecoverListBean;
import com.join.mgps.dto.ConfigMain;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.UploadResultMainBean;
import com.join.mgps.dto.UserHeadPortrait;
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class a implements com.join.mgps.rpc.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f72406b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.a f72407a;

    public a(b7.a service) {
        this.f72407a = service;
    }

    public static com.join.mgps.rpc.b c0() {
        if (f72406b == null) {
            f72406b = new a((b7.a) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72349j).create(b7.a.class));
        }
        return f72406b;
    }

    public static com.join.mgps.rpc.b d0() {
        a aVar = new a((b7.a) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72349j).create(b7.a.class));
        f72406b = aVar;
        return aVar;
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean A(Map<String, Object> params) {
        try {
            return this.f72407a.A(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> B(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.B(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<JPushJoinDeviceResult> C(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.C(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<CloudBackupsListBean> D(String uid, String token) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.D(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData<AccountBean>> E(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.E(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<BluetoothHandleBlackListData> F(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.F(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> G(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.G(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ForumResponse<ConfigMain> H() {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.H().execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> I(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.I(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<UserHeadPortrait> J(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.J(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> K(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.K(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<CreateVipData> L(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.L(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> M(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.M(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> N(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.N(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> O(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.O(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean P(Map<String, Object> params) {
        try {
            return this.f72407a.P(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> Q(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.Q(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> R(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.R(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> S(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.S(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<JPushJoinDeviceResult> T(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.T(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromPopoWinBeanV2 U(Map<String, Object> params) {
        try {
            return this.f72407a.U(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData<AccountBean>> V(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.V(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromPopoWinBean W(Map<String, Object> params) {
        try {
            return this.f72407a.W(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> X(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.X(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean Y(Map<String, Object> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.Y(params).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ForumResponse<FavoritesCenterData> Z(Map<String, Object> params) {
        b7.a aVar = this.f72407a;
        if (aVar == null) {
            return null;
        }
        try {
            return aVar.Z(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultBean<AccountLoginresultData<AccountBean>> a(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.a(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> a0(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.a0(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultBean<AccountLoginresultData<AccountBean>> b(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.b(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean b0(Map<String, Object> params) {
        try {
            return this.f72407a.b0(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ResultMainBean<List<AccountVoucherGame>> c(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.c(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> d(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.d(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> e(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.e(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ResultMainBean<List<AccountVoucher>> f(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.f(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> g(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.g(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> h(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.h(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountBean> i(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.i(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> j(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.j(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameWorldResponse<AccountResultMainBean> k(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.k(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountresultData<AccountBean>> l(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.l(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<JPushJoinDeviceResult> m(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.m(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> n(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.n(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean o(Map<String, Object> params) {
        try {
            return this.f72407a.o(params).execute().body();
        } catch (Exception e10) {
            e10.toString();
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public UploadResultMainBean<AccountTokenSuccess> p(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.p(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromPopoWinBean q(Map<String, Object> params) {
        try {
            return this.f72407a.q(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> r(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.r(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> s(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.s(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean t(Map<String, Object> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.t(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public ForumResponseGame u(Map<String, Object> params) {
        try {
            return this.f72407a.u(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountLoginresultData> v(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.v(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<CloudBackupsRecoverListBean> w(String uid, String token, String rid) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.w(uid, token, rid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> x(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.x(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public AccountResultMainBean<AccountTokenSuccess> y(Map<String, String> params) {
        try {
            b7.a aVar = this.f72407a;
            if (aVar != null) {
                return aVar.y(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.b
    public GameFromBooleanBean z(Map<String, Object> params) {
        try {
            return this.f72407a.z(params).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
