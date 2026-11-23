package com.aggmoread.sdk.z.a.h;

import android.content.Context;
import com.aggmoread.sdk.z.a.i.e;
import com.aggmoread.sdk.z.a.i.h;
import com.aggmoread.sdk.z.a.m.p;

/* JADX INFO: loaded from: classes7.dex */
public class c extends e {

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ h f3486b;

        a(h hVar) {
            this.f3486b = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.aggmoread.sdk.z.a.s.b.a(c.this, this.f3486b);
        }
    }

    public static class b extends e.a<b, c> {
        public b(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.aggmoread.sdk.z.a.i.e.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public c f() {
            return new c(null);
        }
    }

    private c() {
    }

    @Override // com.aggmoread.sdk.z.a.i.e
    protected void a(h hVar) {
        p.a(new a(hVar));
    }

    /* synthetic */ c(a aVar) {
        this();
    }
}
