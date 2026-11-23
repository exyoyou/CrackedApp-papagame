package com.kwad.components.core.m;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.d.c;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
    private static SimpleDateFormat abh = new SimpleDateFormat("yyyy-MM-dd");
    public int abi;
    public long abj;

    public final boolean l(int i10, int i11) {
        c.d("AdForceActiveInfo", "checkAndAddCount forceActiveIntervalHour: " + i10 + ", forceActiveThreshold: " + i11);
        if (this.abj <= 0) {
            to();
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = abh.format(new Date(this.abj));
        String str2 = abh.format(new Date(jCurrentTimeMillis));
        c.d("AdForceActiveInfo", "checkAndAddCount lastDate: " + str + ", currentDate: " + str2);
        if (!str.equals(str2)) {
            this.abi = 0;
            to();
            return true;
        }
        long j10 = this.abj + (((long) i10) * 60 * 60 * 1000);
        c.d("AdForceActiveInfo", "checkAndAddCount minTimestamp: " + j10 + ", currentActiveCount: " + this.abi);
        if (j10 >= jCurrentTimeMillis || this.abi > i11) {
            return false;
        }
        to();
        return true;
    }

    public final void to() {
        this.abj = System.currentTimeMillis();
        this.abi++;
        c.d("AdForceActiveInfo", "doAddCount, lastForceActiveTimestamp: " + this.abj + ", currentActiveCount " + this.abi);
    }
}
