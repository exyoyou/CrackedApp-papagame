package com.android.dx.rop.cst;

import com.android.dx.rop.type.Prototype;
import com.android.dx.rop.type.Type;

/* JADX INFO: loaded from: classes7.dex */
public class CstCallSiteRef extends Constant {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f7327id;
    private final CstInvokeDynamic invokeDynamic;

    CstCallSiteRef(CstInvokeDynamic cstInvokeDynamic, int i10) {
        if (cstInvokeDynamic == null) {
            throw new NullPointerException("invokeDynamic == null");
        }
        this.invokeDynamic = cstInvokeDynamic;
        this.f7327id = i10;
    }

    @Override // com.android.dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        CstCallSiteRef cstCallSiteRef = (CstCallSiteRef) constant;
        int iCompareTo = this.invokeDynamic.compareTo((Constant) cstCallSiteRef.invokeDynamic);
        return iCompareTo != 0 ? iCompareTo : Integer.compare(this.f7327id, cstCallSiteRef.f7327id);
    }

    public CstCallSite getCallSite() {
        return this.invokeDynamic.getCallSite();
    }

    public Prototype getPrototype() {
        return this.invokeDynamic.getPrototype();
    }

    public Type getReturnType() {
        return this.invokeDynamic.getReturnType();
    }

    @Override // com.android.dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        return getCallSite().toHuman();
    }

    public String toString() {
        return getCallSite().toString();
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "CallSiteRef";
    }
}
