package com.aggmoread.sdk.z.a.m;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    static class a implements com.aggmoread.sdk.z.a.v.a.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3710a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f3711b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3712c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c.a.b f3713d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.d f3714e;

        a(d dVar, com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.g.d dVar2) {
            this.f3711b = dVar;
            this.f3712c = cVar;
            this.f3713d = bVar;
            this.f3714e = dVar2;
        }

        @Override // com.aggmoread.sdk.z.a.v.a.h
        public void a() {
            this.f3710a = true;
            l.b(this.f3712c, this.f3713d, this.f3714e, this.f3711b);
        }

        @Override // com.aggmoread.sdk.z.a.v.a.h
        public void onDismiss() {
            d dVar = this.f3711b;
            if (dVar == null || this.f3710a) {
                return;
            }
            dVar.c();
        }

        @Override // com.aggmoread.sdk.z.a.v.a.h
        public void onRenderSuccess() {
        }
    }

    static class b extends com.aggmoread.sdk.z.a.s.h.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.d f3715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c f3716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c.a.b f3717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ d f3718d;

        b(com.aggmoread.sdk.z.a.g.d dVar, com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, d dVar2) {
            this.f3715a = dVar;
            this.f3716b = cVar;
            this.f3717c = bVar;
            this.f3718d = dVar2;
        }

        @Override // com.aggmoread.sdk.z.a.s.h.c
        public void a(com.aggmoread.sdk.z.a.s.h.b bVar) {
            if (bVar.a()) {
                com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "ClickUrlRequestJuHeApi onResult enter, empty");
                return;
            }
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "ClickUrlRequestJuHeApi onResult enter, clickUrlResponse = " + bVar);
            com.aggmoread.sdk.z.a.g.d dVar = this.f3715a;
            dVar.f3427i = bVar.f3938a;
            l.b(bVar.f3939b, this.f3716b, this.f3717c, dVar);
            d dVar2 = this.f3718d;
            if (dVar2 != null) {
                dVar2.a();
            }
        }
    }

    static class c extends com.aggmoread.sdk.z.a.j.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.c.a.b f3719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.g.d f3720c;

        c(com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.g.d dVar) {
            this.f3719b = bVar;
            this.f3720c = dVar;
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a() {
            super.a();
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "apkIsDownLoading  ");
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b() {
            super.b();
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onStartDownload  ");
            com.aggmoread.sdk.z.a.q.a.a("onStartDownload", this.f3719b.f3400l, this.f3720c);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void c(long j10) {
            super.c(j10);
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onStartApkInstaller  ");
            com.aggmoread.sdk.z.a.q.a.a("onStartApkInstaller", this.f3719b.c(), this.f3720c);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a(long j10) {
            super.a(j10);
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onApkInstalled  ");
            com.aggmoread.sdk.z.a.q.a.a("onApkInstalled", this.f3719b.d(), this.f3720c);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b(long j10) {
            super.b(j10);
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onDownloadSuccess  ");
            com.aggmoread.sdk.z.a.q.a.a("onDownloadCompleted", this.f3719b.b(), this.f3720c);
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void a(long j10, int i10, String str) {
            super.a(j10, i10, str);
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onApkInstalledError  ");
        }

        @Override // com.aggmoread.sdk.z.a.j.c
        public void b(long j10, int i10, String str) {
            super.b(j10, i10, str);
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onDownloadFail  ");
        }
    }

    public interface d {
        void a();

        void b();

        void c();

        void d();

        void e();

        void f();
    }

    public static void a(View view, com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.g.d dVar, com.aggmoread.sdk.z.a.i.h hVar) {
        a(view, cVar, bVar, dVar, hVar, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.g.d dVar, d dVar2) {
        Intent intentA;
        Context applicationContext = cVar.e().l().getApplicationContext();
        String strO = bVar.o();
        if (com.aggmoread.sdk.z.a.m.d.c(applicationContext, strO) && (intentA = com.aggmoread.sdk.z.a.m.d.a(applicationContext, strO)) != null) {
            com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "intent = " + intentA);
            intentA.addFlags(C.ENCODING_PCM_MU_LAW);
            applicationContext.startActivity(intentA);
            if (dVar2 != null) {
                dVar2.f();
                return;
            }
            return;
        }
        if (bVar.h() != 2) {
            b(bVar.i(), cVar, bVar, dVar);
            if (dVar2 != null) {
                dVar2.d();
                return;
            }
            return;
        }
        String strA = com.aggmoread.sdk.z.a.q.a.a(bVar.e(), dVar);
        com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "rClickUrl = " + strA);
        com.aggmoread.sdk.z.a.s.h.a(strA, new b(dVar, cVar, bVar, dVar2));
    }

    public static void a(View view, com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.g.d dVar, com.aggmoread.sdk.z.a.i.h hVar, com.aggmoread.sdk.z.a.u.c.a aVar, d dVar2) {
        List<String> listA;
        String str;
        com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "metaGroupBean.deeplink = " + bVar.f3392d);
        String str2 = bVar.f3392d;
        if (str2 != null && !TextUtils.isEmpty(str2)) {
            try {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(bVar.f3392d));
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                PackageManager packageManager = com.aggmoread.sdk.z.a.h.a.d().a() != null ? com.aggmoread.sdk.z.a.h.a.d().a().getPackageManager() : null;
                if ((packageManager != null ? packageManager.resolveActivity(intent, 65536) : null) != null) {
                    if (cVar.e().f() != null) {
                        cVar.e().f().startActivity(intent);
                    } else {
                        cVar.e().l().startActivity(intent);
                    }
                    com.aggmoread.sdk.z.a.q.a.a("onStartAppSuccess", bVar.a(3), dVar);
                    com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "onStartAppSuccess");
                    if (dVar2 != null) {
                        dVar2.b();
                        return;
                    }
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                com.aggmoread.sdk.z.a.d.a("JHAPIHTAG", "e %s", e10);
                if (e10 instanceof ActivityNotFoundException) {
                    listA = bVar.a(0);
                    str = "onAppNotExist";
                } else {
                    listA = bVar.a(2);
                    str = "onStartAppFailed";
                }
                com.aggmoread.sdk.z.a.q.a.a(str, listA, dVar);
                com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", str);
            }
        }
        if (bVar.t()) {
            com.aggmoread.sdk.z.a.v.a aVar2 = new com.aggmoread.sdk.z.a.v.a(new a(dVar2, cVar, bVar, dVar));
            Context contextF = cVar.e().f();
            if (contextF == null) {
                contextF = cVar.e().l();
            }
            aVar2.a(contextF, bVar.f3409u, bVar.f3410v);
            aVar2.a(contextF, view);
            return;
        }
        try {
            a(cVar, bVar, dVar, hVar, aVar);
            if (dVar2 != null) {
                dVar2.e();
            }
        } catch (com.aggmoread.sdk.z.a.u.l e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.g.d dVar) {
        try {
            new com.aggmoread.sdk.z.a.j.b(cVar.e().l().getApplicationContext(), cVar.e().k(), new c(bVar, dVar)).a(str, bVar.f3389a, bVar.f3391c);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void a(com.aggmoread.sdk.z.a.g.c cVar, com.aggmoread.sdk.z.a.g.c.a.b bVar, com.aggmoread.sdk.z.a.g.d dVar, com.aggmoread.sdk.z.a.i.h hVar, com.aggmoread.sdk.z.a.u.c.a aVar) {
        String str = bVar.f3390b;
        if (TextUtils.isEmpty(str)) {
            com.aggmoread.sdk.z.a.s.b.a(hVar, new com.aggmoread.sdk.z.a.g.f(50008, "跳转地址异常"));
            return;
        }
        com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "startWebActivity = " + str);
        String strA = com.aggmoread.sdk.z.a.q.a.a(str, dVar);
        com.aggmoread.sdk.z.a.d.d("JHAPIHTAG", "startWebActivity final = " + strA);
        Context contextL = cVar.e().l();
        String str2 = bVar.f3391c;
        if (aVar == null) {
            aVar = com.aggmoread.sdk.z.a.u.c.a.f4080a;
        }
        com.aggmoread.sdk.z.a.u.c.a(contextL, str2, strA, aVar);
    }
}
