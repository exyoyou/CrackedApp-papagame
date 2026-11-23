package com.byazt.dc;

import android.util.SparseArray;
import com.kuaishou.weapon.p0.t;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2063, 54})
public class ve implements com.byazt.xiv.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f12681c;
    public Function<SparseArray<Object>, Object> tt;
    public String ve;

    public ve(String str) {
        this.f12681c = str;
    }

    private String c() {
        String str = this.f12681c;
        str.hashCode();
        switch (str) {
            case "sigmob":
                return "s";
            case "xiaomi":
                return "x";
            case "ks":
                return t.f74876a;
            case "gdt":
                return "g";
            case "baidu":
                return t.f74887l;
            case "unity":
                return "u";
            default:
                return null;
        }
    }

    @Override // com.byazt.xiv.ve
    public String getAdnName() {
        return this.f12681c;
    }

    @Override // com.byazt.xiv.ve
    public String getAdnVersion() {
        String str = this.f12681c;
        str.hashCode();
        switch (str) {
            case "xiaomi":
                return com.byazt.xiv.n.x();
            case "ks":
                return com.byazt.xiv.n.a();
            case "gdt":
                return com.byazt.xiv.n.sp();
            default:
                return null;
        }
    }

    @Override // com.byazt.xiv.ve
    public String getAdnVersionListKey() {
        return c() + "_adn_version";
    }

    @Override // com.byazt.xiv.ve
    public String getClassName() {
        return c() + "_class_name";
    }

    @Override // com.byazt.xiv.ve
    public Function<SparseArray<Object>, Object> getInitBridge() {
        return n.tt(this.f12681c);
    }

    @Override // com.byazt.xiv.ve
    public Function<SparseArray<Object>, Object> getManager() {
        return this.tt;
    }

    @Override // com.byazt.xiv.ve
    public String getUnSupportVersion() {
        return this.ve;
    }

    @Override // com.byazt.xiv.ve
    public void saveManager(Function<SparseArray<Object>, Object> function) {
        this.tt = function;
    }

    @Override // com.byazt.xiv.ve
    public void saveUnSupportVersion(String str) {
        this.ve = str;
    }
}
