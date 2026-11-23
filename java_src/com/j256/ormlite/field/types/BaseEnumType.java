package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.lang.reflect.Field;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseEnumType extends BaseDataType {
    protected BaseEnumType(SqlType sqlType, Class<?>[] clsArr) {
        super(sqlType, clsArr);
    }

    protected static Enum<?> enumVal(FieldType fieldType, Object obj, Enum<?> r10, Enum<?> r11) throws SQLException {
        if (r10 != null) {
            return r10;
        }
        if (r11 != null) {
            return r11;
        }
        throw new SQLException("Cannot get enum value of '" + obj + "' for field " + fieldType);
    }

    @Override // com.j256.ormlite.field.types.BaseDataType, com.j256.ormlite.field.DataPersister
    public boolean isValidForField(Field field) {
        return field.getType().isEnum();
    }

    protected BaseEnumType(SqlType sqlType) {
        super(sqlType);
    }
}
