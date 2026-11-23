package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class pblv {
    public static final int CLIENT_TYPE_BUSINESS = 1;
    public static final int CLIENT_TYPE_INHOUSE = 0;
    public static final int CLIENT_TYPE_UNKNOWN = -1;
    public static final int COLLECT_MODE_DEFAULT = 99999;
    public static final int COLLECT_MODE_ML_MINIMIZE = 290;
    public static final int COLLECT_MODE_ML_PGL_AL = 810;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f94434a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f94435b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f94436c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f94437d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f94438e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f94439f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f94440g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f94441h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected String f94442i = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected String f94443j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected int f94444k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected int f94445l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f94446m = COLLECT_MODE_DEFAULT;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected Map<String, String> f94447n = new HashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected HashMap f94448o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected HashSet f94449p = new HashSet();

    public interface pblb {
    }

    public static abstract class pgla<T extends pblb> extends pblv implements pblb {
        public pgla(String str, String str2, int i10) {
            this.f94434a = str;
            this.f94442i = str2;
            this.f94446m = i10;
            if (TextUtils.isEmpty(str) || "0".equals(str) || TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("appID or license must be set.");
            }
            if (i10 != 99999 && i10 != 290 && i10 != 810) {
                throw new IllegalArgumentException("COLLECT_MODE is error ");
            }
        }

        protected final pgla a() {
            this.f94444k = 1;
            return this;
        }

        public T addAdvanceInfo0(String str, String str2) {
            this.f94448o.put(str, str2);
            return this;
        }

        public T addDataObserver(PglITokenObserver pglITokenObserver) {
            if (pglITokenObserver != null) {
                this.f94449p.add(pglITokenObserver);
            }
            return this;
        }

        public T setBDDeviceID0(String str) {
            this.f94437d = str;
            return this;
        }

        public T setChannel0(String str) {
            this.f94435b = str;
            return this;
        }

        public T setClientType0(int i10) {
            this.f94444k = i10;
            return this;
        }

        public T setCustomInfo0(Map<String, String> map) {
            if (map == null) {
                map = new HashMap<>();
            }
            this.f94447n = map;
            return this;
        }

        public T setDeviceID0(String str) {
            this.f94436c = str;
            return this;
        }

        public T setInstallID0(String str) {
            this.f94438e = str;
            return this;
        }

        public T setOVRegionType0(int i10) {
            this.f94445l = i10;
            return this;
        }

        public T setOaid0(String str) {
            if (!str.equals("timeout") && !str.equals("error")) {
                if (!str.isEmpty()) {
                    this.f94448o.put("kOA1", "1");
                }
                return this;
            }
            this.f94448o.put("kOA1", "1");
            str = null;
            this.f94443j = str;
            return this;
        }

        public T setSecssionID0(String str) {
            this.f94439f = str;
            return this;
        }

        public pgla(String str, String str2, String str3, int i10) {
            this.f94440g = str;
            this.f94441h = str2;
            this.f94442i = str3;
            this.f94446m = i10;
            if (TextUtils.isEmpty(str) || "0".equals(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                throw new IllegalArgumentException("sdkID or license must be set.");
            }
        }
    }

    protected pblv() {
    }

    static String a(Object obj) {
        return (obj == null || !(obj instanceof String)) ? "" : ((String) obj).trim();
    }
}
