package com.kwad.sdk.core.i;

import android.app.ActivityManager;
import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.LocaleList;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.byazt.hv.TTDownloadField;
import com.kwad.sdk.utils.AbiUtil;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.bt;
import com.kwad.sdk.utils.n;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements c {
    private static Locale aZf;
    private String aTY;
    private boolean aZd = true;
    private Map<String, String> aZe = new LinkedHashMap();

    private StringBuilder OD() {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : this.aZe.entrySet()) {
            sb2.append(" ");
            sb2.append(entry.getKey());
            sb2.append(e.F0);
            sb2.append(entry.getValue());
        }
        return sb2;
    }

    private static String OE() {
        if (Build.VERSION.SDK_INT >= 24) {
            aZf = LocaleList.getDefault().get(0);
        } else {
            aZf = Locale.getDefault();
        }
        if (aZf == null) {
            aZf = Locale.CHINESE;
        }
        return aZf.getLanguage();
    }

    private static long aM(long j10) {
        if (j10 > 524288000) {
            return 524288000L;
        }
        return j10;
    }

    private static long aN(long j10) {
        long j11 = j10 / 512000;
        if (j11 == 0) {
            return 524288000L;
        }
        return (j11 == 1 ? j10 / 2 : j10 / 3) * 1024;
    }

    private void cf(Context context) {
        this.aZe.put("Yoda", "3.2.11-rc1");
        this.aZe.put("Kwai", "11.8.10");
        this.aZe.put("OS_PRO_BIT", String.valueOf(AbiUtil.isArm64(context) ? 1 : 0));
        this.aZe.put("MAX_PHY_MEM", String.valueOf(bt.et(context) >> 20));
        this.aZe.put("KDT", "PHONE");
        this.aZe.put("AZPREFIX", "az4");
        this.aZe.put("ICFO", "0");
        this.aZe.put("StatusHT", String.valueOf(com.kwad.sdk.c.a.a.bz(context)));
        this.aZe.put("TitleHT", "44");
        this.aZe.put("NetType", ch(context));
        this.aZe.put("ISLP", String.valueOf(ci(context)));
        this.aZe.put("ISDM", String.valueOf(cj(context)));
        int iEs = bt.es(context);
        this.aZe.put("ISLB", String.valueOf((iEs <= 0 || iEs >= 15) ? 0 : 1));
        this.aZe.put("locale", OE());
        this.aZe.put("SHP", String.valueOf(n.getScreenHeight(context)));
        this.aZe.put("SWP", String.valueOf(n.getScreenWidth(context)));
        this.aZe.put("SD", String.valueOf(n.df(context)));
        this.aZe.put("CD", "0");
        this.aZe.put("ISLM", String.valueOf(ck(context)));
    }

    private String cg(Context context) {
        if (!TextUtils.isEmpty(this.aTY)) {
            return this.aTY;
        }
        if (context == null) {
            return "";
        }
        try {
            if (!TextUtils.isEmpty(this.aTY)) {
                return this.aTY;
            }
            this.aTY = WebSettings.getDefaultUserAgent(context);
            return this.aTY;
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e10);
        }
    }

    private static String ch(Context context) {
        NetworkInfo networkInfoDz;
        if (context == null || (networkInfoDz = aq.dz(context)) == null) {
            return "DISABLE";
        }
        int type = networkInfoDz.getType();
        if (type != 0) {
            return type != 1 ? "unknown" : t7.a.f97141e;
        }
        String subtypeName = networkInfoDz.getSubtypeName();
        return TextUtils.isEmpty(subtypeName) ? networkInfoDz.getTypeName() : subtypeName;
    }

    private static int ci(Context context) {
        return !AbiUtil.isArm64(context) || ((bt.et(context) >> 20) > 4096L ? 1 : ((bt.et(context) >> 20) == 4096L ? 0 : -1)) <= 0 ? 1 : 0;
    }

    private static int cj(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 48) == 32 ? 1 : 0;
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return 0;
        }
    }

    private static int ck(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return !memoryInfo.lowMemory && (memoryInfo.availMem > (aM(memoryInfo.threshold) + aN(Debug.getPss())) ? 1 : (memoryInfo.availMem == (aM(memoryInfo.threshold) + aN(Debug.getPss())) ? 0 : -1)) > 0 ? 0 : 1;
    }

    @Override // com.kwad.sdk.core.i.c
    public final String OC() {
        return this.aZd ? "kwai-android aegon/4.6.3.1" : "kwai-android aegon/4.6.3";
    }

    @Override // com.kwad.sdk.core.i.c
    public final void bJ(boolean z10) {
        this.aZd = z10;
    }

    @Override // com.kwad.sdk.core.i.c
    public final String cd(Context context) {
        return cg(context);
    }

    @Override // com.kwad.sdk.core.i.c
    public final String ce(Context context) {
        try {
            if (this.aZe.isEmpty()) {
                cf(context);
            }
            StringBuilder sbOD = OD();
            if (this.aZd) {
                sbOD.insert(0, " KRN/3.6.6");
            }
            return sbOD.toString();
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.w("KwaiUAGetter", "getWebViewUASuffix: " + th.getMessage());
            return "";
        }
    }
}
