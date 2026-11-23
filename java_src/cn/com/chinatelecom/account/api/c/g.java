package cn.com.chinatelecom.account.api.c;

import android.net.Network;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Network f804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<String, String> f812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f813j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f814k;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f815a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Network f817c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f818d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f819e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f820f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f821g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f822h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f823i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f824j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private Map<String, String> f825k;

        public a a(int i10) {
            this.f815a = i10;
            return this;
        }

        public a b(int i10) {
            this.f816b = i10;
            return this;
        }

        public a a(Network network) {
            this.f817c = network;
            return this;
        }

        public a b(String str) {
            this.f820f = str;
            return this;
        }

        public a a(String str) {
            this.f819e = str;
            return this;
        }

        public a a(boolean z10) {
            this.f821g = z10;
            return this;
        }

        public a a(boolean z10, String str, String str2) {
            this.f822h = z10;
            this.f823i = str;
            this.f824j = str2;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    public g(a aVar) {
        this.f813j = aVar.f815a;
        this.f814k = aVar.f816b;
        this.f804a = aVar.f817c;
        this.f805b = aVar.f818d;
        this.f806c = aVar.f819e;
        this.f807d = aVar.f820f;
        this.f808e = aVar.f821g;
        this.f809f = aVar.f822h;
        this.f810g = aVar.f823i;
        this.f811h = aVar.f824j;
        this.f812i = aVar.f825k;
    }

    public int a() {
        int i10 = this.f813j;
        if (i10 > 0) {
            return i10;
        }
        return 3000;
    }

    public int b() {
        int i10 = this.f814k;
        if (i10 > 0) {
            return i10;
        }
        return 3000;
    }
}
