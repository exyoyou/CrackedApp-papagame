package com.j256.ormlite.field.converter;

import com.j256.ormlite.field.BaseFieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public class BooleanNumberFieldConverter extends BaseFieldConverter {
    private static final BooleanNumberFieldConverter singleTon = new BooleanNumberFieldConverter();

    public static BooleanNumberFieldConverter getSingleton() {
        return singleTon;
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public SqlType getSqlType() {
        return SqlType.BYTE;
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object javaToSqlArg(FieldType fieldType, Object obj) {
        return Byte.valueOf(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object parseDefaultString(FieldType fieldType, String str) {
        return Byte.valueOf(Boolean.parseBoolean(str) ? (byte) 1 : (byte) 0);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultStringToJava(FieldType fieldType, String str, int i10) {
        return sqlArgToJava(fieldType, Byte.valueOf(Byte.parseByte(str)), i10);
    }

    @Override // com.j256.ormlite.field.FieldConverter
    public Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i10) throws SQLException {
        return Byte.valueOf(databaseResults.getByte(i10));
    }

    @Override // com.j256.ormlite.field.BaseFieldConverter, com.j256.ormlite.field.FieldConverter
    public Object sqlArgToJava(FieldType fieldType, Object obj, int i10) {
        return ((Byte) obj).byteValue() == 1 ? Boolean.TRUE : Boolean.FALSE;
    }
}
