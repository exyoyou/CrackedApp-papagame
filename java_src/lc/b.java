package lc;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f94143a = Logger.getLogger("CallbackReader");

    public static String a(File file) {
        HashMap map;
        try {
            String strA = d.a(file, a.f94142a);
            if (strA == null) {
                f94143a.log(Level.WARNING, "callback not found");
                map = null;
            } else {
                JSONObject jSONObject = new JSONObject(strA);
                Iterator<String> itKeys = jSONObject.keys();
                map = new HashMap();
                while (itKeys.hasNext()) {
                    String string = itKeys.next().toString();
                    map.put(string, jSONObject.getString(string));
                }
            }
        } catch (Throwable th) {
            Logger logger = f94143a;
            Level level = Level.SEVERE;
            logger.log(level, "read callback failed");
            logger.log(level, th.getMessage());
        }
        if (map == null) {
            return null;
        }
        return (String) map.get("kwaiCallback");
    }
}
