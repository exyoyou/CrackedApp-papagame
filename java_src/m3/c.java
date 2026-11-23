package m3;

import com.facebook.infer.annotation.Nullsafe;
import java.io.UnsupportedEncodingException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f94156f = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f94157g = 20;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f94158h = 21;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f94151a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f94152b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f94153c = e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public static b f94154d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94155e = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte[] f94159i = a("RIFF");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final byte[] f94160j = a("WEBP");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final byte[] f94161k = a("VP8 ");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final byte[] f94162l = a("VP8L");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final byte[] f94163m = a("VP8X");

    private static byte[] a(String value) {
        try {
            return value.getBytes("ASCII");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("ASCII not found!", e10);
        }
    }

    public static boolean b(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f94163m) && ((imageHeaderBytes[offset + 20] & 2) == 2);
    }

    public static boolean c(final byte[] imageHeaderBytes, final int offset, final int headerSize) {
        return headerSize >= 21 && k(imageHeaderBytes, offset + 12, f94163m);
    }

    public static boolean d(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f94163m) && ((imageHeaderBytes[offset + 20] & 16) == 16);
    }

    private static boolean e() {
        return true;
    }

    public static boolean f(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f94162l);
    }

    public static boolean g(final byte[] imageHeaderBytes, final int offset) {
        return k(imageHeaderBytes, offset + 12, f94161k);
    }

    public static boolean h(final byte[] imageHeaderBytes, final int offset, final int headerSize) {
        return headerSize >= 20 && k(imageHeaderBytes, offset, f94159i) && k(imageHeaderBytes, offset + 8, f94160j);
    }

    public static boolean i(final byte[] imageHeaderBytes, final int offset, final int headerSize) {
        if (g(imageHeaderBytes, offset)) {
            return f94152b;
        }
        if (f(imageHeaderBytes, offset)) {
            return f94153c;
        }
        if (!c(imageHeaderBytes, offset, headerSize) || b(imageHeaderBytes, offset)) {
            return false;
        }
        return f94153c;
    }

    @Nullable
    public static b j() {
        b bVar;
        if (f94155e) {
            return f94154d;
        }
        try {
            bVar = (b) Class.forName("com.facebook.webpsupport.WebpBitmapFactoryImpl").newInstance();
        } catch (Throwable unused) {
            bVar = null;
        }
        f94155e = true;
        return bVar;
    }

    private static boolean k(final byte[] byteArray, final int offset, final byte[] pattern) {
        if (pattern == null || byteArray == null || pattern.length + offset > byteArray.length) {
            return false;
        }
        for (int i10 = 0; i10 < pattern.length; i10++) {
            if (byteArray[i10 + offset] != pattern[i10]) {
                return false;
            }
        }
        return true;
    }
}
