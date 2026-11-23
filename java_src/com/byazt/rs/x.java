package com.byazt.rs;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.ga.yp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile x f19535c;
    public Context ve;
    public int uj = 30;
    public final yp<String, Boolean> tt = new yp<String, Boolean>(30) { // from class: com.byazt.rs.x.1
        @Override // com.byazt.ga.yp
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int tt(String str, Boolean bool) {
            return 1;
        }

        @Override // com.byazt.ga.yp
        public void c(boolean z10, String str, Boolean bool, Boolean bool2) {
            super.c(z10, str, bool, bool2);
            if (z10) {
                x.this.n(str);
            }
        }
    };

    private x() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(String str) {
        File fileTt;
        if (this.ve == null || TextUtils.isEmpty(str) || (fileTt = com.byazt.nys.tt.tt(this.ve)) == null) {
            return;
        }
        File file = new File(fileTt, "tt_lottie_imgcac" + File.separator + str);
        if (file.exists() && file.isDirectory()) {
            com.byazt.nr.x.ve(file);
        }
    }

    public static String uj(String str) {
        return TextUtils.isEmpty(str) ? "" : com.byazt.nr.a.tt(str);
    }

    public void tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strUj = uj(str);
        if (this.tt.c(strUj, 5) || this.tt.c(strUj) == null) {
            return;
        }
        this.tt.c(strUj, Boolean.TRUE);
        tt();
    }

    public String ve(String str) {
        File fileTt;
        if (this.ve == null || TextUtils.isEmpty(str) || (fileTt = com.byazt.nys.tt.tt(this.ve)) == null) {
            return null;
        }
        return new File(fileTt, "tt_lottie_imgcac" + File.separator + uj(str)).getAbsolutePath();
    }

    public static x c() {
        if (f19535c == null) {
            synchronized (x.class) {
                if (f19535c == null) {
                    f19535c = new x();
                }
            }
        }
        return f19535c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        String[] strArrSplit;
        tt ttVarTt = a.c().tt();
        if (ttVarTt == null) {
            return;
        }
        String strC = ttVarTt.c("lottie_url_caches", "csj_lottie_zip_url_cache", null);
        if (TextUtils.isEmpty(strC) || (strArrSplit = strC.split(",")) == null || strArrSplit.length <= 0) {
            return;
        }
        for (String str : strArrSplit) {
            if (!TextUtils.isEmpty(str)) {
                this.tt.c(str, Boolean.TRUE);
            }
        }
    }

    private void tt() {
        tt ttVarTt = a.c().tt();
        if (ttVarTt == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = this.tt.c().keySet().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        ttVarTt.tt("lottie_url_caches", "csj_lottie_zip_url_cache", TextUtils.join(",", arrayList));
    }

    public void c(Context context) {
        if (context == null || this.ve != null) {
            return;
        }
        this.ve = context.getApplicationContext();
        com.byazt.bwm.n.tt(new com.byazt.bwm.sp("lotizipurl") { // from class: com.byazt.rs.x.2
            @Override // java.lang.Runnable
            public void run() {
                x.this.ve();
            }
        });
    }

    public void c(int i10) {
        if (i10 > 0) {
            this.uj = i10;
            this.tt.c(i10);
        }
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strUj = uj(str);
        if (this.tt.c(strUj, 5)) {
            return;
        }
        this.tt.c(strUj, Boolean.TRUE);
        tt();
    }
}
