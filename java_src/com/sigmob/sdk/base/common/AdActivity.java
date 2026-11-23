package com.sigmob.sdk.base.common;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class AdActivity extends BaseAdActivity implements k {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f78847k = "AdActivity";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private j f78848l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f78849m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private BaseAdUnit f78850n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f78851o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f78852p;

    private j a(BaseAdUnit baseAdUnit, Bundle savedInstanceState) throws IllegalStateException {
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("ad_view_class_name");
        Bundle extras = intent.getExtras();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) stringExtra)) {
            return null;
        }
        this.f78850n = baseAdUnit;
        stringExtra.hashCode();
        switch (stringExtra) {
            case "LandNative":
                if (extras == null) {
                    return null;
                }
                return new com.sigmob.sdk.nativead.z(this, baseAdUnit, extras, savedInstanceState, this.f78849m, this);
            case "LandPage":
                return new w(this, baseAdUnit, extras, savedInstanceState, this.f78849m, this);
            case "DisLike":
                return new com.sigmob.sdk.nativead.w(this, baseAdUnit, extras, savedInstanceState, this.f78849m, this);
            case "reward":
                return new com.sigmob.sdk.videoAd.j(this, baseAdUnit, extras, savedInstanceState, this.f78849m, this);
            case "new_interstitial":
                return new com.sigmob.sdk.newInterstitial.i(this, baseAdUnit, extras, savedInstanceState, this.f78849m, this);
            case "mraid":
                return new com.sigmob.sdk.mraid.s(this, baseAdUnit, extras, savedInstanceState, this.f78849m, this);
            case "mraid_two":
                return new com.sigmob.sdk.mraid2.s(this, baseAdUnit, extras, savedInstanceState, this.f78849m, this);
            default:
                return null;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        j jVar = this.f78848l;
        if (jVar == null) {
            return;
        }
        jVar.a(requestCode, resultCode, data);
    }

    @Override // android.app.Activity, com.sigmob.sdk.base.common.k
    public void onBackPressed() {
        j jVar = this.f78848l;
        if (jVar == null || !jVar.j()) {
            return;
        }
        super.onBackPressed();
        this.f78848l.i();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(final Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        j jVar = this.f78848l;
        if (jVar == null) {
            return;
        }
        jVar.a(newConfig);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        com.sigmob.sdk.videoplayer.c.e((Activity) this);
        super.onCreate(savedInstanceState);
        this.f78849m = a(getIntent());
        String stringExtra = getIntent().getStringExtra("adUnit_requestId_key");
        try {
            if (ClientMetadata.getInstance() != null && !com.sigmob.sdk.base.utils.t.a((CharSequence) stringExtra)) {
                BaseAdUnit baseAdUnitC = h.c(stringExtra);
                if (!this.f78849m.equals("dislike_broadcastIdentifier") && baseAdUnitC == null) {
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("error", "playAdUnit is null");
                    a(map);
                    finish();
                    return;
                }
                j jVarA = a(baseAdUnitC, savedInstanceState);
                this.f78848l = jVarA;
                if (jVarA == null) {
                    return;
                }
                jVarA.e();
                if (com.sigmob.sdk.base.utils.w.a(baseAdUnitC.allowClickToAutoClose())) {
                    this.f78848l.a(new j.a() { // from class: com.sigmob.sdk.base.common.c0
                        @Override // com.sigmob.sdk.base.common.j.a
                        public final void onAdClicked() {
                            this.f79045a.d();
                        }
                    });
                }
                Integer numAllowCountdownEndsClose = baseAdUnitC.allowCountdownEndsClose();
                if (com.sigmob.sdk.base.utils.w.a((Number) numAllowCountdownEndsClose)) {
                    j jVar = this.f78848l;
                    if (jVar instanceof com.sigmob.sdk.newInterstitial.i) {
                        ((com.sigmob.sdk.newInterstitial.i) jVar).a(numAllowCountdownEndsClose.intValue(), new com.sigmob.sdk.base.utils.p.a() { // from class: com.sigmob.sdk.base.common.d0
                            @Override // com.sigmob.sdk.base.utils.p.a
                            public final void onTimerFinished() {
                                this.f79054a.c();
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            SigmobLog.e("uuid is empty");
            HashMap<String, Object> map2 = new HashMap<>();
            map2.put("error", "uuid is empty");
            a(map2);
            finish();
        } catch (Throwable th) {
            SigmobLog.e("AdActivity onCreate Throwable: " + th.getMessage(), th);
            HashMap<String, Object> map3 = new HashMap<>();
            map3.put("error", th.getMessage());
            a(map3);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        SigmobLog.d("RewardVideoAdPlayerActivity onDestroy() called");
        if (com.sigmob.sdk.base.utils.w.b(this.f78848l)) {
            this.f78848l.h();
        }
        this.f78848l = null;
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        j jVar = this.f78848l;
        if (jVar == null) {
            return;
        }
        try {
            jVar.f();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            HashMap<String, Object> map = new HashMap<>();
            map.put("error", th.getMessage());
            a(map);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        j jVar = this.f78848l;
        if (jVar == null) {
            return;
        }
        try {
            jVar.g();
        } catch (Throwable th) {
            HashMap<String, Object> map = new HashMap<>();
            map.put("error", th.getMessage());
            a(map);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        j jVar = this.f78848l;
        if (jVar == null) {
            return;
        }
        jVar.a(outState);
    }

    @Override // com.sigmob.sdk.base.common.k
    public void onSetContentView(final View view) {
        setContentView(view);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        j jVar = this.f78848l;
        if (jVar == null) {
            return;
        }
        try {
            jVar.o();
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    public void setRequestedOrientation(int requestedOrientation) {
        try {
            if (Build.VERSION.SDK_INT == 26 && com.sigmob.sdk.videoplayer.c.g((Activity) this)) {
                return;
            }
            super.setRequestedOrientation(requestedOrientation);
        } catch (Exception e10) {
            SigmobLog.e("setRequestedOrientation: " + e10.getMessage());
        }
    }

    private static String a(Intent intent) {
        return intent.getStringExtra(Constants.BROADCAST_IDENTIFIER_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        BaseAdUnit baseAdUnit;
        if (isFinishing() || isDestroyed() || (baseAdUnit = this.f78850n) == null || this.f78848l == null || baseAdUnit.getAd_type() != 6) {
            return;
        }
        if (this.f78851o || this.f78852p) {
            if (com.sigmob.sdk.base.utils.w.b(Boolean.valueOf(this.f78848l instanceof com.sigmob.sdk.newInterstitial.i))) {
                com.sigmob.sdk.base.network.h.a(this.f78850n, a.f78887u);
                ad.a(a.f78887u, (String) null, this.f78850n, new ad.a() { // from class: com.sigmob.sdk.base.common.b0
                    @Override // com.sigmob.sdk.base.common.ad.a
                    public final void onAddExtra(Object obj) {
                        AdActivity.a(obj);
                    }
                });
                this.f78850n.setSessionManager(null);
            }
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        SigmobLogger.d(f78847k, "onCreate#onTimerFinished", new Object[0]);
        this.f78852p = true;
        runOnUiThread(new Runnable() { // from class: com.sigmob.sdk.base.common.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.f78893b.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f78851o = true;
        BaseAdUnit baseAdUnit = this.f78850n;
        if (baseAdUnit == null) {
            return;
        }
        int interactionType = baseAdUnit.getInteractionType();
        boolean zEnableSmallWindow = this.f78850n.enableSmallWindow(Integer.valueOf(interactionType));
        if (interactionType == 2 || zEnableSmallWindow) {
            b();
        }
    }

    @Override // com.sigmob.sdk.base.common.k
    public void a() {
        finish();
        overridePendingTransition(0, 0);
    }

    @Override // com.sigmob.sdk.base.common.k
    public void a(final int requestedOrientation) {
        setRequestedOrientation(requestedOrientation);
    }

    @Override // com.sigmob.sdk.base.common.k
    public void a(Class<? extends Activity> clazz, int requestCode, Bundle extras) {
        if (clazz == null) {
            return;
        }
        try {
            startActivityForResult(com.sigmob.sdk.base.utils.g.a(this, clazz, extras), requestCode);
        } catch (Throwable unused) {
            SigmobLog.d("Activity " + clazz.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
        }
    }

    private void a(HashMap<String, Object> map) {
        BaseBroadcastReceiver.a(this, this.f78849m, map, IntentActions.ACTION_REWARDED_VIDEO_PLAYFAIL);
    }

    private void a(boolean status) {
        j jVar = this.f78848l;
        if (jVar instanceof com.sigmob.sdk.mraid.s) {
            ((com.sigmob.sdk.mraid.s) jVar).a(status);
        } else if (jVar instanceof com.sigmob.sdk.mraid2.s) {
            ((com.sigmob.sdk.mraid2.s) jVar).a(status);
        }
    }
}
