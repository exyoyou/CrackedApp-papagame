package pc;

import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class p implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f96386c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private char[] f96390g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f96393j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f96395l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f96396m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f96397n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f96398o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f96385b = 8;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f96387d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f96389f = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f96388e = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f96391h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f96392i = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TimeZone f96394k = TimeZone.getDefault();

    public void A(boolean z10) {
        this.f96389f = z10;
    }

    public void B(String str) {
        if (net.lingala.zip4j.util.h.A(str)) {
            if (!str.endsWith("\\") && !str.endsWith(net.lingala.zip4j.util.e.F0)) {
                StringBuffer stringBuffer = new StringBuffer(str);
                stringBuffer.append(net.lingala.zip4j.util.e.E0);
                str = stringBuffer.toString();
            }
            str = str.replaceAll("\\\\", net.lingala.zip4j.util.e.F0);
        }
        this.f96393j = str;
    }

    public void C(boolean z10) {
        this.f96398o = z10;
    }

    public void D(int i10) {
        this.f96395l = i10;
    }

    public void E(TimeZone timeZone) {
        this.f96394k = timeZone;
    }

    public int a() {
        return this.f96391h;
    }

    public int b() {
        return this.f96386c;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public int d() {
        return this.f96385b;
    }

    public String e() {
        return this.f96396m;
    }

    public int f() {
        return this.f96388e;
    }

    public String g() {
        return this.f96397n;
    }

    public char[] h() {
        return this.f96390g;
    }

    public String i() {
        return this.f96393j;
    }

    public int j() {
        return this.f96395l;
    }

    public TimeZone k() {
        return this.f96394k;
    }

    public boolean l() {
        return this.f96387d;
    }

    public boolean m() {
        return this.f96392i;
    }

    public boolean o() {
        return this.f96389f;
    }

    public boolean p() {
        return this.f96398o;
    }

    public void q(int i10) {
        this.f96391h = i10;
    }

    public void r(int i10) {
        this.f96386c = i10;
    }

    public void s(int i10) {
        this.f96385b = i10;
    }

    public void t(String str) {
        this.f96396m = str;
    }

    public void u(boolean z10) {
        this.f96387d = z10;
    }

    public void v(int i10) {
        this.f96388e = i10;
    }

    public void w(String str) {
        this.f96397n = str;
    }

    public void x(boolean z10) {
        this.f96392i = z10;
    }

    public void y(String str) {
        if (str == null) {
            return;
        }
        z(str.toCharArray());
    }

    public void z(char[] cArr) {
        this.f96390g = cArr;
    }
}
