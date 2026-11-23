package com.czhj.sdk.common.Database;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class SQLiteBuider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25416a = "SQLiteBuider";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map<String, String> f25417b;

    public static class CreateTable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f25418a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f25419b;

        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f25420a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Map<String, String> f25421b = null;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private Map<String, String> f25422c = null;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f25423d;

            public Builder autoincrement(boolean z10) {
                this.f25423d = z10;
                return this;
            }

            public CreateTable build() {
                StringBuilder sb2 = new StringBuilder("create table if not exists ");
                sb2.append(this.f25420a);
                sb2.append(" ( ");
                List listB = SQLiteBuider.b(this.f25421b);
                if (listB.size() > 1) {
                    Iterator it2 = SQLiteBuider.b(this.f25422c).iterator();
                    while (it2.hasNext()) {
                        sb2.append((String) it2.next());
                        sb2.append(" ,");
                    }
                    sb2.append(" primary key ( ");
                    Iterator<String> it3 = this.f25421b.keySet().iterator();
                    while (it3.hasNext()) {
                        sb2.append(it3.next());
                        if (it3.hasNext()) {
                            sb2.append(" ,");
                        } else {
                            sb2.append(" )");
                        }
                    }
                } else {
                    sb2.append(this.f25423d ? "id integer primary key AUTOINCREMENT" : String.format("%s primary key ", listB.get(0)));
                    this.f25422c.remove(this.f25421b.keySet().iterator().next());
                    for (String str : SQLiteBuider.b(this.f25422c)) {
                        sb2.append(" ,");
                        sb2.append(str);
                        sb2.append(" ");
                    }
                }
                sb2.append(" ); ");
                CreateTable createTable = new CreateTable();
                createTable.f25419b = sb2.toString();
                createTable.f25418a = this.f25420a;
                return createTable;
            }

            public Builder setColumns(Map<String, String> map) {
                this.f25422c = map;
                return this;
            }

            public Builder setPrimaryKey(String str, String str2) {
                if (this.f25421b == null) {
                    this.f25421b = new HashMap();
                }
                this.f25421b.put(str, str2);
                return this;
            }

            public Builder setTableName(String str) {
                this.f25420a = str;
                return this;
            }
        }
    }

    public static class CreateTriggerBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f25424a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f25425b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f25426c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f25427d = null;

        public String build() {
            return String.format("create trigger if not exists %s after %s on %s begin %s end;", this.f25424a, this.f25425b, this.f25426c, this.f25427d);
        }

        public CreateTriggerBuilder setExecSql(String str) {
            this.f25427d = str;
            return this;
        }

        public CreateTriggerBuilder setOnAction(String str) {
            this.f25425b = str;
            return this;
        }

        public CreateTriggerBuilder setOnTableName(String str) {
            this.f25426c = str;
            return this;
        }

        public CreateTriggerBuilder setTriggerName(String str) {
            this.f25424a = str;
            return this;
        }
    }

    public static class Insert {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f25428a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f25429b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Map<String, Object> f25430c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<Object> f25431d;

        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f25432a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Map<String, Object> f25433b = null;

            public Insert build() {
                List<Object> listAsList = Arrays.asList(this.f25433b.keySet().toArray());
                StringBuilder sb2 = new StringBuilder("insert or replace into ");
                sb2.append(this.f25432a);
                StringBuilder sb3 = new StringBuilder("(");
                StringBuilder sb4 = new StringBuilder("(");
                int i10 = 0;
                while (i10 < listAsList.size()) {
                    sb3.append(listAsList.get(i10));
                    sb4.append("?");
                    i10++;
                    if (i10 < listAsList.size()) {
                        sb3.append(", ");
                        sb4.append(", ");
                    }
                }
                sb3.append(")");
                sb4.append(")");
                sb2.append((CharSequence) sb3);
                sb2.append(" values ");
                sb2.append((CharSequence) sb4);
                Insert insert = new Insert();
                insert.f25428a = this.f25432a;
                insert.f25431d = listAsList;
                insert.f25430c = this.f25433b;
                insert.f25429b = sb2.toString();
                return insert;
            }

            public void setColumnValues(Map<String, Object> map) {
                this.f25433b = map;
            }

            public void setTableName(String str) {
                this.f25432a = str;
            }
        }

        public List<Object> getColumns() {
            return this.f25431d;
        }

        public String getSql() {
            return this.f25429b;
        }

        public String getTableName() {
            return this.f25428a;
        }

        public Map<String, Object> getValues() {
            return this.f25430c;
        }
    }

    public static class Update {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f25434a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f25435b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Map<String, Object> f25436c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f25437d;

        public static class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f25438a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private Map<String, Object> f25439b = null;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private String f25440c = null;

            public Update build() {
                StringBuilder sb2 = new StringBuilder("update ");
                sb2.append(this.f25438a);
                sb2.append(" set ");
                Iterator<String> it2 = this.f25439b.keySet().iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    sb2.append(next + " = " + this.f25439b.get(next));
                    if (it2.hasNext()) {
                        sb2.append(", ");
                    }
                }
                if (!TextUtils.isEmpty(this.f25440c)) {
                    sb2.append(" " + this.f25440c);
                }
                Update update = new Update();
                update.f25434a = this.f25438a;
                update.f25436c = this.f25439b;
                update.f25437d = this.f25440c;
                update.f25435b = sb2.toString();
                return update;
            }

            public void setColumnValues(Map<String, Object> map) {
                this.f25439b = map;
            }

            public void setTableName(String str) {
                this.f25438a = str;
            }

            public void setWhere(String str) {
                this.f25440c = str;
            }
        }

        public String getSql() {
            return this.f25435b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> b(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (String str : map.keySet()) {
            String lowerCase = map.get(str).toLowerCase();
            lowerCase.hashCode();
            String str2 = "text";
            switch (lowerCase) {
                case "int":
                case "long":
                    str2 = TypedValues.Custom.S_INT;
                    break;
                case "text":
                case "java.lang.string":
                    break;
                default:
                    str2 = "blob";
                    break;
            }
            arrayList.add(String.format("%s %s ", str, str2));
        }
        return arrayList;
    }
}
