package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.AppBeanMainTable;
import com.join.mgps.db.tables.AppBeanTable;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.ModleBeanTable;
import com.join.mgps.db.tables.RecomDatabeanTable;
import com.join.mgps.db.tables.TipBeanTable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class f0 extends q5.b<RecomDatabeanTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f0 f97076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<RecomDatabeanTable, Integer> f97077c;

    private f0() {
        super(f97077c);
    }

    private int o(int type) {
        DeleteBuilder<RecomDatabeanTable, Integer> deleteBuilder = f97077c.deleteBuilder();
        Where<RecomDatabeanTable, Integer> where = deleteBuilder.where();
        try {
            where.eq("dataFrom", Integer.valueOf(type));
            deleteBuilder.setWhere(where);
            return f97077c.delete(deleteBuilder.prepare());
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static f0 p() {
        if (f97076b == null) {
            f97077c = q5.e.d(null).c().r0();
            f97076b = new f0();
        }
        return f97076b;
    }

    public void n(int dataFrom) {
        try {
            HashMap map = new HashMap();
            map.put("dataFrom", Integer.valueOf(dataFrom));
            List<RecomDatabeanTable> listH = f97076b.h(map);
            o(dataFrom);
            for (int i10 = 0; i10 < listH.size(); i10++) {
                RecomDatabeanTable recomDatabeanTable = listH.get(i10);
                ModleBeanTable main = recomDatabeanTable.getMain();
                if (main != null) {
                    c0.n().delete(main);
                }
                for (AppBeanMainTable appBeanMainTable : recomDatabeanTable.getSub().getWrappedIterable()) {
                    a.n().delete(appBeanMainTable);
                    AppBeanTable game_info = appBeanMainTable.getGame_info();
                    if (game_info != null) {
                        b.n().delete(game_info);
                        if (game_info.getTag_info() != null) {
                            Iterator<TipBeanTable> it2 = game_info.getTag_info().getWrappedIterable().iterator();
                            while (it2.hasNext()) {
                                k0.n().delete(it2.next());
                            }
                        }
                        if (game_info.getTp_down_url() != null) {
                            Iterator<DownloadUrlTable> it3 = game_info.getTp_down_url().getWrappedIterable().iterator();
                            while (it3.hasNext()) {
                                l.n().delete(it3.next());
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
