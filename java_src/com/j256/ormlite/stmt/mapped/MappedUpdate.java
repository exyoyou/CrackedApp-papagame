package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public class MappedUpdate<T, ID> extends BaseMappedStatement<T, ID> {
    private final FieldType versionFieldType;
    private final int versionFieldTypeIndex;

    private MappedUpdate(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr, FieldType fieldType, int i10) {
        super(dao, tableInfo, str, fieldTypeArr);
        this.versionFieldType = fieldType;
        this.versionFieldTypeIndex = i10;
    }

    public static <T, ID> MappedUpdate<T, ID> build(Dao<T, ID> dao, TableInfo<T, ID> tableInfo) throws SQLException {
        FieldType idField = tableInfo.getIdField();
        if (idField == null) {
            throw new SQLException("Cannot update " + tableInfo.getDataClass() + " because it doesn't have an id field");
        }
        StringBuilder sb2 = new StringBuilder(64);
        DatabaseType databaseType = dao.getConnectionSource().getDatabaseType();
        BaseMappedStatement.appendTableName(databaseType, sb2, "UPDATE ", (TableInfo<?, ?>) tableInfo);
        FieldType fieldType = null;
        int i10 = -1;
        int i11 = 0;
        for (FieldType fieldType2 : tableInfo.getFieldTypes()) {
            if (isFieldUpdatable(fieldType2, idField)) {
                if (fieldType2.isVersion()) {
                    i10 = i11;
                    fieldType = fieldType2;
                }
                i11++;
            }
        }
        boolean z10 = true;
        int i12 = i11 + 1;
        if (fieldType != null) {
            i12++;
        }
        FieldType[] fieldTypeArr = new FieldType[i12];
        int i13 = 0;
        for (FieldType fieldType3 : tableInfo.getFieldTypes()) {
            if (isFieldUpdatable(fieldType3, idField)) {
                if (z10) {
                    sb2.append("SET ");
                    z10 = false;
                } else {
                    sb2.append(", ");
                }
                BaseMappedStatement.appendFieldColumnName(databaseType, sb2, fieldType3, null);
                fieldTypeArr[i13] = fieldType3;
                sb2.append("= ?");
                i13++;
            }
        }
        sb2.append(' ');
        BaseMappedStatement.appendWhereFieldEq(databaseType, idField, sb2, null);
        int i14 = i13 + 1;
        fieldTypeArr[i13] = idField;
        if (fieldType != null) {
            sb2.append(" AND ");
            BaseMappedStatement.appendFieldColumnName(databaseType, sb2, fieldType, null);
            sb2.append("= ?");
            fieldTypeArr[i14] = fieldType;
        }
        return new MappedUpdate<>(dao, tableInfo, sb2.toString(), fieldTypeArr, fieldType, i10);
    }

    private static boolean isFieldUpdatable(FieldType fieldType, FieldType fieldType2) {
        return (fieldType == fieldType2 || fieldType.isForeignCollection() || fieldType.isReadOnly()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int update(DatabaseConnection databaseConnection, T t10, ObjectCache objectCache) throws SQLException {
        Object objMoveToNextValue;
        try {
            if (this.argFieldTypes.length <= 1) {
                return 0;
            }
            Object[] fieldObjects = getFieldObjects(t10);
            FieldType fieldType = this.versionFieldType;
            if (fieldType != null) {
                objMoveToNextValue = this.versionFieldType.moveToNextValue(fieldType.extractJavaFieldValue(t10));
                fieldObjects[this.versionFieldTypeIndex] = this.versionFieldType.convertJavaFieldToSqlArgValue(objMoveToNextValue);
            } else {
                objMoveToNextValue = null;
            }
            Object obj = objMoveToNextValue;
            int iUpdate = databaseConnection.update(this.statement, fieldObjects, this.argFieldTypes);
            if (iUpdate > 0) {
                if (obj != null) {
                    this.versionFieldType.assignField(this.connectionSource, t10, obj, false, null);
                }
                if (objectCache != 0) {
                    Object obj2 = objectCache.get(this.clazz, this.idField.extractJavaFieldValue(t10));
                    if (obj2 != null && obj2 != t10) {
                        for (FieldType fieldType2 : this.tableInfo.getFieldTypes()) {
                            if (fieldType2 != this.idField) {
                                fieldType2.assignField(this.connectionSource, obj2, fieldType2.extractJavaFieldValue(t10), false, objectCache);
                            }
                        }
                    }
                }
            }
            BaseMappedStatement.logger.debug("update data with statement '{}' and {} args, changed {} rows", this.statement, Integer.valueOf(fieldObjects.length), Integer.valueOf(iUpdate));
            if (fieldObjects.length > 0) {
                BaseMappedStatement.logger.trace("update arguments: {}", (Object) fieldObjects);
            }
            return iUpdate;
        } catch (SQLException e10) {
            throw new SQLException("Unable to run update stmt on object " + t10 + ": " + this.statement, e10);
        }
    }
}
