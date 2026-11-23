package com.byazt.nys;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.io.File;
import java.util.List;
import java.util.function.Function;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f17724c;
    public static final String tt;

    @SuppressLint({"StaticFieldLeak"})
    public static volatile ve ve;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public x.c f17725a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f17726n = new i.ve();
    public volatile boolean sp;
    public final Context uj;

    static {
        StringBuilder sb2 = new StringBuilder();
        String str = File.separator;
        sb2.append(str);
        sb2.append("next");
        f17724c = sb2.toString();
        tt = str + "tmp";
    }

    private ve(Context context) {
        this.uj = context;
    }

    private File tt() {
        return new File(c(), tt);
    }

    private File ve() {
        return new File(c(), f17724c);
    }

    public static ve c(Context context) {
        if (ve == null) {
            synchronized (ve.class) {
                if (ve == null) {
                    ve = new ve(context);
                }
            }
        }
        return ve;
    }

    public void c(List<x.c> list) {
        if (list != null && !list.isEmpty()) {
            x.c cVar = list.get(0);
            this.f17725a = cVar;
            if (TextUtils.isEmpty(cVar.ve)) {
                return;
            }
            String str = this.f17725a.f17730c + "-" + this.f17725a.tt + "-" + this.f17725a.f17729a + "-" + this.f17725a.sp + ".apk";
            File fileVe = ve();
            File file = new File(fileVe, str);
            if (file.exists()) {
                n.c("plugin_download", "plugin file already exists");
                com.byazt.bog.a.tt("FileDownloadTask", "Plugin file already exists.");
                this.f17725a.f17732i = file.getAbsolutePath();
                x.c cVar2 = this.f17725a;
                cVar2.f17731da = cVar2.tt < 7611;
                c(true, cVar2.f17730c, cVar2.toString());
                return;
            }
            File fileTt = tt();
            if (!fileVe.exists()) {
                fileVe.mkdirs();
            }
            if (!fileTt.exists()) {
                fileTt.mkdirs();
            }
            c(this.f17725a.ve, fileVe.getAbsolutePath(), fileTt.getAbsolutePath(), str);
            return;
        }
        n.c("plugin_download", "plugin is empty");
    }

    private void c(String str, String str2, String str3, String str4) {
        if (this.sp) {
            com.byazt.bog.a.tt("FileDownloadTask", "Downloading...");
            return;
        }
        this.sp = true;
        try {
            File file = new File(str2 + e.F0 + str4);
            if (file.exists()) {
                file.delete();
            }
            com.byazt.uc.ve.c().c(str, str2, str4, new EventListener() { // from class: com.byazt.nys.ve.1
                @Override // com.bykv.vk.openvk.api.proto.EventListener
                public ValueSet onEvent(int i10, Result result) {
                    ve.this.sp = false;
                    if (i10 != 0) {
                        String strMessage = result.message();
                        n.c("plugin_download", "download failed: ".concat(String.valueOf(strMessage)));
                        com.byazt.bog.a.n("FileDownloadTask", "Download failed. ".concat(String.valueOf(strMessage)));
                        ve veVar = ve.this;
                        veVar.c(false, veVar.f17725a.f17730c, ve.this.f17725a.toString());
                        return null;
                    }
                    n.c("plugin_download", "download success");
                    ve.this.f17725a.f17732i = result.message();
                    com.byazt.bog.a.tt("FileDownloadTask", "Download end." + ve.this.f17725a.f17732i);
                    ve.this.f17725a.f17731da = ve.this.f17725a.tt < 7611;
                    ve veVar2 = ve.this;
                    veVar2.c(true, veVar2.f17725a.f17730c, ve.this.f17725a.toString());
                    return null;
                }
            });
            n.c("plugin_download", "start download");
            com.byazt.bog.a.tt("FileDownloadTask", "Download start.");
        } catch (Throwable th) {
            n.c("plugin_download", "download error: ".concat(String.valueOf(th)));
            com.byazt.bog.a.n("FileDownloadTask", "Download file error: ".concat(String.valueOf(th)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z10, String str, String str2) {
        ValueSet valueSetTt = com.byazt.rl.ve.c().c(-999900, z10 ? 0 : 1004).c(-999903, z10).c(-999902, com.byazt.rl.ve.c().c(2, str2).c(3, str).tt().sparseArray()).tt();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(-99999987, 1);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(-99999979, valueSetTt.sparseArray());
        this.f17726n.apply(sparseArray);
    }

    private File c() {
        return tt.c(this.uj, "tt_pangle_bykv_file", 0);
    }
}
