package com.byazt.xk;

import com.byazt.s.da;
import com.byazt.s.sl;
import com.byazt.t.DownloadInfo;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, 54})
public class ve implements sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile ve f21936c;
    public List<sl> tt;

    private ve() {
        ArrayList arrayList = new ArrayList();
        this.tt = arrayList;
        arrayList.add(new tt());
        this.tt.add(new c());
    }

    public static ve c() {
        if (f21936c == null) {
            synchronized (ve.class) {
                if (f21936c == null) {
                    f21936c = new ve();
                }
            }
        }
        return f21936c;
    }

    @Override // com.byazt.s.sl
    public void c(DownloadInfo downloadInfo, da daVar) {
        if (downloadInfo != null && this.tt.size() != 0) {
            c(downloadInfo, 0, daVar);
        } else if (daVar != null) {
            daVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final DownloadInfo downloadInfo, final int i10, final da daVar) {
        if (i10 != this.tt.size() && i10 >= 0) {
            this.tt.get(i10).c(downloadInfo, new da() { // from class: com.byazt.xk.ve.1
                @Override // com.byazt.s.da
                public void c() {
                    ve.this.c(downloadInfo, i10 + 1, daVar);
                }
            });
        } else {
            daVar.c();
        }
    }
}
