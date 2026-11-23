package com.sigmob.sdk.base;

import android.content.Context;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.utils.z;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static i f79448e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f79450b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f79452d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f79453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f79454g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Boolean f79455h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f79449a = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f79451c = true;

    private i() {
        Context contextE = com.sigmob.sdk.b.e();
        this.f79450b = z.a(contextE, (String) null, Constants.AGE_RESTRICTED_STATUS, 0);
        this.f79452d = z.a(contextE, (String) null, Constants.USER_AGE, 0);
        this.f79454g = z.a(contextE, (String) null, Constants.GDPR_CONSENT_STATUS, 0);
        this.f79453f = z.a(contextE, (String) null, Constants.EXT_GDPR_REGION, false);
    }

    public static synchronized i a() {
        if (f79448e == null) {
            synchronized (i.class) {
                f79448e = new i();
            }
        }
        return f79448e;
    }

    public int b() {
        return this.f79452d;
    }

    public int c() {
        return this.f79450b;
    }

    public boolean d() {
        return this.f79449a;
    }

    public boolean e() {
        return this.f79451c;
    }

    public boolean f() {
        Boolean bool = this.f79455h;
        return bool == null || bool.booleanValue() != this.f79451c;
    }

    public int g() {
        return this.f79454g;
    }

    public boolean h() {
        return this.f79453f;
    }

    public boolean i() {
        return (g() == 1) || !h();
    }

    public void a(int userAge, boolean sendTrack) {
        this.f79452d = userAge;
        z.b(com.sigmob.sdk.b.e(), (String) null, Constants.USER_AGE, this.f79452d);
        if (sendTrack) {
            ad.a(userAge);
        }
    }

    public void b(int age_restricted, boolean sendTrack) {
        this.f79450b = age_restricted;
        z.b(com.sigmob.sdk.b.e(), (String) null, Constants.AGE_RESTRICTED_STATUS, this.f79450b);
        if (sendTrack) {
            ad.b(age_restricted);
        }
    }

    public void c(int gdprConSentStatus, boolean sendtrack) {
        this.f79454g = gdprConSentStatus;
        z.b(com.sigmob.sdk.b.e(), (String) null, Constants.GDPR_CONSENT_STATUS, gdprConSentStatus);
        if (sendtrack) {
            ad.a(g(), h());
        }
    }

    public void a(Boolean extGDPRRegion) {
        if (extGDPRRegion != null) {
            z.b(com.sigmob.sdk.b.e(), (String) null, Constants.EXT_GDPR_REGION, extGDPRRegion.booleanValue());
            this.f79453f = extGDPRRegion.booleanValue();
        }
        if (i()) {
            ad.a(g(), h());
            ad.b(this.f79451c);
            ad.a(this.f79449a);
            ad.b(this.f79450b);
            ad.a(this.f79452d);
        }
    }

    public void b(boolean isPersonalizedAdvertisingOn, boolean sendTrack) {
        if (this.f79455h == null) {
            this.f79455h = Boolean.valueOf(isPersonalizedAdvertisingOn);
        }
        SigmobLog.i("PrivacyManager -> setPersonalized " + isPersonalizedAdvertisingOn);
        this.f79451c = isPersonalizedAdvertisingOn;
        if (sendTrack) {
            ad.b(isPersonalizedAdvertisingOn);
        }
    }

    public void a(boolean isAdult, boolean sendTrack) {
        SigmobLog.i("PrivacyManager -> setAdult " + isAdult);
        this.f79449a = isAdult;
        if (sendTrack) {
            ad.a(isAdult);
        }
    }
}
