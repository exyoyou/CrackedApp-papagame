package com.byazt.yv;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 499, 13})
public class tt implements com.byazt.gj.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f22456c;
    public final CopyOnWriteArraySet<com.byazt.gj.ve> tt = new CopyOnWriteArraySet<>();

    private tt() {
    }

    public static tt c() {
        if (f22456c == null) {
            synchronized (tt.class) {
                if (f22456c == null) {
                    f22456c = new tt();
                }
            }
        }
        return f22456c;
    }

    @Override // com.byazt.gj.ve
    public void tt(boolean z10, JSONObject jSONObject) {
        Iterator<com.byazt.gj.ve> it2 = this.tt.iterator();
        while (it2.hasNext()) {
            it2.next().tt(z10, jSONObject);
        }
    }

    @Override // com.byazt.gj.ve
    public void c(String str, String str2, String str3) {
        Iterator<com.byazt.gj.ve> it2 = this.tt.iterator();
        while (it2.hasNext()) {
            it2.next().c(str, str2, str3);
        }
    }

    @Override // com.byazt.gj.ve
    public void c(boolean z10, String str, String str2, String str3, String str4, String str5, String str6) {
        Iterator<com.byazt.gj.ve> it2 = this.tt.iterator();
        while (it2.hasNext()) {
            it2.next().c(z10, str, str2, str3, str4, str5, str6);
        }
    }

    @Override // com.byazt.gj.ve
    public void c(boolean z10, JSONObject jSONObject) {
        Iterator<com.byazt.gj.ve> it2 = this.tt.iterator();
        while (it2.hasNext()) {
            it2.next().c(z10, jSONObject);
        }
    }
}
