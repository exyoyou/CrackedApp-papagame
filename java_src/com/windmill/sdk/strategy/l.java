package com.windmill.sdk.strategy;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.WMAdBaseAdapter;
import com.windmill.sdk.point.PointEntityWind;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.windmill.sdk.common.l f87190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<com.windmill.sdk.strategy.a> f87191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<com.windmill.sdk.strategy.a> f87192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f87194f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s.d f87195g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f87197i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WindMillAdRequest f87201m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f87189a = l.class.getSimpleName();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f87196h = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Map<String, com.windmill.sdk.strategy.a> f87198j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f87199k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Handler f87200l = new Handler(Looper.getMainLooper()) { // from class: com.windmill.sdk.strategy.l.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what != 1) {
                return;
            }
            try {
                Object obj = msg.obj;
                if (obj instanceof com.windmill.sdk.strategy.a) {
                    com.windmill.sdk.strategy.a aVar = (com.windmill.sdk.strategy.a) obj;
                    WMLogUtil.d(WMLogUtil.TAG, " WMPreloadManager handleMessage timeout " + aVar.aP());
                    WindMillError windMillError = WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT;
                    l.this.f87202n.a(aVar, new WMAdapterError(windMillError.getErrorCode(), windMillError.getMessage()), "ready");
                }
            } catch (Throwable th) {
                WMLogUtil.e(l.this.f87189a, "WMPreloadManager preLoadAd strategy name" + th.getMessage());
            }
        }
    };

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f87202n = new a() { // from class: com.windmill.sdk.strategy.l.2
        @Override // com.windmill.sdk.strategy.l.a
        public void a(com.windmill.sdk.strategy.a adStrategy, WMAdBaseAdapter adapter) {
            l.this.f87200l.removeMessages(1, adStrategy);
            adStrategy.g(true);
            l.this.b();
        }

        @Override // com.windmill.sdk.strategy.l.a
        public void a(com.windmill.sdk.strategy.a adStrategy, WMAdapterError error, String event_type) {
            l.this.f87200l.removeMessages(1, adStrategy);
            adStrategy.a(true, error);
            l.this.a(adStrategy, error);
            l.this.a(adStrategy);
            if (error.getErrorCode() == WindMillError.ERROR_CHANNEL_LOAD_AD_TIME_OUT.getErrorCode() && l.this.f87190b != null && l.this.f87190b.f86726f) {
                l.this.f87190b.a(adStrategy, error);
            }
        }

        @Override // com.windmill.sdk.strategy.l.a
        public void a(com.windmill.sdk.strategy.a adStrategy) {
            WMLogUtil.d(WMLogUtil.TAG, "WMPreloadManager onCancelTimer " + adStrategy.aP());
            l.this.f87200l.removeMessages(1, adStrategy);
        }
    };

    public interface a {
        void a(com.windmill.sdk.strategy.a adStrategy);

        void a(com.windmill.sdk.strategy.a adStrategy, WMAdapterError error, String event_type);

        void a(com.windmill.sdk.strategy.a adStrategy, WMAdBaseAdapter adapter);
    }

    public l(com.windmill.sdk.common.l baseAdController, List<com.windmill.sdk.strategy.a> normalStrategyList, List<com.windmill.sdk.strategy.a> ctcStrategyList, int max_concurrent_count, s.d strategyListener, WindMillAdRequest windMillAdRequest) {
        this.f87197i = BaseCloudFileManager.ACK_TIMEOUT;
        this.f87190b = baseAdController;
        this.f87191c = normalStrategyList;
        this.f87192d = ctcStrategyList;
        this.f87193e = max_concurrent_count;
        this.f87194f = ctcStrategyList.size();
        this.f87195g = strategyListener;
        if (windMillAdRequest != null) {
            this.f87201m = windMillAdRequest;
            if (windMillAdRequest.getAdType() != 2) {
                this.f87197i = 15000L;
            }
        }
    }

    public void b() {
        this.f87199k = this.f87191c.size();
    }

    public Map<String, com.windmill.sdk.strategy.a> c() {
        return this.f87198j;
    }

    public a d() {
        return this.f87202n;
    }

    public void e() {
        Handler handler = this.f87200l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void b(com.windmill.sdk.strategy.a strategy) {
        a aVar;
        try {
            strategy.j(true);
            strategy.i(true);
            com.windmill.sdk.common.u uVarM = this.f87190b.m();
            WindMillError windMillErrorA = r.a(strategy, uVarM != null ? uVarM.a() : null);
            if (windMillErrorA != null && (aVar = this.f87202n) != null) {
                aVar.a(strategy, new WMAdapterError(windMillErrorA.getErrorCode(), windMillErrorA.getMessage()), "load");
                return;
            }
            this.f87200l.removeMessages(1, strategy);
            Message messageObtain = Message.obtain(this.f87200l, 1, strategy);
            if (strategy.ab() != 0) {
                this.f87200l.sendMessageDelayed(messageObtain, strategy.ab());
            } else {
                this.f87200l.sendMessageDelayed(messageObtain, this.f87197i);
            }
            s.d dVar = this.f87195g;
            if (dVar != null) {
                dVar.a(strategy, d());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a() {
        if (this.f87193e > this.f87194f) {
            if (this.f87192d.size() > 0) {
                this.f87199k = Math.min(this.f87191c.size(), this.f87193e - this.f87194f);
            } else {
                this.f87199k = Math.min(this.f87191c.size(), this.f87193e);
            }
            List<com.windmill.sdk.strategy.a> listSubList = this.f87191c.subList(0, this.f87199k);
            for (int i10 = 0; i10 < listSubList.size(); i10++) {
                com.windmill.sdk.strategy.a aVar = listSubList.get(i10);
                this.f87198j.put(aVar.aD(), aVar);
                b(aVar);
            }
            return;
        }
        WMLogUtil.d(this.f87189a, "-----------等待ctc执行结果loadBackupStrategy-----------" + (this.f87193e - this.f87194f));
    }

    public synchronized void a(com.windmill.sdk.strategy.a adStrategy) {
        int i10 = this.f87199k;
        if (i10 == 0) {
            if (this.f87192d.contains(adStrategy)) {
                this.f87194f--;
            }
            if (this.f87193e > this.f87194f) {
                this.f87199k = 1;
                for (int i11 = 0; i11 < this.f87199k; i11++) {
                    com.windmill.sdk.strategy.a aVar = this.f87191c.get(i11);
                    this.f87198j.put(aVar.aD(), aVar);
                    b(aVar);
                }
            }
        } else if (i10 < this.f87191c.size()) {
            com.windmill.sdk.strategy.a aVar2 = this.f87191c.get(this.f87199k);
            WMLogUtil.d(WMLogUtil.TAG, " WMPreloadManager loadBackupStrategy backupIndex " + this.f87199k + " name " + aVar2.aP());
            this.f87199k = this.f87199k + 1;
            Map<String, com.windmill.sdk.strategy.a> map = this.f87198j;
            if (map != null) {
                map.put(aVar2.aD(), aVar2);
            }
            b(aVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.windmill.sdk.strategy.a strategy, WMAdapterError error) {
        com.windmill.sdk.common.l lVar = this.f87190b;
        com.windmill.sdk.utils.m.a("error", "ready", this.f87201m, strategy, lVar != null ? lVar.n() : null, error.getErrorCode(), error.getExternalErrorCode(), error.getMessage(), new com.windmill.sdk.utils.m.a() { // from class: com.windmill.sdk.strategy.l.3
            @Override // com.windmill.sdk.utils.m.a
            public void onAddExtra(Object pointEntityBase) {
                if (pointEntityBase instanceof PointEntityWind) {
                    PointEntityWind pointEntityWind = (PointEntityWind) pointEntityBase;
                    if (l.this.f87190b != null) {
                        pointEntityWind.setExecution_scene(l.this.f87190b.f86726f ? "0" : "1");
                    }
                    if (l.this.f87201m == null || TextUtils.isEmpty(l.this.f87201m.getLoadId())) {
                        return;
                    }
                    pointEntityWind.setLoad_id(l.this.f87201m.getLoadId());
                }
            }
        });
    }
}
