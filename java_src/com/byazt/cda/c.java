package com.byazt.cda;

import android.text.TextUtils;
import com.byazt.uk.sl;
import com.byazt.uq.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.log.ZeusLogger;
import com.join.mgps.Util.o0;
import java.io.File;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_PROBESIZE, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONObject f12384a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12385c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public File f12386n;
    public String sp;
    public String tt;
    public List<File> uj;
    public JSONObject ve;

    public static c c(JSONObject jSONObject, File file, List<File> list) {
        c cVar = new c();
        cVar.f12385c = jSONObject.optString("version");
        cVar.tt = jSONObject.optString("package_name");
        cVar.ve = jSONObject.optJSONObject("adn_adapter_md5");
        cVar.sp = jSONObject.optString("alias_package_name");
        cVar.uj = list;
        cVar.f12386n = file;
        cVar.f12384a = jSONObject;
        return cVar;
    }

    private boolean i() {
        JSONObject jSONObject;
        List<File> list = this.uj;
        boolean z10 = false;
        if (list == null || list.size() == 0 || (jSONObject = this.ve) == null || jSONObject.length() == 0) {
            StringBuilder sb2 = new StringBuilder("DexPluginConfig check md5 fail, packageName=");
            sb2.append(this.tt);
            sb2.append(" dexlist is ");
            sb2.append(this.uj);
            sb2.append(" dexlist size is ");
            List<File> list2 = this.uj;
            sb2.append(list2 == null ? -1 : list2.size());
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb2.toString());
            return false;
        }
        int size = this.uj.size();
        int length = this.ve.length();
        for (File file : this.uj) {
            String strC = a.c(file);
            if (strC != null) {
                strC = strC.toLowerCase();
            }
            String strC2 = c(file.getName());
            if (TextUtils.equals(strC2, strC)) {
                size--;
                length--;
            } else {
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginConfig check md5 fail, packageName=" + this.tt + "downloadFileMd5=" + strC + " configMd5=" + strC2);
            }
        }
        if (size == 0 && length == 0) {
            z10 = true;
        }
        StringBuilder sb3 = new StringBuilder("DexPluginConfig check md5 ");
        sb3.append(z10 ? "success" : "fail");
        sb3.append(", packageName=");
        sb3.append(this.tt);
        sb3.append(" fileSize=");
        sb3.append(size);
        sb3.append(" configFileSize=");
        sb3.append(length);
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, sb3.toString());
        return z10;
    }

    private boolean x() {
        JSONObject jSONObject;
        Map<String, JSONObject> mapN = sl.c().n();
        if (mapN != null && mapN.size() > 0 && (jSONObject = mapN.get(this.tt)) != null && jSONObject.has("packageName") && TextUtils.equals(jSONObject.optString("packageName"), this.tt)) {
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginConfig check packageName success , packageName=" + this.tt);
            return true;
        }
        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginConfig check packageName fail, packageName=" + this.tt + ", packageManager=" + mapN);
        return false;
    }

    public JSONObject a() {
        return this.f12384a;
    }

    public File n() {
        return this.f12386n;
    }

    public String sp() {
        return this.sp;
    }

    public String toString() {
        return "DexPluginConfig{mVersion='" + this.f12385c + "', mPackageName='" + this.tt + "'}";
    }

    public String tt() {
        return this.tt;
    }

    public List<File> uj() {
        return this.uj;
    }

    public int ve() {
        if (TextUtils.isEmpty(this.f12385c)) {
            return -1;
        }
        String strReplace = this.f12385c.replace(o0.f49827a, "");
        if (TextUtils.isEmpty(strReplace)) {
            return -1;
        }
        try {
            return Integer.valueOf(strReplace).intValue();
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public boolean c() {
        return x() && i();
    }

    public String c(String str) {
        JSONObject jSONObject;
        return (TextUtils.isEmpty(str) || (jSONObject = this.ve) == null || !jSONObject.has(str)) ? "" : this.ve.optString(str);
    }
}
