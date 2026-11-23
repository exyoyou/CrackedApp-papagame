package com.papa.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f76970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StandardGSYVideoPlayer f76971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f76972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Timer f76973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<String> f76974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f76975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private v7.c f76976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f76977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f76978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f76979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f76980k;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f76981b;

        a(File file) {
            this.f76981b = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.f76974e.size() <= 2) {
                g.this.f76976g.a(false, null);
            } else {
                g gVar = g.this;
                gVar.j(this.f76981b, gVar.f76974e, g.this.f76977h, g.this.f76978i, g.this.f76979j, g.this.f76976g);
            }
        }
    }

    class b implements v7.f {
        b() {
        }

        @Override // v7.f
        public void a(boolean z10, File file) {
            g.this.f76970a = true;
            if (z10) {
                com.papa.gsyvideoplayer.utils.c.e(" SUCCESS CREATE FILE " + file.getAbsolutePath());
                g.this.f76974e.add(file.getAbsolutePath());
            }
        }
    }

    private class c extends TimerTask {
        private c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (g.this.f76970a) {
                g.this.f76970a = false;
                g.this.l();
            }
        }

        /* synthetic */ c(g gVar, a aVar) {
            this();
        }
    }

    public g(StandardGSYVideoPlayer standardGSYVideoPlayer, v7.c cVar) {
        this(standardGSYVideoPlayer, cVar, 0, 1, 5, 50);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.f76971b.saveFrame(new File(this.f76975f, "GSY-TMP-FRAME" + System.currentTimeMillis() + ".tmp"), new b());
    }

    public void i() {
        c cVar = this.f76972c;
        if (cVar != null) {
            cVar.cancel();
            this.f76972c = null;
        }
    }

    public void j(File file, List<String> list, int i10, int i11, int i12, v7.c cVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        com.papa.gsyvideoplayer.utils.a aVar = new com.papa.gsyvideoplayer.utils.a();
        aVar.o(byteArrayOutputStream);
        aVar.l(0);
        aVar.g(i10);
        int i13 = 0;
        while (i13 < list.size()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i11;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(list.get(i13), options);
            double d10 = i12;
            double d11 = ((double) options.outWidth) / d10;
            double d12 = ((double) options.outHeight) / d10;
            options.inJustDecodeBounds = false;
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(list.get(i13), options);
            Bitmap bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmapDecodeFile, (int) d11, (int) d12);
            aVar.a(bitmapExtractThumbnail);
            bitmapDecodeFile.recycle();
            bitmapExtractThumbnail.recycle();
            i13++;
            cVar.b(i13, list.size());
        }
        aVar.d();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file.getPath());
            byteArrayOutputStream.writeTo(fileOutputStream);
            byteArrayOutputStream.flush();
            fileOutputStream.flush();
            byteArrayOutputStream.close();
            fileOutputStream.close();
            cVar.a(true, file);
        } catch (IOException e10) {
            e10.printStackTrace();
            cVar.a(false, file);
        }
    }

    public void k(File file) {
        this.f76975f = file;
        i();
        this.f76974e.clear();
        c cVar = new c(this, null);
        this.f76972c = cVar;
        this.f76973d.schedule(cVar, 0L, this.f76980k);
    }

    public void m(File file) {
        i();
        this.f76970a = true;
        new Thread(new a(file)).start();
    }

    public g(StandardGSYVideoPlayer standardGSYVideoPlayer, v7.c cVar, int i10, int i11, int i12, int i13) {
        this.f76970a = true;
        this.f76973d = new Timer();
        this.f76974e = new ArrayList();
        this.f76971b = standardGSYVideoPlayer;
        this.f76976g = cVar;
        this.f76977h = i10;
        this.f76978i = i11;
        this.f76979j = i12;
        this.f76980k = i13;
    }
}
