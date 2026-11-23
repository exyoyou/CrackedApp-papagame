package com.cloudplay.messagesdk.network.volley.toolbox;

import android.content.Context;
import com.cloudplay.messagesdk.network.volley.Network;
import com.cloudplay.messagesdk.network.volley.RequestQueue;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class m {

    static class a implements DiskBasedCache.FileSupplier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f24102a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f24103b;

        a(Context context) {
            this.f24103b = context;
        }

        @Override // com.cloudplay.messagesdk.network.volley.toolbox.DiskBasedCache.FileSupplier
        public File get() {
            if (this.f24102a == null) {
                this.f24102a = new File(this.f24103b.getCacheDir(), "volley");
            }
            return this.f24102a;
        }
    }

    public static RequestQueue a(Context context, b bVar) {
        return a(context, bVar == null ? new c((b) new HurlStack()) : new c(bVar));
    }

    private static RequestQueue a(Context context, Network network) {
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCache(new a(context.getApplicationContext())), network);
        requestQueue.b();
        return requestQueue;
    }

    public static RequestQueue a(Context context) {
        return a(context, (b) null);
    }
}
