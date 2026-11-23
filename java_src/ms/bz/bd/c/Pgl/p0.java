package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class p0 implements q0.pgla {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f94407c;
    private final Context tt;
    private final pblv ve;

    p0(pblv pblvVar, Context context, long j10) {
        if (context == null) {
            throw new NullPointerException("context could not be null");
        }
        this.ve = pblvVar;
        this.tt = context.getApplicationContext();
        this.f94407c = j10;
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final Map<String, String> getFeatureHash(String str, byte[] bArr) {
        HashMap map = new HashMap();
        if (str != null && str.length() != 0) {
            long j10 = this.f94407c;
            int i10 = pblz.f94453c;
            String[] strArr = (String[]) com.volcengine.mobsecBiz.matrix.pgla.a(33554438, 0, j10, str, bArr);
            if (strArr != null && strArr.length % 2 == 0) {
                for (int i11 = 0; i11 < strArr.length; i11 += 2) {
                    String str2 = strArr[i11];
                    String str3 = strArr[i11 + 1];
                    if (str2 != null && str3 != null) {
                        map.put(str2, str3);
                    }
                }
            }
        }
        return map;
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final String getToken() {
        long j10 = this.f94407c;
        if (j10 == -1) {
            return "";
        }
        int i10 = pblz.f94453c;
        return (String) com.volcengine.mobsecBiz.matrix.pgla.a(33554439, 0, j10, null, null);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void report(String str) {
        if (this.f94407c == -1 || TextUtils.isEmpty(str)) {
            return;
        }
        long j10 = this.f94407c;
        Context context = this.tt;
        int i10 = pblz.f94453c;
        com.volcengine.mobsecBiz.matrix.pgla.a(InputDeviceCompat.SOURCE_HDMI, 0, j10, str, context);
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setBDDeviceID(String str) {
        this.ve.f94437d = str;
        long j10 = this.f94407c;
        if (j10 != -1) {
            Context context = this.tt;
            int i10 = pblz.f94453c;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554437, 0, j10, str, context);
        }
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setCollectMode(int i10) {
        long j10 = this.f94407c;
        if (j10 != -1) {
            int i11 = pblz.f94453c;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554441, i10, j10, null, null);
        }
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setDeviceID(String str) {
        this.ve.f94436c = str;
        long j10 = this.f94407c;
        if (j10 != -1) {
            Context context = this.tt;
            int i10 = pblz.f94453c;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554434, 0, j10, str, context);
        }
    }

    @Override // ms.bz.bd.c.Pgl.q0.pgla
    public final void setInstallID(String str) {
        this.ve.f94438e = str;
        long j10 = this.f94407c;
        if (j10 != -1) {
            Context context = this.tt;
            int i10 = pblz.f94453c;
            com.volcengine.mobsecBiz.matrix.pgla.a(33554435, 0, j10, str, context);
        }
    }
}
