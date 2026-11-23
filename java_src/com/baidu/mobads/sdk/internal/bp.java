package com.baidu.mobads.sdk.internal;

import android.content.Context;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.baidu.mobads.sdk.api.MobadsPermissionSettings;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class bp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7611a = "ContainerFactoryBuilder";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static IXAdContainerFactory f7612e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f7614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Class<?> f7615d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f7613b = 0.1d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private bv f7616f = bv.a();

    public bp(Class<?> cls, Context context) {
        this.f7615d = null;
        this.f7615d = cls;
        this.f7614c = context;
    }

    public IXAdContainerFactory a() throws cb.a {
        if (f7612e == null) {
            try {
                f7612e = (IXAdContainerFactory) this.f7615d.getDeclaredConstructor(Context.class).newInstance(this.f7614c);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(com.umeng.analytics.pro.bm.bj, "9.450");
                f7612e.initConfig(jSONObject);
                this.f7613b = f7612e.getRemoteVersion();
                f7612e.onTaskDistribute(bd.f7548a, MobadsPermissionSettings.getPermissionInfo());
                f7612e.initCommonModuleObj(t.a());
            } catch (Throwable th) {
                this.f7616f.b(f7611a, th.getMessage());
                throw new cb.a("ContainerFactory() failed, possibly API incompatible: " + th.getMessage());
            }
        }
        return f7612e;
    }

    public void b() {
        f7612e = null;
    }
}
