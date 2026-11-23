package com.alipay.android.phone.mrpc.core;

import com.coremedia.iso.boxes.k1;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

/* JADX INFO: loaded from: classes7.dex */
public final class x extends k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private u f6966g;

    public x(u uVar, Method method, int i10, String str, byte[] bArr, boolean z10) {
        super(method, i10, str, bArr, "application/x-www-form-urlencoded", z10);
        this.f6966g = uVar;
    }

    @Override // com.alipay.android.phone.mrpc.core.f
    public final Object a() {
        c0 c0Var = new c0(this.f6966g.a());
        c0Var.f6897d = this.f6941b;
        c0Var.f6898e = this.f6944e;
        c0Var.f6901h = this.f6945f;
        c0Var.e("id", String.valueOf(this.f6943d));
        c0Var.e("operationType", this.f6942c);
        c0Var.e("gzip", String.valueOf(this.f6966g.d()));
        c0Var.f(new BasicHeader(k1.f24950p, UUID.randomUUID().toString()));
        List<Header> list = this.f6966g.c().f6947b;
        if (list != null && !list.isEmpty()) {
            Iterator<Header> it2 = list.iterator();
            while (it2.hasNext()) {
                c0Var.f(it2.next());
            }
        }
        Thread.currentThread().getId();
        c0Var.toString();
        try {
            e eVar = this.f6966g.b().a(c0Var).get();
            if (eVar != null) {
                return eVar.b();
            }
            throw new c((Integer) 9, "response is null");
        } catch (InterruptedException e10) {
            throw new c(13, "", e10);
        } catch (CancellationException e11) {
            throw new c(13, "", e11);
        } catch (ExecutionException e12) {
            Throwable cause = e12.getCause();
            if (cause == null || !(cause instanceof a)) {
                throw new c(9, "", e12);
            }
            a aVar = (a) cause;
            int iA = aVar.a();
            switch (iA) {
                case 1:
                    iA = 2;
                    break;
                case 2:
                    iA = 3;
                    break;
                case 3:
                    iA = 4;
                    break;
                case 4:
                    iA = 5;
                    break;
                case 5:
                    iA = 6;
                    break;
                case 6:
                    iA = 7;
                    break;
                case 7:
                    iA = 8;
                    break;
                case 8:
                    iA = 15;
                    break;
                case 9:
                    iA = 16;
                    break;
            }
            throw new c(Integer.valueOf(iA), aVar.b());
        }
    }
}
