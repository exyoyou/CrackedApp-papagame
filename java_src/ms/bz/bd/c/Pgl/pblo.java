package ms.bz.bd.c.Pgl;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class pblo {
    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                com.byazt.nr.m.c(e10);
            }
        }
    }
}
