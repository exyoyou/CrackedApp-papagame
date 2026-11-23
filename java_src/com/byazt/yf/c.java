package com.byazt.yf;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public t f22175a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f22176c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Map<String, Object> f22177da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f22178i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f22179n;
    public boolean sl;
    public x sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public JSONObject f22180t;
    public String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Map<String, Object> f22181u;
    public String uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public uj f22182x;
    public PluginValueSet yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f22183z;

    /* JADX INFO: renamed from: com.byazt.yf.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_CURVE_FIT, 44})
    public static class C0491c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public t f22184a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f22185c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public Map<String, Object> f22186da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public a f22187i;
        public x sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public JSONObject f22189t;
        public String tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public Map<String, Object> f22190u;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public uj f22191x;
        public PluginValueSet yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public boolean f22192z;
        public boolean ve = false;
        public String uj = "";

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f22188n = false;
        public boolean sl = false;

        public C0491c c(String str) {
            this.f22185c = str;
            return this;
        }

        public C0491c tt(String str) {
            this.tt = str;
            return this;
        }

        public C0491c uj(boolean z10) {
            this.f22192z = z10;
            return this;
        }

        public C0491c ve(@NonNull String str) {
            this.uj = str;
            return this;
        }

        public C0491c c(boolean z10) {
            this.ve = z10;
            return this;
        }

        public C0491c tt(boolean z10) {
            this.f22188n = z10;
            return this;
        }

        public C0491c ve(boolean z10) {
            this.sl = z10;
            return this;
        }

        public C0491c c(@NonNull t tVar) {
            this.f22184a = tVar;
            return this;
        }

        public C0491c c(@NonNull x xVar) {
            this.sp = xVar;
            return this;
        }

        public C0491c c(@NonNull a aVar) {
            this.f22187i = aVar;
            return this;
        }

        public C0491c c(Map<String, Object> map) {
            if (map != null && !map.isEmpty()) {
                if (this.f22186da == null) {
                    this.f22186da = new HashMap();
                }
                this.f22186da.putAll(map);
            }
            return this;
        }

        public C0491c c(JSONObject jSONObject) {
            this.f22189t = jSONObject;
            return this;
        }

        public C0491c c(PluginValueSet pluginValueSet) {
            this.yp = pluginValueSet;
            return this;
        }

        public c c() {
            return new c(this);
        }
    }

    @NonNull
    public t a() {
        return this.f22175a;
    }

    @Nullable
    public String c() {
        return this.f22176c;
    }

    @Nullable
    public Map<String, Object> da() {
        return this.f22177da;
    }

    @NonNull
    public a i() {
        return this.f22178i;
    }

    public boolean n() {
        return this.f22179n;
    }

    public boolean sl() {
        return this.sl;
    }

    @NonNull
    public x sp() {
        return this.sp;
    }

    @Nullable
    public JSONObject t() {
        return this.f22180t;
    }

    @Nullable
    public String tt() {
        return this.tt;
    }

    @Nullable
    public Map<String, Object> u() {
        return this.f22181u;
    }

    @Nullable
    public String uj() {
        return this.uj;
    }

    public boolean ve() {
        return this.ve;
    }

    @Nullable
    public uj x() {
        return this.f22182x;
    }

    public PluginValueSet yp() {
        return this.yp;
    }

    public boolean z() {
        return this.f22183z;
    }

    private c(C0491c c0491c) {
        this.f22176c = c0491c.f22185c;
        this.tt = c0491c.tt;
        this.ve = c0491c.ve;
        this.uj = c0491c.uj;
        this.f22179n = c0491c.f22188n;
        if (c0491c.f22184a != null) {
            this.f22175a = c0491c.f22184a;
        } else {
            this.f22175a = new t.c().c();
        }
        if (c0491c.sp != null) {
            this.sp = c0491c.sp;
        } else {
            this.sp = new x.c().c();
        }
        if (c0491c.f22191x != null) {
            this.f22182x = c0491c.f22191x;
        } else {
            this.f22182x = new uj.c().c();
        }
        if (c0491c.f22187i != null) {
            this.f22178i = c0491c.f22187i;
        } else {
            this.f22178i = new a();
        }
        this.f22177da = c0491c.f22186da;
        this.sl = c0491c.sl;
        this.f22180t = c0491c.f22189t;
        this.f22181u = c0491c.f22190u;
        this.yp = c0491c.yp;
        this.f22183z = c0491c.f22192z;
    }
}
