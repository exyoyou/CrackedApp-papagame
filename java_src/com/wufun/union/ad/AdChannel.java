package com.wufun.union.ad;

import android.app.Activity;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public abstract class AdChannel {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Type f88141c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected a f88142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Context f88143e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f88145g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f88146h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f88147i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f88139a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f88140b = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f88144f = false;

    public enum Type {
        TT(0),
        GDT(1),
        UNKNOWN(-1);

        public int val;

        Type(int i10) {
            this.val = i10;
        }

        public static Type parse(int i10) {
            Type type = TT;
            if (i10 == type.val) {
                return type;
            }
            Type type2 = GDT;
            return i10 == type2.val ? type2 : UNKNOWN;
        }
    }

    public interface a {
        void a(int i10, String str);
    }

    public a a() {
        return this.f88142d;
    }

    public int b() {
        return this.f88145g;
    }

    public String c() {
        return this.f88147i;
    }

    public abstract void d(Context context, String str);

    public boolean e() {
        return this.f88140b;
    }

    public boolean f() {
        return this.f88139a;
    }

    public void g(String str) {
        h(str, 1080.0f, 1920.0f);
    }

    public Type getType() {
        return this.f88141c;
    }

    public abstract void h(String str, float f10, float f11);

    public void i(int i10, Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("type", Integer.valueOf(this.f88141c.val));
            jSONObject.putOpt(NotificationCompat.CATEGORY_EVENT, Integer.valueOf(i10));
            jSONObject.putOpt("result", obj);
            jSONObject.putOpt("message", str);
            a aVar = this.f88142d;
            if (aVar != null) {
                aVar.a(i10, jSONObject.toString());
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public void j(a aVar) {
        this.f88142d = aVar;
    }

    public void k(int i10) {
        this.f88145g = i10;
    }

    public void l(String str) {
        this.f88147i = str;
    }

    public abstract void m(Activity activity);
}
