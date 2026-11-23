package com.j256.ormlite.stmt;

import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes5.dex */
public interface PreparedStmt<T> extends GenericRowMapper<T> {
    CompiledStatement compile(DatabaseConnection databaseConnection, StatementBuilder.StatementType statementType) throws SQLException;

    CompiledStatement compile(DatabaseConnection databaseConnection, StatementBuilder.StatementType statementType, int i10) throws SQLException;

    int getNumArgs();

    String getStatement() throws SQLException;

    StatementBuilder.StatementType getType();

    void setArgumentHolderValue(int i10, Object obj) throws SQLException;
}
