package com.byazt.rh;

import android.text.TextUtils;
import com.byazt.bzd.sl;
import com.byazt.hy.n;
import com.byazt.nr.a;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.va.uj;
import com.join.mgps.Util.o0;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 115, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, com.byazt.rh.c> f19459c;
    public ReentrantLock tt;
    public Set<String> ve;

    @com.byazt.zqa.c(c = {0, 1, 115, 194})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final tt f19463c = new tt();
    }

    private void delete(Map<String, com.byazt.rh.c> map) {
        Iterator<String> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            map.get(it2.next()).tt(sl.c());
        }
    }

    private Map<String, com.byazt.rh.c> n() {
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, com.byazt.rh.c>> it2 = this.f19459c.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, com.byazt.rh.c> next = it2.next();
            if (next.getValue().uj()) {
                map.put(next.getKey(), next.getValue());
                it2.remove();
            } else {
                arrayList.add(next.getValue());
            }
        }
        int size = this.f19459c.size() - gt.tt().xv();
        if (size > 0) {
            Collections.sort(arrayList, new Comparator<com.byazt.rh.c>() { // from class: com.byazt.rh.tt.3
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public int compare(com.byazt.rh.c cVar, com.byazt.rh.c cVar2) {
                    long jVe = cVar2.ve() - cVar.ve();
                    if (jVe == 0) {
                        String strC = sl.c();
                        jVe = cVar.c(strC) - cVar2.c(strC);
                    }
                    return (int) jVe;
                }
            });
            for (int i10 = 0; i10 < size; i10++) {
                com.byazt.rh.c cVar = (com.byazt.rh.c) arrayList.get(i10);
                this.f19459c.remove(cVar.tt());
                map.put(cVar.tt(), cVar);
            }
        }
        return map;
    }

    private com.byazt.hm.c tt() {
        return n.c().tt();
    }

    private void uj() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it2 = this.f19459c.keySet().iterator();
        while (it2.hasNext()) {
            com.byazt.rh.c cVar = this.f19459c.get(it2.next());
            if (cVar != null) {
                jSONArray.put(cVar.n());
            }
        }
        com.byazt.omf.tt.c().put("sdk_brand_video_cahce", jSONArray.toString());
    }

    private JSONArray ve(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("creatives");
        JSONArray jSONArray = new JSONArray();
        if (jSONArrayOptJSONArray2 == null) {
            return jSONArray;
        }
        for (int i10 = 0; i10 < jSONArrayOptJSONArray2.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("precache_brand_video")) != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    jSONArray.put(jSONArrayOptJSONArray.opt(i11));
                }
            }
        }
        return jSONArray;
    }

    private tt() {
        this.f19459c = new HashMap();
        this.tt = new ReentrantLock();
        this.ve = new HashSet();
        String str = com.byazt.omf.tt.c().get("sdk_brand_video_cahce", "");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                tt(jSONArray.optJSONObject(i10));
            }
        } catch (Throwable unused) {
        }
    }

    private void tt(JSONObject jSONObject) {
        if (jSONObject != null) {
            com.byazt.rh.c cVar = new com.byazt.rh.c(jSONObject);
            this.f19459c.put(cVar.tt(), cVar);
        }
    }

    public static tt c() {
        return c.f19463c;
    }

    public void c(JSONObject jSONObject) {
        final JSONArray jSONArrayVe = ve(jSONObject);
        if (jSONArrayVe == null || jSONArrayVe.length() == 0) {
            return;
        }
        da.c().postDelayed(new Runnable() { // from class: com.byazt.rh.tt.1
            @Override // java.lang.Runnable
            public void run() {
                jSONArrayVe.length();
                tt.this.c(jSONArrayVe);
            }
        }, 20000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(JSONArray jSONArray) {
        try {
            this.tt.lock();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                tt(jSONArray.optJSONObject(i10));
            }
            Map<String, com.byazt.rh.c> mapN = n();
            int iVe = ve();
            uj();
            delete(mapN);
            this.tt.unlock();
            c(iVe);
        } catch (Throwable th) {
            this.tt.unlock();
            throw th;
        }
    }

    private int ve() {
        Iterator<String> it2 = this.f19459c.keySet().iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            com.byazt.rh.c cVar = this.f19459c.get(it2.next());
            if (cVar != null) {
                String strC = sl.c();
                String strTt = cVar.tt();
                if (TextUtils.isEmpty(strTt)) {
                    strTt = a.tt(cVar.c());
                }
                String strC2 = cVar.c();
                File file = new File(strC, strTt);
                if (!file.exists() || file.length() <= 0) {
                    i10++;
                    if (this.ve.contains(strTt)) {
                        m.c("BrandVideoCacheManager", " task :" + strTt + " is running!");
                    } else {
                        this.ve.add(strTt);
                        c(strC2, strC, strTt);
                    }
                }
            }
        }
        return i10;
    }

    private void c(int i10) {
        File[] fileArrListFiles = new File(sl.c()).listFiles();
        int iXv = gt.tt().xv();
        if (fileArrListFiles == null || fileArrListFiles.length <= iXv - i10) {
            return;
        }
        for (int i11 = 0; i11 < fileArrListFiles.length; i11++) {
            String strC = c(fileArrListFiles[i11]);
            if (!this.f19459c.containsKey(strC) && fileArrListFiles[i11].exists()) {
                fileArrListFiles[i11].delete();
                m.tt("BrandVideoCacheManager", "delete not need:".concat(String.valueOf(strC)));
            }
        }
    }

    private String c(File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(o0.f49827a);
        return iLastIndexOf != -1 ? name.substring(0, iLastIndexOf) : name;
    }

    private void c(final String str, String str2, final String str3) {
        com.byazt.va.tt ttVarUj = tt().uj();
        ttVarUj.c(str);
        ttVarUj.c(str2, str3);
        ttVarUj.c(new com.byazt.mh.c() { // from class: com.byazt.rh.tt.2
            @Override // com.byazt.mh.c
            public void c(uj ujVar, com.byazt.hm.tt ttVar) {
                tt.this.c(str3);
            }

            @Override // com.byazt.mh.c
            public void c(uj ujVar, IOException iOException) {
                m.tt("BrandVideoCacheManager", "download " + str + " failed: " + iOException);
                tt.this.c(str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        try {
            this.tt.lock();
            this.ve.remove(str);
        } finally {
            this.tt.unlock();
        }
    }
}
