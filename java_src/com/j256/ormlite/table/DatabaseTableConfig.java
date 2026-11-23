package com.j256.ormlite.table;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.JavaxPersistenceConfigurer;
import com.j256.ormlite.misc.JavaxPersistenceImpl;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class DatabaseTableConfig<T> {
    private static JavaxPersistenceConfigurer javaxPersistenceConfigurer;
    private Class<T> dataClass;
    private DatabaseType databaseType;
    private List<DatabaseFieldConfig> fieldConfigs;
    private FieldType[] fieldTypes;
    private String schemaName;
    private String tableName;

    static {
        try {
            Class.forName("javax.persistence.Entity");
            javaxPersistenceConfigurer = (JavaxPersistenceConfigurer) JavaxPersistenceImpl.class.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            javaxPersistenceConfigurer = null;
        }
    }

    public DatabaseTableConfig() {
    }

    private FieldType[] convertFieldConfigs(DatabaseType databaseType, String str, List<DatabaseFieldConfig> list) throws SQLException {
        FieldType fieldType;
        ArrayList arrayList = new ArrayList();
        for (DatabaseFieldConfig databaseFieldConfig : list) {
            Class<T> superclass = this.dataClass;
            while (true) {
                if (superclass == null) {
                    fieldType = null;
                    break;
                }
                try {
                    Field declaredField = superclass.getDeclaredField(databaseFieldConfig.getFieldName());
                    if (declaredField != null) {
                        fieldType = new FieldType(databaseType, str, declaredField, databaseFieldConfig, this.dataClass);
                        break;
                    }
                    superclass = superclass.getSuperclass();
                } catch (NoSuchFieldException unused) {
                }
            }
            if (fieldType == null) {
                throw new SQLException("Could not find declared field with name '" + databaseFieldConfig.getFieldName() + "' for " + this.dataClass);
            }
            arrayList.add(fieldType);
        }
        if (!arrayList.isEmpty()) {
            return (FieldType[]) arrayList.toArray(new FieldType[arrayList.size()]);
        }
        throw new SQLException("No fields were configured for class " + this.dataClass);
    }

    public static <T> String extractSchemaName(Class<T> cls) {
        DatabaseTable databaseTable = (DatabaseTable) cls.getAnnotation(DatabaseTable.class);
        if (databaseTable == null || databaseTable.schemaName().length() <= 0) {
            return null;
        }
        return databaseTable.schemaName();
    }

    public static <T> String extractTableName(DatabaseType databaseType, Class<T> cls) {
        JavaxPersistenceConfigurer javaxPersistenceConfigurer2;
        DatabaseTable databaseTable = (DatabaseTable) cls.getAnnotation(DatabaseTable.class);
        String strTableName = (databaseTable == null || databaseTable.tableName() == null || databaseTable.tableName().length() <= 0) ? null : databaseTable.tableName();
        if (strTableName == null && (javaxPersistenceConfigurer2 = javaxPersistenceConfigurer) != null) {
            strTableName = javaxPersistenceConfigurer2.getEntityName(cls);
        }
        if (strTableName == null) {
            return databaseType == null ? cls.getSimpleName().toLowerCase(Locale.ENGLISH) : databaseType.downCaseString(cls.getSimpleName(), true);
        }
        return strTableName;
    }

    public static <T> DatabaseTableConfig<T> fromClass(DatabaseType databaseType, Class<T> cls) throws SQLException {
        String strExtractTableName = extractTableName(databaseType, cls);
        String strExtractSchemaName = extractSchemaName(cls);
        if (databaseType.isEntityNamesMustBeUpCase()) {
            strExtractTableName = databaseType.upCaseEntityName(strExtractTableName);
            if (strExtractSchemaName != null) {
                strExtractSchemaName = databaseType.upCaseEntityName(strExtractSchemaName);
            }
        }
        String str = strExtractTableName;
        return new DatabaseTableConfig<>(databaseType, cls, strExtractSchemaName, str, extractFieldTypes(databaseType, cls, str));
    }

    public void extractFieldTypes(DatabaseType databaseType) throws SQLException {
        if (this.fieldTypes == null) {
            List<DatabaseFieldConfig> list = this.fieldConfigs;
            if (list == null) {
                this.fieldTypes = extractFieldTypes(databaseType, this.dataClass, this.tableName);
            } else {
                this.fieldTypes = convertFieldConfigs(databaseType, this.tableName, list);
            }
        }
    }

    public Class<T> getDataClass() {
        return this.dataClass;
    }

    public List<DatabaseFieldConfig> getFieldConfigs() {
        return this.fieldConfigs;
    }

    public FieldType[] getFieldTypes(DatabaseType databaseType) throws SQLException {
        FieldType[] fieldTypeArr = this.fieldTypes;
        if (fieldTypeArr != null) {
            return fieldTypeArr;
        }
        throw new SQLException("Field types have not been extracted in table config");
    }

    public String getSchemaName() {
        return this.schemaName;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void initialize() {
        Class<T> cls = this.dataClass;
        if (cls != null) {
            if (this.tableName == null) {
                this.tableName = extractTableName(this.databaseType, cls);
            }
        } else {
            throw new IllegalStateException("dataClass was never set on " + getClass().getSimpleName());
        }
    }

    public void setDataClass(Class<T> cls) {
        this.dataClass = cls;
    }

    public void setDatabaseType(DatabaseType databaseType) {
        this.databaseType = databaseType;
    }

    public void setFieldConfigs(List<DatabaseFieldConfig> list) {
        this.fieldConfigs = list;
    }

    public void setSchemaName(String str) {
        this.schemaName = str;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }

    public DatabaseTableConfig(DatabaseType databaseType, Class<T> cls, List<DatabaseFieldConfig> list) {
        this(cls, extractSchemaName(cls), extractTableName(databaseType, cls), list);
    }

    public DatabaseTableConfig(Class<T> cls, String str, List<DatabaseFieldConfig> list) {
        this.dataClass = cls;
        this.schemaName = null;
        this.tableName = str;
        this.fieldConfigs = list;
    }

    private static <T> FieldType[] extractFieldTypes(DatabaseType databaseType, Class<T> cls, String str) throws SQLException {
        ArrayList arrayList = new ArrayList();
        for (Class<T> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            for (Field field : superclass.getDeclaredFields()) {
                FieldType fieldTypeCreateFieldType = FieldType.createFieldType(databaseType, str, field, cls);
                if (fieldTypeCreateFieldType != null) {
                    arrayList.add(fieldTypeCreateFieldType);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return (FieldType[]) arrayList.toArray(new FieldType[arrayList.size()]);
        }
        throw new IllegalArgumentException("No fields have a " + DatabaseField.class.getSimpleName() + " annotation in " + cls);
    }

    public DatabaseTableConfig(Class<T> cls, String str, String str2, List<DatabaseFieldConfig> list) {
        this.dataClass = cls;
        this.schemaName = str;
        this.tableName = str2;
        this.fieldConfigs = list;
    }

    private DatabaseTableConfig(DatabaseType databaseType, Class<T> cls, String str, String str2, FieldType[] fieldTypeArr) {
        this.databaseType = databaseType;
        this.dataClass = cls;
        this.schemaName = str;
        this.tableName = str2;
        this.fieldTypes = fieldTypeArr;
    }
}
