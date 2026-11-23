package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.sql.SQLException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ManyClause implements Clause, NeedsFutureClause {
    private final Clause first;
    private final Operation operation;
    private final Clause[] others;
    private Clause second;
    private final int startOthersAt;

    public enum Operation {
        AND("AND"),
        OR("OR");

        public final String sql;

        Operation(String str) {
            this.sql = str;
        }
    }

    public ManyClause(Clause clause, Operation operation) {
        this.first = clause;
        this.second = null;
        this.others = null;
        this.startOthersAt = 0;
        this.operation = operation;
    }

    @Override // com.j256.ormlite.stmt.query.Clause
    public void appendSql(DatabaseType databaseType, String str, StringBuilder sb2, List<ArgumentHolder> list, Clause clause) throws SQLException {
        boolean z10 = (clause instanceof ManyClause) && ((ManyClause) clause).operation == this.operation;
        if (!z10) {
            sb2.append('(');
        }
        this.first.appendSql(databaseType, str, sb2, list, this);
        if (this.second != null) {
            sb2.append(this.operation.sql);
            sb2.append(' ');
            this.second.appendSql(databaseType, str, sb2, list, this);
        }
        if (this.others != null) {
            for (int i10 = this.startOthersAt; i10 < this.others.length; i10++) {
                sb2.append(this.operation.sql);
                sb2.append(' ');
                this.others[i10].appendSql(databaseType, str, sb2, list, this);
            }
        }
        if (z10) {
            return;
        }
        int length = sb2.length();
        if (length > 0) {
            int i11 = length - 1;
            if (sb2.charAt(i11) == ' ') {
                sb2.setLength(i11);
            }
        }
        sb2.append(") ");
    }

    @Override // com.j256.ormlite.stmt.query.NeedsFutureClause
    public void setMissingClause(Clause clause) {
        this.second = clause;
    }

    public ManyClause(Clause clause, Clause clause2, Clause[] clauseArr, Operation operation) {
        this.first = clause;
        this.second = clause2;
        this.others = clauseArr;
        this.startOthersAt = 0;
        this.operation = operation;
    }

    public ManyClause(Clause[] clauseArr, Operation operation) {
        this.first = clauseArr[0];
        if (clauseArr.length < 2) {
            this.second = null;
            this.startOthersAt = clauseArr.length;
        } else {
            this.second = clauseArr[1];
            this.startOthersAt = 2;
        }
        this.others = clauseArr;
        this.operation = operation;
    }
}
