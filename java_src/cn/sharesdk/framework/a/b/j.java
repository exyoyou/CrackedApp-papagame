package cn.sharesdk.framework.a.b;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.Hashon;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class j extends e {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static int f2554q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static long f2555r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f2559d = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f2560o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String[] f2561p;

    public static class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2563b;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public HashMap<String, Object> f2568g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2562a = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ArrayList<String> f2564c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ArrayList<String> f2565d = new ArrayList<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ArrayList<String> f2566e = new ArrayList<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ArrayList<Bitmap> f2567f = new ArrayList<>();

        public String toString() {
            HashMap map = new HashMap();
            if (!TextUtils.isEmpty(this.f2563b)) {
                String strReplaceAll = this.f2563b.trim().replaceAll("\r", "");
                this.f2563b = strReplaceAll;
                String strReplaceAll2 = strReplaceAll.trim().replaceAll("\n", "");
                this.f2563b = strReplaceAll2;
                this.f2563b = strReplaceAll2.trim().replaceAll("\r\n", "");
            }
            map.put("text", this.f2563b);
            map.put("url", this.f2564c);
            ArrayList<String> arrayList = this.f2565d;
            if (arrayList != null && arrayList.size() > 0) {
                map.put("imgs", this.f2565d);
            }
            if (this.f2568g != null) {
                map.put("attch", new Hashon().fromHashMap(this.f2568g));
            }
            return new Hashon().fromHashMap(map);
        }
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected String a() {
        return "[SHR]";
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int c() {
        return 30;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long d() {
        return f2554q;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long e() {
        return f2555r;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void f() {
        f2554q++;
    }

    @Override // cn.sharesdk.framework.a.b.e
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append('|');
        sb2.append(this.f2556a);
        sb2.append('|');
        sb2.append(this.f2557b);
        sb2.append('|');
        sb2.append(TextUtils.isEmpty(this.f2558c) ? "" : this.f2558c);
        String[] strArr = this.f2561p;
        if (strArr == null || strArr.length <= 0) {
            str = "";
        } else {
            str = "[\"" + TextUtils.join("\",\"", this.f2561p) + "\"]";
        }
        sb2.append('|');
        sb2.append(str);
        sb2.append('|');
        a aVar = this.f2559d;
        if (aVar != null) {
            try {
                String strEncodeToString = Base64.encodeToString(Data.AES128Encode(this.f2537f.substring(0, 16), aVar.toString()), 0);
                if (strEncodeToString.contains("\n")) {
                    strEncodeToString = strEncodeToString.replace("\n", "");
                }
                sb2.append(strEncodeToString);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2543l)) {
            sb2.append(this.f2543l);
        }
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2560o)) {
            try {
                String strEncodeToString2 = Base64.encodeToString(Data.AES128Encode(this.f2537f.substring(0, 16), this.f2560o), 0);
                if (!TextUtils.isEmpty(strEncodeToString2) && strEncodeToString2.contains("\n")) {
                    strEncodeToString2 = strEncodeToString2.replace("\n", "");
                }
                sb2.append(strEncodeToString2);
            } catch (Throwable th2) {
                SSDKLog.b().b(th2);
            }
        }
        return sb2.toString();
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void a(long j10) {
        f2555r = j10;
    }
}
