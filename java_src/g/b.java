package g;

import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public interface b {
    void a(String url, String fileName, String realUrl, long fileLength);

    void b(String url);

    void c(String url, long progress);

    void d(String baseUrl, long totalProgress);

    void e(String url, long progress);

    void f(String url, File file);

    void g(String url, int status, String error);

    void onPrepare();
}
