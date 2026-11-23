package com.windmill.sdk.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.czhj.sdk.common.Constants;
import com.sigmob.windad.consent.WindAdConsentInformation;
import com.windmill.sdk.custom.WMCustomAdapterProxy;
import com.windmill.sdk.point.PointCategory;
import com.windmill.sdk.point.PointEntityWMGdpr;
import com.windmill.sdk.point.PointType;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f86641a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f86642g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f86643h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f86644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f86645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f86646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f86647e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f86648f = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Boolean f86649i;

    public static c a() {
        if (f86641a == null) {
            synchronized (c.class) {
                if (f86641a == null) {
                    f86641a = new c();
                }
            }
        }
        return f86641a;
    }

    public static boolean b() {
        return (h() == 1) || !j();
    }

    public static int h() {
        return f86643h;
    }

    public static boolean j() {
        return f86642g;
    }

    private void l() {
        try {
            for (WMCustomAdapterProxy wMCustomAdapterProxy : h.a().f86661b.values()) {
                if (wMCustomAdapterProxy != null) {
                    wMCustomAdapterProxy.notifyPrivacyStatusChange();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int c() {
        return this.f86647e;
    }

    public int d() {
        return this.f86648f;
    }

    public boolean e() {
        return this.f86646d;
    }

    public boolean f() {
        return this.f86645c;
    }

    public boolean g() {
        Boolean bool = this.f86649i;
        return bool == null || bool.booleanValue() != this.f86645c;
    }

    public void i() {
        PointEntityWMGdpr pointEntityWMGdpr = new PointEntityWMGdpr();
        pointEntityWMGdpr.setUser_consent(String.valueOf(h()));
        String str = "1";
        pointEntityWMGdpr.setGdpr_region(j() ? "1" : "0");
        try {
            if (!WindAdConsentInformation.getInstance(this.f86644b).isRequestLocationInEeaOrUnknown()) {
                str = "0";
            }
            pointEntityWMGdpr.setGdpr_dialog_region(str);
        } catch (Throwable unused) {
        }
        pointEntityWMGdpr.setSub_category("consent");
        pointEntityWMGdpr.setCategory("gdpr");
        pointEntityWMGdpr.setAc_type(PointType.WIND_MILL_GDPR);
        pointEntityWMGdpr.commit();
    }

    public Context k() {
        return this.f86644b;
    }

    public void c(int gdprConSentStatus, boolean isPoint) {
        if (f86643h != gdprConSentStatus) {
            l();
        }
        f86643h = gdprConSentStatus;
        SharedPreferences.Editor editorEdit = com.windmill.sdk.utils.n.a(this.f86644b).edit();
        editorEdit.putInt(Constants.GDPR_CONSENT_STATUS, gdprConSentStatus);
        editorEdit.commit();
        if (isPoint) {
            i();
        }
    }

    public void b(int age_restricted, boolean isPoint) {
        if (this.f86648f != age_restricted) {
            l();
        }
        this.f86648f = age_restricted;
        SharedPreferences.Editor editorEdit = com.windmill.sdk.utils.n.a(this.f86644b).edit();
        editorEdit.putInt(Constants.AGE_RESTRICTED_STATUS, this.f86648f);
        editorEdit.commit();
        if (isPoint) {
            PointEntityWMGdpr pointEntityWMGdpr = new PointEntityWMGdpr();
            pointEntityWMGdpr.setAge_restricted(String.valueOf(age_restricted));
            pointEntityWMGdpr.setAc_type(PointType.WIND_MILL_GDPR);
            pointEntityWMGdpr.setSub_category("coppa");
            pointEntityWMGdpr.setCategory("privacy");
            pointEntityWMGdpr.commit();
        }
    }

    public void a(int userAge, boolean isPoint) {
        this.f86647e = userAge;
        SharedPreferences.Editor editorEdit = com.windmill.sdk.utils.n.a(this.f86644b).edit();
        editorEdit.putInt(Constants.USER_AGE, this.f86647e);
        editorEdit.commit();
        if (isPoint) {
            PointEntityWMGdpr pointEntityWMGdpr = new PointEntityWMGdpr();
            pointEntityWMGdpr.setAge(String.valueOf(userAge));
            pointEntityWMGdpr.setAc_type(PointType.WIND_MILL_GDPR);
            pointEntityWMGdpr.setSub_category(PointCategory.AGE);
            pointEntityWMGdpr.setCategory("privacy");
            pointEntityWMGdpr.commit();
        }
    }

    public void b(boolean isPersonalizedAdvertisingOn, boolean isPoint) {
        if (this.f86649i == null) {
            this.f86649i = Boolean.valueOf(isPersonalizedAdvertisingOn);
        }
        if (this.f86645c != isPersonalizedAdvertisingOn) {
            l();
        }
        this.f86645c = isPersonalizedAdvertisingOn;
        if (isPoint) {
            PointEntityWMGdpr pointEntityWMGdpr = new PointEntityWMGdpr();
            pointEntityWMGdpr.setIs_unpersonalized(this.f86645c ? "0" : "1");
            pointEntityWMGdpr.setAc_type(PointType.WIND_MILL_GDPR);
            pointEntityWMGdpr.setSub_category("personalized");
            pointEntityWMGdpr.setCategory("privacy");
            pointEntityWMGdpr.commit();
        }
    }

    public void a(boolean isAdult, boolean isPoint) {
        this.f86646d = isAdult;
        if (isPoint) {
            PointEntityWMGdpr pointEntityWMGdpr = new PointEntityWMGdpr();
            pointEntityWMGdpr.setIs_minor(this.f86646d ? "0" : "1");
            pointEntityWMGdpr.setAc_type(PointType.WIND_MILL_GDPR);
            pointEntityWMGdpr.setSub_category("adult");
            pointEntityWMGdpr.setCategory("privacy");
            pointEntityWMGdpr.commit();
        }
    }

    public void a(boolean extGDPRRegion) {
        SharedPreferences.Editor editorEdit = com.windmill.sdk.utils.n.a(this.f86644b).edit();
        editorEdit.putBoolean(Constants.EXT_GDPR_REGION, extGDPRRegion);
        editorEdit.commit();
        f86642g = extGDPRRegion;
        i();
    }

    public void a(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            this.f86644b = applicationContext;
            f86642g = com.windmill.sdk.utils.n.a(applicationContext).getBoolean(Constants.EXT_GDPR_REGION, false);
        }
    }
}
