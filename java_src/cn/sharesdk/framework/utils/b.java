package cn.sharesdk.framework.utils;

import android.util.Base64;
import com.mob.tools.network.KVPair;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.text.Typography;
import org.apache.http.client.methods.HttpPutHC4;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private C0049b f2707a = new C0049b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f2708b = new d("-._~", false);

    /* JADX INFO: renamed from: cn.sharesdk.framework.utils.b$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2709a;

        static {
            int[] iArr = new int[a.values().length];
            f2709a = iArr;
            try {
                iArr[a.HMAC_SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2709a[a.PLAINTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum a {
        HMAC_SHA1,
        PLAINTEXT
    }

    /* JADX INFO: renamed from: cn.sharesdk.framework.utils.b$b, reason: collision with other inner class name */
    public static class C0049b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2714b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f2715c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f2716d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f2717e;
    }

    public void a(String str, String str2, String str3) {
        C0049b c0049b = this.f2707a;
        c0049b.f2713a = str;
        c0049b.f2714b = str2;
        c0049b.f2717e = str3;
    }

    public ArrayList<KVPair<String>> b(String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        return b(str, arrayList, a.HMAC_SHA1);
    }

    public ArrayList<KVPair<String>> c(String str, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        return a(str, HttpPutHC4.METHOD_NAME, arrayList, aVar);
    }

    public ArrayList<KVPair<String>> b(String str, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        return a(str, "GET", arrayList, aVar);
    }

    private String b(ArrayList<KVPair<String>> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (KVPair<String> kVPair : arrayList) {
            if (i10 > 0) {
                sb2.append(Typography.amp);
            }
            sb2.append(kVPair.name);
            sb2.append('=');
            sb2.append(kVPair.value);
            i10++;
        }
        return sb2.toString();
    }

    public C0049b a() {
        return this.f2707a;
    }

    public ArrayList<KVPair<String>> a(String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        return a(str, arrayList, a.HMAC_SHA1);
    }

    public ArrayList<KVPair<String>> a(String str, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        return a(str, "POST", arrayList, aVar);
    }

    public void a(String str, String str2) {
        C0049b c0049b = this.f2707a;
        c0049b.f2715c = str;
        c0049b.f2716d = str2;
    }

    private ArrayList<KVPair<String>> a(String str, String str2, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        String strTrim;
        String str3;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i10 = AnonymousClass1.f2709a[aVar.ordinal()];
        if (i10 == 1) {
            SecretKeySpec secretKeySpec = new SecretKeySpec((a(this.f2707a.f2714b) + Typography.amp + a(this.f2707a.f2716d)).getBytes("utf-8"), "HMAC-SHA1");
            Mac mac = Mac.getInstance("HMAC-SHA1");
            mac.init(secretKeySpec);
            strTrim = new String(Base64.encode(mac.doFinal((str2 + Typography.amp + a(str) + Typography.amp + a(b(a(jCurrentTimeMillis, arrayList, "HMAC-SHA1")))).getBytes("utf-8")), 0)).trim();
            str3 = "HMAC-SHA1";
        } else if (i10 != 2) {
            str3 = null;
            strTrim = null;
        } else {
            strTrim = a(this.f2707a.f2714b) + Typography.amp + a(this.f2707a.f2716d);
            str3 = "PLAINTEXT";
        }
        ArrayList<KVPair<String>> arrayListA = a(jCurrentTimeMillis, str3);
        arrayListA.add(new KVPair<>("oauth_signature", strTrim));
        return arrayListA;
    }

    public String a(String str) {
        return str == null ? "" : this.f2708b.escape(str);
    }

    private ArrayList<KVPair<String>> a(long j10, ArrayList<KVPair<String>> arrayList, String str) {
        HashMap map = new HashMap();
        if (arrayList != null) {
            for (KVPair<String> kVPair : arrayList) {
                map.put(a(kVPair.name), a(kVPair.value));
            }
        }
        ArrayList<KVPair<String>> arrayListA = a(j10, str);
        if (arrayListA != null) {
            for (KVPair<String> kVPair2 : arrayListA) {
                map.put(a(kVPair2.name), a(kVPair2.value));
            }
        }
        int size = map.size();
        String[] strArr = new String[size];
        Iterator it2 = map.entrySet().iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            strArr[i10] = (String) ((Map.Entry) it2.next()).getKey();
            i10++;
        }
        Arrays.sort(strArr);
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        for (int i11 = 0; i11 < size; i11++) {
            String str2 = strArr[i11];
            arrayList2.add(new KVPair<>(str2, map.get(str2)));
        }
        return arrayList2;
    }

    private ArrayList<KVPair<String>> a(long j10, String str) {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f2707a.f2713a));
        arrayList.add(new KVPair<>("oauth_signature_method", str));
        arrayList.add(new KVPair<>("oauth_timestamp", String.valueOf(j10 / 1000)));
        arrayList.add(new KVPair<>("oauth_nonce", String.valueOf(j10)));
        arrayList.add(new KVPair<>("oauth_version", "1.0"));
        String str2 = this.f2707a.f2715c;
        if (str2 != null && str2.length() > 0) {
            arrayList.add(new KVPair<>("oauth_token", str2));
        }
        return arrayList;
    }

    public ArrayList<KVPair<String>> a(ArrayList<KVPair<String>> arrayList) {
        StringBuilder sb2 = new StringBuilder("OAuth ");
        int i10 = 0;
        for (KVPair<String> kVPair : arrayList) {
            if (i10 > 0) {
                sb2.append(StringUtil.COMMA);
            }
            String strA = a(kVPair.value);
            sb2.append(kVPair.name);
            sb2.append("=\"");
            sb2.append(strA);
            sb2.append(x.a.f97579g);
            i10++;
        }
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("Authorization", sb2.toString()));
        arrayList2.add(new KVPair<>("Content-Type", "application/x-www-form-urlencoded"));
        return arrayList2;
    }
}
