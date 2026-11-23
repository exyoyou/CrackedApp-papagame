package com.join.mgps.Util;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import com.papa91.arc.ext.ThreadManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class a1 {

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Bitmap f49487b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f49488c;

        /* JADX INFO: renamed from: com.join.mgps.Util.a1$a$a, reason: collision with other inner class name */
        class C0662a implements MediaScannerConnection.OnScanCompletedListener {
            C0662a() {
            }

            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public void onScanCompleted(String path, Uri uri) {
            }
        }

        a(final Bitmap val$bitmap, final Context val$context) {
            this.f49487b = val$bitmap;
            this.f49488c = val$context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f49487b != null) {
                String str = System.currentTimeMillis() + ".jpg";
                File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM), str);
                if (Build.VERSION.SDK_INT < 29) {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        this.f49487b.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        MediaScannerConnection.scanFile(this.f49488c, new String[]{file.getAbsolutePath()}, null, new C0662a());
                        return;
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", str);
                contentValues.put("mime_type", "image/jpeg");
                contentValues.put("relative_path", Environment.DIRECTORY_DCIM);
                try {
                    OutputStream outputStreamOpenOutputStream = this.f49488c.getContentResolver().openOutputStream(this.f49488c.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues));
                    this.f49487b.compress(Bitmap.CompressFormat.JPEG, 90, outputStreamOpenOutputStream);
                    outputStreamOpenOutputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public static void a(Context context, Bitmap bitmap) {
        ThreadManager.runOnWriteThread(new a(bitmap, context));
    }
}
