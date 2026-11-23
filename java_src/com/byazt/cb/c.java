package com.byazt.cb;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import com.byazt.bwm.sp;
import com.byazt.bzd.x;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 20})
public class c extends ContentObserver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f12228c;
    public InterfaceC0279c tt;

    /* JADX INFO: renamed from: com.byazt.cb.c$c, reason: collision with other inner class name */
    public interface InterfaceC0279c {
        void c(int i10);
    }

    public c(Context context, Handler handler, InterfaceC0279c interfaceC0279c) {
        super(handler);
        this.f12228c = context;
        this.tt = interfaceC0279c;
    }

    @Override // android.database.ContentObserver
    public void onChange(final boolean z10, final Uri uri) {
        super.onChange(z10, uri);
        x.c(new sp("brightness onChange") { // from class: com.byazt.cb.c.1
            @Override // java.lang.Runnable
            public void run() {
                if (uri.equals(Settings.System.getUriFor("screen_brightness"))) {
                    try {
                        int i10 = Settings.System.getInt(c.this.f12228c.getContentResolver(), "screen_brightness", 0);
                        if (c.this.tt != null) {
                            c.this.tt.c(i10);
                        }
                    } catch (Throwable th) {
                        m.uj("BrightnessObserver", "get screen brightness error: ".concat(String.valueOf(th)));
                    }
                }
            }
        });
    }

    public void c() {
        this.f12228c.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this);
    }

    public void tt() {
        this.f12228c.getContentResolver().unregisterContentObserver(this);
    }
}
