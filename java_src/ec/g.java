package ec;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g implements gc.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ kwai.a.e f90897a;

    public g(kwai.a.e eVar) {
        this.f90897a = eVar;
    }

    @Override // gc.c
    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                kwai.a.e.f93869n = new JSONObject(str);
            } catch (Exception e10) {
                kc.a.a("TurboSDK", "querySwitchMessage  parse error" + e10.getMessage());
            }
        }
        kwai.a.e eVar = this.f90897a;
        eVar.getClass();
        kwai.a.e.f93870o = true;
        eVar.g();
        if (eVar.e()) {
            eVar.h();
        }
    }

    @Override // gc.c
    public void a(fc.b bVar) {
        kwai.a.e eVar = this.f90897a;
        eVar.getClass();
        kwai.a.e.f93870o = true;
        eVar.g();
        if (eVar.e()) {
            eVar.h();
        }
    }
}
