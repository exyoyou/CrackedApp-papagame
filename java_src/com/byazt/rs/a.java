package com.byazt.rs;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile a f19518c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public tt f19519a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ve f19520n;
    public Context uj;
    public int sp = 30;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f19521x = false;
    public final Map<String, List<WeakReference<sp>>> tt = new ConcurrentHashMap();
    public final Map<String, n> ve = new ConcurrentHashMap();

    private a() {
    }

    public tt tt() {
        return this.f19519a;
    }

    public boolean ve() {
        return this.f19521x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(uj ujVar, sp spVar) {
        final String strC = ujVar.c();
        if (c(ujVar)) {
            c(spVar, ujVar);
            return;
        }
        synchronized (this) {
            List<WeakReference<sp>> list = this.tt.get(strC);
            if (list != null && !list.isEmpty()) {
                list.add(new WeakReference<>(spVar));
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new WeakReference(spVar));
            this.tt.put(strC, arrayList);
            n nVar = new n(this.uj);
            this.ve.put(strC, nVar);
            final long jCurrentTimeMillis = System.currentTimeMillis();
            nVar.c(ujVar, new sp() { // from class: com.byazt.rs.a.2
                @Override // com.byazt.rs.sp
                public void c(uj ujVar2) {
                    a.this.c(ujVar2, true, System.currentTimeMillis() - jCurrentTimeMillis, 0, (String) null);
                    a.this.c(strC, true, ujVar2, 0, (String) null);
                    a.this.c(strC);
                }

                @Override // com.byazt.rs.sp
                public void c(uj ujVar2, int i10, String str) {
                    a.this.c(ujVar2, false, System.currentTimeMillis() - jCurrentTimeMillis, i10, str);
                    a.this.c(strC, false, ujVar2, i10, str);
                    a.this.c(strC);
                }
            });
        }
    }

    public static a c() {
        if (f19518c == null) {
            synchronized (a.class) {
                if (f19518c == null) {
                    f19518c = new a();
                }
            }
        }
        return f19518c;
    }

    public void c(Context context) {
        if (context == null || this.uj != null) {
            return;
        }
        this.uj = context.getApplicationContext();
        x.c().c(context);
        x.c().c(this.sp);
        c.c().c(context);
    }

    public void c(ve veVar) {
        this.f19520n = veVar;
    }

    public void c(tt ttVar) {
        this.f19519a = ttVar;
    }

    public void c(int i10) {
        if (this.sp == i10) {
            return;
        }
        this.sp = i10;
        x.c().c(i10);
    }

    public void c(boolean z10) {
        this.f19521x = z10;
    }

    public void c(final uj ujVar, final sp spVar) {
        if (ujVar != null && !TextUtils.isEmpty(ujVar.c())) {
            if (this.f19521x) {
                c(spVar, ujVar, 1001, "Zip download is disabled");
                return;
            } else {
                com.byazt.bwm.n.tt(new com.byazt.bwm.sp("") { // from class: com.byazt.rs.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.tt(ujVar, spVar);
                    }
                });
                return;
            }
        }
        c(spVar, ujVar, 1001, "Invalid zip config");
    }

    public static boolean c(uj ujVar) {
        Context context;
        File fileTt;
        if (ujVar == null || TextUtils.isEmpty(ujVar.c()) || (context = c().uj) == null || (fileTt = com.byazt.nys.tt.tt(context)) == null) {
            return false;
        }
        String strUj = x.uj(ujVar.c());
        String strVe = ujVar.ve();
        if (TextUtils.isEmpty(strVe)) {
            strVe = "img_0.png";
        }
        StringBuilder sb2 = new StringBuilder("tt_lottie_imgcac");
        String str = File.separator;
        sb2.append(str);
        sb2.append(strUj);
        sb2.append(str);
        sb2.append(strVe);
        return new File(fileTt, sb2.toString()).exists();
    }

    private void c(final sp spVar, final uj ujVar) {
        if (spVar != null) {
            da.tt().post(new Runnable() { // from class: com.byazt.rs.a.3
                @Override // java.lang.Runnable
                public void run() {
                    spVar.c(ujVar);
                }
            });
        }
    }

    private void c(final sp spVar, final uj ujVar, final int i10, final String str) {
        if (spVar != null) {
            da.tt().post(new Runnable() { // from class: com.byazt.rs.a.4
                @Override // java.lang.Runnable
                public void run() {
                    spVar.c(ujVar, i10, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, boolean z10, uj ujVar, int i10, String str2) {
        List<WeakReference<sp>> listRemove;
        synchronized (this) {
            listRemove = this.tt.remove(str);
        }
        if (listRemove == null || listRemove.isEmpty()) {
            return;
        }
        Iterator<WeakReference<sp>> it2 = listRemove.iterator();
        while (it2.hasNext()) {
            sp spVar = it2.next().get();
            if (spVar != null) {
                if (z10) {
                    c(spVar, ujVar);
                } else {
                    c(spVar, ujVar, i10, str2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        this.ve.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(uj ujVar, boolean z10, long j10, int i10, String str) {
        if (this.f19520n == null || ujVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("success", z10);
            jSONObject.put("duration_ms", j10);
            jSONObject.put("url", ujVar.c());
            if (!z10) {
                jSONObject.put("error_code", i10);
                jSONObject.put("error_desc", str);
            }
            this.f19520n.c("lot_download", jSONObject);
        } catch (Exception e10) {
            m.c(e10);
        }
    }
}
