package com.aggmoread.sdk.z.a.s;

/* JADX INFO: loaded from: classes7.dex */
public interface e extends com.aggmoread.sdk.z.a.i.h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e f3897f = new a();

    static class a implements e {
        a() {
        }

        @Override // com.aggmoread.sdk.z.a.s.e
        public void a() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdDismissed enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.e
        public void d() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdExposure enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.e
        public void onAdClicked() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdClicked enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.e
        public void onAdShow() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdShow enter");
        }

        @Override // com.aggmoread.sdk.z.a.i.h
        public void a(com.aggmoread.sdk.z.a.g.f fVar) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onAdError = ");
            sb2.append(fVar != null ? fVar.toString() : "empty");
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", sb2.toString());
        }
    }

    void a();

    void d();

    void onAdClicked();

    void onAdShow();
}
