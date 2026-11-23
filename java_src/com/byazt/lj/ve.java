package com.byazt.lj;

import android.util.SparseArray;
import com.byazt.it.n;
import com.byazt.nr.gr;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.yxi.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SCFG_ADDRESS, 54})
public class ve implements Function<SparseArray<Object>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Function<SparseArray<Object>, Object> f16650c;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_SCFG_ADDRESS, 24})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ve f16651c = new ve();
    }

    private static void c() {
        if (f16650c == null) {
            return;
        }
        gr.c().c(true);
        gr.c().c(new gr.c() { // from class: com.byazt.lj.ve.1
            @Override // com.byazt.nr.gr.c
            public void c(int i10, Map<String, Object> map) {
                if (map != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        for (String str : map.keySet()) {
                            jSONObject.put(str, map.get(str));
                        }
                        ve.notifyCommonEvent(1, jSONObject);
                    } catch (Exception e10) {
                        m.c(e10);
                    }
                }
            }
        });
    }

    public static ve getInstance() {
        return c.f16651c;
    }

    public static void notifyCommonEvent(int i10, JSONObject jSONObject) {
        if (f16650c != null) {
            uj ujVarC = uj.c();
            ujVarC.c(10005).c(Void.class);
            ujVarC.c(20004, Integer.valueOf(i10));
            ujVarC.c(20005, jSONObject);
            f16650c.apply(ujVarC.tt());
        }
    }

    public static void reportEvent(com.byazt.fo.c cVar) {
        if (f16650c != null) {
            uj ujVarC = uj.c();
            ujVarC.c(10001).c(Void.class);
            ujVarC.c(20001, cVar.sp());
            f16650c.apply(ujVarC.tt());
        }
    }

    public static void setQATool(Function<SparseArray<Object>, Object> function) {
        f16650c = function;
        c();
    }

    private ve() {
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        PluginValueSet pluginValueSetTt = com.byazt.rl.c.c(sparseArray).tt();
        if (pluginValueSetTt.intValue(-99999987) != 10003) {
            return null;
        }
        c((Map) pluginValueSetTt.objectValue(20003, Map.class));
        return null;
    }

    private void c(Map<String, String> map) {
        n nVar = gt.tt().f17789a;
        if (map == null || nVar == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            nVar.put(key + "_qa_modify_setting", entry.getValue());
        }
    }
}
