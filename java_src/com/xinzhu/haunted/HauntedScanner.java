package com.xinzhu.haunted;

import com.haima.hmcp.beans.HmInputMappingContent;
import com.sun.tools.javac.code.Attribute;
import com.sun.tools.javac.code.Symbol;
import com.sun.tools.javac.code.Type;
import com.xinzhu.overmind.annotation.Haunted;
import com.xinzhu.overmind.annotation.HauntedString;
import com.xinzhu.overmind.annotation.MethodParamString;
import com.xinzhu.overmind.annotation.MethodParamTemplate;
import com.xinzhu.overmind.annotation.ReflectiveName;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.lang.model.element.AnnotationMirror;
import javax.lang.model.element.AnnotationValue;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.ExecutableElement;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeElement;
import javax.lang.model.element.VariableElement;
import javax.lang.model.type.TypeMirror;

/* JADX INFO: loaded from: classes8.dex */
public class HauntedScanner {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f88203i = "initMetaClass";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f88204j = "getEgo";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f88205k = "initMetaMethod";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f88206l = "initMetaField";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f88207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f88208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ClassDecl f88209c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f88210d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<b> f88211e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<b> f88212f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List<a> f88213g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<HauntedScanner> f88214h = new ArrayList();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f88218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ClassDecl f88219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f88220c;
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f88221a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f88222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ClassDecl f88223c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f88224d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f88225e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f88226f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        List<ClassDecl> f88227g = new ArrayList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        List<ClassDecl> f88228h = new ArrayList();
    }

    private HauntedScanner(Element element, String str, HauntedScanner hauntedScanner) {
        this.f88207a = str;
        this.f88208b = element.getSimpleName().toString();
        this.f88210d = element.getModifiers().contains(Modifier.STATIC);
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) element;
        if (hauntedScanner == null) {
            com.xinzhu.haunted.a.c("class name " + this.f88208b + " " + element + " " + classSymbol.outermostClass());
            AnnotationMirror annotationMirrorA = a(element, Haunted.class);
            if (annotationMirrorA != null) {
                this.f88209c = c((TypeMirror) b(annotationMirrorA, HmInputMappingContent.FIELD_VALUE).getValue());
            } else {
                AnnotationMirror annotationMirrorA2 = a(element, HauntedString.class);
                if (annotationMirrorA2 == null) {
                    throw new RuntimeException("Could not determine the ego of the class " + element.getSimpleName());
                }
                this.f88209c = new ClassDecl((String) b(annotationMirrorA2, HmInputMappingContent.FIELD_VALUE).getValue(), ClassDecl.DeclKind.STRING_REFERENCE);
            }
        } else {
            com.xinzhu.haunted.a.c("subclass name " + this.f88208b + " " + element + " " + classSymbol.outermostClass());
            StringBuilder sb2 = new StringBuilder();
            ClassDecl classDecl = hauntedScanner.f88209c;
            ClassDecl.DeclKind declKind = classDecl.f88217c;
            ClassDecl.DeclKind declKind2 = ClassDecl.DeclKind.STRING_REFERENCE;
            sb2.append((Object) (declKind == declKind2 ? classDecl.f88215a : classDecl.f88216b));
            sb2.append("$");
            sb2.append(this.f88208b);
            this.f88209c = new ClassDecl(sb2.toString(), declKind2);
        }
        g(element.getEnclosedElements());
    }

    private static AnnotationMirror a(Element element, Class<?> cls) {
        String name = cls.getName();
        for (AnnotationMirror annotationMirror : element.getAnnotationMirrors()) {
            if (annotationMirror.getAnnotationType().toString().equals(name)) {
                return annotationMirror;
            }
        }
        return null;
    }

    private static AnnotationValue b(AnnotationMirror annotationMirror, String str) {
        for (Map.Entry entry : annotationMirror.getElementValues().entrySet()) {
            if (((ExecutableElement) entry.getKey()).getSimpleName().toString().equals(str)) {
                return (AnnotationValue) entry.getValue();
            }
        }
        return null;
    }

    private ClassDecl c(TypeMirror typeMirror) {
        if (typeMirror instanceof Type.ClassType) {
            Type.ClassType classType = (Type.ClassType) typeMirror;
            return e(classType) ? new ClassDecl(classType.toString(), ClassDecl.DeclKind.EGO_REFERENCE) : new ClassDecl(classType);
        }
        if (typeMirror instanceof Type.JCPrimitiveType) {
            return new ClassDecl((Type.JCPrimitiveType) typeMirror);
        }
        if (typeMirror instanceof Type.JCVoidType) {
            return new ClassDecl((Type.JCVoidType) typeMirror);
        }
        if (typeMirror instanceof Type.ArrayType) {
            return new ClassDecl((Type.ArrayType) typeMirror);
        }
        com.xinzhu.haunted.a.b("getClassDeclFromTypeMirror: " + typeMirror.getClass().getCanonicalName());
        return null;
    }

    private String d(String str) {
        return str.startsWith("Meta") ? str.substring(4) : str;
    }

    private static boolean e(Type.ClassType classType) {
        return classType.tsym.name.toString().startsWith("MetaHt");
    }

    private void f(Element element) {
        AnnotationMirror annotationMirrorA = a(element, MethodParamTemplate.class);
        AnnotationMirror annotationMirrorA2 = a(element, MethodParamString.class);
        if (annotationMirrorA == null && annotationMirrorA2 == null) {
            i(element);
        } else {
            j(element, annotationMirrorA, annotationMirrorA2);
        }
    }

    private void g(List<? extends Element> list) {
        for (Element element : list) {
            com.xinzhu.haunted.a.c("element " + element + " type " + element.getKind());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("element class ");
            sb2.append(element.getClass());
            com.xinzhu.haunted.a.c(sb2.toString());
            if ((element instanceof VariableElement) || (element instanceof ExecutableElement)) {
                f(element);
            } else if (element instanceof TypeElement) {
                this.f88214h.add(l(element, this.f88207a, this));
            }
        }
    }

    private static String h(Element element) {
        while (element.getKind() != ElementKind.PACKAGE) {
            element = element.getEnclosingElement();
        }
        return ((PackageElement) element).getQualifiedName().toString();
    }

    private void i(Element element) {
        if (element.getSimpleName().toString().equals("<init>")) {
            return;
        }
        a aVar = new a();
        aVar.f88218a = element.getModifiers().contains(Modifier.STATIC);
        aVar.f88220c = element.getSimpleName().toString();
        ClassDecl classDeclC = c(element.asType());
        aVar.f88219b = classDeclC;
        if (classDeclC != null) {
            this.f88213g.add(aVar);
            return;
        }
        throw new RuntimeException("Cannot get type of " + element.getSimpleName());
    }

    private void j(Element element, AnnotationMirror annotationMirror, AnnotationMirror annotationMirror2) {
        b bVar = new b();
        int i10 = 0;
        bVar.f88222b = false;
        bVar.f88221a = element.getModifiers().contains(Modifier.STATIC);
        bVar.f88224d = element.getSimpleName().toString();
        if (element.getKind() == ElementKind.CONSTRUCTOR) {
            bVar.f88222b = true;
            String str = this.f88208b;
            bVar.f88224d = str;
            bVar.f88224d = d(str);
        }
        Iterator<b> it2 = (bVar.f88222b ? this.f88211e : this.f88212f).iterator();
        int i11 = -1;
        while (it2.hasNext()) {
            if (it2.next().f88224d.equals(bVar.f88224d)) {
                i11++;
            }
        }
        String str2 = bVar.f88224d;
        bVar.f88225e = str2;
        bVar.f88226f = str2;
        if (i11 != -1) {
            bVar.f88225e += i11;
        }
        AnnotationMirror annotationMirrorA = a(element, ReflectiveName.class);
        if (annotationMirrorA != null) {
            bVar.f88226f = (String) b(annotationMirrorA, HmInputMappingContent.FIELD_VALUE).getValue();
        }
        if (element instanceof VariableElement) {
            bVar.f88223c = c(element.asType());
        } else if (element instanceof ExecutableElement) {
            bVar.f88223c = c(((ExecutableElement) element).getReturnType());
        }
        if (bVar.f88223c == null && !bVar.f88222b) {
            throw new RuntimeException("Cannot get type of " + element.getSimpleName());
        }
        if (annotationMirror == null) {
            Iterator it3 = ((List) b(annotationMirror2, HmInputMappingContent.FIELD_VALUE).getValue()).iterator();
            while (it3.hasNext()) {
                bVar.f88227g.add(new ClassDecl((String) ((AnnotationValue) it3.next()).getValue(), ClassDecl.DeclKind.STRING_REFERENCE));
            }
        } else {
            AnnotationValue annotationValueB = b(annotationMirror, HmInputMappingContent.FIELD_VALUE);
            List list = annotationMirror2 != null ? (List) b(annotationMirror2, HmInputMappingContent.FIELD_VALUE).getValue() : null;
            if (annotationValueB != null) {
                com.xinzhu.haunted.a.c("av class type: " + annotationValueB.getValue().getClass().getCanonicalName());
                Iterator it4 = ((List) annotationValueB.getValue()).iterator();
                while (it4.hasNext()) {
                    TypeMirror typeMirror = (TypeMirror) ((AnnotationValue) it4.next()).getValue();
                    if (!typeMirror.toString().equals(la.a.class.getCanonicalName())) {
                        bVar.f88227g.add(c(typeMirror));
                    } else {
                        if (list == null || i10 >= list.size()) {
                            throw new RuntimeException("Strings and string stubs mismatch on " + element.getSimpleName());
                        }
                        bVar.f88227g.add(new ClassDecl((String) ((Attribute.Constant) list.get(i10)).value, ClassDecl.DeclKind.STRING_REFERENCE));
                        i10++;
                    }
                }
            }
            AnnotationValue annotationValueB2 = b(annotationMirror, "throwz");
            if (annotationValueB2 != null) {
                Iterator it5 = ((List) annotationValueB2.getValue()).iterator();
                while (it5.hasNext()) {
                    bVar.f88228h.add(c((TypeMirror) ((AnnotationValue) it5.next()).getValue()));
                }
            }
        }
        if (bVar.f88222b) {
            this.f88211e.add(bVar);
        } else {
            this.f88212f.add(bVar);
        }
    }

    public static HauntedScanner k(Element element) {
        return l(element, h(element), null);
    }

    private static HauntedScanner l(Element element, String str, HauntedScanner hauntedScanner) {
        if (element.getKind() != ElementKind.CLASS) {
            throw new RuntimeException("root must be a class!");
        }
        com.xinzhu.haunted.a.c("root element " + element + " type " + element.getKind());
        HauntedScanner hauntedScanner2 = new HauntedScanner(element, str, hauntedScanner);
        com.xinzhu.haunted.a.c("root over");
        return hauntedScanner2;
    }

    public static class ClassDecl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f88215a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TypeMirror f88216b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        DeclKind f88217c;

        public enum DeclKind {
            DIRECT_REFERENCE,
            STRING_REFERENCE,
            EGO_REFERENCE
        }

        public ClassDecl(String str, DeclKind declKind) {
            this.f88215a = str;
            this.f88217c = declKind;
        }

        public boolean a() {
            if (this.f88217c != DeclKind.DIRECT_REFERENCE) {
                return false;
            }
            return this.f88216b.toString().equals("java.lang.Boolean") || this.f88216b.toString().equals("boolean");
        }

        public boolean b() {
            if (this.f88217c != DeclKind.DIRECT_REFERENCE) {
                return false;
            }
            return this.f88216b.isNumeric();
        }

        public boolean c() {
            if (this.f88217c != DeclKind.DIRECT_REFERENCE) {
                return false;
            }
            return this.f88216b.toString().equals("java.lang.Void") || this.f88216b.toString().equals("void");
        }

        public ClassDecl(TypeMirror typeMirror) {
            this.f88216b = typeMirror;
            this.f88217c = DeclKind.DIRECT_REFERENCE;
        }
    }
}
