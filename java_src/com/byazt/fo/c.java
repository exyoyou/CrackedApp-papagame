package com.byazt.fo;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byazt.nr.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 737, 20})
public class c implements com.byazt.vb.tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f14214a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f14215c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f14216da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f14217i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f14218n;
    public byte sl;
    public long sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f14219t;
    public tt tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14220u;
    public byte uj;
    public byte ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f14221x;

    public c(String str, JSONObject jSONObject) {
        this.f14217i = str;
        this.f14215c = jSONObject;
    }

    public static com.byazt.vb.tt uj(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("type");
            int iOptInt2 = jSONObject.optInt("priority");
            c cVar = new c();
            cVar.c((byte) iOptInt);
            cVar.tt((byte) iOptInt2);
            cVar.c(jSONObject.optJSONObject(NotificationCompat.CATEGORY_EVENT));
            cVar.c(jSONObject.optString("localId"));
            cVar.tt(jSONObject.optString("genTime"));
            cVar.c(jSONObject.optInt("channel"));
            return cVar;
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.vb.tt
    public String a() {
        if (TextUtils.isEmpty(this.f14217i)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.f14217i);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, sp());
            jSONObject.put("genTime", t());
            jSONObject.put("priority", (int) this.uj);
            jSONObject.put("type", (int) this.ve);
            jSONObject.put("channel", this.f14220u);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.byazt.vb.tt
    public tt c() {
        return this.tt;
    }

    @Override // com.byazt.vb.tt
    public int da() {
        return this.f14216da;
    }

    @Override // com.byazt.vb.tt
    public long i() {
        return this.f14214a;
    }

    @Override // com.byazt.vb.tt
    public byte n() {
        return this.uj;
    }

    public String sl() {
        return this.f14219t;
    }

    @Override // com.byazt.vb.tt
    public synchronized JSONObject sp() {
        tt ttVar;
        if (this.f14215c == null && (ttVar = this.tt) != null) {
            this.f14215c = ttVar.c(sl());
        }
        return this.f14215c;
    }

    public String t() {
        return this.f14221x;
    }

    @Override // com.byazt.vb.tt
    public byte tt() {
        return this.sl;
    }

    public void ve(String str) {
        this.f14219t = str;
    }

    @Override // com.byazt.vb.tt
    public long x() {
        return this.f14218n;
    }

    @Override // com.byazt.vb.tt
    public void c(JSONObject jSONObject) {
        this.f14215c = jSONObject;
    }

    @Override // com.byazt.vb.tt
    public void tt(String str) {
        this.f14221x = str;
    }

    public void ve(byte b10) {
        this.sl = b10;
    }

    @Override // com.byazt.vb.tt
    public void c(byte b10) {
        this.ve = b10;
    }

    @Override // com.byazt.vb.tt
    public void tt(long j10) {
        this.f14214a = j10;
    }

    @Override // com.byazt.vb.tt
    public String ve() {
        return this.f14217i;
    }

    public c(String str, tt ttVar) {
        this.f14217i = str;
        this.tt = ttVar;
    }

    @Override // com.byazt.vb.tt
    public void c(String str) {
        this.f14217i = str;
    }

    @Override // com.byazt.vb.tt
    public void tt(byte b10) {
        this.uj = b10;
    }

    @Override // com.byazt.vb.tt
    public void ve(long j10) {
        this.sp = j10;
    }

    @Override // com.byazt.vb.tt
    public void c(long j10) {
        this.f14218n = j10;
    }

    @Override // com.byazt.vb.tt
    public void tt(int i10) {
        this.f14216da = i10;
    }

    @Override // com.byazt.vb.tt
    public void c(int i10) {
        this.f14220u = i10;
    }

    private c() {
    }

    @Override // com.byazt.vb.tt
    public byte uj() {
        return this.ve;
    }
}
