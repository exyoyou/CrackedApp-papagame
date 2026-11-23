package d3;

import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f90702a;

    public b(byte[] bytes) {
        this.f90702a = (byte[]) i.i(bytes);
    }

    @Override // d3.a
    public InputStream a() throws IOException {
        return new ByteArrayInputStream(this.f90702a);
    }

    @Override // d3.a
    public byte[] read() {
        return this.f90702a;
    }

    @Override // d3.a
    public long size() {
        return this.f90702a.length;
    }
}
