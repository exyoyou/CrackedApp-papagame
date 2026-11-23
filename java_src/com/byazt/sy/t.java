package com.byazt.sy;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 66})
public class t extends com.byazt.xj.ve<InteractWebView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f19999c;
    public Map<String, Object> yo;

    public t(Context context) {
        super(context);
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public InteractWebView c() {
        InteractWebView interactWebView = new InteractWebView(this.tt);
        this.f21881n = interactWebView;
        return interactWebView;
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        Map<String, Object> mapTt = this.f21874i.tt();
        this.yo = mapTt;
        ((InteractWebView) this.f21881n).setUGenExtraMap(mapTt);
        ((InteractWebView) this.f21881n).setUGenContext(this.f21874i);
        ((InteractWebView) this.f21881n).a();
        ((InteractWebView) this.f21881n).sp();
        JSONObject jSONObjectDa = da();
        if (jSONObjectDa != null) {
            com.byazt.nzi.c cVar = new com.byazt.nzi.c();
            cVar.c(jSONObjectDa.optInt("meta_hashcode", 0));
            ((InteractWebView) this.f21881n).setMaterialMeta(cVar);
        }
        x();
    }

    public void x() {
        if (TextUtils.isEmpty(this.f19999c)) {
            this.f19999c = "https://cdn-tos-cn.bytedance.net/obj/archi/ad/play-comp/playable-component-sdk/dev/index.ecommerce.html";
        }
        ((InteractWebView) this.f21881n).loadUrl(this.f19999c);
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        str.hashCode();
        if (str.equals("src")) {
            if (TextUtils.isEmpty(this.f19999c) || !this.f19999c.startsWith("http")) {
                this.f19999c = "https://cdn-tos-cn.bytedance.net/obj/archi/ad/play-comp/playable-component-sdk/dev/index.ecommerce.html";
            } else {
                this.f19999c = str2;
            }
        }
    }
}
