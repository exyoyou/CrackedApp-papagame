package d3;

import com.facebook.common.internal.e;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f90703a;

    private c(File file) {
        this.f90703a = (File) i.i(file);
    }

    public static c b(File file) {
        return new c(file);
    }

    @Nullable
    public static c c(File file) {
        if (file != null) {
            return new c(file);
        }
        return null;
    }

    @Override // d3.a
    public InputStream a() throws IOException {
        return new FileInputStream(this.f90703a);
    }

    public File d() {
        return this.f90703a;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        return this.f90703a.equals(((c) obj).f90703a);
    }

    public int hashCode() {
        return this.f90703a.hashCode();
    }

    @Override // d3.a
    public byte[] read() throws IOException {
        return e.b(this.f90703a);
    }

    @Override // d3.a
    public long size() {
        return this.f90703a.length();
    }
}
