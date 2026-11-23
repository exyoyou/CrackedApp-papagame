package cd;

import android.util.Log;
import java.util.logging.Level;
import org.greenrobot.eventbus.f;

/* JADX INFO: loaded from: classes10.dex */
public class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f553a;

    public c(String str) {
        this.f553a = str;
    }

    private int c(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }

    @Override // org.greenrobot.eventbus.f
    public void a(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(c(level), this.f553a, str);
        }
    }

    @Override // org.greenrobot.eventbus.f
    public void b(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            Log.println(c(level), this.f553a, str + "\n" + Log.getStackTraceString(th));
        }
    }
}
