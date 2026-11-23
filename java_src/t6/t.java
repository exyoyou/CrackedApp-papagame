package t6;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class t extends q5.b<ForumTable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static t f97123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static RuntimeExceptionDao<ForumTable, Integer> f97124c;

    public t() {
        super(f97124c);
    }

    public static t p() {
        if (f97123b == null) {
            f97124c = q5.e.d(null).c().Q();
            f97123b = new t();
        }
        return f97123b;
    }

    public void n(ForumTable table) {
        try {
            List<ForumTable> listQuery = f97124c.queryBuilder().orderBy("time", false).where().eq("type", table.getType()).eq("arg1", table.getArgs1()).query();
            new ForumTable();
            if (listQuery != null && listQuery.size() > 0) {
                ForumTable forumTable = listQuery.get(0);
                forumTable.setTime(table.getTime());
                forumTable.setArgs1(table.getArgs1());
                forumTable.setArgs2(table.getArgs2());
                forumTable.setType(table.getType());
                table = forumTable;
            }
            f97124c.delete(table);
        } catch (Exception unused) {
        }
    }

    public ForumTable o(ForumBean.ForumEvent event) {
        ForumTable forumTable = new ForumTable();
        try {
            List<ForumTable> listR = r(event);
            return (listR == null || listR.size() <= 0) ? forumTable : listR.get(0);
        } catch (Exception unused) {
            return forumTable;
        }
    }

    public ForumTable q(ForumTable table) {
        try {
            new ArrayList();
            List<ForumTable> listQuery = f97124c.queryBuilder().orderBy("time", false).where().eq("type", table.getType()).and().eq("args1", table.getArgs1()).query();
            if (listQuery == null || listQuery.size() == 0) {
                return null;
            }
            return listQuery.get(0);
        } catch (Exception unused) {
            return null;
        }
    }

    public List<ForumTable> r(ForumBean.ForumEvent event) {
        ArrayList arrayList = new ArrayList();
        new ForumTable();
        try {
            return f97124c.queryBuilder().orderBy("time", false).where().eq("type", event.name()).query();
        } catch (Exception unused) {
            return arrayList;
        }
    }

    public boolean s(ForumBean.ForumEvent event) {
        try {
            List<ForumTable> listQuery = f97124c.queryBuilder().orderBy("time", false).where().eq("type", event.name()).query();
            return listQuery != null && listQuery.size() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public void t(ForumTable table) {
        try {
            List<ForumTable> listQuery = f97124c.queryBuilder().orderBy("time", false).where().eq("type", table.getType()).and().eq("args1", table.getArgs1()).query();
            new ForumTable();
            if (listQuery != null && listQuery.size() > 0) {
                ForumTable forumTable = listQuery.get(0);
                forumTable.setTime(table.getTime());
                forumTable.setArgs1(table.getArgs1());
                forumTable.setArgs2(table.getArgs2());
                forumTable.setType(table.getType());
                table = forumTable;
            }
            f97124c.createOrUpdate(table);
        } catch (Exception unused) {
        }
    }

    public void u(ForumTable table) {
        try {
            List<ForumTable> listQuery = f97124c.queryBuilder().orderBy("time", false).where().eq("type", table.getType()).query();
            new ForumTable();
            if (listQuery != null && listQuery.size() > 0) {
                ForumTable forumTable = listQuery.get(0);
                forumTable.setTime(table.getTime());
                forumTable.setArgs1(table.getArgs1());
                forumTable.setArgs2(table.getArgs2());
                forumTable.setType(table.getType());
                table = forumTable;
            }
            f97124c.createOrUpdate(table);
        } catch (Exception unused) {
        }
    }
}
