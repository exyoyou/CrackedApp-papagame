package j3;

import com.facebook.common.internal.ImmutableMap;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Locale;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<String, String> f92083a = ImmutableMap.of("mkv", "video/x-matroska", "glb", "model/gltf-binary");

    @Nullable
    private static String a(String path) {
        int iLastIndexOf = path.lastIndexOf(46);
        if (iLastIndexOf < 0 || iLastIndexOf == path.length() - 1) {
            return null;
        }
        return path.substring(iLastIndexOf + 1);
    }

    @Nullable
    public static String b(String path) {
        String strA = a(path);
        if (strA == null) {
            return null;
        }
        String lowerCase = strA.toLowerCase(Locale.US);
        String strB = b.b(lowerCase);
        return strB == null ? f92083a.get(lowerCase) : strB;
    }

    public static boolean c(String mimeType) {
        return f92083a.containsValue(mimeType);
    }

    public static boolean d(@Nullable String mimeType) {
        return mimeType != null && mimeType.startsWith("image/");
    }

    public static boolean e(@Nullable String mimeType) {
        return mimeType != null && mimeType.equals("model/gltf-binary");
    }

    public static boolean f(@Nullable String mimeType) {
        return mimeType != null && mimeType.startsWith("video/");
    }
}
