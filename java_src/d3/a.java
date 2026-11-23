package d3;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface a {
    InputStream a() throws IOException;

    byte[] read() throws IOException;

    long size();
}
