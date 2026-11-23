package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public class DateTimeType extends BaseDataType {
    private static final DateTimeType singleTon = new DateTimeType();
    private static Class<?> dateTimeClass = null;
    private static Method getMillisMethod = null;
    private static Constructor<?> millisConstructor = null;
    private static final String[] associatedClassNames = {"org.joda.time.DateTime"};

    private DateTimeType() {
        super(SqlType.LONG);
    }

    private Object createInstance(Long l10) throws SQLException {
        try {
            if (millisConstructor == null) {
                millisConstructor = getDateTimeClass().getConstructor(Long.TYPE);
            }
            return millisConstructor.newInstance(l10);
        } catch (Exception e10) {
            throw new SQLException("Could not use reflection to construct a Joda DateTime", e10);
        }
    }

    private Long extractMillis(Object obj) throws SQLException {
        try {
            if (getMillisMethod == null) {
                getMillisMethod = getDateTimeClass().getMethod("getMillis", new Class[0]);
            }
            if (obj == null) {
                return null;
            }
            return (Long) getMillisMethod.invoke(obj, new Object[0]);
        } catch (Exception e10) {
            throw new SQLException("Could not use reflection to get millis from Joda DateTime: " + obj, e10);
        }
    }

    private Class<?> getDateTimeClass() throws ClassNotFoundException {
        if (dateTimeClass == null) {
            dateTimeClass = Class.forName("org.joda.time.DateTime");
        }
        return dateTimeClass;
    }

    public static DateTimeType getSingleton() {
        return singleTon;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public String[] getAssociatedClassNames() {
        return associatedClassNames;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public Class<?> getPrimaryClass() {
        try {
            return getDateTimeClass();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isAppropriateId() {
        return false;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isEscapedValue() {
        return false;
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isValidForVersion() {
        return true;
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object javaToSqlArg(FieldType fieldType, Object obj) throws SQLException {
        return extractMillis(obj);
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public Object moveToNextValue(Object obj) throws SQLException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (obj == null) {
            return createInstance(Long.valueOf(jCurrentTimeMillis));
        }
        return jCurrentTimeMillis == extractMillis(obj).longValue() ? createInstance(Long.valueOf(jCurrentTimeMillis + 1)) : createInstance(Long.valueOf(jCurrentTimeMillis));
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) throws SQLException {
        try {
            return Long.valueOf(Long.parseLong(str));
        } catch (NumberFormatException e10) {
            throw new SQLException("Problems with field " + fieldType + " parsing default DateTime value: " + str, e10);
        }
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i10) throws SQLException {
        return Long.valueOf(databaseResults.getLong(i10));
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object sqlArgToJava(FieldType fieldType, Object obj, int i10) throws SQLException {
        return createInstance((Long) obj);
    }

    protected DateTimeType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }
}
