package com.windmill.sdk.widget;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.R;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.custom.IWMCustomSplashEvent;
import com.windmill.sdk.custom.WMCustomSplashAdapter;
import com.windmill.sdk.models.BidPrice;
import com.windmill.sdk.utils.ViewUtil;

/* JADX INFO: loaded from: classes8.dex */
public class SpecialActivity extends Activity {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f87492d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f87493a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private IWMCustomSplashEvent f87495c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f87494b = getClass().getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f87496e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f87497f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f87498g = false;

    public interface a {
        void a();

        void a(Activity activity, ViewGroup viewGroup);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        a aVar;
        super.onConfigurationChanged(newConfig);
        if (!this.f87498g || (aVar = f87492d) == null) {
            return;
        }
        aVar.a();
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            setTheme(R.style.tobid_page);
            this.f87496e = getIntent().getStringExtra(MediationConstant.KEY_ADN_NAME);
            this.f87495c = new IWMCustomSplashEvent() { // from class: com.windmill.sdk.widget.SpecialActivity.1
                @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
                public void callLoadBiddingSuccess(BidPrice price) {
                }

                @Override // com.windmill.sdk.custom.IWMCustomBaseEvent
                public void callLoadFail(WMAdapterError adapterError) {
                }

                @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
                public void callLoadSuccess() {
                }

                @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
                public void callSplashAdClick() {
                    SigmobLog.i(SpecialActivity.this.f87494b + "-----callSplashAdClick");
                }

                @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
                public void callSplashAdClosed() {
                    SigmobLog.i(SpecialActivity.this.f87494b + "-----callSplashAdClosed");
                    SpecialActivity.this.finish();
                }

                @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
                public void callSplashAdShow() {
                    SigmobLog.i(SpecialActivity.this.f87494b + "-----callSplashAdShow");
                }

                @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
                public void callSplashAdShowError(WMAdapterError adapterError) {
                    SpecialActivity.this.finish();
                }

                @Override // com.windmill.sdk.custom.IWMCustomSplashEvent
                public void callSplashAdSkipped() {
                    SigmobLog.i(SpecialActivity.this.f87494b + "-----callSplashAdSkipped");
                    SpecialActivity.this.finish();
                }
            };
            this.f87498g = true;
            FrameLayout frameLayout = new FrameLayout(this);
            this.f87493a = frameLayout;
            setContentView(frameLayout);
            this.f87493a.setTag(this.f87495c);
            WMLogUtil.i("----adnName: GDT kuaishou");
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            FrameLayout frameLayout = this.f87493a;
            if (frameLayout != null) {
                ViewUtil.removeChildFromParent(frameLayout);
                this.f87493a.setTag("");
                this.f87493a = null;
            }
            if (f87492d != null) {
                f87492d = null;
            }
            FrameLayout frameLayout2 = WMCustomSplashAdapter.aPageVGroup;
            if (frameLayout2 != null) {
                frameLayout2.setTag("");
                WMCustomSplashAdapter.aPageVGroup = null;
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            setTheme(R.style.tobid_page);
            a aVar = f87492d;
            if (aVar == null || this.f87497f) {
                return;
            }
            aVar.a(this, this.f87493a);
            this.f87497f = true;
        } catch (Exception unused) {
        }
    }

    public static void a(a mSplashListener) {
        f87492d = mSplashListener;
    }
}
