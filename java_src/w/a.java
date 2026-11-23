package w;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import u.b;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.alipay.sdk.protocol.a f97543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f97544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String[] f97545c;

    private a(String str) {
        this.f97544b = str;
    }

    private String a() {
        return this.f97544b;
    }

    public static List<a> b(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        if (jSONObject == null) {
            return arrayList;
        }
        String strOptString = jSONObject.optString("name", "");
        String[] strArrSplit = !TextUtils.isEmpty(strOptString) ? strOptString.split(";") : null;
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            com.alipay.sdk.protocol.a aVarA = com.alipay.sdk.protocol.a.a(strArrSplit[i10]);
            if (aVarA != com.alipay.sdk.protocol.a.None) {
                a aVar = new a(strArrSplit[i10], aVarA);
                aVar.f97545c = d(strArrSplit[i10]);
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private static void c(a aVar) {
        String[] strArr = aVar.f97545c;
        if (strArr.length == 3 && TextUtils.equals(b.f97417c, strArr[0])) {
            Context context = x.b.b().f97590a;
            y.b bVarA = y.b.a();
            if (TextUtils.isEmpty(strArr[1]) || TextUtils.isEmpty(strArr[2])) {
                return;
            }
            bVarA.f97669a = strArr[1];
            bVarA.f97670b = strArr[2];
            y.a aVar2 = new y.a(context);
            try {
                aVar2.g(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), bVarA.f97669a, bVarA.f97670b);
            } catch (Exception unused) {
            } finally {
                aVar2.close();
            }
        }
    }

    private static String[] d(String str) {
        ArrayList arrayList = new ArrayList();
        int iIndexOf = str.indexOf(40);
        int iLastIndexOf = str.lastIndexOf(41);
        if (iIndexOf == -1 || iLastIndexOf == -1 || iLastIndexOf <= iIndexOf) {
            return null;
        }
        String[] strArrSplit = str.substring(iIndexOf + 1, iLastIndexOf).split(",");
        if (strArrSplit != null) {
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                if (!TextUtils.isEmpty(strArrSplit[i10])) {
                    arrayList.add(strArrSplit[i10].trim().replaceAll("'", "").replaceAll(x.a.f97579g, ""));
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private com.alipay.sdk.protocol.a e() {
        return this.f97543a;
    }

    private static String[] f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.split(";");
    }

    private String[] g() {
        return this.f97545c;
    }

    private a(String str, com.alipay.sdk.protocol.a aVar) {
        this.f97544b = str;
        this.f97543a = aVar;
    }
}
