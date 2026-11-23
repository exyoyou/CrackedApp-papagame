package com.byazt.pct;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.component.sdk.annotation.WorkerThread;
import com.haima.hmcp.proto.GSSDK;
import com.join.mgps.Util.o0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 117})
public class rl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, List<tt>> f18655c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile boolean f18656n = false;
    public final LruCache<String, ve> tt;
    public final String uj;
    public final sl.c ve;

    @com.byazt.zqa.c(c = {0, 1, 124, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_CLEAR_VALUE})
    static class c extends IllegalStateException {
        public c(String str) {
            super(str);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 124, 1957})
    private static final class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Pattern f18658c;
        public gu tt;
        public List<String> uj;
        public List<String> ve;

        private tt() {
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 124, 1995})
    static final class ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public gu f18659c = gu.PUBLIC;
        public Set<String> tt = new HashSet();
        public Set<String> ve = new HashSet();
    }

    @WorkerThread
    public rl(String str, int i10, sl.c cVar, final Executor executor, JSONObject jSONObject) {
        this.uj = str;
        if (i10 <= 0) {
            this.tt = new LruCache<>(16);
        } else {
            this.tt = new LruCache<>(i10);
        }
        this.ve = cVar;
        if (jSONObject != null) {
            update(jSONObject);
        } else {
            uj(str);
            new Object() { // from class: com.byazt.pct.rl.1
            };
        }
    }

    private static String tt(String str) {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = str.split("[.]")).length) < 2) {
            return null;
        }
        if (length == 2) {
            return str;
        }
        return strArrSplit[length - 2] + o0.f49827a + strArrSplit[length - 1];
    }

    private static String uj(String str) {
        return "com.bytedance.ies.web.jsbridge2.PermissionConfig.".concat(String.valueOf(str));
    }

    private List<tt> ve(String str) throws c {
        if (this.f18656n) {
            return this.f18655c.get(str);
        }
        throw new c("Permission config is outdated!");
    }

    public ve c(String str, Set<String> set) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        String string = new Uri.Builder().scheme(scheme).authority(authority).path(uri.getPath()).toString();
        ve veVar = new ve();
        if (authority == null || authority.isEmpty()) {
            veVar.f18659c = gu.PUBLIC;
            return veVar;
        }
        for (String str2 : set) {
            if (authority.equals(str2) || authority.endsWith(o0.f49827a.concat(String.valueOf(str2)))) {
                veVar.f18659c = gu.PRIVATE;
                return veVar;
            }
        }
        ve veVar2 = this.tt.get(string);
        return veVar2 != null ? veVar2 : c(string);
    }

    public void update(JSONObject jSONObject) {
        c(jSONObject);
        uj(this.uj);
    }

    @WorkerThread
    private static tt tt(JSONObject jSONObject) throws JSONException {
        tt ttVar = new tt();
        ttVar.f18658c = Pattern.compile(jSONObject.getString("pattern"));
        ttVar.tt = gu.c(jSONObject.getString("group"));
        ttVar.ve = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("included_methods");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                ttVar.ve.add(jSONArrayOptJSONArray.getString(i10));
            }
        }
        ttVar.uj = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("excluded_methods");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                ttVar.uj.add(jSONArrayOptJSONArray2.getString(i11));
            }
        }
        return ttVar;
    }

    @WorkerThread
    private void c(JSONObject jSONObject) {
        this.f18655c.clear();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                this.f18655c.put(next, linkedList);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    linkedList.add(tt(jSONArray.getJSONObject(i10)));
                }
            }
        } catch (JSONException e10) {
            i.tt("Parse configurations failed, response: " + jSONObject.toString(), e10);
        }
        this.f18656n = true;
    }

    private ve c(String str) throws c {
        ve veVar = new ve();
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        String strTt = tt(authority);
        if (!TextUtils.isEmpty(scheme) && !TextUtils.isEmpty(authority) && strTt != null) {
            List<tt> listVe = ve(strTt);
            if (listVe == null) {
                return veVar;
            }
            for (tt ttVar : listVe) {
                if (ttVar.f18658c.matcher(str).find()) {
                    if (ttVar.tt.compareTo(veVar.f18659c) >= 0) {
                        veVar.f18659c = ttVar.tt;
                    }
                    veVar.tt.addAll(ttVar.ve);
                    veVar.ve.addAll(ttVar.uj);
                }
            }
            this.tt.put(str, veVar);
            return veVar;
        }
        veVar.f18659c = gu.PUBLIC;
        return veVar;
    }
}
