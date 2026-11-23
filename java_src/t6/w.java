package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.H5GameAccountDataTable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class w extends q5.b<H5GameAccountDataTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static w f97129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<H5GameAccountDataTable, Integer> f97130c;

    private w() {
        super(f97130c);
    }

    public static w o() {
        if (f97129b == null) {
            f97130c = q5.e.d(null).c().F0();
            f97129b = new w();
        }
        return f97129b;
    }

    public List<H5GameAccountDataTable> n(String appkey) {
        List<H5GameAccountDataTable> listQueryForEq;
        if (appkey == null || "".equals(appkey) || (listQueryForEq = f97130c.queryForEq("appkey", appkey)) == null || listQueryForEq.size() == 0) {
            return null;
        }
        return listQueryForEq;
    }
}
