package com.aggmoread.sdk.z.a.p;

/* JADX INFO: loaded from: classes7.dex */
public interface c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f3790a = new a();

    static class a implements c {
        a() {
        }

        @Override // com.aggmoread.sdk.z.a.p.c
        public void a(boolean z10) {
            com.aggmoread.sdk.z.a.d.d("ConnectivityListener", "onConnectivityChanged isConnected = " + z10);
        }
    }

    void a(boolean z10);
}
