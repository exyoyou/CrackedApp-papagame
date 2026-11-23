package com.byazt.dk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import com.byazt.su.DownloadModel;
import com.byazt.t.DownloadInfo;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface uj {
    AlertDialog c(Activity activity, boolean z10, c cVar);

    String c(boolean z10);

    JSONObject c();

    void c(int i10, String str, Map<String, Object> map, n nVar);

    void c(Activity activity, String[] strArr, a aVar);

    void c(x xVar, boolean z10);

    void c(String str, byte[] bArr, String str2, n nVar);

    void c(WeakReference<Context> weakReference, boolean z10, c cVar);

    void c(JSONObject jSONObject, String str);

    boolean c(Context context, String str);

    boolean c(DownloadModel downloadModel);

    boolean c(DownloadModel downloadModel, DownloadInfo downloadInfo);

    boolean c(String str);

    sp tt();

    void tt(String str);

    boolean tt(DownloadModel downloadModel, DownloadInfo downloadInfo);

    boolean ve();
}
