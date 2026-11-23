package com.byazt.hu;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1381, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f15113c = new C0335tt();

    @com.byazt.zqa.c(c = {0, 1, 1381, 194})
    private static class c {
        private c() {
        }

        public <T> void c(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: com.byazt.hu.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1381, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    @TargetApi(11)
    private static class C0335tt extends c {
        private C0335tt() {
            super();
        }

        @Override // com.byazt.hu.tt.c
        public <T> void c(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
            } catch (Throwable unused) {
            }
        }
    }

    public static <T> void c(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
        f15113c.c(asyncTask, tArr);
    }
}
