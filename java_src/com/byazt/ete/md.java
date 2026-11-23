package com.byazt.ete;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF})
public class md {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<ir> f13810c;

    public md(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        this.f13810c = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            this.f13810c.add(new ir(jSONArray.optJSONObject(i10), 4));
        }
    }

    public static List<ir> c(ic icVar) {
        md mdVarZr;
        if (icVar == null || (mdVarZr = icVar.zr()) == null) {
            return null;
        }
        return mdVarZr.f13810c;
    }

    public static boolean n(ic icVar) {
        return (icVar == null || ic.ve(icVar) || com.byazt.omf.gt.tt().iw() || !tt(icVar) || ve(icVar) == null) ? false : true;
    }

    public static boolean tt(ic icVar) {
        md mdVarZr;
        List<ir> list;
        return (icVar == null || (mdVarZr = icVar.zr()) == null || (list = mdVarZr.f13810c) == null || list.isEmpty()) ? false : true;
    }

    public static List<ir> uj(ic icVar) {
        List<ir> listC;
        if (!tt(icVar) || (listC = c(icVar)) == null || listC.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ir irVar : listC) {
            if (irVar != null && irVar.t() && irVar.sp() == 0) {
                arrayList.add(irVar);
            }
        }
        return arrayList;
    }

    public static ir ve(ic icVar) {
        List<ir> listC;
        if (tt(icVar) && (listC = c(icVar)) != null && !listC.isEmpty()) {
            for (ir irVar : listC) {
                if (irVar != null && irVar.t()) {
                    boolean z10 = irVar.uj() == 1;
                    if (1 == irVar.sp() && z10) {
                        return irVar;
                    }
                }
            }
        }
        return null;
    }
}
