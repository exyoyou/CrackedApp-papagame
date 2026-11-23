package org.apache.http.impl.conn;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import x.a;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class WireHC4 {
    private static final String TAG = "Wire";

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final String f95049id;

    public WireHC4(String str) {
        this.f95049id = str;
    }

    private void wire(String str, InputStream inputStream) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int i10 = inputStream.read();
            if (i10 == -1) {
                break;
            }
            if (i10 == 13) {
                sb2.append("[\\r]");
            } else if (i10 == 10) {
                sb2.append("[\\n]\"");
                sb2.insert(0, a.f97579g);
                sb2.insert(0, str);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(this.f95049id);
                sb3.append(" ");
                sb3.append(sb2.toString());
                sb2.setLength(0);
            } else if (i10 < 32 || i10 > 127) {
                sb2.append("[0x");
                sb2.append(Integer.toHexString(i10));
                sb2.append("]");
            } else {
                sb2.append((char) i10);
            }
        }
        if (sb2.length() > 0) {
            sb2.append('\"');
            sb2.insert(0, '\"');
            sb2.insert(0, str);
            StringBuilder sb4 = new StringBuilder();
            sb4.append(this.f95049id);
            sb4.append(" ");
            sb4.append(sb2.toString());
        }
    }

    public boolean enabled() {
        return Log.isLoggable(TAG, 3);
    }

    public void input(InputStream inputStream) throws IOException {
        Args.notNull(inputStream, "Input");
        wire("<< ", inputStream);
    }

    public void output(InputStream inputStream) throws IOException {
        Args.notNull(inputStream, "Output");
        wire(">> ", inputStream);
    }

    public void input(byte[] bArr, int i10, int i11) throws IOException {
        Args.notNull(bArr, "Input");
        wire("<< ", new ByteArrayInputStream(bArr, i10, i11));
    }

    public void output(byte[] bArr, int i10, int i11) throws IOException {
        Args.notNull(bArr, "Output");
        wire(">> ", new ByteArrayInputStream(bArr, i10, i11));
    }

    public void input(byte[] bArr) throws IOException {
        Args.notNull(bArr, "Input");
        wire("<< ", new ByteArrayInputStream(bArr));
    }

    public void output(byte[] bArr) throws IOException {
        Args.notNull(bArr, "Output");
        wire(">> ", new ByteArrayInputStream(bArr));
    }

    public void input(int i10) throws IOException {
        input(new byte[]{(byte) i10});
    }

    public void output(int i10) throws IOException {
        output(new byte[]{(byte) i10});
    }

    public void input(String str) throws IOException {
        Args.notNull(str, "Input");
        input(str.getBytes());
    }

    public void output(String str) throws IOException {
        Args.notNull(str, "Output");
        output(str.getBytes());
    }
}
