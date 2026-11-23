package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.PayGameCheckResult;
import com.join.mgps.dto.PayGameDataRequest;
import com.wufan.user.service.protobuf.UserInfo;

/* JADX INFO: loaded from: classes4.dex */
public class x1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static x1 f50118a;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50119b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50120c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ c f50121d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ b f50122e;

        /* JADX INFO: renamed from: com.join.mgps.Util.x1$a$a, reason: collision with other inner class name */
        class C0665a implements com.join.android.app.common.http.b {
            C0665a() {
            }

            @Override // com.join.android.app.common.http.b
            public void a(Object o10) {
                g1.d("xxxxx", "checkPayGamePay::onFailed" + o10);
                a.this.f50121d.d(-1);
                a aVar = a.this;
                aVar.f50122e.a(aVar.f50121d);
            }

            @Override // com.join.android.app.common.http.b
            public void onSuccess(Object o10) {
                g1.d("xxxxx", "checkPayGamePay::onSuccess" + o10);
                CommentResponse commentResponse = (CommentResponse) o10;
                if (commentResponse == null) {
                    a.this.f50121d.d(-1);
                } else if (commentResponse.getCode() == 0) {
                    PayGameCheckResult payGameCheckResult = (PayGameCheckResult) commentResponse.getData_info();
                    if (payGameCheckResult == null || !payGameCheckResult.isState()) {
                        a.this.f50121d.d(2);
                        a.this.f50121d.e(payGameCheckResult.getAppGameId());
                    } else {
                        a.this.f50121d.d(1);
                        a.this.f50121d.f(payGameCheckResult.getExpireTime());
                        if (a.this.f50121d.c() == 0) {
                            a aVar = a.this;
                            aVar.f50121d.f(x1.this.d());
                        }
                        a.this.f50121d.e(payGameCheckResult.getAppGameId());
                    }
                } else if (commentResponse.getCode() == 100006) {
                    a.this.f50121d.d(3);
                } else {
                    a.this.f50121d.d(-1);
                }
                g1.d("xxxxx", "checkPayGamePay::original result=" + a.this.f50121d);
                g1.d("xxxxx", "rs=" + JsonMapper.defaultAll().toJson(a.this.f50121d));
                a aVar2 = a.this;
                aVar2.f50122e.a(aVar2.f50121d);
            }
        }

        a(final Context val$context, final String val$appkey, final c val$result, final b val$listener) {
            this.f50119b = val$context;
            this.f50120c = val$appkey;
            this.f50121d = val$result;
            this.f50122e = val$listener;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            UserInfo accountData = AccountUtil_.getInstance_(this.f50119b).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            PayGameDataRequest payGameDataRequest = new PayGameDataRequest();
            payGameDataRequest.setToken(accountData.getToken());
            payGameDataRequest.setDevice_id(com.join.android.app.common.utils.q.n(this.f50119b).e(this.f50119b));
            payGameDataRequest.setUid(uid + "");
            payGameDataRequest.setApp_key(this.f50120c);
            com.join.mgps.rpc.n.b(payGameDataRequest, new C0665a());
        }
    }

    public interface b {
        void a(c result);
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f50125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f50126b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f50127c;

        public c() {
        }

        public int a() {
            return this.f50125a;
        }

        public String b() {
            return this.f50126b;
        }

        public long c() {
            return this.f50127c;
        }

        public void d(int code) {
            this.f50125a = code;
        }

        public void e(String gid) {
            this.f50126b = gid;
        }

        public void f(long time) {
            this.f50127c = time;
        }

        public String toString() {
            return "{\"code\":" + this.f50125a + ",\"gid\":\"" + this.f50126b + "\",\"time\":" + this.f50127c + "}";
        }
    }

    private x1() {
    }

    public static x1 c() {
        if (f50118a == null) {
            f50118a = new x1();
        }
        return f50118a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long d() {
        return System.currentTimeMillis() + 86400000;
    }

    public void b(final Context context, final String appkey, final b listener) {
        g1.d("xxxxx", "method checkPayGameResult() called.appkey=" + appkey);
        c cVar = new c();
        try {
            new a(context, appkey, cVar, listener).start();
        } catch (Exception e10) {
            g1.d("xxxxx", "checkPayGamePay::Exception" + e10.getLocalizedMessage());
            e10.printStackTrace();
            listener.a(cVar);
        }
    }

    public void e(Context context, String appKey, String gid) {
        Intent intent = new Intent("com.join.android.wufun.sdk.wfsg.broadcast." + appKey);
        c cVar = new c();
        cVar.d(1);
        cVar.f(d());
        cVar.e(gid);
        intent.putExtra("result", JsonMapper.defaultAll().toJson(cVar));
        context.sendBroadcast(intent);
    }
}
