package com.beizi.ad.v2.e;

import android.text.TextUtils;
import com.beizi.ad.internal.c;
import com.beizi.ad.internal.e.q;
import com.beizi.ad.internal.e.u;
import com.beizi.ad.internal.f;
import com.beizi.ad.lance.a.m;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.model.g;
import com.beizi.ad.model.i;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class b {
    private boolean a(int i10) {
        return i10 == 200;
    }

    private byte[] b(com.beizi.ad.model.b bVar) {
        String strA = a(bVar);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return strA.getBytes();
    }

    public void a(com.beizi.ad.model.b bVar, a aVar, f fVar) {
        String strG;
        if (bVar == null || aVar == null) {
            return;
        }
        try {
            String strE = c.a().e();
            if (fVar == f.REWARDEDVIDEO) {
                strG = c.a().f();
                if (!TextUtils.isEmpty(strG)) {
                    bVar.c("5.0.0");
                    strE = strG;
                }
            } else if (fVar == f.NATIVE) {
                strG = c.a().g();
                if (!TextUtils.isEmpty(strG)) {
                    bVar.c("5.0.0");
                    strE = strG;
                }
            }
            n.d("lance", "getRequestBaseUrl:" + strE);
            HttpURLConnection httpURLConnectionA = a(new URL(strE));
            byte[] bArrB = b(bVar);
            if (bArrB == null) {
                aVar.a(4);
                return;
            }
            a(httpURLConnectionA, bArrB);
            httpURLConnectionA.connect();
            if (!a(httpURLConnectionA.getResponseCode())) {
                aVar.a(2);
                return;
            }
            InputStream inputStream = httpURLConnectionA.getInputStream();
            String strA = com.beizi.ad.model.c.i.a(inputStream);
            inputStream.close();
            if (TextUtils.isEmpty(strA)) {
                aVar.a(3);
            } else {
                aVar.a(strA);
            }
        } catch (Exception unused) {
        }
    }

    public String a(com.beizi.ad.model.b bVar) {
        c cVarA = c.a();
        com.beizi.ad.internal.e.a aVarA = com.beizi.ad.internal.e.a.a();
        boolean z10 = (bVar == null || TextUtils.isEmpty(bVar.f())) ? false : true;
        g.a aVarA2 = new g.a.C0232a().a(aVarA.d()).j(aVarA.e()).l(aVarA.w()).m(aVarA.x()).n(aVarA.b()).b("").c(aVarA.r()).a(i.e.PLATFORM_ANDROID).a(aVarA.n()).d(aVarA.s()).e(aVarA.t()).f(aVarA.u()).g(aVarA.g()).h(aVarA.h()).i(aVarA.v()).k(aVarA.f()).o(aVarA.k()).a(aVarA.m()).p(aVarA.p()).q(aVarA.q()).r(aVarA.o()).s(aVarA.i()).t(aVarA.j()).u(aVarA.l()).v(aVarA.c()).a(c.a().j()).w(aVarA.D()).x(aVarA.E()).b(z10).a();
        q qVarA = q.a();
        qVarA.d();
        g.c.a aVar = new g.c.a();
        aVar.a(qVarA.b());
        aVar.a(qVarA.c());
        aVar.a(z10);
        if (!TextUtils.isEmpty(qVarA.f9042b) && !TextUtils.isEmpty(qVarA.f9043c)) {
            aVar.a(new g.b.a().b(qVarA.f9043c).a(qVarA.f9042b).c(qVarA.f9044d).a(qVarA.f9045e).a());
        }
        com.beizi.ad.model.a.b.C0228a c0228aA = new com.beizi.ad.model.a.b.C0228a().a(aVarA.z()).a(i.h.SRC_APP).a(i.g.REQ_AD).a(com.beizi.ad.lance.a.q.c()).b(cVarA.b()).a(aVarA2).a(aVar.a()).c(aVarA.y()).d(aVarA.C()).b(aVarA.A()).c(aVarA.B()).a(z10);
        com.beizi.ad.model.a.C0226a.C0227a c0227a = new com.beizi.ad.model.a.C0226a.C0227a();
        if (bVar != null) {
            c0227a.a(bVar.a());
            c0227a.b(bVar.c());
            if (bVar.b()) {
                c0227a.a(1);
            } else {
                c0227a.a(0);
            }
            c0227a.a(bVar.d());
            c0227a.b(bVar.e());
            c0227a.c(bVar.f());
            c0227a.d(c.a().m());
        }
        c0228aA.a(c0227a.a());
        com.beizi.ad.model.a.b bVarA = c0228aA.a();
        String strA = com.beizi.ad.lance.a.a.a(m.a(), bVarA.toString());
        n.d("lance", "sdkRequest:" + bVarA.toString());
        return strA;
    }

    private HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(5000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("POST");
        return httpURLConnection;
    }

    private void a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setRequestProperty("User-Agent", c.a().f8767e);
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        String strA = u.a();
        if (!TextUtils.isEmpty(strA)) {
            httpURLConnection.setRequestProperty("Cookie", strA);
        }
        httpURLConnection.setRequestProperty("Connect-Length", Integer.toString(bArr.length));
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bArr);
        outputStream.flush();
        outputStream.close();
    }

    public String a(String str, boolean z10) {
        com.beizi.ad.internal.e.a aVarA = com.beizi.ad.internal.e.a.a();
        g.a aVarA2 = new g.a.C0232a().a(aVarA.d()).j(aVarA.e()).l(aVarA.w()).m(aVarA.x()).n(aVarA.b()).b("").c(aVarA.r()).a(i.e.PLATFORM_ANDROID).a(aVarA.n()).d(aVarA.s()).e(aVarA.t()).f(aVarA.u()).g(aVarA.g()).h(aVarA.h()).i(aVarA.v()).k(aVarA.f()).o(aVarA.k()).a(aVarA.m()).p(aVarA.p()).q(aVarA.q()).r(aVarA.o()).s(aVarA.i()).t(aVarA.j()).u(aVarA.l()).v(aVarA.c()).a(c.a().j()).w(aVarA.D()).x(aVarA.E()).a();
        q qVarA = q.a();
        qVarA.d();
        g.c.a aVar = new g.c.a();
        aVar.a(qVarA.b());
        aVar.a(qVarA.c());
        if (!TextUtils.isEmpty(qVarA.f9042b) && !TextUtils.isEmpty(qVarA.f9043c)) {
            aVar.a(new g.b.a().b(qVarA.f9043c).a(qVarA.f9042b).c(qVarA.f9044d).a(qVarA.f9045e).a());
        }
        com.beizi.ad.model.a.b.C0228a c0228aC = new com.beizi.ad.model.a.b.C0228a().a(aVarA.z()).a(i.h.SRC_APP).a(i.g.REQ_AD).a(com.beizi.ad.lance.a.q.c()).a(aVarA2).a(aVar.a()).c(aVarA.y()).d(aVarA.C()).b(aVarA.A()).c(aVarA.B());
        c0228aC.a(new com.beizi.ad.model.a.C0226a.C0227a().b(str).a(z10 ? 1 : 0).d(c.a().m()).a());
        com.beizi.ad.model.a.b bVarA = c0228aC.a();
        String strA = com.beizi.ad.lance.a.a.a(m.a(), bVarA.toString());
        n.d("lance", "sdkRequest:" + bVarA.toString());
        return strA;
    }
}
