package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.asm.ASMException;
import com.alibaba.fastjson.parser.Feature;
import com.czhj.sdk.common.Constants;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public class a implements com.alibaba.fastjson.asm.i {

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final a f6542b1 = new a();
    private final com.alibaba.fastjson.util.a Z0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private final AtomicLong f6543a1;

    /* JADX INFO: renamed from: com.alibaba.fastjson.parser.deserializer.a$a, reason: collision with other inner class name */
    static class C0199a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f6544a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map<String, Integer> f6545b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Class<?> f6546c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.alibaba.fastjson.util.d f6547d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f6548e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<com.alibaba.fastjson.util.e> f6549f;

        public C0199a(String str, com.alibaba.fastjson.parser.k kVar, com.alibaba.fastjson.util.d dVar, int i10) {
            this.f6544a = 5;
            this.f6548e = str;
            this.f6546c = dVar.c();
            this.f6544a = i10;
            this.f6547d = dVar;
            this.f6549f = new ArrayList(dVar.k());
        }

        public com.alibaba.fastjson.util.d a() {
            return this.f6547d;
        }

        public String b() {
            return this.f6548e;
        }

        public Class<?> c() {
            return this.f6546c;
        }

        public List<com.alibaba.fastjson.util.e> d() {
            return this.f6549f;
        }

        public int e() {
            return this.f6544a;
        }

        public int f(String str) {
            if (this.f6545b.get(str) == null) {
                Map<String, Integer> map = this.f6545b;
                int i10 = this.f6544a;
                this.f6544a = i10 + 1;
                map.put(str, Integer.valueOf(i10));
            }
            return this.f6545b.get(str).intValue();
        }

        public int g(String str, int i10) {
            if (this.f6545b.get(str) == null) {
                this.f6545b.put(str, Integer.valueOf(this.f6544a));
                this.f6544a += i10;
            }
            return this.f6545b.get(str).intValue();
        }
    }

    public a() {
        this.f6543a1 = new AtomicLong();
        this.Z0 = new com.alibaba.fastjson.util.a();
    }

    public static final a B() {
        return f6542b1;
    }

    private void a(C0199a c0199a, com.alibaba.fastjson.asm.g gVar) {
        b(c0199a, gVar, true);
    }

    private void b(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, boolean z10) {
        int size = c0199a.d().size();
        for (int i10 = 0; i10 < size; i10++) {
            com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
            if (z10) {
                o(gVar, c0199a, i10, fVar);
            }
            p(c0199a, gVar, c0199a.d().get(i10));
            if (z10) {
                gVar.e(fVar);
            }
        }
    }

    private void c(com.alibaba.fastjson.asm.b bVar, C0199a c0199a) {
        com.alibaba.fastjson.asm.g gVarQ = bVar.q(1, "createInstance", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;", null, null);
        gVarQ.d(187, com.alibaba.fastjson.util.b.getType(c0199a.c()));
        gVarQ.j(89);
        gVarQ.l(183, com.alibaba.fastjson.util.b.getType(c0199a.c()), "<init>", "()V");
        gVarQ.j(176);
        gVarQ.k(3, 3);
        gVarQ.a();
    }

    private void d(C0199a c0199a, com.alibaba.fastjson.asm.g gVar) {
        if (Modifier.isPublic(c0199a.a().f().getModifiers())) {
            gVar.d(187, com.alibaba.fastjson.util.b.getType(c0199a.c()));
            gVar.j(89);
            gVar.l(183, com.alibaba.fastjson.util.b.getType(c0199a.c()), "<init>", "()V");
            gVar.g(58, c0199a.f("instance"));
            return;
        }
        gVar.g(25, 0);
        gVar.g(25, 1);
        gVar.l(183, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "createInstance", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;");
        gVar.d(192, com.alibaba.fastjson.util.b.getType(c0199a.c()));
        gVar.g(58, c0199a.f("instance"));
    }

    private void e(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, Class<?> cls) {
        l(c0199a, gVar, eVar);
        gVar.g(25, 1);
        if (eVar.k() instanceof Class) {
            gVar.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(eVar.j())));
        } else {
            gVar.g(25, 0);
            gVar.c(eVar.getName());
            gVar.l(182, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "getFieldType", "(Ljava/lang/String;)Ljava/lang/reflect/Type;");
        }
        gVar.c(eVar.getName());
        gVar.l(185, "com/alibaba/fastjson/parser/deserializer/ObjectDeserializer", "deserialze", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        gVar.d(192, com.alibaba.fastjson.util.b.getType(cls));
        gVar.g(58, c0199a.f(eVar.getName() + "_asm"));
    }

    private void f(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.asm.f fVar) {
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        gVar.i(21, c0199a.f("matchedCount"));
        gVar.f(158, fVar);
        gVar.g(25, c0199a.f("lexer"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", Constants.TOKEN, "()I");
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "RBRACE", "I");
        gVar.f(160, fVar);
        gVar.g(25, c0199a.f("lexer"));
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", "I");
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "nextToken", "(I)V");
        gVar.e(fVar2);
    }

    private void i(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.asm.f fVar, com.alibaba.fastjson.util.e eVar, Class<?> cls, Class<?> cls2, int i10) {
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "matchField", "([C)Z");
        gVar.f(154, fVar2);
        gVar.j(1);
        gVar.g(58, c0199a.f(eVar.getName() + "_asm"));
        gVar.f(167, fVar3);
        gVar.e(fVar2);
        t(gVar, c0199a, i10);
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, c0199a.f("lexer"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", Constants.TOKEN, "()I");
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "NULL", "I");
        gVar.f(160, fVar4);
        gVar.g(25, c0199a.f("lexer"));
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", "I");
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "nextToken", "(I)V");
        gVar.j(1);
        gVar.d(192, com.alibaba.fastjson.util.b.getType(cls));
        gVar.g(58, c0199a.f(eVar.getName() + "_asm"));
        gVar.e(fVar4);
        gVar.g(25, c0199a.f("lexer"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", Constants.TOKEN, "()I");
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "LBRACKET", "I");
        gVar.f(160, fVar);
        k(c0199a, gVar, eVar, cls2);
        gVar.l(185, "com/alibaba/fastjson/parser/deserializer/ObjectDeserializer", "getFastMatchToken", "()I");
        gVar.g(54, c0199a.f("fastMatchToken"));
        gVar.g(25, c0199a.f("lexer"));
        gVar.g(21, c0199a.f("fastMatchToken"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "nextToken", "(I)V");
        q(gVar, cls);
        gVar.g(58, c0199a.f(eVar.getName() + "_asm"));
        gVar.g(25, 1);
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getContext", "()Lcom/alibaba/fastjson/parser/ParseContext;");
        gVar.g(58, c0199a.f("listContext"));
        gVar.g(25, 1);
        gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
        gVar.c(eVar.getName());
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;");
        gVar.j(87);
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        gVar.j(3);
        gVar.g(54, c0199a.f("i"));
        gVar.e(fVar5);
        gVar.g(25, c0199a.f("lexer"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", Constants.TOKEN, "()I");
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "RBRACKET", "I");
        gVar.f(159, fVar6);
        gVar.g(25, 0);
        gVar.b(180, c0199a.b(), eVar.getName() + "_asm_list_item_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
        gVar.g(25, 1);
        gVar.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(cls2)));
        gVar.g(21, c0199a.f("i"));
        gVar.l(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        gVar.l(185, "com/alibaba/fastjson/parser/deserializer/ObjectDeserializer", "deserialze", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        gVar.g(58, c0199a.f("list_item_value"));
        gVar.h(c0199a.f("i"), 1);
        gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
        gVar.g(25, c0199a.f("list_item_value"));
        if (cls.isInterface()) {
            gVar.l(185, com.alibaba.fastjson.util.b.getType(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            gVar.l(182, com.alibaba.fastjson.util.b.getType(cls), "add", "(Ljava/lang/Object;)Z");
        }
        gVar.j(87);
        gVar.g(25, 1);
        gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "checkListResolve", "(Ljava/util/Collection;)V");
        gVar.g(25, c0199a.f("lexer"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", Constants.TOKEN, "()I");
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", "I");
        gVar.f(160, fVar5);
        gVar.g(25, c0199a.f("lexer"));
        gVar.g(21, c0199a.f("fastMatchToken"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "nextToken", "(I)V");
        gVar.f(167, fVar5);
        gVar.e(fVar6);
        gVar.g(25, 1);
        gVar.g(25, c0199a.f("listContext"));
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "setContext", "(Lcom/alibaba/fastjson/parser/ParseContext;)V");
        gVar.g(25, c0199a.f("lexer"));
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", Constants.TOKEN, "()I");
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "RBRACKET", "I");
        gVar.f(160, fVar);
        gVar.g(25, c0199a.f("lexer"));
        gVar.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", "I");
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "nextToken", "(I)V");
        gVar.e(fVar3);
    }

    private void j(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.asm.f fVar, com.alibaba.fastjson.util.e eVar, Class<?> cls, int i10) {
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        gVar.g(25, c0199a.f("lexer"));
        gVar.g(25, 0);
        gVar.b(180, c0199a.b(), eVar.getName() + "_asm_prefix__", "[C");
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "matchField", "([C)Z");
        gVar.f(154, fVar2);
        gVar.j(1);
        gVar.g(58, c0199a.f(eVar.getName() + "_asm"));
        gVar.f(167, fVar3);
        gVar.e(fVar2);
        t(gVar, c0199a, i10);
        gVar.g(21, c0199a.f("matchedCount"));
        gVar.j(4);
        gVar.j(96);
        gVar.g(54, c0199a.f("matchedCount"));
        e(c0199a, gVar, eVar, cls);
        gVar.g(25, 1);
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getResolveStatus", "()I");
        gVar.b(178, "com/alibaba/fastjson/parser/DefaultJSONParser", "NeedToResolve", "I");
        gVar.f(160, fVar3);
        gVar.g(25, 1);
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getLastResolveTask", "()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;");
        gVar.g(58, c0199a.f("resolveTask"));
        gVar.g(25, c0199a.f("resolveTask"));
        gVar.g(25, 1);
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getContext", "()Lcom/alibaba/fastjson/parser/ParseContext;");
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask", "setOwnerContext", "(Lcom/alibaba/fastjson/parser/ParseContext;)V");
        gVar.g(25, c0199a.f("resolveTask"));
        gVar.g(25, 0);
        gVar.c(eVar.getName());
        gVar.l(182, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "getFieldDeserializer", "(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;");
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask", "setFieldDeserializer", "(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V");
        gVar.g(25, 1);
        gVar.b(178, "com/alibaba/fastjson/parser/DefaultJSONParser", "NONE", "I");
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "setResolveStatus", "(I)V");
        gVar.e(fVar3);
    }

    private void k(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar, Class<?> cls) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        gVar.g(25, 0);
        gVar.b(180, c0199a.b(), eVar.getName() + "_asm_list_item_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
        gVar.f(199, fVar);
        gVar.g(25, 0);
        gVar.g(25, 1);
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getConfig", "()Lcom/alibaba/fastjson/parser/ParserConfig;");
        gVar.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(cls)));
        gVar.l(182, "com/alibaba/fastjson/parser/ParserConfig", "getDeserializer", "(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
        gVar.b(181, c0199a.b(), eVar.getName() + "_asm_list_item_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
        gVar.e(fVar);
        gVar.g(25, 0);
        gVar.b(180, c0199a.b(), eVar.getName() + "_asm_list_item_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
    }

    private void l(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        gVar.g(25, 0);
        gVar.b(180, c0199a.b(), eVar.getName() + "_asm_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
        gVar.f(199, fVar);
        gVar.g(25, 0);
        gVar.g(25, 1);
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getConfig", "()Lcom/alibaba/fastjson/parser/ParserConfig;");
        gVar.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(eVar.j())));
        gVar.l(182, "com/alibaba/fastjson/parser/ParserConfig", "getDeserializer", "(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
        gVar.b(181, c0199a.b(), eVar.getName() + "_asm_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
        gVar.e(fVar);
        gVar.g(25, 0);
        gVar.b(180, c0199a.b(), eVar.getName() + "_asm_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;");
    }

    private void m(com.alibaba.fastjson.asm.b bVar, C0199a c0199a) {
        int size = c0199a.d().size();
        for (int i10 = 0; i10 < size; i10++) {
            bVar.p(1, c0199a.d().get(i10).getName() + "_asm_prefix__", "[C").a();
        }
        int size2 = c0199a.d().size();
        for (int i11 = 0; i11 < size2; i11++) {
            com.alibaba.fastjson.util.e eVar = c0199a.d().get(i11);
            Class<?> clsJ = eVar.j();
            if (!clsJ.isPrimitive() && !clsJ.isEnum()) {
                if (Collection.class.isAssignableFrom(clsJ)) {
                    bVar.p(1, eVar.getName() + "_asm_list_item_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;").a();
                } else {
                    bVar.p(1, eVar.getName() + "_asm_deser__", "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;").a();
                }
            }
        }
        com.alibaba.fastjson.asm.g gVarQ = bVar.q(1, "<init>", "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V", null, null);
        gVarQ.g(25, 0);
        gVarQ.g(25, 1);
        gVarQ.g(25, 2);
        gVarQ.l(183, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "<init>", "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V");
        gVarQ.g(25, 0);
        gVarQ.b(180, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "serializer", "Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer$InnerJavaBeanDeserializer;");
        gVarQ.l(182, "com/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer", "getFieldDeserializerMap", "()Ljava/util/Map;");
        gVarQ.j(87);
        int size3 = c0199a.d().size();
        for (int i12 = 0; i12 < size3; i12++) {
            com.alibaba.fastjson.util.e eVar2 = c0199a.d().get(i12);
            gVarQ.g(25, 0);
            gVarQ.c(x.a.f97579g + eVar2.getName() + "\":");
            gVarQ.l(182, "java/lang/String", "toCharArray", "()[C");
            gVarQ.b(181, c0199a.b(), eVar2.getName() + "_asm_prefix__", "[C");
        }
        gVarQ.j(177);
        gVarQ.k(4, 4);
        gVarQ.a();
    }

    private void n(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, Feature feature) {
        gVar.g(25, c0199a.f("lexer"));
        gVar.b(178, "com/alibaba/fastjson/parser/Feature", feature.name(), "Lcom/alibaba/fastjson/parser/Feature;");
        gVar.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "isEnabled", "(Lcom/alibaba/fastjson/parser/Feature;)Z");
    }

    private void p(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar) {
        Class<?> clsJ = eVar.j();
        Type typeK = eVar.k();
        if (clsJ == Boolean.TYPE) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(21, c0199a.f(eVar.getName() + "_asm"));
            r(c0199a, gVar, eVar);
            return;
        }
        if (clsJ == Byte.TYPE || clsJ == Short.TYPE || clsJ == Integer.TYPE || clsJ == Character.TYPE) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(21, c0199a.f(eVar.getName() + "_asm"));
            r(c0199a, gVar, eVar);
            return;
        }
        if (clsJ == Long.TYPE) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(22, c0199a.g(eVar.getName() + "_asm", 2));
            if (eVar.p() == null) {
                gVar.b(181, com.alibaba.fastjson.util.b.getType(eVar.h()), eVar.i().getName(), com.alibaba.fastjson.util.b.b(eVar.j()));
                return;
            }
            gVar.l(182, com.alibaba.fastjson.util.b.getType(c0199a.c()), eVar.p().getName(), com.alibaba.fastjson.util.b.c(eVar.p()));
            if (eVar.p().getReturnType().equals(Void.TYPE)) {
                return;
            }
            gVar.j(87);
            return;
        }
        if (clsJ == Float.TYPE) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(23, c0199a.f(eVar.getName() + "_asm"));
            r(c0199a, gVar, eVar);
            return;
        }
        if (clsJ == Double.TYPE) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(24, c0199a.g(eVar.getName() + "_asm", 2));
            r(c0199a, gVar, eVar);
            return;
        }
        if (clsJ == String.class) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
            r(c0199a, gVar, eVar);
            return;
        }
        if (clsJ.isEnum()) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
            r(c0199a, gVar, eVar);
            return;
        }
        if (!Collection.class.isAssignableFrom(clsJ)) {
            gVar.g(25, c0199a.f("instance"));
            gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
            r(c0199a, gVar, eVar);
            return;
        }
        gVar.g(25, c0199a.f("instance"));
        if (y(typeK) == String.class) {
            gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
            gVar.d(192, com.alibaba.fastjson.util.b.getType(clsJ));
        } else {
            gVar.g(25, c0199a.f(eVar.getName() + "_asm"));
        }
        r(c0199a, gVar, eVar);
    }

    private void q(com.alibaba.fastjson.asm.g gVar, Class<?> cls) {
        if (cls.isAssignableFrom(ArrayList.class)) {
            gVar.d(187, "java/util/ArrayList");
            gVar.j(89);
            gVar.l(183, "java/util/ArrayList", "<init>", "()V");
        } else if (cls.isAssignableFrom(LinkedList.class)) {
            gVar.d(187, com.alibaba.fastjson.util.b.getType(LinkedList.class));
            gVar.j(89);
            gVar.l(183, com.alibaba.fastjson.util.b.getType(LinkedList.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(HashSet.class)) {
            gVar.d(187, com.alibaba.fastjson.util.b.getType(HashSet.class));
            gVar.j(89);
            gVar.l(183, com.alibaba.fastjson.util.b.getType(HashSet.class), "<init>", "()V");
        } else if (cls.isAssignableFrom(TreeSet.class)) {
            gVar.d(187, com.alibaba.fastjson.util.b.getType(TreeSet.class));
            gVar.j(89);
            gVar.l(183, com.alibaba.fastjson.util.b.getType(TreeSet.class), "<init>", "()V");
        } else {
            gVar.d(187, com.alibaba.fastjson.util.b.getType(cls));
            gVar.j(89);
            gVar.l(183, com.alibaba.fastjson.util.b.getType(cls), "<init>", "()V");
        }
        gVar.d(192, com.alibaba.fastjson.util.b.getType(cls));
    }

    private void r(C0199a c0199a, com.alibaba.fastjson.asm.g gVar, com.alibaba.fastjson.util.e eVar) {
        if (eVar.p() == null) {
            gVar.b(181, com.alibaba.fastjson.util.b.getType(eVar.h()), eVar.i().getName(), com.alibaba.fastjson.util.b.b(eVar.j()));
            return;
        }
        gVar.l(182, com.alibaba.fastjson.util.b.getType(eVar.h()), eVar.p().getName(), com.alibaba.fastjson.util.b.c(eVar.p()));
        if (eVar.p().getReturnType().equals(Void.TYPE)) {
            return;
        }
        gVar.j(87);
    }

    private void s(C0199a c0199a, com.alibaba.fastjson.asm.g gVar) {
        gVar.g(25, 1);
        gVar.g(25, c0199a.f("context"));
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "setContext", "(Lcom/alibaba/fastjson/parser/ParseContext;)V");
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        gVar.g(25, c0199a.f("childContext"));
        gVar.f(198, fVar);
        gVar.g(25, c0199a.f("childContext"));
        gVar.g(25, c0199a.f("instance"));
        gVar.l(182, "com/alibaba/fastjson/parser/ParseContext", "setObject", "(Ljava/lang/Object;)V");
        gVar.e(fVar);
    }

    private void x(C0199a c0199a, com.alibaba.fastjson.asm.g gVar) {
        gVar.g(25, 1);
        gVar.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getLexer", "()Lcom/alibaba/fastjson/parser/JSONLexer;");
        gVar.d(192, "com/alibaba/fastjson/parser/JSONLexerBase");
        gVar.g(58, c0199a.f("lexer"));
    }

    private Class<?> y(Type type) {
        if (!(type instanceof ParameterizedType)) {
            return Object.class;
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (!(type2 instanceof Class)) {
            throw new ASMException("can not create ASMParser");
        }
        Class<?> cls = (Class) type2;
        if (Modifier.isPublic(cls.getModifiers())) {
            return cls;
        }
        throw new ASMException("can not create ASMParser");
    }

    public String A(Class<?> cls, com.alibaba.fastjson.util.e eVar) {
        return ("Fastjson_ASM__Field_" + cls.getSimpleName()) + "_" + eVar.getName() + "_" + this.f6543a1.incrementAndGet();
    }

    public boolean C(Class<?> cls) {
        return this.Z0.c(cls);
    }

    /* JADX WARN: Code duplicated, block: B:89:0x083a  */
    void g(com.alibaba.fastjson.asm.b bVar, C0199a c0199a) {
        String str;
        String str2;
        int i10;
        String str3;
        String str4;
        String str5;
        com.alibaba.fastjson.asm.f fVar;
        String str6;
        String str7;
        String str8;
        int i11;
        com.alibaba.fastjson.asm.f fVar2;
        String str9;
        com.alibaba.fastjson.asm.f fVar3;
        if (c0199a.d().size() == 0) {
            return;
        }
        for (com.alibaba.fastjson.util.e eVar : c0199a.d()) {
            Class<?> clsJ = eVar.j();
            Type typeK = eVar.k();
            if (clsJ == Character.TYPE) {
                return;
            }
            if (Collection.class.isAssignableFrom(clsJ) && (!(typeK instanceof ParameterizedType) || !(((ParameterizedType) typeK).getActualTypeArguments()[0] instanceof Class))) {
                return;
            }
        }
        Collections.sort(c0199a.d());
        com.alibaba.fastjson.asm.g gVarQ = bVar.q(1, "deserialze", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;", null, null);
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
        x(c0199a, gVarQ);
        n(c0199a, gVarQ, Feature.SortFeidFastMatch);
        gVarQ.f(153, fVar5);
        com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
        gVarQ.g(25, 0);
        String str10 = "lexer";
        gVarQ.g(25, c0199a.f("lexer"));
        gVarQ.l(183, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "isSupportArrayToBean", "(Lcom/alibaba/fastjson/parser/JSONLexer;)Z");
        gVarQ.f(153, fVar8);
        gVarQ.g(25, c0199a.f("lexer"));
        String str11 = "com/alibaba/fastjson/parser/JSONLexerBase";
        gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", Constants.TOKEN, "()I");
        String str12 = "I";
        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "LBRACKET", "I");
        gVarQ.f(160, fVar8);
        gVarQ.g(25, 0);
        gVarQ.g(25, 1);
        gVarQ.g(25, 2);
        gVarQ.g(25, 3);
        gVarQ.l(183, c0199a.b(), "deserialzeArrayMapping", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        gVarQ.j(176);
        gVarQ.e(fVar8);
        gVarQ.g(25, c0199a.f("lexer"));
        gVarQ.c(c0199a.c().getName());
        gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanType", "(Ljava/lang/String;)I");
        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONLexerBase", "NOT_MATCH", "I");
        gVarQ.f(159, fVar5);
        gVarQ.g(25, 1);
        String str13 = "com/alibaba/fastjson/parser/DefaultJSONParser";
        gVarQ.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getContext", "()Lcom/alibaba/fastjson/parser/ParseContext;");
        gVarQ.g(58, c0199a.f("mark_context"));
        gVarQ.j(3);
        gVarQ.g(54, c0199a.f("matchedCount"));
        d(c0199a, gVarQ);
        gVarQ.g(25, 1);
        gVarQ.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getContext", "()Lcom/alibaba/fastjson/parser/ParseContext;");
        gVarQ.g(58, c0199a.f("context"));
        gVarQ.g(25, 1);
        gVarQ.g(25, c0199a.f("context"));
        gVarQ.g(25, c0199a.f("instance"));
        gVarQ.g(25, 3);
        gVarQ.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "setContext", "(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;");
        gVarQ.g(58, c0199a.f("childContext"));
        gVarQ.g(25, c0199a.f("lexer"));
        String str14 = "matchStat";
        gVarQ.b(180, "com/alibaba/fastjson/parser/JSONLexerBase", "matchStat", "I");
        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONLexerBase", "END", "I");
        gVarQ.f(159, fVar6);
        int i12 = 3;
        gVarQ.j(3);
        gVarQ.i(54, c0199a.f("matchStat"));
        int size = c0199a.d().size();
        int i13 = 0;
        while (i13 < size) {
            gVarQ.j(i12);
            gVarQ.g(54, c0199a.f("_asm_flag_" + (i13 / 32)));
            i13 += 32;
            i12 = 3;
        }
        int i14 = 0;
        while (true) {
            str = "_asm";
            if (i14 >= size) {
                break;
            }
            com.alibaba.fastjson.util.e eVar2 = c0199a.d().get(i14);
            com.alibaba.fastjson.asm.f fVar9 = fVar5;
            Class<?> clsJ2 = eVar2.j();
            com.alibaba.fastjson.asm.f fVar10 = fVar6;
            if (clsJ2 == Boolean.TYPE || clsJ2 == Byte.TYPE || clsJ2 == Short.TYPE || clsJ2 == Integer.TYPE) {
                fVar4 = fVar4;
                fVar7 = fVar7;
                gVarQ.j(3);
                gVarQ.g(54, c0199a.f(eVar2.getName() + "_asm"));
            } else {
                if (clsJ2 == Long.TYPE) {
                    gVarQ.j(9);
                    gVarQ.g(55, c0199a.g(eVar2.getName() + "_asm", 2));
                } else if (clsJ2 == Float.TYPE) {
                    gVarQ.j(11);
                    gVarQ.g(56, c0199a.f(eVar2.getName() + "_asm"));
                } else if (clsJ2 == Double.TYPE) {
                    gVarQ.j(14);
                    gVarQ.g(57, c0199a.g(eVar2.getName() + "_asm", 2));
                } else {
                    if (clsJ2 == String.class) {
                        com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
                        n(c0199a, gVarQ, Feature.InitStringFieldAsEmpty);
                        gVarQ.f(153, fVar11);
                        t(gVarQ, c0199a, i14);
                        gVarQ.e(fVar11);
                        gVarQ.g(25, c0199a.f("lexer"));
                        gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "stringDefaultValue", "()Ljava/lang/String;");
                    } else {
                        gVarQ.j(1);
                    }
                    gVarQ.d(192, com.alibaba.fastjson.util.b.getType(clsJ2));
                    gVarQ.g(58, c0199a.f(eVar2.getName() + "_asm"));
                }
                fVar4 = fVar4;
                fVar7 = fVar7;
            }
            i14++;
            fVar5 = fVar9;
            fVar6 = fVar10;
            fVar7 = fVar7;
            fVar4 = fVar4;
        }
        com.alibaba.fastjson.asm.f fVar12 = fVar4;
        com.alibaba.fastjson.asm.f fVar13 = fVar5;
        com.alibaba.fastjson.asm.f fVar14 = fVar6;
        com.alibaba.fastjson.asm.f fVar15 = fVar7;
        int i15 = 0;
        while (i15 < size) {
            com.alibaba.fastjson.util.e eVar3 = c0199a.d().get(i15);
            Class<?> clsJ3 = eVar3.j();
            Type typeK2 = eVar3.k();
            com.alibaba.fastjson.asm.f fVar16 = new com.alibaba.fastjson.asm.f();
            int i16 = size;
            int i17 = i15;
            if (clsJ3 == Boolean.TYPE) {
                gVarQ.g(25, c0199a.f(str10));
                gVarQ.g(25, 0);
                gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                gVarQ.l(182, str11, "scanFieldBoolean", "([C)Z");
                gVarQ.g(54, c0199a.f(eVar3.getName() + str));
            } else if (clsJ3 == Byte.TYPE) {
                gVarQ.g(25, c0199a.f(str10));
                gVarQ.g(25, 0);
                gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                gVarQ.l(182, str11, "scanFieldInt", "([C)I");
                gVarQ.g(54, c0199a.f(eVar3.getName() + str));
            } else if (clsJ3 == Short.TYPE) {
                gVarQ.g(25, c0199a.f(str10));
                gVarQ.g(25, 0);
                gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                gVarQ.l(182, str11, "scanFieldInt", "([C)I");
                gVarQ.g(54, c0199a.f(eVar3.getName() + str));
            } else if (clsJ3 == Integer.TYPE) {
                gVarQ.g(25, c0199a.f(str10));
                gVarQ.g(25, 0);
                gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                gVarQ.l(182, str11, "scanFieldInt", "([C)I");
                gVarQ.g(54, c0199a.f(eVar3.getName() + str));
            } else if (clsJ3 == Long.TYPE) {
                gVarQ.g(25, c0199a.f(str10));
                gVarQ.g(25, 0);
                gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                gVarQ.l(182, str11, "scanFieldLong", "([C)J");
                gVarQ.g(55, c0199a.g(eVar3.getName() + str, 2));
            } else if (clsJ3 == Float.TYPE) {
                gVarQ.g(25, c0199a.f(str10));
                gVarQ.g(25, 0);
                gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                gVarQ.l(182, str11, "scanFieldFloat", "([C)F");
                gVarQ.g(56, c0199a.f(eVar3.getName() + str));
            } else {
                if (clsJ3 == Double.TYPE) {
                    gVarQ.g(25, c0199a.f(str10));
                    gVarQ.g(25, 0);
                    gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                    gVarQ.l(182, str11, "scanFieldDouble", "([C)D");
                    gVarQ.g(57, c0199a.g(eVar3.getName() + str, 2));
                } else {
                    if (clsJ3 == String.class) {
                        com.alibaba.fastjson.asm.f fVar17 = new com.alibaba.fastjson.asm.f();
                        gVarQ.i(21, c0199a.f(str14));
                        gVarQ.j(7);
                        gVarQ.f(160, fVar17);
                        gVarQ.g(25, c0199a.f(str10));
                        str2 = str14;
                        gVarQ.l(182, str11, "stringDefaultValue", "()Ljava/lang/String;");
                        gVarQ.g(58, c0199a.f(eVar3.getName() + str));
                        gVarQ.f(167, fVar16);
                        gVarQ.e(fVar17);
                        gVarQ.g(25, c0199a.f(str10));
                        gVarQ.g(25, 0);
                        gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                        gVarQ.l(182, str11, "scanFieldString", "([C)Ljava/lang/String;");
                        gVarQ.g(58, c0199a.f(eVar3.getName() + str));
                    } else {
                        str2 = str14;
                        if (clsJ3.isEnum()) {
                            gVarQ.g(25, c0199a.f(str10));
                            gVarQ.g(25, 0);
                            gVarQ.b(180, c0199a.b(), eVar3.getName() + "_asm_prefix__", "[C");
                            com.alibaba.fastjson.asm.f fVar18 = new com.alibaba.fastjson.asm.f();
                            gVarQ.j(1);
                            gVarQ.d(192, com.alibaba.fastjson.util.b.getType(clsJ3));
                            gVarQ.g(58, c0199a.f(eVar3.getName() + str));
                            gVarQ.g(25, 1);
                            gVarQ.l(182, str13, "getSymbolTable", "()Lcom/alibaba/fastjson/parser/SymbolTable;");
                            gVarQ.l(182, str11, "scanFieldSymbol", "([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;");
                            gVarQ.j(89);
                            gVarQ.g(58, c0199a.f(eVar3.getName() + "_asm_enumName"));
                            gVarQ.f(198, fVar18);
                            gVarQ.g(25, c0199a.f(eVar3.getName() + "_asm_enumName"));
                            gVarQ.l(184, com.alibaba.fastjson.util.b.getType(clsJ3), "valueOf", "(Ljava/lang/String;)" + com.alibaba.fastjson.util.b.b(clsJ3));
                            gVarQ.g(58, c0199a.f(eVar3.getName() + str));
                            gVarQ.e(fVar18);
                        } else if (Collection.class.isAssignableFrom(clsJ3)) {
                            gVarQ.g(25, c0199a.f(str10));
                            gVarQ.g(25, 0);
                            String strB = c0199a.b();
                            StringBuilder sb2 = new StringBuilder();
                            str5 = str13;
                            sb2.append(eVar3.getName());
                            sb2.append("_asm_prefix__");
                            gVarQ.b(180, strB, sb2.toString(), "[C");
                            Class<?> clsY = y(typeK2);
                            if (clsY == String.class) {
                                gVarQ.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(clsJ3)));
                                gVarQ.l(182, str11, "scanFieldStringArray", "([CLjava/lang/Class;)" + com.alibaba.fastjson.util.b.b(Collection.class));
                                gVarQ.g(58, c0199a.f(eVar3.getName() + str));
                                gVarQ.g(25, c0199a.f(str10));
                                str9 = str2;
                                gVarQ.b(180, str11, str9, str12);
                                com.alibaba.fastjson.asm.f fVar19 = new com.alibaba.fastjson.asm.f();
                                gVarQ.f(158, fVar19);
                                t(gVarQ, c0199a, i17);
                                gVarQ.e(fVar19);
                                gVarQ.g(25, c0199a.f(str10));
                                gVarQ.b(180, str11, str9, str12);
                                gVarQ.j(89);
                                gVarQ.g(54, c0199a.f(str9));
                                gVarQ.b(178, str11, "NOT_MATCH", str12);
                                fVar3 = fVar12;
                                gVarQ.f(159, fVar3);
                                gVarQ.g(25, c0199a.f(str10));
                                gVarQ.b(180, str11, str9, str12);
                                gVarQ.f(158, fVar16);
                                gVarQ.g(21, c0199a.f("matchedCount"));
                                gVarQ.j(4);
                                gVarQ.j(96);
                                gVarQ.g(54, c0199a.f("matchedCount"));
                                gVarQ.g(25, c0199a.f(str10));
                                gVarQ.b(180, str11, str9, str12);
                                gVarQ.b(178, str11, "END", str12);
                                com.alibaba.fastjson.asm.f fVar20 = fVar15;
                                gVarQ.f(159, fVar20);
                                gVarQ.e(fVar16);
                                if (i17 == i16 - 1) {
                                    gVarQ.g(25, c0199a.f(str10));
                                    gVarQ.b(180, str11, str9, str12);
                                    gVarQ.b(178, str11, "END", str12);
                                    gVarQ.f(160, fVar3);
                                }
                                i10 = i16;
                                str3 = str11;
                                fVar = fVar20;
                                str4 = str12;
                                str7 = str10;
                                fVar2 = fVar3;
                                str6 = str9;
                                str8 = str;
                                i11 = i17;
                            } else {
                                str3 = str11;
                                fVar = fVar15;
                                str6 = str2;
                                i10 = i16;
                                str4 = str12;
                                str7 = str10;
                                str8 = str;
                                i11 = i17;
                                i(c0199a, gVarQ, fVar12, eVar3, clsJ3, clsY, i11);
                                if (i11 == i10 - 1) {
                                    com.alibaba.fastjson.asm.f fVar21 = fVar12;
                                    f(c0199a, gVarQ, fVar21);
                                    fVar2 = fVar21;
                                } else {
                                    fVar2 = fVar12;
                                }
                            }
                        } else {
                            i10 = i16;
                            str3 = str11;
                            str4 = str12;
                            str5 = str13;
                            fVar = fVar15;
                            str6 = str2;
                            str7 = str10;
                            str8 = str;
                            com.alibaba.fastjson.asm.f fVar22 = fVar12;
                            i11 = i17;
                            fVar2 = fVar22;
                            j(c0199a, gVarQ, fVar22, eVar3, clsJ3, i11);
                            if (i11 == i10 - 1) {
                                f(c0199a, gVarQ, fVar2);
                            }
                        }
                    }
                    str5 = str13;
                    gVarQ.g(25, c0199a.f(str10));
                    str9 = str2;
                    gVarQ.b(180, str11, str9, str12);
                    com.alibaba.fastjson.asm.f fVar110 = new com.alibaba.fastjson.asm.f();
                    gVarQ.f(158, fVar110);
                    t(gVarQ, c0199a, i17);
                    gVarQ.e(fVar110);
                    gVarQ.g(25, c0199a.f(str10));
                    gVarQ.b(180, str11, str9, str12);
                    gVarQ.j(89);
                    gVarQ.g(54, c0199a.f(str9));
                    gVarQ.b(178, str11, "NOT_MATCH", str12);
                    fVar3 = fVar12;
                    gVarQ.f(159, fVar3);
                    gVarQ.g(25, c0199a.f(str10));
                    gVarQ.b(180, str11, str9, str12);
                    gVarQ.f(158, fVar16);
                    gVarQ.g(21, c0199a.f("matchedCount"));
                    gVarQ.j(4);
                    gVarQ.j(96);
                    gVarQ.g(54, c0199a.f("matchedCount"));
                    gVarQ.g(25, c0199a.f(str10));
                    gVarQ.b(180, str11, str9, str12);
                    gVarQ.b(178, str11, "END", str12);
                    com.alibaba.fastjson.asm.f fVar23 = fVar15;
                    gVarQ.f(159, fVar23);
                    gVarQ.e(fVar16);
                    if (i17 == i16 - 1) {
                        gVarQ.g(25, c0199a.f(str10));
                        gVarQ.b(180, str11, str9, str12);
                        gVarQ.b(178, str11, "END", str12);
                        gVarQ.f(160, fVar3);
                    }
                    i10 = i16;
                    str3 = str11;
                    fVar = fVar23;
                    str4 = str12;
                    str7 = str10;
                    fVar2 = fVar3;
                    str6 = str9;
                    str8 = str;
                    i11 = i17;
                }
                int i18 = i11 + 1;
                str = str8;
                fVar15 = fVar;
                fVar12 = fVar2;
                size = i10;
                str12 = str4;
                str14 = str6;
                str10 = str7;
                str13 = str5;
                i15 = i18;
                str11 = str3;
            }
            str2 = str14;
            str5 = str13;
            gVarQ.g(25, c0199a.f(str10));
            str9 = str2;
            gVarQ.b(180, str11, str9, str12);
            com.alibaba.fastjson.asm.f fVar111 = new com.alibaba.fastjson.asm.f();
            gVarQ.f(158, fVar111);
            t(gVarQ, c0199a, i17);
            gVarQ.e(fVar111);
            gVarQ.g(25, c0199a.f(str10));
            gVarQ.b(180, str11, str9, str12);
            gVarQ.j(89);
            gVarQ.g(54, c0199a.f(str9));
            gVarQ.b(178, str11, "NOT_MATCH", str12);
            fVar3 = fVar12;
            gVarQ.f(159, fVar3);
            gVarQ.g(25, c0199a.f(str10));
            gVarQ.b(180, str11, str9, str12);
            gVarQ.f(158, fVar16);
            gVarQ.g(21, c0199a.f("matchedCount"));
            gVarQ.j(4);
            gVarQ.j(96);
            gVarQ.g(54, c0199a.f("matchedCount"));
            gVarQ.g(25, c0199a.f(str10));
            gVarQ.b(180, str11, str9, str12);
            gVarQ.b(178, str11, "END", str12);
            com.alibaba.fastjson.asm.f fVar24 = fVar15;
            gVarQ.f(159, fVar24);
            gVarQ.e(fVar16);
            if (i17 == i16 - 1) {
                gVarQ.g(25, c0199a.f(str10));
                gVarQ.b(180, str11, str9, str12);
                gVarQ.b(178, str11, "END", str12);
                gVarQ.f(160, fVar3);
            }
            i10 = i16;
            str3 = str11;
            fVar = fVar24;
            str4 = str12;
            str7 = str10;
            fVar2 = fVar3;
            str6 = str9;
            str8 = str;
            i11 = i17;
            int i19 = i11 + 1;
            str = str8;
            fVar15 = fVar;
            fVar12 = fVar2;
            size = i10;
            str12 = str4;
            str14 = str6;
            str10 = str7;
            str13 = str5;
            i15 = i19;
            str11 = str3;
        }
        com.alibaba.fastjson.asm.f fVar25 = fVar12;
        gVarQ.e(fVar15);
        if (!c0199a.c().isInterface() && !Modifier.isAbstract(c0199a.c().getModifiers())) {
            a(c0199a, gVarQ);
        }
        gVarQ.e(fVar14);
        s(c0199a, gVarQ);
        gVarQ.g(25, c0199a.f("instance"));
        gVarQ.j(176);
        gVarQ.e(fVar25);
        a(c0199a, gVarQ);
        gVarQ.g(25, 0);
        gVarQ.g(25, 1);
        gVarQ.g(25, 2);
        gVarQ.g(25, 3);
        gVarQ.g(25, c0199a.f("instance"));
        gVarQ.l(182, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "parseRest", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");
        gVarQ.d(192, com.alibaba.fastjson.util.b.getType(c0199a.c()));
        gVarQ.j(176);
        gVarQ.e(fVar13);
        gVarQ.g(25, 0);
        gVarQ.g(25, 1);
        gVarQ.g(25, 2);
        gVarQ.g(25, 3);
        gVarQ.l(183, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", "deserialze", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;");
        gVarQ.j(176);
        gVarQ.k(5, c0199a.e());
        gVarQ.a();
    }

    void h(com.alibaba.fastjson.asm.b bVar, C0199a c0199a) {
        int i10;
        String str;
        int i11;
        com.alibaba.fastjson.asm.g gVarQ = bVar.q(1, "deserialzeArrayMapping", "(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;", null, null);
        x(c0199a, gVarQ);
        d(c0199a, gVarQ);
        List<com.alibaba.fastjson.util.e> listM = c0199a.a().m();
        int size = listM.size();
        int i12 = 0;
        while (i12 < size) {
            boolean z10 = i12 == size + (-1);
            int i13 = z10 ? 93 : 44;
            com.alibaba.fastjson.util.e eVar = listM.get(i12);
            Class<?> clsJ = eVar.j();
            Type typeK = eVar.k();
            List<com.alibaba.fastjson.util.e> list = listM;
            int i14 = size;
            if (clsJ == Byte.TYPE || clsJ == Short.TYPE || clsJ == Integer.TYPE) {
                gVarQ.g(25, c0199a.f("lexer"));
                gVarQ.g(16, i13);
                gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanInt", "(C)I");
                gVarQ.g(54, c0199a.f(eVar.getName() + "_asm"));
            } else {
                boolean z11 = z10;
                if (clsJ == Long.TYPE) {
                    gVarQ.g(25, c0199a.f("lexer"));
                    gVarQ.g(16, i13);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanLong", "(C)J");
                    gVarQ.g(55, c0199a.g(eVar.getName() + "_asm", 2));
                } else if (clsJ == Boolean.TYPE) {
                    gVarQ.g(25, c0199a.f("lexer"));
                    gVarQ.g(16, i13);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanBoolean", "(C)Z");
                    gVarQ.g(54, c0199a.f(eVar.getName() + "_asm"));
                } else if (clsJ == Float.TYPE) {
                    gVarQ.g(25, c0199a.f("lexer"));
                    gVarQ.g(16, i13);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanFloat", "(C)F");
                    gVarQ.g(56, c0199a.f(eVar.getName() + "_asm"));
                } else if (clsJ == Double.TYPE) {
                    gVarQ.g(25, c0199a.f("lexer"));
                    gVarQ.g(16, i13);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanDouble", "(C)D");
                    gVarQ.g(57, c0199a.g(eVar.getName() + "_asm", 2));
                } else if (clsJ == Character.TYPE) {
                    gVarQ.g(25, c0199a.f("lexer"));
                    gVarQ.g(16, i13);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanString", "(C)Ljava/lang/String;");
                    gVarQ.j(3);
                    gVarQ.l(182, "java/lang/String", "charAt", "(I)C");
                    gVarQ.g(54, c0199a.f(eVar.getName() + "_asm"));
                } else if (clsJ == String.class) {
                    gVarQ.g(25, c0199a.f("lexer"));
                    gVarQ.g(16, i13);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanString", "(C)Ljava/lang/String;");
                    gVarQ.g(58, c0199a.f(eVar.getName() + "_asm"));
                } else if (clsJ.isEnum()) {
                    gVarQ.g(25, c0199a.f("lexer"));
                    gVarQ.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(clsJ)));
                    gVarQ.g(25, 1);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "getSymbolTable", "()Lcom/alibaba/fastjson/parser/SymbolTable;");
                    gVarQ.g(16, i13);
                    gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanEnum", "(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;");
                    gVarQ.d(192, com.alibaba.fastjson.util.b.getType(clsJ));
                    gVarQ.g(58, c0199a.f(eVar.getName() + "_asm"));
                } else if (Collection.class.isAssignableFrom(clsJ)) {
                    Class<?> clsY = y(typeK);
                    if (clsY == String.class) {
                        gVarQ.g(25, c0199a.f("lexer"));
                        gVarQ.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(clsJ)));
                        gVarQ.g(16, i13);
                        gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "scanStringArray", "(Ljava/lang/Class;C)Ljava/util/Collection;");
                        gVarQ.g(58, c0199a.f(eVar.getName() + "_asm"));
                    } else {
                        gVarQ.g(25, 1);
                        if (i12 == 0) {
                            str = "I";
                            i11 = 178;
                            gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "LBRACKET", str);
                        } else {
                            str = "I";
                            i11 = 178;
                            gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", str);
                        }
                        gVarQ.b(i11, "com/alibaba/fastjson/parser/JSONToken", "LBRACKET", str);
                        gVarQ.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "accept", "(II)V");
                        q(gVarQ, clsJ);
                        gVarQ.j(89);
                        gVarQ.g(58, c0199a.f(eVar.getName() + "_asm"));
                        k(c0199a, gVarQ, eVar, clsY);
                        gVarQ.g(25, 1);
                        gVarQ.c(com.alibaba.fastjson.asm.j.getType(com.alibaba.fastjson.util.b.b(clsY)));
                        gVarQ.g(25, 3);
                        gVarQ.l(184, "com/alibaba/fastjson/util/ASMUtils", "parseArray", "(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V");
                    }
                } else {
                    gVarQ.g(25, 1);
                    if (i12 == 0) {
                        i10 = 178;
                        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "LBRACKET", "I");
                    } else {
                        i10 = 178;
                        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", "I");
                    }
                    gVarQ.b(i10, "com/alibaba/fastjson/parser/JSONToken", "LBRACKET", "I");
                    gVarQ.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "accept", "(II)V");
                    e(c0199a, gVarQ, eVar, clsJ);
                    gVarQ.g(25, 1);
                    if (z11) {
                        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "RBRACKET", "I");
                        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "EOF", "I");
                    } else {
                        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", "I");
                        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "LBRACKET", "I");
                    }
                    gVarQ.l(182, "com/alibaba/fastjson/parser/DefaultJSONParser", "accept", "(II)V");
                }
            }
            i12++;
            listM = list;
            size = i14;
        }
        b(c0199a, gVarQ, false);
        gVarQ.g(25, c0199a.f("lexer"));
        gVarQ.b(178, "com/alibaba/fastjson/parser/JSONToken", "COMMA", "I");
        gVarQ.l(182, "com/alibaba/fastjson/parser/JSONLexerBase", "nextToken", "(I)V");
        gVarQ.g(25, c0199a.f("instance"));
        gVarQ.j(176);
        gVarQ.k(5, c0199a.e());
        gVarQ.a();
    }

    void o(com.alibaba.fastjson.asm.g gVar, C0199a c0199a, int i10, com.alibaba.fastjson.asm.f fVar) {
        gVar.g(21, c0199a.f("_asm_flag_" + (i10 / 32)));
        gVar.c(Integer.valueOf(1 << i10));
        gVar.j(126);
        gVar.f(153, fVar);
    }

    void t(com.alibaba.fastjson.asm.g gVar, C0199a c0199a, int i10) {
        String str = "_asm_flag_" + (i10 / 32);
        gVar.g(21, c0199a.f(str));
        gVar.c(Integer.valueOf(1 << i10));
        gVar.j(128);
        gVar.g(54, c0199a.f(str));
    }

    public r u(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) throws Exception {
        Class<?> clsJ = eVar.j();
        return (clsJ == Integer.TYPE || clsJ == Long.TYPE || clsJ == String.class) ? w(kVar, cls, eVar) : kVar.b(kVar, cls, eVar);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00a2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public x0 v(com.alibaba.fastjson.parser.k kVar, Class<?> cls, Type type) throws Exception {
        FileOutputStream fileOutputStream;
        Exception e10;
        if (cls.isPrimitive()) {
            throw new IllegalArgumentException("not support type :" + cls.getName());
        }
        String strZ = z(cls);
        com.alibaba.fastjson.asm.b bVar = new com.alibaba.fastjson.asm.b();
        bVar.o(49, 33, strZ, "com/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer", null);
        com.alibaba.fastjson.util.d dVarB = com.alibaba.fastjson.util.d.b(cls, type);
        m(bVar, new C0199a(strZ, kVar, dVarB, 3));
        c(bVar, new C0199a(strZ, kVar, dVarB, 3));
        ?? r10 = 4;
        g(bVar, new C0199a(strZ, kVar, dVarB, 4));
        h(bVar, new C0199a(strZ, kVar, dVarB, 4));
        byte[] bArrN = bVar.n();
        if (com.alibaba.fastjson.a.DUMP_CLASS != null) {
            ?? r11 = 0;
            try {
                try {
                    fileOutputStream = new FileOutputStream(com.alibaba.fastjson.a.DUMP_CLASS + File.separator + strZ + ".class");
                    try {
                        fileOutputStream.write(bArrN);
                        r10 = fileOutputStream;
                    } catch (Exception e11) {
                        e10 = e11;
                        System.err.println("FASTJSON dump class:" + strZ + "失败:" + e10.getMessage());
                        r10 = fileOutputStream;
                        if (fileOutputStream != null) {
                        }
                        return (x0) this.Z0.a(strZ, bArrN, 0, bArrN.length).getConstructor(com.alibaba.fastjson.parser.k.class, Class.class).newInstance(kVar, cls);
                    }
                } catch (Throwable th) {
                    th = th;
                    r11 = r10;
                    if (r11 != 0) {
                        r11.close();
                    }
                    throw th;
                }
            } catch (Exception e12) {
                fileOutputStream = null;
                e10 = e12;
            } catch (Throwable th2) {
                th = th2;
                if (r11 != 0) {
                    r11.close();
                }
                throw th;
            }
            r10.close();
        }
        return (x0) this.Z0.a(strZ, bArrN, 0, bArrN.length).getConstructor(com.alibaba.fastjson.parser.k.class, Class.class).newInstance(kVar, cls);
    }

    public r w(com.alibaba.fastjson.parser.k kVar, Class<?> cls, com.alibaba.fastjson.util.e eVar) throws Exception {
        Class cls2;
        char c10;
        int i10;
        char c11;
        Class<?> clsJ = eVar.j();
        Method methodP = eVar.p();
        String strA = A(cls, eVar);
        com.alibaba.fastjson.asm.b bVar = new com.alibaba.fastjson.asm.b();
        Class<?> cls3 = Integer.TYPE;
        if (clsJ == cls3) {
            cls2 = s.class;
        } else {
            cls2 = clsJ == Long.TYPE ? t0.class : b1.class;
        }
        Class cls4 = cls2;
        int i11 = cls.isInterface() ? 185 : 182;
        bVar.o(49, 33, strA, com.alibaba.fastjson.util.b.getType(cls4), null);
        com.alibaba.fastjson.asm.g gVarQ = bVar.q(1, "<init>", "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V", null, null);
        gVarQ.g(25, 0);
        gVarQ.g(25, 1);
        gVarQ.g(25, 2);
        gVarQ.g(25, 3);
        gVarQ.l(183, com.alibaba.fastjson.util.b.getType(cls4), "<init>", "(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V");
        gVarQ.j(177);
        gVarQ.k(4, 6);
        gVarQ.a();
        if (methodP == null) {
            c10 = 2;
            i10 = 3;
            c11 = 1;
        } else if (clsJ == cls3) {
            com.alibaba.fastjson.asm.g gVarQ2 = bVar.q(1, "setValue", "(Ljava/lang/Object;I)V", null, null);
            gVarQ2.g(25, 1);
            gVarQ2.d(192, com.alibaba.fastjson.util.b.getType(methodP.getDeclaringClass()));
            gVarQ2.g(21, 2);
            gVarQ2.l(i11, com.alibaba.fastjson.util.b.getType(methodP.getDeclaringClass()), methodP.getName(), com.alibaba.fastjson.util.b.c(methodP));
            gVarQ2.j(177);
            gVarQ2.k(3, 3);
            gVarQ2.a();
            c10 = 2;
            i10 = 3;
            c11 = 1;
        } else if (clsJ == Long.TYPE) {
            c11 = 1;
            c10 = 2;
            com.alibaba.fastjson.asm.g gVarQ3 = bVar.q(1, "setValue", "(Ljava/lang/Object;J)V", null, null);
            gVarQ3.g(25, 1);
            gVarQ3.d(192, com.alibaba.fastjson.util.b.getType(methodP.getDeclaringClass()));
            gVarQ3.g(22, 2);
            gVarQ3.l(i11, com.alibaba.fastjson.util.b.getType(methodP.getDeclaringClass()), methodP.getName(), com.alibaba.fastjson.util.b.c(methodP));
            gVarQ3.j(177);
            gVarQ3.k(3, 4);
            gVarQ3.a();
            i10 = 3;
        } else {
            c10 = 2;
            c11 = 1;
            com.alibaba.fastjson.asm.g gVarQ4 = bVar.q(1, "setValue", "(Ljava/lang/Object;Ljava/lang/Object;)V", null, null);
            gVarQ4.g(25, 1);
            gVarQ4.d(192, com.alibaba.fastjson.util.b.getType(methodP.getDeclaringClass()));
            gVarQ4.g(25, 2);
            gVarQ4.d(192, com.alibaba.fastjson.util.b.getType(clsJ));
            gVarQ4.l(i11, com.alibaba.fastjson.util.b.getType(methodP.getDeclaringClass()), methodP.getName(), com.alibaba.fastjson.util.b.c(methodP));
            gVarQ4.j(177);
            i10 = 3;
            gVarQ4.k(3, 3);
            gVarQ4.a();
        }
        byte[] bArrN = bVar.n();
        Class<?> clsA = this.Z0.a(strA, bArrN, 0, bArrN.length);
        Class<?>[] clsArr = new Class[i10];
        clsArr[0] = com.alibaba.fastjson.parser.k.class;
        clsArr[c11] = Class.class;
        clsArr[c10] = com.alibaba.fastjson.util.e.class;
        Constructor<?> constructor = clsA.getConstructor(clsArr);
        Object[] objArr = new Object[i10];
        objArr[0] = kVar;
        objArr[c11] = cls;
        objArr[c10] = eVar;
        return (r) constructor.newInstance(objArr);
    }

    public String z(Class<?> cls) {
        return "Fastjson_ASM_" + cls.getSimpleName() + "_" + this.f6543a1.incrementAndGet();
    }

    public a(ClassLoader classLoader) {
        this.f6543a1 = new AtomicLong();
        this.Z0 = new com.alibaba.fastjson.util.a(classLoader);
    }
}
