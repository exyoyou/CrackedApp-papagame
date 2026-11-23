package q5;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class b<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RuntimeExceptionDao f96535a;

    public b(RuntimeExceptionDao dao) {
        this.f96535a = dao;
    }

    public int a() {
        try {
            return this.f96535a.deleteBuilder().delete();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public int b(Object id2) {
        return this.f96535a.deleteById(id2);
    }

    public int c(Collection ids) {
        return this.f96535a.deleteIds(ids);
    }

    public List<E> d() {
        return this.f96535a.queryForAll();
    }

    public int delete(E data) {
        return this.f96535a.delete(data);
    }

    public List<E> e(Map<String, Object> params, String open, boolean opend, String orderBy, boolean ascending) {
        QueryBuilder queryBuilder = this.f96535a.queryBuilder();
        try {
            queryBuilder.orderBy(open, opend);
            queryBuilder.orderBy(orderBy, ascending);
            Where<T, ID> where = queryBuilder.where();
            Set<Map.Entry<String, Object>> setEntrySet = params.entrySet();
            int i10 = 0;
            for (Map.Entry<String, Object> entry : setEntrySet) {
                i10++;
                if (i10 == setEntrySet.size()) {
                    where.eq(entry.getKey(), entry.getValue());
                } else {
                    where.eq(entry.getKey(), entry.getValue()).and();
                }
            }
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<E> f(Where where, String orderBy, boolean ascending) {
        QueryBuilder queryBuilder = this.f96535a.queryBuilder();
        try {
            queryBuilder.setWhere(where);
            queryBuilder.orderBy(orderBy, ascending);
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public E g(Object obj) {
        return (E) this.f96535a.queryForId(obj);
    }

    public List<E> h(Map<String, Object> params) {
        return this.f96535a.queryForFieldValues(params);
    }

    public List<E> i(long start, long size, String orderBy, boolean ascending) {
        QueryBuilder queryBuilder = this.f96535a.queryBuilder();
        try {
            queryBuilder.orderBy(orderBy, ascending);
            queryBuilder.offset(Long.valueOf(start));
            queryBuilder.limit(Long.valueOf(size));
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public List<E> j(Where where, long start, long size, String orderBy, boolean ascending) {
        QueryBuilder queryBuilder = this.f96535a.queryBuilder();
        try {
            queryBuilder.setWhere(where);
            queryBuilder.orderBy(orderBy, ascending);
            queryBuilder.offset(Long.valueOf(start));
            queryBuilder.limit(Long.valueOf(size));
            return queryBuilder.query();
        } catch (SQLException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int k(E data) {
        return this.f96535a.create(data);
    }

    public E l(E e10) {
        return (E) this.f96535a.createIfNotExists(e10);
    }

    public E m(E e10) {
        return (E) this.f96535a.createOrUpdate(e10);
    }

    public int update(E data) {
        return this.f96535a.update(data);
    }

    public int delete(Collection datas) {
        return this.f96535a.delete(datas);
    }
}
