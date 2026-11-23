package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.sql.Clob;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes7.dex */
public class w implements j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f6770a = new w();

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        try {
            if (obj == null) {
                v0Var.N();
                return;
            }
            Reader characterStream = ((Clob) obj).getCharacterStream();
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int i11 = characterStream.read(cArr);
                if (i11 == -1) {
                    characterStream.close();
                    v0Var.L(stringWriter.toString());
                    return;
                }
                stringWriter.write(cArr, 0, i11);
            }
        } catch (SQLException e10) {
            throw new IOException("write clob error", e10);
        }
    }
}
