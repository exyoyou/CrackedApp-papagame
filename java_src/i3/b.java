package i3;

import android.util.Log;
import com.facebook.infer.annotation.Nullsafe;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f91478c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f91479a = "unknown";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f91480b = 5;

    private b() {
    }

    public static b k() {
        return f91478c;
    }

    private static String l(String msg, Throwable tr) {
        return msg + '\n' + m(tr);
    }

    private static String m(Throwable tr) {
        if (tr == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        tr.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private String n(String tag) {
        if (this.f91479a == null) {
            return tag;
        }
        return this.f91479a + ":" + tag;
    }

    private void o(int priority, String tag, String msg) {
        Log.println(priority, n(tag), msg);
    }

    private void p(int priority, String tag, String msg, Throwable tr) {
        Log.println(priority, n(tag), l(msg, tr));
    }

    @Override // i3.c
    public int a() {
        return this.f91480b;
    }

    @Override // i3.c
    public void b(String tag, String msg) {
        o(6, tag, msg);
    }

    @Override // i3.c
    public void c(int priority, String tag, String msg) {
        o(priority, tag, msg);
    }

    @Override // i3.c
    public void d(String tag, String msg, Throwable tr) {
        p(2, tag, msg, tr);
    }

    @Override // i3.c
    public void e(String tag, String msg) {
        o(6, tag, msg);
    }

    @Override // i3.c
    public void f(String tag, String msg, Throwable tr) {
        p(3, tag, msg, tr);
    }

    @Override // i3.c
    public void g(String tag, String msg, Throwable tr) {
        p(6, tag, msg, tr);
    }

    @Override // i3.c
    public boolean h(int level) {
        return this.f91480b <= level;
    }

    @Override // i3.c
    public void i(int level) {
        this.f91480b = level;
    }

    @Override // i3.c
    public void j(String tag, String msg, Throwable tr) {
        p(4, tag, msg, tr);
    }

    public void q(String tag) {
        this.f91479a = tag;
    }

    @Override // i3.c
    public void v(String tag, String msg) {
        o(2, tag, msg);
    }

    @Override // i3.c
    public void w(String tag, String msg) {
        o(5, tag, msg);
    }

    @Override // i3.c
    public void d(String tag, String msg) {
        o(3, tag, msg);
    }

    @Override // i3.c
    public void e(String tag, String msg, Throwable tr) {
        p(6, tag, msg, tr);
    }

    @Override // i3.c
    public void i(String tag, String msg) {
        o(4, tag, msg);
    }

    @Override // i3.c
    public void w(String tag, String msg, Throwable tr) {
        p(5, tag, msg, tr);
    }
}
