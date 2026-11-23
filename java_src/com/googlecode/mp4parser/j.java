package com.googlecode.mp4parser;

import org.aspectj.lang.NoAspectBoundException;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

/* JADX INFO: loaded from: classes5.dex */
@Aspect
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static /* synthetic */ Throwable f33770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ j f33771b = null;

    static {
        try {
            a();
        } catch (Throwable th) {
            f33770a = th;
        }
    }

    private static /* synthetic */ void a() {
        f33771b = new j();
    }

    public static j b() {
        j jVar = f33771b;
        if (jVar != null) {
            return jVar;
        }
        throw new NoAspectBoundException("com.googlecode.mp4parser.RequiresParseDetailAspect", f33770a);
    }

    public static boolean d() {
        return f33771b != null;
    }

    @Before("this(com.googlecode.mp4parser.AbstractBox) && ((execution(public * * (..)) && !( execution(* parseDetails()) || execution(* getNumOfBytesToFirstChild()) || execution(* getType()) || execution(* isParsed()) || execution(* getHeader(*)) || execution(* parse()) || execution(* getBox(*)) || execution(* getSize()) || execution(* getOffset()) || execution(* parseDetails()) || execution(* _parseDetails(*)) || execution(* parse(*,*,*,*)) || execution(* getIsoFile()) || execution(* getParent()) || execution(* setParent(*)) || execution(* getUserType()) || execution(* setUserType(*))) && !@annotation(com.googlecode.mp4parser.annotations.DoNotParseDetail)) || @annotation(com.googlecode.mp4parser.annotations.ParseDetail))")
    public void c(org.aspectj.lang.c cVar) {
        if (cVar.getTarget() instanceof a) {
            if (((a) cVar.getTarget()).m()) {
                return;
            }
            ((a) cVar.getTarget()).o();
        } else {
            throw new RuntimeException("Only methods in subclasses of " + a.class.getName() + " can  be annotated with ParseDetail");
        }
    }
}
