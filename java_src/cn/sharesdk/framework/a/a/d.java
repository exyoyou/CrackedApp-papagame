package cn.sharesdk.framework.a.a;

import android.content.ContentValues;
import android.database.Cursor;
import cn.sharesdk.framework.utils.SSDKLog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class d {
    public static synchronized long a(String str, long j10) {
        if (str != null) {
            if (str.trim() != "") {
                b bVarA = b.a();
                ContentValues contentValues = new ContentValues();
                contentValues.put("post_time", Long.valueOf(j10));
                contentValues.put("message_data", str);
                return bVarA.a("message", contentValues);
            }
        }
        return -1L;
    }

    public static synchronized long a(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return 0L;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            sb2.append("'");
            sb2.append(arrayList.get(i10));
            sb2.append("'");
            sb2.append(",");
        }
        String strSubstring = sb2.toString().substring(0, sb2.length() - 1);
        int iA = b.a().a("message", "_id in ( " + strSubstring + " )", null);
        SSDKLog.b().c("delete COUNT == %s", Integer.valueOf(iA));
        return iA;
    }

    private static synchronized ArrayList<c> a(String str, String[] strArr) {
        ArrayList<c> arrayList;
        arrayList = new ArrayList<>();
        c cVar = new c();
        StringBuilder sb2 = new StringBuilder();
        Cursor cursorA = b.a().a("message", new String[]{"_id", "post_time", "message_data"}, str, strArr, null);
        while (cursorA != null && cursorA.moveToNext()) {
            cVar.f2520b.add(cursorA.getString(0));
            if (cVar.f2520b.size() == 100) {
                sb2.append(cursorA.getString(2));
                cVar.f2519a = sb2.toString();
                arrayList.add(cVar);
                cVar = new c();
                sb2 = new StringBuilder();
            } else {
                sb2.append(cursorA.getString(2) + "\n");
            }
        }
        cursorA.close();
        if (cVar.f2520b.size() != 0) {
            cVar.f2519a = sb2.toString().substring(0, sb2.length() - 1);
            arrayList.add(cVar);
        }
        return arrayList;
    }

    public static synchronized ArrayList<c> a() {
        if (b.a().a("message") > 0) {
            return a((String) null, (String[]) null);
        }
        return new ArrayList<>();
    }
}
