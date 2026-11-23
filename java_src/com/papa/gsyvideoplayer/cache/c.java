package com.papa.gsyvideoplayer.cache;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.danikula.videocache.file.f;
import com.danikula.videocache.i;
import com.papa.gsyvideoplayer.utils.p;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class c implements b, com.danikula.videocache.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f76751g = 536870912;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static c f76752h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static com.danikula.videocache.file.c f76753i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected i f76754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected File f76755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f76756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b.a f76757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected d f76758f = new d();

    public static void a() {
        f76753i = null;
    }

    protected static i c(Context context) {
        i iVar = j().f76754b;
        if (iVar != null) {
            return iVar;
        }
        c cVarJ = j();
        i iVarK = j().k(context);
        cVarJ.f76754b = iVarK;
        return iVarK;
    }

    public static i d(Context context, File file) {
        if (file == null) {
            return c(context);
        }
        if (j().f76755c == null || j().f76755c.getAbsolutePath().equals(file.getAbsolutePath())) {
            i iVar = j().f76754b;
            if (iVar != null) {
                return iVar;
            }
            c cVarJ = j();
            i iVarL = j().l(context, file);
            cVarJ.f76754b = iVarL;
            return iVarL;
        }
        i iVar2 = j().f76754b;
        if (iVar2 != null) {
            iVar2.r();
        }
        c cVarJ2 = j();
        i iVarL2 = j().l(context, file);
        cVarJ2.f76754b = iVarL2;
        return iVarL2;
    }

    public static synchronized c j() {
        if (f76752h == null) {
            f76752h = new c();
        }
        return f76752h;
    }

    public static void m(com.danikula.videocache.file.c cVar) {
        f76753i = cVar;
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public boolean b(Context context, File file, String str) {
        i iVarD = d(context.getApplicationContext(), file);
        if (iVarD != null) {
            str = iVarD.j(str);
        }
        return !str.startsWith("http");
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public void e(Context context, File file, String str) {
        if (TextUtils.isEmpty(str)) {
            com.papa.gsyvideoplayer.utils.d.a(new File(p.c(context.getApplicationContext()).getAbsolutePath()));
            return;
        }
        com.danikula.videocache.file.c fVar = new f();
        com.danikula.videocache.file.c cVar = f76753i;
        if (cVar != null) {
            fVar = cVar;
        }
        String strGenerate = fVar.generate(str);
        if (file != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(file.getAbsolutePath());
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append(strGenerate);
            sb2.append(".download");
            String string = sb2.toString();
            String str3 = file.getAbsolutePath() + str2 + strGenerate;
            com.papa.gsyvideoplayer.utils.b.a(string);
            com.papa.gsyvideoplayer.utils.b.a(str3);
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(p.c(context.getApplicationContext()).getAbsolutePath());
        String str4 = File.separator;
        sb3.append(str4);
        sb3.append(strGenerate);
        sb3.append(".download");
        String string2 = sb3.toString();
        String str5 = p.c(context.getApplicationContext()).getAbsolutePath() + str4 + strGenerate;
        com.papa.gsyvideoplayer.utils.b.a(string2);
        com.papa.gsyvideoplayer.utils.b.a(str5);
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public boolean f() {
        return this.f76756d;
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public void g(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file) {
        Map<String, String> map2 = d.f76759a;
        map2.clear();
        if (map != null) {
            map2.putAll(map);
        }
        if (str.startsWith("http") && !str.contains("127.0.0.1") && !str.contains(".m3u8")) {
            i iVarD = d(context.getApplicationContext(), file);
            if (iVarD != null) {
                String strJ = iVarD.j(str);
                boolean z10 = !strJ.startsWith("http");
                this.f76756d = z10;
                if (!z10) {
                    iVarD.p(this, str);
                }
                str = strJ;
            }
        } else if (!str.startsWith("http") && !str.startsWith(LiveConfigKey.RTMP) && !str.startsWith("rtsp") && !str.contains(".m3u8")) {
            this.f76756d = true;
        }
        try {
            iMediaPlayer.setDataSource(context, Uri.parse(str), map);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.danikula.videocache.d
    public void h(File file, String str, int i10) {
        b.a aVar = this.f76757e;
        if (aVar != null) {
            aVar.h(file, str, i10);
        }
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public void i(b.a aVar) {
        this.f76757e = aVar;
    }

    public i k(Context context) {
        return new i.b(context.getApplicationContext()).g(this.f76758f).b();
    }

    public i l(Context context, File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        i.b bVar = new i.b(context);
        bVar.d(file);
        bVar.i(f76751g);
        bVar.g(this.f76758f);
        com.danikula.videocache.file.c cVar = f76753i;
        if (cVar != null) {
            bVar.f(cVar);
        }
        this.f76755c = file;
        return bVar.b();
    }

    public void n(i iVar) {
        this.f76754b = iVar;
    }

    @Override // com.papa.gsyvideoplayer.cache.b
    public void release() {
        i iVar = this.f76754b;
        if (iVar != null) {
            try {
                iVar.u(this);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
