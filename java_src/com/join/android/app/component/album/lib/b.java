package com.join.android.app.component.album.lib;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.widget.Toast;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.LocalGameActivity;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static b f34962j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f34963k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f34964l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f34965m = 4;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f34966n = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f34968b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ProgressDialog f34973g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private g f34975i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34967a = getClass().getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, com.join.android.app.component.album.lib.a> f34969c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f34970d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f34971e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    List<com.join.android.app.component.album.lib.a> f34972f = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f34974h = new a();

    class a extends Handler {

        /* JADX INFO: renamed from: com.join.android.app.component.album.lib.b$a$a, reason: collision with other inner class name */
        class C0645a implements Comparator<com.join.android.app.component.album.lib.a> {
            C0645a() {
            }

            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(com.join.android.app.component.album.lib.a o10, com.join.android.app.component.album.lib.a o11) {
                return o10.c() < o11.c() ? 1 : -1;
            }
        }

        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (b.this.f34975i == null) {
                return;
            }
            int i10 = msg.what;
            if (i10 == 0) {
                b.this.f34975i.c(msg.obj);
                return;
            }
            if (i10 == 2) {
                b.this.f34975i.b(msg.obj);
                return;
            }
            if (i10 != 4) {
                if (i10 != 8) {
                    return;
                }
                b.this.f34975i.b(msg.obj);
                return;
            }
            b.this.f34969c.clear();
            b.this.f34969c.putAll((Map) msg.obj);
            b.this.f34972f.clear();
            for (String str : b.this.f34969c.keySet()) {
                b bVar = b.this;
                bVar.f34972f.add((com.join.android.app.component.album.lib.a) bVar.f34969c.get(str));
            }
            Collections.sort(b.this.f34972f, new C0645a());
            b.this.f34975i.c(b.this.f34969c);
            b bVar2 = b.this;
            if (bVar2.f34970d == 0 && bVar2.f34971e) {
                Toast.makeText(b.this.f34968b, "没扫描到一张图片", 0).show();
            }
        }
    }

    /* JADX INFO: renamed from: com.join.android.app.component.album.lib.b$b, reason: collision with other inner class name */
    class RunnableC0646b implements Runnable {
        RunnableC0646b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            com.join.android.app.component.album.lib.a aVar;
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            ContentResolver contentResolver = b.this.f34968b.getContentResolver();
            arrayList.clear();
            map.clear();
            com.join.android.app.component.album.lib.a aVar2 = new com.join.android.app.component.album.lib.a();
            aVar2.j("All");
            aVar2.k("");
            aVar2.i(1);
            aVar2.l(LocalGameActivity.ALL);
            aVar2.g(arrayList);
            map.put("ALL", aVar2);
            Cursor cursorQuery = contentResolver.query(uri, new String[]{"_data", "bucket_display_name"}, "mime_type=? or mime_type=?", new String[]{"image/jpeg", "image/png"}, "datetaken DESC ");
            if (cursorQuery == null) {
                return;
            }
            String str = null;
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("bucket_display_name"));
                if (str == null) {
                    str = string;
                }
                File parentFile = new File(string).getParentFile();
                if (parentFile != null) {
                    arrayList.add(string);
                    String absolutePath = parentFile.getAbsolutePath();
                    if (map.get(absolutePath) != null) {
                        ((com.join.android.app.component.album.lib.a) map.get(absolutePath)).a().add(string);
                        ((com.join.android.app.component.album.lib.a) map.get(absolutePath)).i(((com.join.android.app.component.album.lib.a) map.get(absolutePath)).a().size());
                    } else {
                        Iterator it2 = map.values().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z10 = true;
                                break;
                            }
                            com.join.android.app.component.album.lib.a aVar3 = (com.join.android.app.component.album.lib.a) it2.next();
                            if (!t2.h(string2) && string2.equals(aVar3.b())) {
                                aVar3.a().add(string);
                                aVar3.i(aVar3.a().size());
                                z10 = false;
                                break;
                            }
                        }
                        if (z10) {
                            aVar = new com.join.android.app.component.album.lib.a();
                            aVar.j(absolutePath);
                            aVar.k(string);
                            aVar.g(new ArrayList());
                            aVar.a().add(string);
                            aVar.i(1);
                            aVar.h(string2);
                            map.put(absolutePath, aVar);
                        } else {
                            aVar = null;
                        }
                        Message messageObtainMessage = b.this.f34974h.obtainMessage();
                        messageObtainMessage.what = 8;
                        messageObtainMessage.obj = aVar;
                        b.this.f34974h.sendMessage(messageObtainMessage);
                    }
                }
            }
            cursorQuery.close();
            aVar2.i(aVar2.a().size());
            Message messageObtainMessage2 = b.this.f34974h.obtainMessage();
            messageObtainMessage2.what = 4;
            messageObtainMessage2.obj = map;
            b.this.f34974h.sendMessage(messageObtainMessage2);
        }
    }

    class c extends Thread {
        c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                ArrayList arrayList = new ArrayList();
                Cursor cursorQuery = b.this.f34968b.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, null, "mime_type=? or mime_type=?", new String[]{"image/jpeg", "image/png"}, "date_modified");
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                    Message messageObtainMessage = b.this.f34974h.obtainMessage();
                    messageObtainMessage.what = 2;
                    messageObtainMessage.obj = string;
                    b.this.f34974h.sendMessage(messageObtainMessage);
                    arrayList.add(string);
                }
                cursorQuery.close();
                Message messageObtainMessage2 = b.this.f34974h.obtainMessage();
                messageObtainMessage2.what = 0;
                messageObtainMessage2.obj = arrayList;
                b.this.f34974h.sendMessage(messageObtainMessage2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class d implements FilenameFilter {
        d() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.endsWith(".jpg") || filename.endsWith(".png") || filename.endsWith(".jpeg") || filename.endsWith(".JPG") || filename.endsWith(".PNG") || filename.endsWith(".JPEG");
        }
    }

    class e implements Comparator<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f34981b;

        e(final String val$dir) {
            this.f34981b = val$dir;
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String o10, String o11) {
            File file = new File(this.f34981b + net.lingala.zip4j.util.e.F0 + o10);
            File file2 = new File(this.f34981b + net.lingala.zip4j.util.e.F0 + o11);
            if (file.exists() && file2.exists()) {
                return file.lastModified() < file2.lastModified() ? 1 : -1;
            }
            return 0;
        }
    }

    class f implements Comparator<String> {
        f() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String o10, String o11) {
            File file = new File(o10);
            File file2 = new File(o11);
            if (file.exists() && file2.exists()) {
                return file.lastModified() < file2.lastModified() ? 1 : -1;
            }
            return 0;
        }
    }

    public interface g {
        void a();

        void b(Object item);

        void c(Object result);
    }

    public b(Context context) {
        this.f34968b = context;
    }

    public static b g(Context context) {
        if (f34962j == null) {
            synchronized (b.class) {
                f34962j = new b(context);
            }
        }
        return f34962j;
    }

    private FilenameFilter h() {
        return new d();
    }

    public List<com.join.android.app.component.album.lib.a> f() {
        return this.f34972f;
    }

    public synchronized void i() {
        if (this.f34968b == null) {
            return;
        }
        if (!Environment.getExternalStorageState().equals("mounted")) {
            Toast.makeText(this.f34968b, "暂无外部存储", 0).show();
            return;
        }
        if (this.f34971e) {
            this.f34973g = ProgressDialog.show(this.f34968b, null, "正在加载...");
        }
        g gVar = this.f34975i;
        if (gVar != null) {
            gVar.a();
        }
        new Thread(new RunnableC0646b()).start();
    }

    public synchronized void j(String dir) {
        g gVar = this.f34975i;
        if (gVar != null) {
            gVar.a();
        }
        new c().start();
    }

    public List<String> k(String dir) {
        String[] list;
        List<String> arrayList = new ArrayList<>();
        if (dir == null) {
            return arrayList;
        }
        try {
            if (dir.equals("") || (list = new File(dir).list(h())) == null) {
                return arrayList;
            }
            arrayList = Arrays.asList(list);
            m(dir, arrayList);
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    public void l(g l10) {
        this.f34975i = l10;
    }

    void m(String dir, List<String> list) {
        Collections.sort(list, new e(dir));
    }

    void n(List<String> list) {
        Collections.sort(list, new f());
    }
}
