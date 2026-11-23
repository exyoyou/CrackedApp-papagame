package j3;

import android.webkit.MimeTypeMap;
import com.facebook.common.internal.ImmutableMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final MimeTypeMap f92084a = MimeTypeMap.getSingleton();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<String, String> f92085b = ImmutableMap.of("image/heif", "heif", "image/heic", "heic");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<String, String> f92086c = ImmutableMap.of("heif", "image/heif", "heic", "image/heic");

    public static String a(String mimeType) {
        String str = f92085b.get(mimeType);
        return str != null ? str : f92084a.getExtensionFromMimeType(mimeType);
    }

    public static String b(String extension) {
        String str = f92086c.get(extension);
        return str != null ? str : f92084a.getMimeTypeFromExtension(extension);
    }

    public static boolean c(String extension) {
        return f92086c.containsKey(extension) || f92084a.hasExtension(extension);
    }

    public static boolean d(String mimeType) {
        return f92085b.containsKey(mimeType) || f92084a.hasMimeType(mimeType);
    }
}
