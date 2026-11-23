package i7;

import android.os.Looper;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static j7.b a(Object obj, List<j7.b> list) {
        for (j7.b bVar : list) {
            if (bVar.equals(obj)) {
                return bVar;
            }
        }
        throw new IllegalArgumentException("No TargetContext fit it");
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
