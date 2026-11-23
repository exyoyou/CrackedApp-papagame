package com.byazt.ih;

import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.byazt.yxi.uj;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1573, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15332a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15333c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final String f15334da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f15335i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f15336n;
    public final String sl;
    public final String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final String f15337t;
    public final String tt;
    public final String uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f15338x;

    public tt() {
        this.ve = "";
        this.f15333c = "";
        this.tt = "";
        this.uj = "";
        this.f15336n = "";
        this.f15332a = "";
        this.sp = "";
        this.f15338x = "";
        this.f15335i = "";
        this.f15334da = "";
        this.sl = "";
        this.f15337t = "";
    }

    public SparseArray<Object> c() {
        uj ujVarC = uj.c();
        ujVarC.c(8003, this.ve);
        ujVarC.c(8534, this.f15333c);
        ujVarC.c(8535, this.tt);
        ujVarC.c(8536, this.uj);
        ujVarC.c(8537, this.f15336n);
        ujVarC.c(8538, this.f15332a);
        ujVarC.c(8539, this.sp);
        ujVarC.c(8540, this.f15338x);
        ujVarC.c(8541, this.f15335i);
        ujVarC.c(8542, this.f15334da);
        ujVarC.c(8543, this.sl);
        ujVarC.c(8544, this.f15337t);
        return ujVarC.tt();
    }

    public String toString() {
        return "GMCustomInitConfig{mAppId='" + this.f15333c + "', mAppKey='" + this.tt + "', mADNName='" + this.ve + "', mAdnInitClassName='" + this.uj + "', mBannerClassName='" + this.f15336n + "', mInterstitialClassName='" + this.f15332a + "', mRewardClassName='" + this.sp + "', mFullVideoClassName='" + this.f15338x + "', mSplashClassName='" + this.f15335i + "', mDrawClassName='" + this.sl + "', mFeedClassName='" + this.f15334da + "'}";
    }

    @Nullable
    public String tt() {
        return this.ve;
    }

    public boolean uj() {
        return TextUtils.equals(this.f15337t, "1");
    }

    @Nullable
    public String ve() {
        return this.uj;
    }

    public tt(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.ve = str;
        this.f15333c = str2;
        this.tt = str3;
        this.uj = str4;
        this.f15336n = str5;
        this.f15332a = str6;
        this.sp = str7;
        this.f15338x = str8;
        this.f15335i = str9;
        this.f15334da = str10;
        this.sl = str11;
        this.f15337t = str12;
    }

    @Nullable
    public c c(int i10, int i11) {
        switch (i10) {
            case 1:
                return new c(this.f15336n, com.byazt.vz.c.class);
            case 2:
                return new c(this.f15332a, com.byazt.kv.c.class);
            case 3:
                return new c(this.f15335i, com.byazt.xi.c.class);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                if (i11 == 4) {
                    return new c(this.f15334da, com.byazt.rm.c.class);
                }
                if (i11 == 5) {
                    return new c(this.sl, com.byazt.df.c.class);
                }
                if (i11 == 3) {
                    return new c(this.f15336n, com.byazt.vz.c.class);
                }
                return new c(this.f15334da, com.byazt.rm.c.class);
            case 7:
                if (i11 == 6) {
                    return new c(this.sp, com.byazt.oe.c.class);
                }
                if (i11 == 7) {
                    return new c(this.f15338x, com.byazt.wp.c.class);
                }
                if (i11 == 8) {
                    return new c(this.f15332a, com.byazt.kv.c.class);
                }
                return new c(this.sp, com.byazt.oe.c.class);
            case 8:
                return new c(this.f15338x, com.byazt.wp.c.class);
            case 9:
                break;
            case 10:
                if (i11 == 1) {
                    return new c(this.f15332a, com.byazt.kv.c.class);
                }
                if (i11 == 2) {
                    return new c(this.f15338x, com.byazt.wp.c.class);
                }
                break;
        }
        return new c(this.sl, com.byazt.df.c.class);
    }
}
