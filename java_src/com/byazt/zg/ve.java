package com.byazt.zg;

import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
public enum ve implements n {
    QUESTION("?", 0),
    COLON(":", 0),
    DOUBLE_AMP("&&", 1),
    DOUBLE_BAR("||", 1),
    EQ("==", 2),
    GT(SimpleComparison.GREATER_THAN_OPERATION, 2),
    LT(SimpleComparison.LESS_THAN_OPERATION, 2),
    LT_EQ(SimpleComparison.LESS_THAN_EQUAL_TO_OPERATION, 2),
    GT_EQ(SimpleComparison.GREATER_THAN_EQUAL_TO_OPERATION, 2),
    NOT_EQ("!=", 2),
    PLUS("+", 3),
    MINUS("-", 3),
    MULTI(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD, 4),
    DIVISION(e.F0, 4),
    MOD("%", 4);

    public final int my;
    public final String rh;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Map<String, ve> f22761m = new HashMap(128);
    public static final Set<ve> nu = new HashSet();

    static {
        for (ve veVar : values()) {
            f22761m.put(veVar.c(), veVar);
            nu.add(veVar);
        }
    }

    ve(String str, int i10) {
        this.rh = str;
        this.my = i10;
    }

    public static ve c(String str) {
        return f22761m.get(str);
    }

    public int tt() {
        return this.my;
    }

    public static boolean c(n nVar) {
        return nVar instanceof ve;
    }

    public String c() {
        return this.rh;
    }
}
