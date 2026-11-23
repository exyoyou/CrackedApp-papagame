package com.byazt.qw;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 726, 15})
public class uj implements Comparable<uj> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f19287n;
    public int sp;
    public final String tt;
    public int ve;
    public long yp;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList<Long> f19284c = new ArrayList<>();
    public final ArrayList<Long> uj = new ArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<Long> f19283a = new ArrayList<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final ArrayList<Long> f19290x = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap<String, n> f19286i = new HashMap<>();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f19285da = 0;
    public int sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final HashMap<String, n> f19288t = new HashMap<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f19289u = 0;

    public uj(String str) {
        this.tt = str;
    }

    private void tt(@NonNull JSONArray jSONArray) throws JSONException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        List<Integer> listGl = gt.tt().gl();
        long j10 = 60000;
        if (listGl != null) {
            int i10 = 0;
            while (i10 < listGl.size()) {
                int iIntValue = listGl.get(i10).intValue();
                long j11 = jElapsedRealtime - (((long) iIntValue) * j10);
                Iterator<String> it2 = this.f19288t.keySet().iterator();
                long jC = 0;
                while (it2.hasNext()) {
                    Iterator<String> it3 = it2;
                    HashSet hashSet3 = hashSet2;
                    n nVar = this.f19288t.get(it2.next());
                    if (nVar != null) {
                        jC += nVar.c(j11, jElapsedRealtime);
                    }
                    hashSet2 = hashSet3;
                    it2 = it3;
                }
                HashSet hashSet4 = hashSet2;
                if (jC != 0) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(bm.aM, "lpstay_".concat(String.valueOf(iIntValue)));
                    jSONObject.put("v", jC);
                    jSONArray.put(jSONObject);
                }
                i10++;
                hashSet2 = hashSet4;
                j10 = 60000;
            }
        }
        HashSet hashSet5 = hashSet2;
        if (listGl != null) {
            int i11 = 0;
            while (i11 < listGl.size()) {
                int iIntValue2 = listGl.get(i11).intValue();
                long j12 = jElapsedRealtime - (((long) iIntValue2) * 60000);
                Iterator<String> it4 = this.f19286i.keySet().iterator();
                long jC2 = 0;
                while (it4.hasNext()) {
                    List<Integer> list = listGl;
                    n nVar2 = this.f19286i.get(it4.next());
                    if (nVar2 != null) {
                        jC2 += nVar2.c(j12, jElapsedRealtime);
                    }
                    listGl = list;
                }
                List<Integer> list2 = listGl;
                if (jC2 != 0) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(bm.aM, "vstay_".concat(String.valueOf(iIntValue2)));
                    jSONObject2.put("v", jC2);
                    jSONArray.put(jSONObject2);
                }
                Iterator it5 = hashSet.iterator();
                while (it5.hasNext()) {
                    this.f19288t.remove((String) it5.next());
                }
                Iterator it6 = hashSet5.iterator();
                while (it6.hasNext()) {
                    this.f19286i.remove((String) it6.next());
                }
                i11++;
                listGl = list2;
            }
        }
        if (gt.tt().ts() && this.f19285da != 0) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(bm.aM, "vstay_0");
            jSONObject3.put("v", this.f19285da);
            jSONArray.put(jSONObject3);
        }
        if (gt.tt().ts() && this.f19289u != 0) {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(bm.aM, "lpstay_0");
            jSONObject4.put("v", this.f19289u);
            jSONArray.put(jSONObject4);
        }
        if (this.sl != 0) {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(bm.aM, "v30p");
            jSONObject5.put("v", this.sl);
            jSONArray.put(jSONObject5);
        }
    }

    public void c(@NonNull String str, @Nullable String str2) {
        n nVar;
        n nVar2;
        n nVar3;
        n nVar4;
        n nVar5;
        n nVar6;
        str.hashCode();
        switch (str) {
            case "landingContinue":
                if (!TextUtils.isEmpty(str2) && (nVar = this.f19288t.get(str2)) != null) {
                    nVar.uj(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingPause":
                if (!TextUtils.isEmpty(str2) && (nVar2 = this.f19288t.get(str2)) != null) {
                    nVar2.ve(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingStart":
                if (!TextUtils.isEmpty(str2)) {
                    n nVar7 = this.f19288t.get(str2);
                    if (nVar7 == null) {
                        nVar7 = new n();
                        this.f19288t.put(str2, nVar7);
                    }
                    nVar7.c(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "feed_over":
            case "feed_break":
                if (!TextUtils.isEmpty(str2) && (nVar3 = this.f19286i.get(str2)) != null && nVar3.c() != n.f19277n) {
                    nVar3.tt(SystemClock.elapsedRealtime());
                    if (gt.tt().ts()) {
                        this.f19285da = (int) (((long) this.f19285da) + nVar3.c(this.yp, SystemClock.elapsedRealtime()));
                    }
                    break;
                }
                break;
            case "show":
                this.f19284c.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (gt.tt().ts()) {
                    this.ve++;
                    break;
                }
                break;
            case "click":
                this.uj.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (gt.tt().ts()) {
                    this.f19287n++;
                    break;
                }
                break;
            case "feed_continue":
                if (!TextUtils.isEmpty(str2) && (nVar4 = this.f19286i.get(str2)) != null) {
                    nVar4.uj(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "feed_pause":
                if (!TextUtils.isEmpty(str2) && (nVar5 = this.f19286i.get(str2)) != null) {
                    nVar5.ve(SystemClock.elapsedRealtime());
                    break;
                }
                break;
            case "landingFinish":
                if (!TextUtils.isEmpty(str2) && (nVar6 = this.f19288t.get(str2)) != null && nVar6.c() != n.f19277n) {
                    nVar6.tt(SystemClock.elapsedRealtime());
                    if (gt.tt().ts()) {
                        this.f19289u = (int) (((long) this.f19289u) + nVar6.c(this.yp, SystemClock.elapsedRealtime()));
                    }
                    break;
                }
                break;
            case "videoPercent30":
                if (gt.tt().ts()) {
                    this.sl++;
                    break;
                }
                break;
            case "dislike":
                this.f19290x.add(Long.valueOf(SystemClock.elapsedRealtime()));
                break;
            case "play_start":
                this.f19283a.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (gt.tt().ts()) {
                    this.sp++;
                }
                if (!TextUtils.isEmpty(str2)) {
                    n nVar8 = this.f19286i.get(str2);
                    if (nVar8 == null) {
                        nVar8 = new n();
                        this.f19286i.put(str2, nVar8);
                    }
                    nVar8.c(SystemClock.elapsedRealtime());
                    break;
                }
                break;
        }
    }

    public void tt() {
        this.yp = SystemClock.elapsedRealtime();
        this.sl = 0;
        this.f19287n = 0;
        this.ve = 0;
        this.f19289u = 0;
        this.f19285da = 0;
        this.sp = 0;
    }

    public JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        try {
            c(jSONArray);
            tt(jSONArray);
        } catch (Throwable th) {
            m.ve(th.getMessage());
        }
        return jSONArray;
    }

    private void c(String str, JSONArray jSONArray, ArrayList<Long> arrayList, List<Integer> list, long j10) throws JSONException {
        int size = arrayList.size() - 1;
        Iterator<Integer> it2 = list.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            int iIntValue = it2.next().intValue();
            long j11 = j10 - (((long) iIntValue) * 60000);
            while (size >= 0 && arrayList.get(size).longValue() >= j11) {
                i10++;
                size--;
            }
            if (i10 != 0) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(bm.aM, str + iIntValue);
                jSONObject.put("v", i10);
                jSONArray.put(jSONObject);
            }
        }
        while (size >= 0) {
            arrayList.remove(0);
            size--;
        }
    }

    private void c(@NonNull JSONArray jSONArray) throws JSONException {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        c("show_", jSONArray, this.f19284c, gt.tt().gl(), jElapsedRealtime);
        c("click_", jSONArray, this.uj, gt.tt().gl(), jElapsedRealtime);
        c("play_", jSONArray, this.f19283a, gt.tt().gl(), jElapsedRealtime);
        c("dis_", jSONArray, this.f19290x, gt.tt().gl(), jElapsedRealtime);
        if (gt.tt().ts() && this.ve != 0) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(bm.aM, "show_0");
            jSONObject.put("v", this.ve);
            jSONArray.put(jSONObject);
        }
        if (gt.tt().ts() && this.f19287n != 0) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(bm.aM, "click_0");
            jSONObject2.put("v", this.f19287n);
            jSONArray.put(jSONObject2);
        }
        if (!gt.tt().ts() || this.sp == 0) {
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put(bm.aM, "play_0");
        jSONObject3.put("v", this.sp);
        jSONArray.put(jSONObject3);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(uj ujVar) {
        return ujVar.ve - this.ve;
    }
}
