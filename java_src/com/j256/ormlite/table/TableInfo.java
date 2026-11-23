package com.j256.ormlite.table;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import java.sql.SQLException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class TableInfo<T, ID> {
    private static final FieldType[] NO_FOREIGN_COLLECTIONS = new FieldType[0];
    private final Class<T> dataClass;
    private final DatabaseType databaseType;
    private final Map<String, FieldType> fieldNameMap;
    private final FieldType[] fieldTypes;
    private final boolean foreignAutoCreate;
    private final FieldType[] foreignCollections;
    private final FieldType idField;
    private final String schemaName;
    private final String tableName;

    public TableInfo(DatabaseType databaseType, Class<T> cls) throws SQLException {
        this(databaseType, DatabaseTableConfig.fromClass(databaseType, cls));
    }

    public Class<T> getDataClass() {
        return this.dataClass;
    }

    public FieldType getFieldTypeByColumnName(String str) {
        String strDownCaseString = this.databaseType.downCaseString(str, true);
        FieldType fieldType = this.fieldNameMap.get(strDownCaseString);
        if (fieldType != null) {
            return fieldType;
        }
        for (FieldType fieldType2 : this.fieldTypes) {
            if (this.databaseType.downCaseString(fieldType2.getFieldName(), true).equals(strDownCaseString)) {
                throw new IllegalArgumentException("Unknown column-name '" + strDownCaseString + "', maybe field-name instead of column-name '" + this.databaseType.downCaseString(fieldType2.getColumnName(), true) + "' from table '" + this.tableName + "' with columns: " + this.fieldNameMap.keySet());
            }
        }
        throw new IllegalArgumentException("Unknown column-name '" + strDownCaseString + "' in table '" + this.tableName + "' with columns: " + this.fieldNameMap.keySet());
    }

    public FieldType[] getFieldTypes() {
        return this.fieldTypes;
    }

    public FieldType[] getForeignCollections() {
        return this.foreignCollections;
    }

    public FieldType getIdField() {
        return this.idField;
    }

    public String getSchemaName() {
        return this.schemaName;
    }

    public String getTableName() {
        return this.tableName;
    }

    public boolean hasColumnName(String str) {
        for (FieldType fieldType : this.fieldTypes) {
            if (fieldType.getColumnName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isForeignAutoCreate() {
        return this.foreignAutoCreate;
    }

    public boolean isUpdatable() {
        return this.idField != null && this.fieldTypes.length > 1;
    }

    public String objectToString(T t10) {
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(t10.getClass().getSimpleName());
        for (FieldType fieldType : this.fieldTypes) {
            sb2.append(' ');
            sb2.append(fieldType.getColumnName());
            sb2.append('=');
            try {
                sb2.append(fieldType.extractJavaFieldValue(t10));
            } catch (Exception e10) {
                throw new IllegalStateException("Could not generate toString of field " + fieldType, e10);
            }
        }
        return sb2.toString();
    }

    public TableInfo(DatabaseType databaseType, DatabaseTableConfig<T> databaseTableConfig) throws SQLException {
        this.databaseType = databaseType;
        this.dataClass = databaseTableConfig.getDataClass();
        this.schemaName = databaseTableConfig.getSchemaName();
        this.tableName = databaseTableConfig.getTableName();
        FieldType[] fieldTypes = databaseTableConfig.getFieldTypes(databaseType);
        this.fieldTypes = fieldTypes;
        HashMap map = new HashMap();
        FieldType fieldType = null;
        boolean z10 = false;
        int i10 = 0;
        for (FieldType fieldType2 : fieldTypes) {
            if (fieldType2.isId() || fieldType2.isGeneratedId() || fieldType2.isGeneratedIdSequence()) {
                if (fieldType != null) {
                    throw new SQLException("More than 1 idField configured for class " + this.dataClass + " (" + fieldType + "," + fieldType2 + ")");
                }
                fieldType = fieldType2;
            }
            z10 = fieldType2.isForeignAutoCreate() ? true : z10;
            if (fieldType2.isForeignCollection()) {
                i10++;
            }
            map.put(databaseType.downCaseString(fieldType2.getColumnName(), true), fieldType2);
        }
        this.fieldNameMap = Collections.unmodifiableMap(map);
        this.idField = fieldType;
        this.foreignAutoCreate = z10;
        if (i10 == 0) {
            this.foreignCollections = NO_FOREIGN_COLLECTIONS;
            return;
        }
        this.foreignCollections = new FieldType[i10];
        int i11 = 0;
        for (FieldType fieldType3 : this.fieldTypes) {
            if (fieldType3.isForeignCollection()) {
                this.foreignCollections[i11] = fieldType3;
                i11++;
            }
        }
    }
}
