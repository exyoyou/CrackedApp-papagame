package com.byazt.e;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 443, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13249a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f13250c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f13251da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f13252i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13253n;
    public Drawable sp;
    public String tt;
    public String uj;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public InterfaceC0300tt f13254x;

    @com.byazt.zqa.c(c = {0, 1, 443, 194})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f13255a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f13256c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public InterfaceC0300tt f13257da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Drawable f13258i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f13259n;
        public String sp;
        public int tt;
        public String uj;
        public Context ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f13260x;

        public c(Context context) {
            this.ve = context;
        }

        public c c(String str) {
            this.uj = str;
            return this;
        }

        public c tt(String str) {
            this.f13259n = str;
            return this;
        }

        public c uj(String str) {
            this.sp = str;
            return this;
        }

        public c ve(String str) {
            this.f13255a = str;
            return this;
        }

        public c c(boolean z10) {
            this.f13260x = z10;
            return this;
        }

        public c c(Drawable drawable) {
            this.f13258i = drawable;
            return this;
        }

        public c c(InterfaceC0300tt interfaceC0300tt) {
            this.f13257da = interfaceC0300tt;
            return this;
        }

        public c c(int i10) {
            this.tt = i10;
            return this;
        }

        public tt c() {
            return new tt(this);
        }
    }

    /* JADX INFO: renamed from: com.byazt.e.tt$tt, reason: collision with other inner class name */
    public interface InterfaceC0300tt {
        void c(DialogInterface dialogInterface);

        void tt(DialogInterface dialogInterface);

        void ve(DialogInterface dialogInterface);
    }

    private tt(c cVar) {
        this.f13249a = true;
        this.f13250c = cVar.ve;
        this.tt = cVar.uj;
        this.ve = cVar.f13259n;
        this.uj = cVar.f13255a;
        this.f13253n = cVar.sp;
        this.f13249a = cVar.f13260x;
        this.sp = cVar.f13258i;
        this.f13254x = cVar.f13257da;
        this.f13252i = cVar.f13256c;
        this.f13251da = cVar.tt;
    }
}
