package com.xinzhu.handler;

import com.google.auto.service.AutoService;
import com.join.mgps.Util.o0;
import com.squareup.javapoet.ClassName;
import com.squareup.javapoet.JavaFile;
import com.squareup.javapoet.MethodSpec;
import com.squareup.javapoet.TypeSpec;
import com.xinzhu.overmind.annotation.HandlerClass;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.processing.AbstractProcessor;
import javax.annotation.processing.Filer;
import javax.annotation.processing.ProcessingEnvironment;
import javax.annotation.processing.Processor;
import javax.annotation.processing.RoundEnvironment;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeElement;

/* JADX INFO: loaded from: classes8.dex */
@AutoService({Processor.class})
public class a extends AbstractProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Filer f88199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Set<Element> f88200b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f88201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f88202d;

    private TypeSpec a() {
        if (!this.f88202d.endsWith("Base")) {
            throw new RuntimeException("Handler class must end with Base! " + this.f88202d);
        }
        String str = this.f88202d;
        TypeSpec.Builder builderAddModifiers = TypeSpec.classBuilder(str.substring(0, str.length() - 4)).superclass(ClassName.bestGuess(this.f88201c + o0.f49827a + this.f88202d)).addModifiers(new Modifier[]{Modifier.PUBLIC});
        MethodSpec.Builder builderAddModifiers2 = MethodSpec.methodBuilder("addAllHandlers").addModifiers(new Modifier[]{Modifier.PROTECTED});
        Iterator<Element> it2 = this.f88200b.iterator();
        while (it2.hasNext()) {
            builderAddModifiers2.addStatement("addHandler(new $T())", new Object[]{it2.next().asType()});
        }
        builderAddModifiers.addMethod(builderAddModifiers2.build());
        return builderAddModifiers.build();
    }

    private void e(Element element) {
        Element enclosingElement = element;
        while (enclosingElement.getKind() != ElementKind.PACKAGE) {
            enclosingElement = enclosingElement.getEnclosingElement();
        }
        this.f88201c = ((PackageElement) enclosingElement).getQualifiedName().toString();
        this.f88202d = element.getSimpleName().toString();
        for (Element element2 : element.getEnclosedElements()) {
            if (element2 instanceof TypeElement) {
                this.f88200b.add(element2);
            }
        }
    }

    public Set<String> b() {
        HashSet hashSet = new HashSet();
        hashSet.add(HandlerClass.class.getCanonicalName());
        return hashSet;
    }

    public SourceVersion c() {
        return SourceVersion.latestSupported();
    }

    public synchronized void d(ProcessingEnvironment processingEnvironment) {
        super.init(processingEnvironment);
        this.f88199a = processingEnvironment.getFiler();
        com.xinzhu.haunted.a.d(processingEnvironment.getMessager());
    }

    public boolean f(Set<? extends TypeElement> set, RoundEnvironment roundEnvironment) {
        com.xinzhu.haunted.a.c("annotations size--->" + set.size());
        Set<Element> elementsAnnotatedWith = roundEnvironment.getElementsAnnotatedWith(HandlerClass.class);
        if (elementsAnnotatedWith.isEmpty()) {
            com.xinzhu.haunted.a.c("Empty root element.");
            return false;
        }
        for (Element element : elementsAnnotatedWith) {
            this.f88200b.clear();
            e(element);
            try {
                JavaFile.builder(this.f88201c, a()).addFileComment("AUTO GENERATED FILE, DO NOT MODIFY", new Object[0]).build().writeTo(this.f88199a);
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return true;
    }
}
