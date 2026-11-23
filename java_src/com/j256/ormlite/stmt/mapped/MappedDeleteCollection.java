package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import io.netty.util.internal.StringUtil;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class MappedDeleteCollection<T, ID> extends BaseMappedStatement<T, ID> {
    private MappedDeleteCollection(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr) {
        super(dao, tableInfo, str, fieldTypeArr);
    }

    private static void appendWhereIds(DatabaseType databaseType, FieldType fieldType, StringBuilder sb2, int i10, FieldType[] fieldTypeArr) {
        sb2.append("WHERE ");
        databaseType.appendEscapedEntityName(sb2, fieldType.getColumnName());
        sb2.append(" IN (");
        boolean z10 = true;
        for (int i11 = 0; i11 < i10; i11++) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(StringUtil.COMMA);
            }
            sb2.append('?');
            if (fieldTypeArr != null) {
                fieldTypeArr[i11] = fieldType;
            }
        }
        sb2.append(") ");
    }

    private static <T, ID> MappedDeleteCollection<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, int i10) throws SQLException {
        FieldType idField = tableInfo.getIdField();
        if (idField == null) {
            throw new SQLException("Cannot delete " + tableInfo.getDataClass() + " because it doesn't have an id field defined");
        }
        StringBuilder sb2 = new StringBuilder(128);
        DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
        BaseMappedStatement.appendTableName(databaseType, sb2, "DELETE FROM ", (TableInfo<?, ?>) tableInfo);
        FieldType[] fieldTypeArr = new FieldType[i10];
        appendWhereIds(databaseType, idField, sb2, i10, fieldTypeArr);
        return new MappedDeleteCollection<>(dao, tableInfo, sb2.toString(), fieldTypeArr);
    }

    public static <T, ID> int deleteIds(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, DatabaseConnection databaseConnection, Collection<ID> collection, ObjectCache objectCache) throws SQLException {
        MappedDeleteCollection mappedDeleteCollectionBuild = build(dao, tableInfo, collection.size());
        Object[] objArr = new Object[collection.size()];
        FieldType idField = tableInfo.getIdField();
        Iterator<ID> it2 = collection.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            objArr[i10] = idField.convertJavaFieldToSqlArgValue(it2.next());
            i10++;
        }
        return updateRows(databaseConnection, tableInfo.getDataClass(), mappedDeleteCollectionBuild, objArr, objectCache);
    }

    public static <T, ID> int deleteObjects(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, DatabaseConnection databaseConnection, Collection<T> collection, ObjectCache objectCache) throws SQLException {
        MappedDeleteCollection mappedDeleteCollectionBuild = build(dao, tableInfo, collection.size());
        Object[] objArr = new Object[collection.size()];
        FieldType idField = tableInfo.getIdField();
        Iterator<T> it2 = collection.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            objArr[i10] = idField.extractJavaFieldToSqlArgValue(it2.next());
            i10++;
        }
        return updateRows(databaseConnection, tableInfo.getDataClass(), mappedDeleteCollectionBuild, objArr, objectCache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T, ID> int updateRows(DatabaseConnection databaseConnection, Class<T> cls, MappedDeleteCollection<T, ID> mappedDeleteCollection, Object[] objArr, ObjectCache objectCache) throws SQLException {
        try {
            int iDelete = databaseConnection.delete(mappedDeleteCollection.statement, objArr, mappedDeleteCollection.argFieldTypes);
            if (iDelete > 0 && objectCache != 0) {
                for (Object obj : objArr) {
                    objectCache.remove(cls, obj);
                }
            }
            BaseMappedStatement.logger.debug("delete-collection with statement '{}' and {} args, changed {} rows", mappedDeleteCollection.statement, Integer.valueOf(objArr.length), Integer.valueOf(iDelete));
            if (objArr.length > 0) {
                BaseMappedStatement.logger.trace("delete-collection arguments: {}", (Object) objArr);
            }
            return iDelete;
        } catch (SQLException e10) {
            throw new SQLException("Unable to run delete collection stmt: " + mappedDeleteCollection.statement, e10);
        }
    }
}
