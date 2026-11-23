package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.serializer.j1;
import com.alibaba.fastjson.serializer.v1;
import java.io.IOException;
import java.lang.reflect.Type;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;

/* JADX INFO: loaded from: classes7.dex */
public class r0 implements j1, x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r0 f6572a = new r0();

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public int b() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.x0
    public <T> T c(com.alibaba.fastjson.parser.c cVar, Type type, Object obj) {
        com.alibaba.fastjson.parser.d dVarZ = cVar.z();
        if (dVarZ.b() != 4) {
            throw new UnsupportedOperationException();
        }
        String strR = dVarZ.R();
        dVarZ.j();
        if (type == x.a()) {
            return (T) LocalDateTime.parse(strR);
        }
        if (type == a0.a()) {
            return (T) LocalDate.parse(strR);
        }
        if (type == c0.a()) {
            return (T) LocalTime.parse(strR);
        }
        if (type == e0.a()) {
            return (T) ZonedDateTime.parse(strR);
        }
        if (type == g0.a()) {
            return (T) OffsetDateTime.parse(strR);
        }
        if (type == i0.a()) {
            return (T) OffsetTime.parse(strR);
        }
        if (type == k0.a()) {
            return (T) ZoneId.of(strR);
        }
        if (type == m0.a()) {
            return (T) Period.parse(strR);
        }
        if (type == o0.a()) {
            return (T) Duration.parse(strR);
        }
        if (type == q0.a()) {
            return (T) Instant.parse(strR);
        }
        return null;
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(com.alibaba.fastjson.serializer.v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            v1VarW.p0();
        } else {
            v1VarW.q0(obj.toString());
        }
    }
}
