package com.byazt.twu;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.bv.BaseConstants;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 970, 34})
public class a extends tt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.rz.c f20477n;
    public com.byazt.vb.n tt;
    public final Context uj;
    public List<String> ve;

    public a(Context context, com.byazt.rz.c cVar, com.byazt.vb.n nVar) {
        super(context, nVar, cVar == null ? com.byazt.rz.c.ve() : cVar);
        this.ve = new ArrayList();
        this.uj = context;
        this.f20477n = cVar;
        this.tt = nVar;
        if (cVar == null) {
            this.f20477n = com.byazt.rz.c.ve();
        }
    }

    public static String n(String str) {
        return "ALTER TABLE " + str + " ADD COLUMN encrypt INTEGER default 0";
    }

    @Override // com.byazt.uf.c
    public boolean c(com.byazt.vb.tt ttVar) {
        return com.byazt.ml.c.n(ttVar);
    }

    @Override // com.byazt.twu.ve
    public String delete(List<com.byazt.vb.tt> list) {
        if (list == null || list.size() == 0) {
            return "list is empty";
        }
        LinkedList linkedList = new LinkedList();
        Iterator<com.byazt.vb.tt> it2 = list.iterator();
        while (it2.hasNext()) {
            linkedList.add(it2.next().ve());
        }
        com.byazt.ml.c.c(list, this.tt, c());
        String strC = com.byazt.ym.tt.c(getContext(), "DELETE FROM " + c() + " WHERE " + c("id", (List<?>) linkedList, 1000, true), this.tt);
        c(linkedList);
        return strC;
    }

    public byte tt() {
        return (byte) 2;
    }

    @Override // com.byazt.twu.tt
    public com.byazt.vb.n uj() {
        return this.tt;
    }

    public byte ve() {
        return (byte) 0;
    }

    private void uj(List<com.byazt.vb.tt> list) {
        LinkedList linkedList = new LinkedList();
        Iterator<com.byazt.vb.tt> it2 = list.iterator();
        while (it2.hasNext()) {
            linkedList.add(it2.next().ve());
        }
        com.byazt.ym.tt.c(getContext(), "UPDATE " + c() + " SET retry = retry+1 WHERE " + c("id", (List<?>) linkedList, 1000, true), this.tt);
    }

    @Override // com.byazt.twu.tt
    public String c() {
        com.byazt.vb.a aVarTt = this.tt.tt();
        if (aVarTt != null) {
            return aVarTt.tt();
        }
        return null;
    }

    public String ve(List<String> list) {
        c();
        list.size();
        String strC = com.byazt.ym.tt.c(getContext(), "DELETE FROM " + c() + " WHERE " + c("id", (List<?>) list, 1000, true), this.tt);
        com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.z(), list.size(), this.tt);
        c(list);
        return strC;
    }

    @Override // com.byazt.twu.ve
    public List<com.byazt.vb.tt> c(int i10, String str, int i11, boolean z10) {
        String str2;
        com.byazt.vb.uj ujVar;
        long jC = com.byazt.mv.c.c(i10, getContext(), this.tt);
        com.byazt.ml.ve.tt(c() + " query db max :" + jC + " limit:" + i10, this.tt);
        if (jC <= 0) {
            jC = 1;
        } else if (jC > 100) {
            jC = 100;
        }
        String str3 = str + " DESC limit " + jC;
        List<com.byazt.vb.tt> arrayList = new ArrayList<>();
        this.ve.clear();
        Context context = getContext();
        String strC = c();
        String[] strArr = {"id", HmInputMappingContent.FIELD_VALUE, "encrypt", "retry"};
        com.byazt.vb.n nVar = this.tt;
        String str4 = BaseConstants.EVENT_LABEL_AD_EXTRA_DATA;
        Cursor cursorQuery = com.byazt.ym.tt.query(context, strC, strArr, null, null, null, null, str3, nVar);
        if (cursorQuery != null) {
            try {
                com.byazt.vb.uj ujVarUj = this.tt.uj();
                while (cursorQuery.moveToNext()) {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(HmInputMappingContent.FIELD_VALUE));
                        int i12 = cursorQuery.getInt(cursorQuery.getColumnIndex("encrypt"));
                        int i13 = cursorQuery.getInt(cursorQuery.getColumnIndex("retry"));
                        if (i12 == 1) {
                            string2 = ujVarUj.c(string2);
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.ve.add(string);
                        } else {
                            if (arrayList.size() > 100) {
                                break;
                            }
                            JSONObject jSONObject = new JSONObject(string2);
                            str2 = str4;
                            try {
                                String strOptString = jSONObject.optString(str2);
                                if (TextUtils.isEmpty(strOptString)) {
                                    ujVar = ujVarUj;
                                } else {
                                    JSONObject jSONObject2 = new JSONObject(strOptString);
                                    jSONObject2.put("retry_count", i13);
                                    ujVar = ujVarUj;
                                    try {
                                        jSONObject2.put("db_rd", System.currentTimeMillis());
                                        jSONObject.put(str2, jSONObject2.toString());
                                    } catch (Throwable th) {
                                        th = th;
                                        com.byazt.ml.ve.ve(th.getMessage(), this.tt);
                                    }
                                }
                                com.byazt.fo.c cVar = new com.byazt.fo.c(string, jSONObject);
                                cVar.tt(i13 + 1);
                                cVar.c(ve());
                                cVar.tt(tt());
                                com.byazt.ml.c.c(jSONObject, cVar, this.tt, i13);
                                arrayList.add(cVar);
                            } catch (Throwable th2) {
                                th = th2;
                                ujVar = ujVarUj;
                                com.byazt.ml.ve.ve(th.getMessage(), this.tt);
                                ujVarUj = ujVar;
                                str4 = str2;
                            }
                            ujVarUj = ujVar;
                            str4 = str2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str2 = str4;
                    }
                }
                try {
                    cursorQuery.close();
                    if (!this.ve.isEmpty()) {
                        ve(this.ve);
                        this.ve.clear();
                    }
                    if (com.byazt.ml.c.c(i11) && !z10) {
                        c(arrayList, 10, bn.f7592d);
                    }
                } catch (Exception unused) {
                }
            } catch (Throwable th4) {
                try {
                    cursorQuery.close();
                    if (!this.ve.isEmpty()) {
                        ve(this.ve);
                        this.ve.clear();
                    }
                    if (com.byazt.ml.c.c(i11) && !z10) {
                        c(arrayList, 10, bn.f7592d);
                    }
                } catch (Exception unused2) {
                }
                throw th4;
            }
        }
        com.byazt.ml.ve.tt(c() + " query db actually size :" + arrayList.size(), this.tt);
        return arrayList;
    }

    public static String uj(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    @Override // com.byazt.twu.ve
    public List<com.byazt.vb.tt> c(String str, int i10, boolean z10) {
        com.byazt.rz.c cVar = this.f20477n;
        if (cVar == null) {
            return new ArrayList();
        }
        return c(cVar.tt(), str, i10, z10);
    }

    private void c(int i10, long j10) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        Context context = getContext();
        String strC = c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(jCurrentTimeMillis);
        String string = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i10);
        com.byazt.ym.tt.delete(context, strC, "gen_time <? OR retry >?", new String[]{string, sb3.toString()}, this.tt);
    }

    public void c(List<com.byazt.vb.tt> list, int i10, long j10) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            uj(list);
            c(i10, j10);
        } catch (Exception unused) {
        }
    }

    private static String c(String str, List<?> list, int i10, boolean z10) {
        int i11;
        String str2 = z10 ? " IN " : " NOT IN ";
        String str3 = z10 ? " OR " : " AND ";
        int iMin = Math.min(i10, 1000);
        int size = list.size();
        if (size % iMin == 0) {
            i11 = size / iMin;
        } else {
            i11 = (size / iMin) + 1;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i12 * iMin;
            String strC = c(TextUtils.join("','", list.subList(i13, Math.min(i13 + iMin, size))), "");
            if (i12 != 0) {
                sb2.append(str3);
            }
            sb2.append(str);
            sb2.append(str2);
            sb2.append("('");
            sb2.append(strC);
            sb2.append("')");
        }
        return c(sb2.toString(), str + str2 + "('')");
    }

    private static String c(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }
}
