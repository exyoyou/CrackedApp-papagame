package com.aggmoread.sdk.z.c.a.a.e;

import android.content.SharedPreferences;
import com.join.mgps.Util.v0;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f5231b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f5232a;

    class a implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f5234b;

        a(h hVar, String str, String str2) {
            this.f5233a = str;
            this.f5234b = str2;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.h.e
        public boolean a(SharedPreferences.Editor editor) {
            editor.putString(this.f5233a, p.d(this.f5234b));
            return false;
        }
    }

    class b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5235a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ long f5236b;

        b(h hVar, String str, long j10) {
            this.f5235a = str;
            this.f5236b = j10;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.h.e
        public boolean a(SharedPreferences.Editor editor) {
            editor.putLong(this.f5235a, this.f5236b);
            return false;
        }
    }

    class c implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f5238b;

        c(h hVar, String str, boolean z10) {
            this.f5237a = str;
            this.f5238b = z10;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.h.e
        public boolean a(SharedPreferences.Editor editor) {
            editor.putBoolean(this.f5237a, this.f5238b);
            return false;
        }
    }

    class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f5239a;

        d(h hVar, String str) {
            this.f5239a = str;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.h.e
        public boolean a(SharedPreferences.Editor editor) {
            editor.remove(this.f5239a);
            return false;
        }
    }

    public interface e {
        boolean a(SharedPreferences.Editor editor);
    }

    public h(String str) {
        this.f5232a = com.aggmoread.sdk.z.c.a.a.e.c.r() + "_" + str;
    }

    public int a(String str, int i10) {
        return b().getInt(str, i10);
    }

    protected SharedPreferences b() {
        return com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getSharedPreferences(this.f5232a, 0);
    }

    public long a(String str, long j10) {
        return b().getLong(str, j10);
    }

    public void b(String str, long j10) {
        a(new b(this, str, j10));
    }

    public static h a() {
        if (f5231b == null) {
            synchronized (h.class) {
                if (f5231b == null) {
                    f5231b = new h(v0.f50057a);
                }
            }
        }
        return f5231b;
    }

    public void b(String str, String str2) {
        a(new a(this, str, str2));
    }

    public String a(String str, String str2) {
        return p.c(b().getString(str, str2));
    }

    public void b(String str, boolean z10) {
        a(new c(this, str, z10));
    }

    public void a(e eVar) {
        SharedPreferences.Editor editorEdit = b().edit();
        if (eVar.a(editorEdit)) {
            editorEdit.commit();
        } else {
            editorEdit.apply();
        }
    }

    public void a(String str) {
        a(new d(this, str));
    }

    public boolean a(String str, boolean z10) {
        return b().getBoolean(str, z10);
    }
}
