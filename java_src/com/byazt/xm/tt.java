package com.byazt.xm;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byazt.epi.ve;
import com.byazt.vb.i;
import com.byazt.vb.n;
import com.byazt.ym.uj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1600, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ve f21994c;
    public String tt;
    public i uj;
    public n ve;

    private n c() {
        if (this.ve == null) {
            this.ve = com.byazt.epi.c.tt(this.tt).tt();
        }
        return this.ve;
    }

    private i tt() {
        if (this.uj == null) {
            this.uj = com.byazt.epi.c.tt(this.tt).ve();
        }
        return this.uj;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0024  */
    public String getType(Uri uri) {
        com.byazt.vb.tt ttVarUj;
        c();
        i iVarTt = tt();
        if (iVarTt == null) {
            return null;
        }
        byte b10 = 2;
        String str = uri.getPath().split(e.F0)[2];
        str.hashCode();
        switch (str.hashCode()) {
            case -482705237:
                if (str.equals("trackAdFailed")) {
                    b10 = 0;
                } else {
                    b10 = -1;
                }
                break;
            case -171493183:
                if (str.equals("adLogStart")) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
                break;
            case 964299715:
                if (!str.equals("adLogStop")) {
                    b10 = -1;
                }
                break;
            case 1025736635:
                if (str.equals("adLogDispatch")) {
                    b10 = 3;
                } else {
                    b10 = -1;
                }
                break;
            case 1131732929:
                if (str.equals("trackAdUrl")) {
                    b10 = 4;
                } else {
                    b10 = -1;
                }
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
                com.byazt.pvs.c.c(c()).c(uri.getQueryParameter("did"));
                return null;
            case 1:
                c();
                iVarTt.c(TextUtils.equals(uri.getQueryParameter("is_flush"), "true"));
                return null;
            case 2:
                c();
                return null;
            case 3:
                c();
                String queryParameter = uri.getQueryParameter(NotificationCompat.CATEGORY_EVENT);
                if (!TextUtils.isEmpty(queryParameter) && (ttVarUj = com.byazt.fo.c.uj(com.byazt.ym.ve.tt(queryParameter))) != null) {
                    tt().c(ttVarUj);
                }
                return null;
            case 4:
                c();
                try {
                    String queryParameter2 = uri.getQueryParameter("did");
                    boolean zBooleanValue = Boolean.valueOf(uri.getQueryParameter("replace")).booleanValue();
                    String[] strArrSplit = com.byazt.ym.ve.tt(uri.getQueryParameter("track")).split(",");
                    if (strArrSplit.length > 0) {
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : strArrSplit) {
                            String strTt = com.byazt.ym.ve.tt(str2);
                            if (!TextUtils.isEmpty(strTt)) {
                                arrayList.add(strTt);
                            }
                        }
                        com.byazt.pvs.c.c(c()).c(queryParameter2, arrayList, zBooleanValue, null, new JSONObject());
                    }
                    break;
                } catch (Throwable unused) {
                }
                return null;
            default:
                return null;
        }
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public static ve c(n nVar) {
        try {
            if (f21994c == null) {
                f21994c = nVar.uj().sl();
            }
        } catch (Exception unused) {
        }
        return f21994c;
    }

    private static String tt(n nVar) {
        return uj.c(nVar) + "/ad_log_event/";
    }

    public static void c(n nVar, boolean z10) {
        if (nVar == null) {
            return;
        }
        try {
            ve veVarC = c(nVar);
            if (veVarC != null) {
                veVarC.getType(Uri.parse(tt(nVar) + "adLogStart?is_flush=" + z10));
            }
        } catch (Throwable unused) {
        }
    }

    public static void c(com.byazt.vb.tt ttVar, n nVar) {
        if (ttVar == null || nVar == null) {
            return;
        }
        try {
            ve veVarC = c(nVar);
            if (veVarC != null) {
                veVarC.getType(Uri.parse(tt(nVar) + "adLogDispatch?event=" + com.byazt.ym.ve.c(ttVar.a())));
            }
        } catch (Throwable th) {
            com.byazt.ml.ve.ve("dispatch event Throwable:" + th.toString(), nVar);
        }
    }

    public static void c(String str, List<String> list, boolean z10, n nVar) {
        if (list == null || list.isEmpty() || nVar == null) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                sb2.append(com.byazt.ym.ve.c(it2.next()));
                sb2.append(",");
            }
            String str2 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(com.byazt.ym.ve.c(sb2.toString())) + "&replace=" + String.valueOf(z10);
            ve veVarC = c(nVar);
            if (veVarC != null) {
                veVarC.getType(Uri.parse(tt(nVar) + "trackAdUrl" + str2));
            }
        } catch (Throwable unused) {
        }
    }

    public static void c(String str, n nVar) {
        if (TextUtils.isEmpty(str) || nVar == null) {
            return;
        }
        try {
            ve veVarC = c(nVar);
            if (veVarC != null) {
                veVarC.getType(Uri.parse(tt(nVar) + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }
}
