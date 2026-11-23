package i3;

import com.facebook.infer.annotation.NullsafeStrict;

/* JADX INFO: loaded from: classes9.dex */
@NullsafeStrict
public interface c {
    int a();

    void b(String tag, String msg);

    void c(int priority, String tag, String msg);

    void d(String tag, String msg);

    void d(String tag, String msg, Throwable tr);

    void e(String tag, String msg);

    void e(String tag, String msg, Throwable tr);

    void f(String tag, String msg, Throwable tr);

    void g(String tag, String msg, Throwable tr);

    boolean h(int level);

    void i(int level);

    void i(String tag, String msg);

    void j(String tag, String msg, Throwable tr);

    void v(String tag, String msg);

    void w(String tag, String msg);

    void w(String tag, String msg, Throwable tr);
}
