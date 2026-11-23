package com.byazt.nr;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 110})
public class qy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Object f17587c;
    public static Method tt;

    static {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            Method method = (Method) declaredMethod2.invoke(cls, "getRuntime", null);
            tt = (Method) declaredMethod2.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class});
            f17587c = method.invoke(null, new Object[0]);
        } catch (Throwable th) {
            m.tt("Reflection", "reflect bootstrap failed:", th);
        }
    }

    public static boolean c(String... strArr) {
        Method method;
        Object obj = f17587c;
        if (obj != null && (method = tt) != null) {
            try {
                method.invoke(obj, strArr);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean c() {
        return c("L");
    }
}
