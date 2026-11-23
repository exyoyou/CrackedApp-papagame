package com.byazt.mq;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.byazt.uq.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 20})
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ve f16961c;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_ERROR_EXIT})
    private static class n extends C0373c {
        private n() {
            super();
        }

        @Override // com.byazt.mq.c.C0373c, com.byazt.mq.c.ve
        public boolean c(Context context) throws Throwable {
            Object objC = c(context, "mWhiteListMap");
            if (!(objC instanceof Map)) {
                return false;
            }
            Map map = (Map) objC;
            List arrayList = (List) map.get(0);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(0, arrayList);
            }
            arrayList.add(context.getPackageName());
            return true;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 175})
    private static class tt extends n {
        private tt() {
            super();
        }

        @Override // com.byazt.mq.c.n, com.byazt.mq.c.C0373c, com.byazt.mq.c.ve
        public boolean c(Context context) throws Throwable {
            return false;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 187})
    private static class uj extends C0373c {
        private uj() {
            super();
        }

        @Override // com.byazt.mq.c.C0373c, com.byazt.mq.c.ve
        public boolean c(Context context) throws Throwable {
            Object objC = c(context, "mWhiteList");
            if (!(objC instanceof List)) {
                return false;
            }
            ((List) objC).add(context.getPackageName());
            return true;
        }
    }

    private interface ve {
        boolean c(Context context) throws Throwable;
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 24) {
            f16961c = new C0373c();
            return;
        }
        if (i10 < 26) {
            f16961c = new uj();
        } else if (i10 < 28) {
            f16961c = new n();
        } else {
            f16961c = new tt();
        }
    }

    public static void c(Application application) {
        if (application != null) {
            try {
                if (i.my()) {
                    f16961c.c(application.getBaseContext());
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: com.byazt.mq.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, 44})
    private static class C0373c implements ve {
        private C0373c() {
        }

        private Object tt(Context context) {
            Field field;
            Object field2;
            try {
                Field field3 = FieldUtils.getField(Class.forName("android.app.LoadedApk"), "mReceiverResource");
                if (field3 == null || (field = FieldUtils.getField(Class.forName("android.app.ContextImpl"), "mPackageInfo")) == null || (field2 = FieldUtils.readField(field, context)) == null) {
                    return null;
                }
                return FieldUtils.readField(field3, field2);
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.byazt.mq.c.ve
        public boolean c(Context context) throws Throwable {
            Object objTt = tt(context);
            Object objC = c(objTt, "mWhiteList");
            if (!(objC instanceof String[])) {
                if (objTt == null) {
                    return false;
                }
                FieldUtils.writeField(objTt, "mResourceConfig", (Object) null);
                return false;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(context.getPackageName());
            Collections.addAll(arrayList, (String[]) objC);
            FieldUtils.writeField(objTt, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
            return true;
        }

        public Object c(Context context, String str) {
            return c(tt(context), str);
        }

        private Object c(Object obj, String str) {
            if (obj == null) {
                return null;
            }
            try {
                return FieldUtils.readField(obj, str);
            } catch (Throwable unused) {
                return null;
            }
        }
    }
}
