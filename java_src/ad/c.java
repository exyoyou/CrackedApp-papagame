package ad;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import org.aspectj.lang.reflect.AdviceKind;
import org.aspectj.lang.reflect.DeclareAnnotation;
import org.aspectj.lang.reflect.NoSuchAdviceException;
import org.aspectj.lang.reflect.NoSuchPointcutException;

/* JADX INFO: loaded from: classes4.dex */
public interface c<T> extends Type, AnnotatedElement {
    v A(String str) throws NoSuchPointcutException;

    T[] B();

    Constructor[] C();

    Type D();

    u E();

    n F(c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    v[] G();

    Class<T> H();

    n[] I();

    DeclareAnnotation[] J();

    v[] K();

    boolean L();

    boolean M();

    j[] N();

    Constructor O(c<?>... cVarArr) throws NoSuchMethodException;

    q P(String str, c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    a Q(String str) throws NoSuchAdviceException;

    Method R(String str, c<?>... cVarArr) throws NoSuchMethodException;

    c<?> S();

    Constructor T(c<?>... cVarArr) throws NoSuchMethodException;

    a[] U(AdviceKind... adviceKindArr);

    Field V(String str) throws NoSuchFieldException;

    n W(c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    Method X();

    boolean Y();

    a Z(String str) throws NoSuchAdviceException;

    c<?> a();

    c<?> a0();

    h[] b0();

    int d();

    c<?>[] e();

    Field f(String str) throws NoSuchFieldException;

    n[] g();

    Constructor[] getConstructors();

    Field[] getFields();

    c<?>[] getInterfaces();

    Method[] getMethods();

    String getName();

    Package getPackage();

    TypeVariable<Class<T>>[] getTypeParameters();

    p h(String str, c<?> cVar) throws NoSuchFieldException;

    boolean i();

    boolean isArray();

    boolean isInstance(Object obj);

    boolean isInterface();

    boolean isPrimitive();

    v j(String str) throws NoSuchPointcutException;

    a[] k(AdviceKind... adviceKindArr);

    c<?>[] l();

    Method m(String str, c<?>... cVarArr) throws NoSuchMethodException;

    Field[] n();

    k[] o();

    boolean p();

    Constructor q();

    p[] r();

    q[] s();

    boolean t();

    i[] u();

    Method[] v();

    q w(String str, c<?> cVar, c<?>... cVarArr) throws NoSuchMethodException;

    p[] x();

    p y(String str, c<?> cVar) throws NoSuchFieldException;

    q[] z();
}
