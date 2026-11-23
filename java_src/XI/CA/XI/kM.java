package XI.CA.XI;

import android.database.ContentObserver;

/* JADX INFO: loaded from: classes7.dex */
public class kM extends ContentObserver {
    public int K0;

    /* JADX INFO: renamed from: XI, reason: collision with root package name */
    public String f19XI;
    public K0 kM;

    public kM(K0 k10, int i10, String str) {
        super(null);
        this.kM = k10;
        this.K0 = i10;
        this.f19XI = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        K0 k10 = this.kM;
        if (k10 != null) {
            k10.K0(this.K0, this.f19XI);
        }
    }
}
