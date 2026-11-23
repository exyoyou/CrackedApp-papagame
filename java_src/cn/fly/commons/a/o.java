package cn.fly.commons.a;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.ae;
import cn.fly.commons.x;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class o extends c {
    public o() {
        super(x.b("0029efch"), 0L, x.b("0056efchdiFci"), 3600L, c.a(x.b("0029efch"), (Long) 0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        DH.requester(FlySDK.getContext()).getMwfo().getMwlfo().request(new DH.DHResponder() { // from class: cn.fly.commons.a.o.2
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                HashMap<String, Object> map = new HashMap<>();
                HashMap<String, Object> mwfo = dHResponse.getMwfo();
                if (mwfo == null) {
                    return;
                }
                String str = (String) mwfo.get("bsmt");
                String str2 = (String) mwfo.get("ssmt");
                if (!TextUtils.isEmpty(str)) {
                    ArrayList<HashMap<String, Object>> mwlfo = dHResponse.getMwlfo();
                    if (mwlfo != null && !mwlfo.isEmpty()) {
                        for (HashMap<String, Object> map2 : mwlfo) {
                            Object obj = map2.get(x.b("0056eidkdkddek"));
                            if (obj != null && String.valueOf(obj).equals(str)) {
                                map.putAll(map2);
                                break;
                            }
                        }
                        map.remove(x.b("005]eidkdkddek"));
                        map.remove(x.b("004@dkdkddek"));
                    }
                } else if (TextUtils.isEmpty(str2) || x.b("014=hdcfNdMdg5dIcjefGd_heehehchcbhf").equalsIgnoreCase(str2)) {
                    return;
                }
                map.putAll(mwfo);
                map.put("ssmt", str2);
                map.put("bsmt", str);
                o.this.a("WIMT", map, true);
                TreeMap treeMap = new TreeMap();
                treeMap.put("ssmt", str2);
                treeMap.put("bsmt", str);
                ae.b().a(ae.f1069i, Data.MD5(new JSONObject(treeMap).toString()));
            }
        });
    }

    @Override // cn.fly.commons.a.c
    protected void d() {
        cn.fly.tools.utils.k.a().a(getClass().getName(), new cn.fly.tools.utils.k.a() { // from class: cn.fly.commons.a.o.1
            @Override // cn.fly.tools.utils.k.a
            public void a() {
                if (o.this.g()) {
                    o.this.n();
                }
            }
        });
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        n();
    }
}
