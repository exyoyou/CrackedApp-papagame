package com.byazt.vv;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 685, 13})
public final class tt {

    /* JADX INFO: renamed from: com.byazt.vv.tt$tt, reason: collision with other inner class name */
    public interface InterfaceC0466tt {
        void c(Bitmap bitmap);
    }

    public static void c(long j10, String str, InterfaceC0466tt interfaceC0466tt) {
        new c(interfaceC0466tt, j10).c((Object[]) new String[]{str});
    }

    @com.byazt.zqa.c(c = {0, 1, 685, 194})
    public static class c extends com.byazt.jtc.tt<String, Integer, Bitmap> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public InterfaceC0466tt f21348c;
        public long tt;

        public c(InterfaceC0466tt interfaceC0466tt, long j10) {
            this.f21348c = interfaceC0466tt;
            this.tt = j10;
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Bitmap doInBackground(String... strArr) {
            Bitmap frameAtTime = null;
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                String str = strArr[0];
                if (str.startsWith("http")) {
                    mediaMetadataRetriever.setDataSource(str, new HashMap());
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                frameAtTime = mediaMetadataRetriever.getFrameAtTime(this.tt * 1000, 3);
                mediaMetadataRetriever.release();
                return frameAtTime;
            } catch (Throwable th) {
                com.byazt.lt.tt.ve("MediaUtils", "MediaUtils doInBackground : ", th);
                return frameAtTime;
            }
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            InterfaceC0466tt interfaceC0466tt = this.f21348c;
            if (interfaceC0466tt != null) {
                interfaceC0466tt.c(bitmap);
            }
        }
    }
}
