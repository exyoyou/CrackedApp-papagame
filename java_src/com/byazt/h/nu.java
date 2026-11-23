package com.byazt.h;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.join.mgps.Util.o0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 137})
public class nu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14812a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f14813c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final AtomicLong f14814da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f14815i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<u> f14816n;
    public boolean sp;
    public final String tt;
    public final boolean uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14817x;

    public nu(String str, boolean z10) {
        this.f14816n = new ArrayList();
        this.f14814da = new AtomicLong();
        this.f14813c = str;
        this.uj = z10;
        this.tt = null;
        this.ve = null;
    }

    private String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            int iLastIndexOf = str.lastIndexOf(o0.f49827a);
            if (iLastIndexOf <= 0 || iLastIndexOf >= str.length()) {
                return null;
            }
            return str.substring(0, iLastIndexOf);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            return null;
        }
    }

    private String n() {
        if (this.f14815i == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f14813c);
            sb2.append("_");
            String str = this.tt;
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            sb2.append("_");
            sb2.append(this.uj);
            this.f14815i = sb2.toString();
        }
        return this.f14815i;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof nu) {
            return n().equals(((nu) obj).n());
        }
        return false;
    }

    public int hashCode() {
        if (this.f14817x == 0) {
            this.f14817x = n().hashCode();
        }
        return this.f14817x;
    }

    public String toString() {
        return "UrlRecord{url='" + this.f14813c + "', ip='" + this.tt + "', ipFamily='" + this.ve + "', isMainUrl=" + this.uj + ", failedTimes=" + this.f14812a + ", isCurrentFailed=" + this.sp + '}';
    }

    public synchronized void tt(u uVar) {
        try {
            this.f14816n.remove(uVar);
        } catch (Throwable unused) {
        }
    }

    public synchronized boolean uj() {
        return this.sp;
    }

    public synchronized void ve() {
        this.sp = false;
    }

    public synchronized void tt() {
        this.f14812a++;
        this.sp = true;
    }

    public synchronized void c(u uVar) {
        this.f14816n.add(uVar);
    }

    public nu(String str, String str2) {
        this.f14816n = new ArrayList();
        this.f14814da = new AtomicLong();
        this.f14813c = str;
        this.uj = false;
        this.tt = str2;
        this.ve = c(str2);
    }

    public synchronized int c() {
        return this.f14816n.size();
    }

    public void c(long j10) {
        this.f14814da.addAndGet(j10);
    }
}
