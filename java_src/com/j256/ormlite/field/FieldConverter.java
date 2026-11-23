package com.j256.ormlite.field;

import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public interface FieldConverter {
    SqlType getSqlType();

    boolean isStreamType();

    Object javaToSqlArg(FieldType fieldType, Object obj) throws SQLException;

    Object makeConfigObject(FieldType fieldType) throws SQLException;

    Object parseDefaultString(FieldType fieldType, String str) throws SQLException;

    Object resultStringToJava(FieldType fieldType, String str, int i10) throws SQLException;

    Object resultToJava(FieldType fieldType, DatabaseResults databaseResults, int i10) throws SQLException;

    Object resultToSqlArg(FieldType fieldType, DatabaseResults databaseResults, int i10) throws SQLException;

    Object sqlArgToJava(FieldType fieldType, Object obj, int i10) throws SQLException;
}
