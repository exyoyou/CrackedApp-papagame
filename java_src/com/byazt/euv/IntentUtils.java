package com.byazt.euv;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.Zeus;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_LOADCONTROL_BUFFERINGTIMEOUT, 1129})
public class IntentUtils {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HashMap<Long, WeakReference<Bundle>> f14029c = new HashMap<>();

    public static void c(Intent intent, String str) {
        long longExtra = intent.getLongExtra("pangle_use_memory", 0L);
        if (Zeus.getPlugin(str).mUseMemoryForActivityIntent && longExtra == 0) {
            longExtra = System.currentTimeMillis();
        }
        if (longExtra != 0) {
            Bundle extras = intent.getExtras();
            intent.replaceExtras((Bundle) null);
            c(longExtra, extras);
            intent.putExtra("pangle_use_memory", longExtra);
        }
    }

    @Keep
    public static void setUseMemory(Intent intent) {
        intent.putExtra("pangle_use_memory", System.currentTimeMillis());
    }

    private static void c(long j10, Bundle bundle) {
        f14029c.put(Long.valueOf(j10), new WeakReference<>(bundle));
    }

    public static void c(Intent intent) {
        Bundle bundleC;
        long longExtra = intent.getLongExtra("pangle_use_memory", 0L);
        if (longExtra == 0 || (bundleC = c(longExtra)) == null) {
            return;
        }
        intent.putExtras(bundleC);
    }

    private static Bundle c(long j10) {
        WeakReference<Bundle> weakReferenceRemove = f14029c.remove(Long.valueOf(j10));
        if (weakReferenceRemove != null) {
            return weakReferenceRemove.get();
        }
        return null;
    }
}
