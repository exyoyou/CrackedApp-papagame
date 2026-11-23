package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public class MappedUpdateId<T, ID> extends BaseMappedStatement<T, ID> {
    private MappedUpdateId(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr) {
        super(dao, tableInfo, str, fieldTypeArr);
    }

    public static <T, ID> MappedUpdateId<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo) throws SQLException {
        FieldType idField = tableInfo.getIdField();
        if (idField == null) {
            throw new SQLException("Cannot update-id in " + tableInfo.getDataClass() + " because it doesn't have an id field");
        }
        StringBuilder sb2 = new StringBuilder(64);
        DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
        BaseMappedStatement.appendTableName(databaseType, sb2, "UPDATE ", (TableInfo<?, ?>) tableInfo);
        sb2.append("SET ");
        BaseMappedStatement.appendFieldColumnName(databaseType, sb2, idField, null);
        sb2.append("= ? ");
        BaseMappedStatement.appendWhereFieldEq(databaseType, idField, sb2, null);
        return new MappedUpdateId<>(dao, tableInfo, sb2.toString(), new FieldType[]{idField, idField});
    }

    private Object extractIdToFieldObject(T t10) throws SQLException {
        return this.idField.extractJavaFieldToSqlArgValue(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int execute(DatabaseConnection databaseConnection, T t10, ID id2, ObjectCache objectCache) throws SQLException {
        Object objUpdateId;
        try {
            Object[] objArr = {convertIdToFieldObject(id2), extractIdToFieldObject(t10)};
            int iUpdate = databaseConnection.update(this.statement, objArr, this.argFieldTypes);
            if (iUpdate > 0) {
                if (objectCache != 0 && (objUpdateId = objectCache.updateId(this.clazz, this.idField.extractJavaFieldValue(t10), id2)) != null && objUpdateId != t10) {
                    this.idField.assignField(this.connectionSource, objUpdateId, id2, false, objectCache);
                }
                this.idField.assignField(this.connectionSource, t10, id2, false, objectCache);
            }
            BaseMappedStatement.logger.debug("updating-id with statement '{}' and {} args, changed {} rows", (Object) this.statement, (Object) 2, (Object) Integer.valueOf(iUpdate));
            BaseMappedStatement.logger.trace("updating-id arguments: {}", (Object) objArr);
            return iUpdate;
        } catch (SQLException e10) {
            throw new SQLException("Unable to run update-id stmt on object " + t10 + ": " + this.statement, e10);
        }
    }
}
