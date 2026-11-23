package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableInfo;
import external.org.apache.commons.lang3.d;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseMappedStatement<T, ID> {
    protected static Logger logger = LoggerFactory.getLogger((Class<?>) BaseMappedStatement.class);
    protected final FieldType[] argFieldTypes;
    protected final Class<T> clazz;
    protected final ConnectionSource connectionSource;
    protected final Dao<T, ID> dao;
    protected final FieldType idField;
    protected final String statement;
    protected final TableInfo<T, ID> tableInfo;

    protected BaseMappedStatement(Dao<T, ID> dao, TableInfo<T, ID> tableInfo, String str, FieldType[] fieldTypeArr) {
        this.dao = dao;
        this.connectionSource = dao.getConnectionSource();
        this.tableInfo = tableInfo;
        this.clazz = tableInfo.getDataClass();
        this.idField = tableInfo.getIdField();
        this.statement = str;
        this.argFieldTypes = fieldTypeArr;
    }

    static void appendFieldColumnName(DatabaseType databaseType, StringBuilder sb2, FieldType fieldType, List<FieldType> list) {
        databaseType.appendEscapedEntityName(sb2, fieldType.getColumnName());
        if (list != null) {
            list.add(fieldType);
        }
        sb2.append(' ');
    }

    static void appendTableName(DatabaseType databaseType, StringBuilder sb2, String str, String str2) {
        if (str != null) {
            sb2.append(str);
        }
        databaseType.appendEscapedEntityName(sb2, str2);
        sb2.append(' ');
    }

    static void appendWhereFieldEq(DatabaseType databaseType, FieldType fieldType, StringBuilder sb2, List<FieldType> list) {
        sb2.append("WHERE ");
        appendFieldColumnName(databaseType, sb2, fieldType, list);
        sb2.append("= ?");
    }

    protected Object convertIdToFieldObject(ID id2) throws SQLException {
        return this.idField.convertJavaFieldToSqlArgValue(id2);
    }

    protected Object[] getFieldObjects(Object obj) throws SQLException {
        Object[] objArr = new Object[this.argFieldTypes.length];
        int i10 = 0;
        while (true) {
            FieldType[] fieldTypeArr = this.argFieldTypes;
            if (i10 >= fieldTypeArr.length) {
                return objArr;
            }
            FieldType fieldType = fieldTypeArr[i10];
            if (fieldType.isAllowGeneratedIdInsert()) {
                objArr[i10] = fieldType.getFieldValueIfNotDefault(obj);
            } else {
                objArr[i10] = fieldType.extractJavaFieldToSqlArgValue(obj);
            }
            if (objArr[i10] == null) {
                objArr[i10] = fieldType.getDefaultValue();
            }
            i10++;
        }
    }

    public String toString() {
        return this.statement;
    }

    static void appendTableName(DatabaseType databaseType, StringBuilder sb2, String str, TableInfo<?, ?> tableInfo) {
        if (str != null) {
            sb2.append(str);
        }
        if (tableInfo.getSchemaName() != null && tableInfo.getSchemaName().length() > 0) {
            databaseType.appendEscapedEntityName(sb2, tableInfo.getSchemaName());
            sb2.append(d.f90941a);
        }
        databaseType.appendEscapedEntityName(sb2, tableInfo.getTableName());
        sb2.append(' ');
    }
}
