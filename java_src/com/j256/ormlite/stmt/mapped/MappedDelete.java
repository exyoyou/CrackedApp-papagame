package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public class MappedDelete<T, ID> extends BaseMappedStatement<T, ID> {
    private MappedDelete(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr) {
        super(dao, tableInfo, str, fieldTypeArr);
    }

    public static <T, ID> MappedDelete<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo) throws SQLException {
        FieldType idField = tableInfo.getIdField();
        if (idField != null) {
            StringBuilder sb2 = new StringBuilder(64);
            DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
            BaseMappedStatement.appendTableName(databaseType, sb2, "DELETE FROM ", (TableInfo<?, ?>) tableInfo);
            BaseMappedStatement.appendWhereFieldEq(databaseType, idField, sb2, null);
            return new MappedDelete<>(dao, tableInfo, sb2.toString(), new FieldType[]{idField});
        }
        throw new SQLException("Cannot delete from " + tableInfo.getDataClass() + " because it doesn't have an id field");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int delete(DatabaseConnection databaseConnection, T t10, ObjectCache objectCache) throws SQLException {
        try {
            Object[] fieldObjects = getFieldObjects(t10);
            int iDelete = databaseConnection.delete(this.statement, fieldObjects, this.argFieldTypes);
            BaseMappedStatement.logger.debug("delete data with statement '{}' and {} args, changed {} rows", this.statement, Integer.valueOf(fieldObjects.length), Integer.valueOf(iDelete));
            if (fieldObjects.length > 0) {
                BaseMappedStatement.logger.trace("delete arguments: {}", (Object) fieldObjects);
            }
            if (iDelete > 0 && objectCache != 0) {
                objectCache.remove(this.clazz, this.idField.extractJavaFieldToSqlArgValue(t10));
            }
            return iDelete;
        } catch (SQLException e10) {
            throw new SQLException("Unable to run delete stmt on object " + t10 + ": " + this.statement, e10);
        }
    }

    public int deleteById(DatabaseConnection databaseConnection, ID id2, ObjectCache objectCache) throws SQLException {
        try {
            Object[] objArr = {convertIdToFieldObject(id2)};
            int iDelete = databaseConnection.delete(this.statement, objArr, this.argFieldTypes);
            BaseMappedStatement.logger.debug("delete data with statement '{}' and {} args, changed {} rows", (Object) this.statement, (Object) 1, (Object) Integer.valueOf(iDelete));
            BaseMappedStatement.logger.trace("delete arguments: {}", (Object) objArr);
            if (iDelete > 0 && objectCache != null) {
                objectCache.remove(this.clazz, id2);
            }
            return iDelete;
        } catch (SQLException e10) {
            throw new SQLException("Unable to run deleteById stmt on id " + id2 + ": " + this.statement, e10);
        }
    }
}
