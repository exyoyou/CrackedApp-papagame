package com.aggmoread.sdk.z.a.s;

/* JADX INFO: loaded from: classes7.dex */
public interface c extends com.aggmoread.sdk.z.a.i.h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f3895d = new a();

    static class a implements c {
        a() {
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void a() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdDismissed enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void d() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdExposure enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onAdClicked() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdClicked enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onAdShow() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdShow enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onVideoCached() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onVideoCached enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void onVideoCompleted() {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onVideoCompleted enter");
        }

        @Override // com.aggmoread.sdk.z.a.s.c
        public void a(com.aggmoread.sdk.z.a.a aVar) {
            com.aggmoread.sdk.z.a.d.d("DspListenerSplash_[EMPTY]", "onAdLoaded enter");
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

    void a(com.aggmoread.sdk.z.a.a aVar);

    void d();

    void onAdClicked();

    void onAdShow();

    void onVideoCached();

    void onVideoCompleted();
}
