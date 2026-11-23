package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.HandShankTable;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class x extends q5.b<HandShankTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static x f97131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<HandShankTable, Integer> f97132c;

    private x() {
        super(f97132c);
    }

    public static x p() {
        if (f97131b == null) {
            f97132c = q5.e.d(null).c().c0();
            f97131b = new x();
        }
        return f97131b;
    }

    public void n(HandShankTable handShankTable) {
        f97132c.createOrUpdate(handShankTable);
    }

    public List<HandShankTable> o() {
        List<HandShankTable> listQuery = null;
        try {
            listQuery = f97132c.queryBuilder().orderBy("time", false).query();
            for (int i10 = 0; i10 < listQuery.size(); i10++) {
                HandShankTable handShankTable = listQuery.get(i10);
                if (com.join.mgps.joystick.map.a.b().f(handShankTable.getName())) {
                    f97132c.delete(handShankTable);
                    listQuery.remove(i10);
                }
            }
        } catch (SQLException e10) {
            e10.printStackTrace();
        }
        return listQuery;
    }

    public boolean q(String address) {
        try {
            List<HandShankTable> listQuery = f97132c.queryBuilder().orderBy("time", false).where().eq("address", address).query();
            return listQuery != null && listQuery.size() > 0;
        } catch (Exception unused) {
        }
    }
}
