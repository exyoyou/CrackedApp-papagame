package com.qq.e.ads.hybrid;

import android.content.Context;
import com.qq.e.ads.AbstractAD;
import com.qq.e.comm.pi.HADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class HybridAD extends AbstractAD<HADI> implements HADI {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HybridADListener f78166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CountDownLatch f78167i = new CountDownLatch(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HybridADSetting f78168j;

    public HybridAD(Context context, HybridADSetting hybridADSetting, HybridADListener hybridADListener) {
        this.f78168j = hybridADSetting;
        this.f78166h = hybridADListener;
        a(context, "NO_POS_ID");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public HADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getHybridAD(this.f78168j, this.f78166h);
    }

    @Override // com.qq.e.comm.pi.HADI
    public void loadUrl(final String str) {
        if (a()) {
            if (!b()) {
                new Thread(new Runnable() { // from class: com.qq.e.ads.hybrid.HybridAD.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            HybridAD.this.f78167i.await(30L, TimeUnit.SECONDS);
                            if (!HybridAD.this.b() || ((AbstractAD) HybridAD.this).f78107a == null) {
                                GDTLogger.e("初始化错误：广告实例未被初始化");
                                HybridAD.this.a(2001);
                            } else {
                                ((HADI) ((AbstractAD) HybridAD.this).f78107a).loadUrl(str);
                            }
                        } catch (InterruptedException unused) {
                            GDTLogger.e("初始化错误：广告实例未被初始化");
                            HybridAD.this.a(2001);
                        }
                    }
                }).start();
                return;
            }
            T t10 = this.f78107a;
            if (t10 != 0) {
                ((HADI) t10).loadUrl(str);
            } else {
                a("loadUrl");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qq.e.ads.AbstractAD
    public void a(HADI hadi) {
        this.f78167i.countDown();
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i10) {
        HybridADListener hybridADListener = this.f78166h;
        if (hybridADListener != null) {
            hybridADListener.onError(AdErrorConvertor.formatErrorCode(i10));
        }
        this.f78167i.countDown();
    }
}
