package com.aggmoread.sdk.b;

import com.aggmoread.sdk.client.AMAdDownloadConfirmListener;
import com.aggmoread.sdk.client.AMAdExtras;
import com.aggmoread.sdk.client.AMAdInterface;
import com.aggmoread.sdk.client.AMConst;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c implements AMAdInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.a f3238a;

    public c(com.aggmoread.sdk.z.c.a.a.c.a aVar, d dVar) {
        this.f3238a = aVar;
    }

    protected abstract Map<String, Object> a();

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public final AMAdExtras getAdExtras() {
        return new AMAdExtras(a());
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public int getEcpm() {
        Map<String, Object> mapA = a();
        if (mapA == null) {
            return -1;
        }
        Object obj = mapA.get(AMConst.ExtrasKey.AD_PRICE);
        if (!(obj instanceof String)) {
            return -1;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public String getID() {
        return this.f3238a.getID();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public String getSource() {
        Map<String, Object> mapA = a();
        if (mapA == null) {
            return "unknown";
        }
        Object obj = mapA.get("EXTRA_KEY_network_name_text");
        return obj instanceof String ? (String) obj : "unknown";
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void notifyBidFail(int i10, int i11, String str) {
        this.f3238a.a(i10, i11, str);
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void notifyBidSuccess(int i10) {
        this.f3238a.a(i10);
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void setDownloadConfirmListener(AMAdDownloadConfirmListener aMAdDownloadConfirmListener) {
        this.f3238a.a(new b(aMAdDownloadConfirmListener));
    }
}
