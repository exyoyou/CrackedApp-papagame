package com.aggmoread.sdk.z.a.t;

import android.content.Context;
import com.aggmoread.sdk.z.a.j.n;
import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f4058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f4061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private n f4062e;

    class a extends com.aggmoread.sdk.z.a.j.i {
        a() {
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void a() {
            com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "onConnectSuccess enter");
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void c() {
            com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "onStartReadBytes enter");
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void a(int i10, String str) {
            com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "onError enter , code = " + i10 + " , message = " + str);
            g.this.f4061d.a(i10, str);
        }

        @Override // com.aggmoread.sdk.z.a.j.i
        public void a(File file) {
            if (file == null || !file.exists()) {
                com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "onCompleted enter , downloadFile not found");
                g.this.f4061d.a(-2001, "cached file not found error");
                return;
            }
            String absolutePath = file.getAbsolutePath();
            com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "onCompleted enter , downloadFile = " + absolutePath);
            g.this.f4061d.a(absolutePath);
        }
    }

    public interface b {
        void a(int i10, String str);

        void a(String str);
    }

    public g(Context context, String str) {
        this.f4058a = context;
        this.f4059b = str;
        this.f4060c = com.aggmoread.sdk.z.a.j.g.a(str) + ".mp4";
    }

    public void b() {
        try {
            File file = new File(com.aggmoread.sdk.z.a.j.b.c(this.f4058a), this.f4060c);
            if (file.exists()) {
                com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "tmp delete  " + file.delete());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "tmp delete err " + e10);
        }
    }

    public void a() {
        com.aggmoread.sdk.z.a.d.d("JuHeVideoPreloadTag", "cancel ");
        n nVar = this.f4062e;
        if (nVar != null) {
            nVar.a();
            this.f4062e = null;
        }
    }

    public void a(b bVar) {
        this.f4061d = bVar;
        n nVarA = new n.a(this.f4058a).c(this.f4059b).a(com.aggmoread.sdk.z.a.j.b.c(this.f4058a).getAbsolutePath()).b(this.f4060c).a(true).b(3).a(3).a((com.aggmoread.sdk.z.a.j.k) null).a(new a()).a();
        this.f4062e = nVarA;
        nVarA.m();
    }
}
