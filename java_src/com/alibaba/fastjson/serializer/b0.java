package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
public class b0 implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0 f6675a = new b0();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        char[] charArray;
        v1 v1VarW = v0Var.w();
        if (obj == null) {
            v1VarW.p0();
            return;
        }
        if (v1VarW.g(SerializerFeature.WriteClassName) && obj.getClass() != type) {
            if (obj.getClass() == Date.class) {
                v1VarW.write("new Date(");
                v1VarW.o0(((Date) obj).getTime(), ')');
                return;
            }
            v1VarW.m('{');
            v1VarW.v(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
            v0Var.L(obj.getClass().getName());
            v1VarW.Q(StringUtil.COMMA, "val", ((Date) obj).getTime());
            v1VarW.m('}');
            return;
        }
        Date date = (Date) obj;
        if (v1VarW.g(SerializerFeature.WriteDateUseDateFormat)) {
            DateFormat dateFormatI = v0Var.i();
            if (dateFormatI == null) {
                dateFormatI = new SimpleDateFormat(com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT);
            }
            v1VarW.q0(dateFormatI.format(date));
            return;
        }
        long time = date.getTime();
        if (!v0Var.y(SerializerFeature.UseISO8601DateFormat)) {
            v1VarW.n0(time);
            return;
        }
        SerializerFeature serializerFeature = SerializerFeature.UseSingleQuotes;
        if (v0Var.y(serializerFeature)) {
            v1VarW.append('\'');
        } else {
            v1VarW.append('\"');
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(time);
        int i11 = calendar.get(1);
        int i12 = calendar.get(2) + 1;
        int i13 = calendar.get(5);
        int i14 = calendar.get(11);
        int i15 = calendar.get(12);
        int i16 = calendar.get(13);
        int i17 = calendar.get(14);
        if (i17 != 0) {
            charArray = "0000-00-00T00:00:00.000".toCharArray();
            com.alibaba.fastjson.util.f.e(i17, 23, charArray);
            com.alibaba.fastjson.util.f.e(i16, 19, charArray);
            com.alibaba.fastjson.util.f.e(i15, 16, charArray);
            com.alibaba.fastjson.util.f.e(i14, 13, charArray);
            com.alibaba.fastjson.util.f.e(i13, 10, charArray);
            com.alibaba.fastjson.util.f.e(i12, 7, charArray);
            com.alibaba.fastjson.util.f.e(i11, 4, charArray);
        } else if (i16 == 0 && i15 == 0 && i14 == 0) {
            charArray = "0000-00-00".toCharArray();
            com.alibaba.fastjson.util.f.e(i13, 10, charArray);
            com.alibaba.fastjson.util.f.e(i12, 7, charArray);
            com.alibaba.fastjson.util.f.e(i11, 4, charArray);
        } else {
            charArray = "0000-00-00T00:00:00".toCharArray();
            com.alibaba.fastjson.util.f.e(i16, 19, charArray);
            com.alibaba.fastjson.util.f.e(i15, 16, charArray);
            com.alibaba.fastjson.util.f.e(i14, 13, charArray);
            com.alibaba.fastjson.util.f.e(i13, 10, charArray);
            com.alibaba.fastjson.util.f.e(i12, 7, charArray);
            com.alibaba.fastjson.util.f.e(i11, 4, charArray);
        }
        v1VarW.write(charArray);
        if (v0Var.y(serializerFeature)) {
            v1VarW.append('\'');
        } else {
            v1VarW.append('\"');
        }
    }
}
