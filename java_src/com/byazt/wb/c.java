package com.byazt.wb;

import com.byazt.nc.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_STATS_REPORT_INTERVAL, 20})
public class c extends com.byazt.vvt.c<com.byazt.nh.tt, List<i>> {
    public static final c tt = new c();

    private c() {
    }

    public static c uj() {
        return tt;
    }

    @Override // com.byazt.vvt.c
    public int c() {
        return 9;
    }

    @Override // com.byazt.vvt.c
    /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
    public List<String> c(List<i> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<i> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getLifecycleId());
        }
        return arrayList;
    }

    @Override // com.byazt.vvt.c
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public String tt(List<i> list) {
        Map<String, Object> mediaExtraInfo;
        if (list == null || list.isEmpty() || (mediaExtraInfo = list.get(0).getMediaExtraInfo()) == null || mediaExtraInfo.get("request_id") == null) {
            return null;
        }
        return (String) mediaExtraInfo.get("request_id");
    }

    @Override // com.byazt.vvt.c
    public void c(com.byazt.nh.tt ttVar, List<i> list) {
        if (ttVar != null) {
            ttVar.c(list);
        }
    }

    @Override // com.byazt.vvt.c
    public void c(com.byazt.nh.tt ttVar, int i10, String str) {
        if (ttVar != null) {
            ttVar.c(i10, str);
        }
    }
}
