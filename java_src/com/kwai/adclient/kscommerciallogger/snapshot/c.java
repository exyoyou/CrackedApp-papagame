package com.kwai.adclient.kscommerciallogger.snapshot;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private final String bvd;
    private final LinkedList<d> bve;
    private int bvf;
    private final int bvg;
    private long bvh;

    c(String str) {
        this(str, 10);
    }

    public final synchronized long Ys() {
        return this.bvh;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.bvd.equals(((c) obj).bvd);
    }

    final String getName() {
        return this.bvd;
    }

    public int hashCode() {
        return Objects.hash(this.bvd);
    }

    public synchronized d iM(String str) {
        d dVar;
        if (this.bve.size() >= this.bvg) {
            this.bve.removeFirst();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("_");
        int i10 = this.bvf;
        this.bvf = i10 + 1;
        sb2.append(i10);
        dVar = new d(sb2.toString());
        this.bve.addLast(dVar);
        this.bvh = System.currentTimeMillis();
        return dVar;
    }

    synchronized JSONObject iN(String str) {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<d> it2 = this.bve.iterator();
            while (it2.hasNext()) {
                jSONArray.put(it2.next().Yr());
            }
            jSONObject.put("session_id", str);
            jSONObject.put("segment_name", this.bvd);
            jSONObject.put("spans", jSONArray);
            this.bvh = System.currentTimeMillis();
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    c(String str, int i10) {
        this.bvd = str == null ? "" : str;
        this.bve = new LinkedList<>();
        this.bvg = Math.min(i10, 30);
        this.bvh = System.currentTimeMillis();
    }
}
