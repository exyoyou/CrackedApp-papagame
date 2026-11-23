package com.xinzhu.haunted;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.squareup.javapoet.ClassName;
import com.squareup.javapoet.FieldSpec;
import com.squareup.javapoet.JavaFile;
import com.squareup.javapoet.MethodSpec;
import com.squareup.javapoet.ParameterSpec;
import com.squareup.javapoet.ParameterizedTypeName;
import com.squareup.javapoet.TypeName;
import com.squareup.javapoet.TypeSpec;
import com.squareup.javapoet.WildcardTypeName;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import javax.lang.model.element.Modifier;

/* JADX INFO: loaded from: classes8.dex */
public class HauntedWriter {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final TypeName f88229h = ParameterizedTypeName.get(ClassName.get(AtomicReference.class), new TypeName[]{ClassName.get(Field.class)});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final TypeName f88230i = ParameterizedTypeName.get(ClassName.get(AtomicReference.class), new TypeName[]{ClassName.get(Method.class)});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final TypeName f88231j = ParameterizedTypeName.get(ClassName.get(AtomicReference.class), new TypeName[]{ClassName.get(Constructor.class)});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final TypeName f88232k = ParameterizedTypeName.get(ClassName.get(Class.class), new TypeName[]{WildcardTypeName.subtypeOf(Object.class)});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HauntedScanner f88233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HauntedWriter f88234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypeSpec.Builder f88235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f88236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f88237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TypeSpec.Builder f88238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Boolean f88239g;

    private enum REFLECT_TYPE {
        TYPE_CONSTRUCTOR,
        TYPE_METHOD,
        TYPE_FIELD_GET,
        TYPE_FIELD_SET
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f88240a;

        static {
            int[] iArr = new int[HauntedScanner.ClassDecl.DeclKind.values().length];
            f88240a = iArr;
            try {
                iArr[HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f88240a[HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f88240a[HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static class b {
        private b() {
        }

        public static Object a(HauntedScanner.ClassDecl classDecl) {
            int i10 = a.f88240a[classDecl.f88217c.ordinal()];
            if (i10 == 1) {
                return classDecl.f88216b;
            }
            if (i10 == 2) {
                return classDecl.f88215a.replace("MetaHt", "");
            }
            if (i10 != 3) {
                throw new RuntimeException("Invalid ClassDecl kind!");
            }
            throw new RuntimeException("TODO");
        }

        public static String b(HauntedScanner.ClassDecl classDecl) {
            int i10 = a.f88240a[classDecl.f88217c.ordinal()];
            if (i10 == 1) {
                return "$T";
            }
            if (i10 == 2) {
                return "$S";
            }
            if (i10 != 3) {
                throw new RuntimeException("Invalid ClassDecl kind!");
            }
            throw new RuntimeException("TODO");
        }

        public static String[] c(String str) {
            int iLastIndexOf = str.lastIndexOf(46);
            if (-1 == iLastIndexOf) {
                throw new RuntimeException("Invalid full class name.");
            }
            String strSubstring = str.substring(0, iLastIndexOf);
            String[] strArrSplit = str.substring(iLastIndexOf + 1).split("$");
            String[] strArr = new String[strArrSplit.length];
            strArr[0] = strSubstring;
            System.arraycopy(strArr, 1, strArrSplit, 0, strArrSplit.length);
            return strArr;
        }
    }

    public HauntedWriter(HauntedScanner hauntedScanner) {
        this(hauntedScanner, null);
    }

    /* JADX WARN: Code duplicated, block: B:89:0x06f9  */
    /* JADX WARN: Code duplicated, block: B:92:0x0736  */
    /* JADX WARN: Code duplicated, block: B:93:0x0761  */
    /* JADX WARN: Code duplicated, block: B:95:0x0765  */
    /* JADX WARN: Code duplicated, block: B:96:0x078e  */
    /* JADX WARN: Instruction removed from duplicated block: B:92:0x0736, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:95:0x0765, please report this as an issue */
    private TypeSpec a() {
        String str;
        String str2;
        ClassName classNameBestGuess;
        String str3;
        String str4;
        int i10;
        int i11;
        Class<Object> cls;
        int i12;
        int i13;
        MethodSpec.Builder builderAddParameter;
        HauntedScanner.ClassDecl.DeclKind declKind;
        int i14;
        int i15;
        String str5 = this.f88233a.f88208b;
        this.f88236d = str5;
        if (str5.startsWith("MetaHt")) {
            this.f88236d = this.f88236d.substring(4);
        } else {
            com.xinzhu.haunted.a.c("MetaClass " + this.f88236d + " does not start with MetaHt, using the same name.");
        }
        TypeSpec.Builder builderClassBuilder = TypeSpec.classBuilder(this.f88236d);
        this.f88235c = builderClassBuilder;
        int i16 = 0;
        if (this.f88233a.f88210d) {
            builderClassBuilder.addModifiers(new Modifier[]{Modifier.STATIC});
        }
        int i17 = 2;
        if (this.f88234b == null) {
            this.f88235c.addField(FieldSpec.builder(String.class, "TAG", new Modifier[]{Modifier.FINAL, Modifier.PRIVATE, Modifier.STATIC}).initializer(this.f88236d + ".class.getSimpleName()", new Object[0]).build());
        }
        String str6 = ")";
        String str7 = "";
        if (this.f88234b == null || this.f88233a.f88210d) {
            TypeSpec.Builder builder = this.f88235c;
            FieldSpec.Builder builder2 = FieldSpec.builder(f88232k, "TYPE", new Modifier[]{Modifier.PUBLIC, Modifier.STATIC});
            StringBuilder sb2 = new StringBuilder();
            sb2.append("$T.initHtClass(");
            sb2.append(b.b(this.f88233a.f88209c));
            sb2.append(this.f88233a.f88209c.f88217c == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE ? ".class" : "");
            sb2.append(")");
            builder.addField(builder2.initializer(sb2.toString(), new Object[]{ClassName.get(com.xinzhu.haunted.b.f89154b, "HtClass", new String[0]), b.a(this.f88233a.f88209c)}).build());
        } else {
            TypeSpec.Builder builderH = h();
            FieldSpec.Builder builder3 = FieldSpec.builder(f88232k, d() + "_TYPE", new Modifier[]{Modifier.PUBLIC, Modifier.STATIC});
            StringBuilder sb3 = new StringBuilder();
            sb3.append("$T.initHtClass(");
            sb3.append(b.b(this.f88233a.f88209c));
            sb3.append(this.f88233a.f88209c.f88217c == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE ? ".class" : "");
            sb3.append(")");
            builderH.addField(builder3.initializer(sb3.toString(), new Object[]{ClassName.get(com.xinzhu.haunted.b.f89154b, "HtClass", new String[0]), b.a(this.f88233a.f88209c)}).build());
        }
        for (HauntedScanner.a aVar : this.f88233a.f88213g) {
            if (this.f88234b == null || this.f88233a.f88210d) {
                TypeSpec.Builder builder4 = this.f88235c;
                TypeName typeName = f88229h;
                builder4.addField(FieldSpec.builder(typeName, "field_" + aVar.f88220c, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("new $T()", new Object[]{typeName}).build());
                this.f88235c.addField(FieldSpec.builder(Boolean.TYPE, "init_field_" + aVar.f88220c, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("false", new Object[0]).build());
            } else {
                TypeSpec.Builder builderH2 = h();
                TypeName typeName2 = f88229h;
                builderH2.addField(FieldSpec.builder(typeName2, "field_" + d() + "_" + aVar.f88220c, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("new $T()", new Object[]{typeName2}).build());
                h().addField(FieldSpec.builder(Boolean.TYPE, "init_field_" + d() + "_" + aVar.f88220c, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("false", new Object[0]).build());
            }
        }
        Iterator<HauntedScanner.b> it2 = this.f88233a.f88212f.iterator();
        while (true) {
            str = "method_";
            if (!it2.hasNext()) {
                break;
            }
            HauntedScanner.b next = it2.next();
            if (this.f88234b == null || this.f88233a.f88210d) {
                TypeSpec.Builder builder5 = this.f88235c;
                TypeName typeName3 = f88230i;
                builder5.addField(FieldSpec.builder(typeName3, "method_" + next.f88225e, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("new $T()", new Object[]{typeName3}).build());
                this.f88235c.addField(FieldSpec.builder(Boolean.TYPE, "init_method_" + next.f88225e, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("false", new Object[0]).build());
            } else {
                TypeSpec.Builder builderH3 = h();
                TypeName typeName4 = f88230i;
                builderH3.addField(FieldSpec.builder(typeName4, "method_" + d() + "_" + next.f88225e, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("new $T()", new Object[]{typeName4}).build());
                h().addField(FieldSpec.builder(Boolean.TYPE, "init_method_" + d() + "_" + next.f88225e, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("false", new Object[0]).build());
            }
        }
        Iterator<HauntedScanner.b> it3 = this.f88233a.f88211e.iterator();
        while (true) {
            str2 = "constructor_";
            if (!it3.hasNext()) {
                break;
            }
            HauntedScanner.b next2 = it3.next();
            if (this.f88234b == null || this.f88233a.f88210d) {
                TypeSpec.Builder builder6 = this.f88235c;
                TypeName typeName5 = f88231j;
                String str8 = "constructor_" + next2.f88225e;
                Modifier[] modifierArr = new Modifier[2];
                modifierArr[i16] = Modifier.PRIVATE;
                modifierArr[1] = Modifier.STATIC;
                builder6.addField(FieldSpec.builder(typeName5, str8, modifierArr).initializer("new $T()", new Object[]{typeName5}).build());
                this.f88235c.addField(FieldSpec.builder(Boolean.TYPE, "init_constructor_" + next2.f88225e, new Modifier[]{Modifier.PRIVATE, Modifier.STATIC}).initializer("false", new Object[0]).build());
            } else {
                TypeSpec.Builder builderH4 = h();
                TypeName typeName6 = f88231j;
                String str9 = "constructor_" + d() + "_" + next2.f88225e;
                Modifier[] modifierArr2 = new Modifier[i17];
                modifierArr2[i16] = Modifier.PRIVATE;
                modifierArr2[1] = Modifier.STATIC;
                FieldSpec.Builder builder7 = FieldSpec.builder(typeName6, str9, modifierArr2);
                Object[] objArr = new Object[1];
                objArr[i16] = typeName6;
                builderH4.addField(builder7.initializer("new $T()", objArr).build());
                TypeSpec.Builder builderH5 = h();
                Class cls2 = Boolean.TYPE;
                String str10 = "init_constructor_" + d() + "_" + next2.f88225e;
                Modifier[] modifierArr3 = new Modifier[2];
                modifierArr3[i16] = Modifier.PRIVATE;
                modifierArr3[1] = Modifier.STATIC;
                builderH5.addField(FieldSpec.builder(cls2, str10, modifierArr3).initializer("false", new Object[i16]).build());
            }
            i16 = 0;
            i17 = 2;
        }
        String str11 = "thiz";
        Class<Object> cls3 = Object.class;
        if (i()) {
            this.f88235c.addField(FieldSpec.builder(cls3, "thiz", new Modifier[]{Modifier.PUBLIC}).build());
            this.f88235c.addMethod(MethodSpec.constructorBuilder().addModifiers(new Modifier[]{Modifier.PUBLIC}).addParameter(cls3, "egoInstance", new Modifier[0]).addStatement("thiz = egoInstance", new Object[0]).build());
            this.f88235c.addMethod(MethodSpec.constructorBuilder().addModifiers(new Modifier[]{Modifier.PRIVATE}).build());
        }
        Iterator<HauntedScanner.a> it4 = this.f88233a.f88213g.iterator();
        while (it4.hasNext()) {
            HauntedScanner.a next3 = it4.next();
            HauntedScanner.ClassDecl classDecl = next3.f88219b;
            HauntedScanner.ClassDecl.DeclKind declKind2 = classDecl.f88217c;
            if (declKind2 == HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE) {
                throw new RuntimeException("String reference not allowed on field " + next3.f88220c);
            }
            String str12 = next3.f88218a ? "null" : str11;
            HauntedScanner.ClassDecl.DeclKind declKind3 = HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE;
            ClassName classNameBestGuess2 = declKind2 == declKind3 ? ClassName.bestGuess(g(classDecl.f88215a)) : ClassName.get(classDecl.f88216b);
            MethodSpec.Builder builderMethodBuilder = MethodSpec.methodBuilder("check_field_" + next3.f88220c);
            Class cls4 = Boolean.TYPE;
            String str13 = str12;
            MethodSpec.Builder builderAddModifiers = builderMethodBuilder.returns(cls4).addModifiers(new Modifier[]{Modifier.PUBLIC});
            if (next3.f88218a) {
                builderAddModifiers.addModifiers(new Modifier[]{Modifier.STATIC});
            }
            String str14 = str;
            String str15 = str11;
            Iterator<HauntedScanner.a> it5 = it4;
            Class<Object> cls5 = cls3;
            String str16 = str7;
            String str17 = str2;
            MethodSpec.Builder builderJ = j(builderAddModifiers, next3.f88220c, null, null, next3.f88219b, REFLECT_TYPE.TYPE_FIELD_GET, b(), new HauntedScanner.ClassDecl[0]);
            MethodSpec.Builder builderAddModifiers2 = MethodSpec.methodBuilder("get_" + next3.f88220c).returns(classNameBestGuess2).addModifiers(new Modifier[]{Modifier.PUBLIC});
            if (next3.f88218a) {
                builderAddModifiers2.addModifiers(new Modifier[]{Modifier.STATIC});
            }
            builderAddModifiers2.beginControlFlow("if(!check_field_" + c(next3.f88220c) + "())", new Object[0]);
            builderAddModifiers2.addStatement(f(next3.f88219b), new Object[0]);
            builderAddModifiers2.endControlFlow();
            builderAddModifiers2.beginControlFlow("try", new Object[0]);
            HauntedScanner.ClassDecl.DeclKind declKind4 = next3.f88219b.f88217c;
            if (declKind4 == declKind3) {
                builderAddModifiers2.addStatement("return new $T(field_" + c(next3.f88220c) + ".get().get(" + str13 + "))", new Object[]{classNameBestGuess2});
            } else {
                if (declKind4 == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                    i12 = 1;
                    i13 = 0;
                    builderAddModifiers2.addStatement("return ($T)field_" + c(next3.f88220c) + ".get().get(" + str13 + ")", new Object[]{classNameBestGuess2});
                }
                Object[] objArr2 = new Object[i12];
                objArr2[i13] = IllegalAccessException.class;
                builderAddModifiers2.nextControlFlow("catch ($T e)", objArr2).addStatement("e.printStackTrace()", new Object[i13]);
                builderAddModifiers2.addStatement(f(next3.f88219b), new Object[i13]).endControlFlow();
                builderAddParameter = MethodSpec.methodBuilder("set_" + next3.f88220c).returns(cls4).addModifiers(new Modifier[]{Modifier.PUBLIC}).addParameter(ParameterSpec.builder(classNameBestGuess2, HmInputMappingContent.FIELD_VALUE, new Modifier[0]).build());
                if (next3.f88218a) {
                    builderAddParameter.addModifiers(new Modifier[]{Modifier.STATIC});
                }
                builderAddParameter.beginControlFlow("if(!check_field_" + next3.f88220c + "())", new Object[0]);
                builderAddParameter.addStatement("return false", new Object[0]);
                builderAddParameter.endControlFlow();
                builderAddParameter.beginControlFlow("try", new Object[0]);
                declKind = next3.f88219b.f88217c;
                if (declKind == declKind3) {
                    builderAddParameter.addStatement("field_" + c(next3.f88220c) + ".get().set(" + str13 + ", value.thiz)", new Object[0]);
                    i15 = 1;
                    i14 = 0;
                } else {
                    if (declKind == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                        i14 = 0;
                        builderAddParameter.addStatement("field_" + c(next3.f88220c) + ".get().set(" + str13 + ", value)", new Object[0]);
                    } else {
                        i14 = 0;
                    }
                    i15 = 1;
                }
                Object[] objArr3 = new Object[i15];
                objArr3[i14] = IllegalAccessException.class;
                builderAddParameter.nextControlFlow("catch ($T e)", objArr3).addStatement("e.printStackTrace()", new Object[i14]).addStatement("return false", new Object[i14]).endControlFlow().addStatement("return true", new Object[i14]);
                this.f88235c.addMethod(builderJ.build());
                this.f88235c.addMethod(builderAddModifiers2.build());
                this.f88235c.addMethod(builderAddParameter.build());
                str7 = str16;
                it4 = it5;
                cls3 = cls5;
                str11 = str15;
                str2 = str17;
                str = str14;
            }
            i12 = 1;
            i13 = 0;
            Object[] objArr4 = new Object[i12];
            objArr4[i13] = IllegalAccessException.class;
            builderAddModifiers2.nextControlFlow("catch ($T e)", objArr4).addStatement("e.printStackTrace()", new Object[i13]);
            builderAddModifiers2.addStatement(f(next3.f88219b), new Object[i13]).endControlFlow();
            builderAddParameter = MethodSpec.methodBuilder("set_" + next3.f88220c).returns(cls4).addModifiers(new Modifier[]{Modifier.PUBLIC}).addParameter(ParameterSpec.builder(classNameBestGuess2, HmInputMappingContent.FIELD_VALUE, new Modifier[0]).build());
            if (next3.f88218a) {
                builderAddParameter.addModifiers(new Modifier[]{Modifier.STATIC});
            }
            builderAddParameter.beginControlFlow("if(!check_field_" + next3.f88220c + "())", new Object[0]);
            builderAddParameter.addStatement("return false", new Object[0]);
            builderAddParameter.endControlFlow();
            builderAddParameter.beginControlFlow("try", new Object[0]);
            declKind = next3.f88219b.f88217c;
            if (declKind == declKind3) {
                builderAddParameter.addStatement("field_" + c(next3.f88220c) + ".get().set(" + str13 + ", value.thiz)", new Object[0]);
                i15 = 1;
                i14 = 0;
            } else {
                if (declKind == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                    i14 = 0;
                    builderAddParameter.addStatement("field_" + c(next3.f88220c) + ".get().set(" + str13 + ", value)", new Object[0]);
                } else {
                    i14 = 0;
                }
                i15 = 1;
            }
            Object[] objArr5 = new Object[i15];
            objArr5[i14] = IllegalAccessException.class;
            builderAddParameter.nextControlFlow("catch ($T e)", objArr5).addStatement("e.printStackTrace()", new Object[i14]).addStatement("return false", new Object[i14]).endControlFlow().addStatement("return true", new Object[i14]);
            this.f88235c.addMethod(builderJ.build());
            this.f88235c.addMethod(builderAddModifiers2.build());
            this.f88235c.addMethod(builderAddParameter.build());
            str7 = str16;
            it4 = it5;
            cls3 = cls5;
            str11 = str15;
            str2 = str17;
            str = str14;
        }
        String str18 = str2;
        String str19 = str;
        String str20 = str11;
        Class<Object> cls6 = cls3;
        String str21 = str7;
        String str22 = "catch ($T e)";
        String str23 = "try";
        String str24 = "))";
        String str25 = "e.printStackTrace()";
        Iterator<HauntedScanner.b> it6 = this.f88233a.f88212f.iterator();
        while (it6.hasNext()) {
            HauntedScanner.b next4 = it6.next();
            boolean z10 = next4.f88221a;
            boolean zC = next4.f88223c.c();
            HauntedScanner.ClassDecl classDecl2 = next4.f88223c;
            HauntedScanner.ClassDecl.DeclKind declKind5 = classDecl2.f88217c;
            if (declKind5 == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                classNameBestGuess = ClassName.bestGuess(g(classDecl2.f88215a));
            } else {
                if (declKind5 != HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                    throw new RuntimeException("Function return class does not allow to be string reflect.");
                }
                com.xinzhu.haunted.a.c("declString: " + next4.f88223c.f88216b);
                classNameBestGuess = ClassName.get(next4.f88223c.f88216b);
            }
            ClassName className = classNameBestGuess;
            MethodSpec.Builder builderAddModifiers3 = MethodSpec.methodBuilder("check_method_" + next4.f88224d).returns(Boolean.TYPE).addModifiers(new Modifier[]{Modifier.PUBLIC});
            if (next4.f88221a) {
                builderAddModifiers3.addModifiers(new Modifier[]{Modifier.STATIC});
            }
            String str26 = str25;
            Iterator<HauntedScanner.b> it7 = it6;
            String str27 = str22;
            String str28 = str6;
            String str29 = str24;
            String str30 = str23;
            MethodSpec.Builder builderJ2 = j(builderAddModifiers3, next4.f88224d, next4.f88225e, next4.f88226f, next4.f88223c, REFLECT_TYPE.TYPE_METHOD, b(), (HauntedScanner.ClassDecl[]) next4.f88227g.toArray(new HauntedScanner.ClassDecl[0]));
            MethodSpec.Builder builderAddModifiers4 = MethodSpec.methodBuilder(next4.f88224d).addModifiers(new Modifier[]{Modifier.PUBLIC});
            if (!zC) {
                builderAddModifiers4.returns(className);
            }
            if (next4.f88221a) {
                builderAddModifiers4.addModifiers(new Modifier[]{Modifier.STATIC});
            }
            int i18 = 0;
            while (i18 < next4.f88227g.size()) {
                HauntedScanner.ClassDecl classDecl3 = next4.f88227g.get(i18);
                HauntedScanner.ClassDecl.DeclKind declKind6 = classDecl3.f88217c;
                if (declKind6 == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                    builderAddModifiers4.addParameter(ClassName.get(classDecl3.f88216b), "arg" + i18, new Modifier[0]);
                    cls = cls6;
                } else if (declKind6 == HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE) {
                    cls = cls6;
                    builderAddModifiers4.addParameter(cls, "arg" + i18, new Modifier[0]);
                } else {
                    cls = cls6;
                    if (declKind6 == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                        builderAddModifiers4.addParameter(ClassName.bestGuess(g(classDecl3.f88215a)), "arg" + i18, new Modifier[0]);
                    }
                }
                i18++;
                cls6 = cls;
            }
            Class<Object> cls7 = cls6;
            String str31 = str21;
            StringBuilder sb4 = new StringBuilder(str31);
            for (int i19 = 0; i19 < next4.f88227g.size(); i19++) {
                HauntedScanner.ClassDecl classDecl4 = next4.f88227g.get(i19);
                sb4.append("arg" + i19);
                if (classDecl4.f88217c == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                    sb4.append(".thiz");
                }
                if (i19 != next4.f88227g.size() - 1) {
                    sb4.append(", ");
                }
            }
            builderAddModifiers4.beginControlFlow("if(!check_method_" + next4.f88224d + "(" + sb4.toString() + str29, new Object[0]);
            builderAddModifiers4.addStatement(f(next4.f88223c), new Object[0]);
            builderAddModifiers4.endControlFlow();
            boolean z11 = false;
            for (HauntedScanner.ClassDecl classDecl5 : next4.f88228h) {
                HauntedScanner.ClassDecl.DeclKind declKind7 = classDecl5.f88217c;
                if (declKind7 == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                    builderAddModifiers4.addException(ClassName.bestGuess(g(classDecl5.f88215a)));
                } else if (declKind7 == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                    builderAddModifiers4.addException(ClassName.get(classDecl5.f88216b));
                }
                z11 = true;
            }
            builderAddModifiers4.beginControlFlow(str30, new Object[0]);
            StringBuilder sb5 = new StringBuilder(next4.f88221a ? "null" : str20);
            for (int i20 = 0; i20 < next4.f88227g.size(); i20++) {
                HauntedScanner.ClassDecl classDecl6 = next4.f88227g.get(i20);
                sb5.append(", arg" + i20);
                if (classDecl6.f88217c == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                    sb5.append(".thiz");
                }
            }
            if (next4.f88223c.f88217c == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                builderAddModifiers4.addStatement("return new $T(method_" + c(next4.f88225e) + ".get().invoke(" + sb5.toString() + str29, new Object[]{className});
                str4 = str28;
                str3 = str19;
                i11 = 1;
                i10 = 0;
            } else {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(next4.f88223c.c() ? str31 : "return (" + next4.f88223c.f88216b.toString() + ") ");
                str3 = str19;
                sb6.append(str3);
                sb6.append(c(next4.f88225e));
                sb6.append(".get().invoke(");
                sb6.append(sb5.toString());
                str4 = str28;
                sb6.append(str4);
                String string = sb6.toString();
                i10 = 0;
                builderAddModifiers4.addStatement(string, new Object[0]);
                i11 = 1;
            }
            Object[] objArr6 = new Object[i11];
            objArr6[i10] = IllegalAccessException.class;
            MethodSpec.Builder builderAddStatement = builderAddModifiers4.nextControlFlow(str27, objArr6).addStatement(str26, new Object[i10]);
            Object[] objArr7 = new Object[i11];
            str19 = str3;
            objArr7[0] = InvocationTargetException.class;
            builderAddStatement.nextControlFlow(str27, objArr7);
            if (z11) {
                builderAddModifiers4.beginControlFlow("if (e.getCause() != null)", new Object[0]).addStatement("throw e.getCause()", new Object[0]).endControlFlow().addStatement("throw e", new Object[0]);
            } else {
                builderAddModifiers4.addStatement(str26, new Object[0]);
            }
            builderAddModifiers4.endControlFlow();
            builderAddModifiers4.addStatement(f(next4.f88223c), new Object[0]);
            this.f88235c.addMethod(builderJ2.build());
            this.f88235c.addMethod(builderAddModifiers4.build());
            str21 = str31;
            cls6 = cls7;
            str24 = str29;
            str22 = str27;
            str23 = str30;
            str6 = str4;
            it6 = it7;
            str25 = str26;
        }
        String str32 = str25;
        String str33 = str23;
        String str34 = str6;
        Class<Object> cls8 = cls6;
        String str35 = str24;
        String str36 = str21;
        for (HauntedScanner.b bVar : this.f88233a.f88211e) {
            MethodSpec.Builder builderAddModifiers5 = MethodSpec.methodBuilder("check_constructor_" + c(bVar.f88225e)).returns(Boolean.TYPE).addModifiers(new Modifier[]{Modifier.PUBLIC});
            builderAddModifiers5.addModifiers(new Modifier[]{Modifier.STATIC});
            String str37 = str33;
            String str38 = str32;
            String str39 = str22;
            String str40 = str34;
            String str41 = str36;
            String str42 = str35;
            Class<Object> cls9 = cls8;
            MethodSpec.Builder builderJ3 = j(builderAddModifiers5, this.f88236d, bVar.f88225e, bVar.f88226f, bVar.f88223c, REFLECT_TYPE.TYPE_CONSTRUCTOR, b(), (HauntedScanner.ClassDecl[]) bVar.f88227g.toArray(new HauntedScanner.ClassDecl[0]));
            StringBuilder sb7 = new StringBuilder();
            String str43 = str18;
            sb7.append(str43);
            sb7.append(bVar.f88224d);
            MethodSpec.Builder builderAddModifiers6 = MethodSpec.methodBuilder(sb7.toString()).addModifiers(new Modifier[]{Modifier.STATIC}).addModifiers(new Modifier[]{Modifier.PUBLIC});
            com.xinzhu.haunted.a.c("retType name " + this.f88233a.f88207a + " " + g(this.f88233a.f88208b));
            builderAddModifiers6.returns(ClassName.get(str41, g(this.f88233a.f88208b), new String[0]));
            for (int i21 = 0; i21 < bVar.f88227g.size(); i21++) {
                HauntedScanner.ClassDecl classDecl7 = bVar.f88227g.get(i21);
                HauntedScanner.ClassDecl.DeclKind declKind8 = classDecl7.f88217c;
                if (declKind8 == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                    builderAddModifiers6.addParameter(ClassName.get(classDecl7.f88216b), "arg" + i21, new Modifier[0]);
                } else if (declKind8 == HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE) {
                    builderAddModifiers6.addParameter(cls9, "arg" + i21, new Modifier[0]);
                } else if (declKind8 == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                    builderAddModifiers6.addParameter(ClassName.bestGuess(g(classDecl7.f88215a)), "arg" + i21, new Modifier[0]);
                }
            }
            StringBuilder sb8 = new StringBuilder(str41);
            for (int i22 = 0; i22 < bVar.f88227g.size(); i22++) {
                HauntedScanner.ClassDecl classDecl8 = bVar.f88227g.get(i22);
                sb8.append("arg" + i22);
                if (classDecl8.f88217c == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                    sb8.append(".thiz");
                }
                if (i22 != bVar.f88227g.size() - 1) {
                    sb8.append(", ");
                }
            }
            builderAddModifiers6.beginControlFlow("if(!check_constructor_" + c(bVar.f88225e) + "(" + sb8.toString() + str42, new Object[0]);
            builderAddModifiers6.addStatement("return null", new Object[0]);
            builderAddModifiers6.endControlFlow();
            boolean z12 = false;
            for (HauntedScanner.ClassDecl classDecl9 : bVar.f88228h) {
                HauntedScanner.ClassDecl.DeclKind declKind9 = classDecl9.f88217c;
                if (declKind9 == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                    builderAddModifiers6.addException(ClassName.bestGuess(g(classDecl9.f88215a)));
                } else if (declKind9 == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                    builderAddModifiers6.addException(ClassName.get(classDecl9.f88216b));
                }
                z12 = true;
            }
            str33 = str37;
            builderAddModifiers6.beginControlFlow(str33, new Object[0]);
            StringBuilder sb9 = new StringBuilder(str41);
            int i23 = 0;
            while (i23 < bVar.f88227g.size()) {
                HauntedScanner.ClassDecl classDecl10 = bVar.f88227g.get(i23);
                String str44 = str43;
                sb9.append("arg" + i23);
                if (classDecl10.f88217c == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                    sb9.append(".thiz");
                }
                if (i23 != bVar.f88227g.size() - 1) {
                    sb9.append(", ");
                }
                i23++;
                str43 = str44;
            }
            str18 = str43;
            builderAddModifiers6.addStatement(g(this.f88233a.f88208b) + " result = new " + g(this.f88233a.f88208b) + "()", new Object[0]);
            builderAddModifiers6.addStatement("result.thiz = constructor_" + c(bVar.f88225e) + ".get().newInstance(" + sb9.toString() + str40, new Object[0]);
            builderAddModifiers6.addStatement("return result", new Object[0]);
            str22 = str39;
            builderAddModifiers6.nextControlFlow(str22, new Object[]{IllegalAccessException.class}).addStatement(str38, new Object[0]).nextControlFlow(str22, new Object[]{InstantiationException.class}).addStatement(str38, new Object[0]).nextControlFlow(str22, new Object[]{InvocationTargetException.class});
            if (z12) {
                builderAddModifiers6.beginControlFlow("if (e.getCause() != null)", new Object[0]).addStatement("throw e.getCause()", new Object[0]).endControlFlow().addStatement("throw e", new Object[0]);
            } else {
                builderAddModifiers6.addStatement(str38, new Object[0]);
            }
            builderAddModifiers6.endControlFlow();
            builderAddModifiers6.addStatement("return null", new Object[0]);
            this.f88235c.addMethod(builderJ3.build());
            this.f88235c.addMethod(builderAddModifiers6.build());
            str32 = str38;
            str36 = str41;
            cls8 = cls9;
            str34 = str40;
            str35 = str42;
        }
        Iterator<HauntedScanner> it8 = this.f88233a.f88214h.iterator();
        while (it8.hasNext()) {
            this.f88235c.addType(new HauntedWriter(it8.next(), this).a());
        }
        return this.f88235c.addModifiers(new Modifier[]{Modifier.FINAL, Modifier.PUBLIC}).build();
    }

    private String b() {
        if (this.f88234b == null || this.f88233a.f88210d) {
            return "TYPE";
        }
        return d() + "_TYPE";
    }

    private String c(String str) {
        if (this.f88234b == null || this.f88233a.f88210d) {
            return str;
        }
        return d() + "_" + str;
    }

    private String d() {
        if (this.f88237e == null) {
            StringBuilder sb2 = new StringBuilder("");
            sb2.insert(0, this.f88236d);
            for (HauntedWriter hauntedWriter = this.f88234b; hauntedWriter != null; hauntedWriter = hauntedWriter.f88234b) {
                if (hauntedWriter.f88234b != null) {
                    sb2.insert(0, hauntedWriter.f88236d + "_");
                }
            }
            this.f88237e = sb2.toString();
        }
        return this.f88237e;
    }

    private String f(HauntedScanner.ClassDecl classDecl) {
        if (classDecl.c()) {
            return "return";
        }
        if (classDecl.b()) {
            return "return 0";
        }
        return classDecl.a() ? "return false" : "return null";
    }

    private String g(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return str.substring(0, iLastIndexOf + 1) + str.substring(iLastIndexOf + 5);
    }

    private TypeSpec.Builder h() {
        if (this.f88238f == null) {
            HauntedWriter hauntedWriter = this;
            while (true) {
                HauntedWriter hauntedWriter2 = hauntedWriter.f88234b;
                if (hauntedWriter2 == null) {
                    break;
                }
                hauntedWriter = hauntedWriter2;
            }
            this.f88238f = hauntedWriter.f88235c;
        }
        return this.f88238f;
    }

    private boolean i() {
        if (this.f88239g == null) {
            Iterator<HauntedScanner.a> it2 = this.f88233a.f88213g.iterator();
            while (it2.hasNext()) {
                if (!it2.next().f88218a) {
                    this.f88239g = Boolean.TRUE;
                    return true;
                }
            }
            Iterator<HauntedScanner.b> it3 = this.f88233a.f88212f.iterator();
            while (it3.hasNext()) {
                if (!it3.next().f88221a) {
                    this.f88239g = Boolean.TRUE;
                    return true;
                }
            }
            Iterator<HauntedScanner> it4 = this.f88233a.f88214h.iterator();
            while (it4.hasNext()) {
                if (!it4.next().f88210d) {
                    this.f88239g = Boolean.TRUE;
                    return true;
                }
            }
            if (!this.f88233a.f88211e.isEmpty()) {
                this.f88239g = Boolean.TRUE;
                return true;
            }
            this.f88239g = Boolean.FALSE;
        }
        return this.f88239g.booleanValue();
    }

    private MethodSpec.Builder j(MethodSpec.Builder builder, String str, String str2, String str3, HauntedScanner.ClassDecl classDecl, REFLECT_TYPE reflect_type, String str4, HauntedScanner.ClassDecl... classDeclArr) {
        String str5;
        String str6;
        String str7 = str3 == null ? str : str3;
        String str8 = str2 == null ? str : str2;
        if (reflect_type == REFLECT_TYPE.TYPE_METHOD) {
            str5 = "method_" + c(str8);
            str6 = "HtClass.initHtMethod";
        } else if (reflect_type == REFLECT_TYPE.TYPE_FIELD_GET || reflect_type == REFLECT_TYPE.TYPE_FIELD_SET) {
            str5 = "field_" + c(str8);
            str6 = "HtClass.initHtField";
        } else {
            if (reflect_type != REFLECT_TYPE.TYPE_CONSTRUCTOR) {
                throw new RuntimeException("TODO");
            }
            str5 = "constructor_" + c(str8);
            str6 = "HtClass.initHtConstructor";
        }
        for (int i10 = 0; i10 < classDeclArr.length; i10++) {
            HauntedScanner.ClassDecl classDecl2 = classDeclArr[i10];
            HauntedScanner.ClassDecl.DeclKind declKind = classDecl2.f88217c;
            if (declKind == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                builder.addParameter(ClassName.get(classDecl2.f88216b), "arg" + i10, new Modifier[0]);
            } else if (declKind == HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE) {
                builder.addParameter(Object.class, "arg" + i10, new Modifier[0]);
            } else if (declKind == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                builder.addParameter(ClassName.bestGuess(g(classDecl2.f88215a)), "arg" + i10, new Modifier[0]);
            }
        }
        builder.beginControlFlow("if(" + str5 + ".get() == null)", new Object[0]);
        builder.beginControlFlow("if(!init_" + str5 + ")", new Object[0]);
        StringBuilder sb2 = new StringBuilder(str5 + ".compareAndSet(null, " + str6 + "(" + str4 + ", \"" + str7 + x.a.f97579g);
        for (HauntedScanner.ClassDecl classDecl3 : classDeclArr) {
            HauntedScanner.ClassDecl.DeclKind declKind2 = classDecl3.f88217c;
            if (declKind2 == HauntedScanner.ClassDecl.DeclKind.DIRECT_REFERENCE) {
                sb2.append(", " + classDecl3.f88216b.toString() + ".class");
            } else if (declKind2 == HauntedScanner.ClassDecl.DeclKind.STRING_REFERENCE) {
                sb2.append(", \"" + classDecl3.f88215a.replace("$", "$$") + x.a.f97579g);
            } else if (declKind2 == HauntedScanner.ClassDecl.DeclKind.EGO_REFERENCE) {
                sb2.append(", " + g(classDecl3.f88215a) + ".class");
            }
        }
        sb2.append("))");
        builder.addStatement(sb2.toString(), new Object[0]).addStatement("init_" + str5 + " = true", new Object[0]);
        builder.beginControlFlow("if(" + str5 + ".get() == null)", new Object[0]).addStatement("return false", new Object[0]).nextControlFlow("else", new Object[0]).addStatement("return true", new Object[0]).endControlFlow();
        builder.nextControlFlow("else", new Object[0]);
        builder.addStatement("return false", new Object[0]);
        builder.endControlFlow().endControlFlow().addStatement("return true", new Object[0]);
        return builder;
    }

    public JavaFile e() {
        return JavaFile.builder(this.f88233a.f88207a, a()).addFileComment("AUTO GENERATED FILE, DO NOT MODIFY", new Object[0]).build();
    }

    private HauntedWriter(HauntedScanner hauntedScanner, HauntedWriter hauntedWriter) {
        this.f88239g = null;
        this.f88233a = hauntedScanner;
        this.f88234b = hauntedWriter;
    }
}
