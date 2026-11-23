package com.byakv.q;

import com.byazt.bj.a;
import com.byazt.bj.da;
import com.byazt.bj.n;
import com.byazt.bj.sp;
import com.byazt.bj.tt;
import com.byazt.bj.u;
import com.byazt.bj.uj;
import com.byazt.bj.ve;
import com.byazt.bj.x;
import com.byazt.bj.yp;
import com.byazt.bx.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@c
public abstract class YogaNodeJNIBase extends da implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f11363a;

    @c
    public float[] arr;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11364c;

    @c
    public int mLayoutDirection;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public tt f11365n;
    public boolean sp;
    public YogaNodeJNIBase tt;
    public sp uj;
    public List<YogaNodeJNIBase> ve;

    private YogaNodeJNIBase(long j10) {
        this.arr = null;
        this.mLayoutDirection = 0;
        this.sp = true;
        if (j10 == 0) {
            throw new IllegalStateException("Failed to allocate native memory");
        }
        this.f11364c = j10;
    }

    @c
    private final long replaceChild(YogaNodeJNIBase yogaNodeJNIBase, int i10) {
        List<YogaNodeJNIBase> list = this.ve;
        if (list == null) {
            throw new IllegalStateException("Cannot replace child. YogaNode does not have children");
        }
        list.remove(i10);
        this.ve.add(i10, yogaNodeJNIBase);
        yogaNodeJNIBase.tt = this;
        return yogaNodeJNIBase.f11364c;
    }

    @Override // com.byazt.bj.da
    public void a(float f10) {
        YogaNative.jni_YGNodeStyleSetHeightJNI(this.f11364c, f10);
    }

    @c
    public final float baseline(float f10, float f11) {
        return this.f11365n.c(this, f10, f11);
    }

    @Override // com.byazt.bj.da
    public void da(float f10) {
        YogaNative.jni_YGNodeStyleSetMaxWidthJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public void i(float f10) {
        YogaNative.jni_YGNodeStyleSetMinHeightJNI(this.f11364c, f10);
    }

    @c
    public final long measure(float f10, int i10, float f11, int i11) {
        if (t()) {
            return this.uj.c(this, f10, x.c(i10), f11, x.c(i11));
        }
        throw new RuntimeException("Measure function isn't defined!");
    }

    @Override // com.byazt.bj.da
    public void n(float f10) {
        YogaNative.jni_YGNodeStyleSetWidthPercentJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    /* JADX INFO: renamed from: sl, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase tt() {
        return this.tt;
    }

    @Override // com.byazt.bj.da
    public void sp(float f10) {
        YogaNative.jni_YGNodeStyleSetHeightPercentJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public void t(float f10) {
        YogaNative.jni_YGNodeStyleSetAspectRatioJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase tt(int i10) {
        List<YogaNodeJNIBase> list = this.ve;
        if (list == null) {
            throw new IllegalStateException("Trying to remove a child of a YogaNode that does not have children");
        }
        YogaNodeJNIBase yogaNodeJNIBaseRemove = list.remove(i10);
        yogaNodeJNIBaseRemove.tt = null;
        YogaNative.jni_YGNodeRemoveChildJNI(this.f11364c, yogaNodeJNIBaseRemove.f11364c);
        return yogaNodeJNIBaseRemove;
    }

    @Override // com.byazt.bj.da
    /* JADX INFO: renamed from: ve, reason: merged with bridge method [inline-methods] */
    public YogaNodeJNIBase c(int i10) {
        List<YogaNodeJNIBase> list = this.ve;
        if (list != null) {
            return list.get(i10);
        }
        throw new IllegalStateException("YogaNode does not have children");
    }

    @Override // com.byazt.bj.da
    public void x(float f10) {
        YogaNative.jni_YGNodeStyleSetMinWidthJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public float a() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[3];
        }
        return 0.0f;
    }

    @Override // com.byazt.bj.da
    public int c() {
        List<YogaNodeJNIBase> list = this.ve;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // com.byazt.bj.da
    public Object da() {
        return this.f11363a;
    }

    @Override // com.byazt.bj.da
    public float i() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[2];
        }
        return 0.0f;
    }

    @Override // com.byazt.bj.da
    public void n() {
        YogaNative.jni_YGNodeStyleSetHeightAutoJNI(this.f11364c);
    }

    @Override // com.byazt.bj.da
    public void sl(float f10) {
        YogaNative.jni_YGNodeStyleSetMaxHeightJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public float sp() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[4];
        }
        return 0.0f;
    }

    public boolean t() {
        return this.uj != null;
    }

    @Override // com.byazt.bj.da
    public float x() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[1];
        }
        return 0.0f;
    }

    @Override // com.byazt.bj.da
    public void c(da daVar, int i10) {
        if (daVar instanceof YogaNodeJNIBase) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) daVar;
            if (yogaNodeJNIBase.tt == null) {
                if (this.ve == null) {
                    this.ve = new ArrayList(4);
                }
                this.ve.add(i10, yogaNodeJNIBase);
                yogaNodeJNIBase.tt = this;
                YogaNative.jni_YGNodeInsertChildJNI(this.f11364c, yogaNodeJNIBase.f11364c, i10);
                return;
            }
            throw new IllegalStateException("Child already has a parent, it must be removed first.");
        }
    }

    @Override // com.byazt.bj.da
    public void tt(com.byazt.bj.c cVar) {
        YogaNative.jni_YGNodeStyleSetAlignSelfJNI(this.f11364c, cVar.c());
    }

    @Override // com.byazt.bj.da
    public void tt(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexShrinkJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public void ve(com.byazt.bj.c cVar) {
        YogaNative.jni_YGNodeStyleSetAlignContentJNI(this.f11364c, cVar.c());
    }

    @Override // com.byazt.bj.da
    public void tt(uj ujVar, float f10) {
        YogaNative.jni_YGNodeStyleSetPaddingJNI(this.f11364c, ujVar.c(), f10);
    }

    @Override // com.byazt.bj.da
    public void ve(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexBasisJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public void uj(float f10) {
        YogaNative.jni_YGNodeStyleSetWidthJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public void ve() {
        YogaNative.jni_YGNodeStyleSetFlexBasisAutoJNI(this.f11364c);
    }

    public YogaNodeJNIBase() {
        this(YogaNative.jni_YGNodeNewJNI());
    }

    @Override // com.byazt.bj.da
    public void uj() {
        YogaNative.jni_YGNodeStyleSetWidthAutoJNI(this.f11364c);
    }

    @Override // com.byazt.bj.da
    public void ve(uj ujVar, float f10) {
        YogaNative.jni_YGNodeStyleSetPositionJNI(this.f11364c, ujVar.c(), f10);
    }

    @Override // com.byazt.bj.da
    public int c(da daVar) {
        List<YogaNodeJNIBase> list = this.ve;
        if (list == null) {
            return -1;
        }
        return list.indexOf(daVar);
    }

    @Override // com.byazt.bj.da
    public void c(float f10, float f11) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            List<YogaNodeJNIBase> list = ((YogaNodeJNIBase) arrayList.get(i10)).ve;
            if (list != null) {
                Iterator<YogaNodeJNIBase> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
        }
        YogaNodeJNIBase[] yogaNodeJNIBaseArr = (YogaNodeJNIBase[]) arrayList.toArray(new YogaNodeJNIBase[arrayList.size()]);
        long[] jArr = new long[yogaNodeJNIBaseArr.length];
        for (int i11 = 0; i11 < yogaNodeJNIBaseArr.length; i11++) {
            jArr[i11] = yogaNodeJNIBaseArr[i11].f11364c;
        }
        YogaNative.jni_YGNodeCalculateLayoutJNI(this.f11364c, f10, f11, jArr, yogaNodeJNIBaseArr);
    }

    @Override // com.byazt.bj.da
    public void c(ve veVar) {
        YogaNative.jni_YGNodeStyleSetDirectionJNI(this.f11364c, veVar.c());
    }

    @Override // com.byazt.bj.da
    public void c(n nVar) {
        YogaNative.jni_YGNodeStyleSetFlexDirectionJNI(this.f11364c, nVar.c());
    }

    @Override // com.byazt.bj.da
    public void c(a aVar) {
        YogaNative.jni_YGNodeStyleSetJustifyContentJNI(this.f11364c, aVar.c());
    }

    @Override // com.byazt.bj.da
    public void c(com.byazt.bj.c cVar) {
        YogaNative.jni_YGNodeStyleSetAlignItemsJNI(this.f11364c, cVar.c());
    }

    @Override // com.byazt.bj.da
    public void c(u uVar) {
        YogaNative.jni_YGNodeStyleSetPositionTypeJNI(this.f11364c, uVar.c());
    }

    @Override // com.byazt.bj.da
    public void c(yp ypVar) {
        YogaNative.jni_YGNodeStyleSetFlexWrapJNI(this.f11364c, ypVar.c());
    }

    @Override // com.byazt.bj.da
    public void c(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexGrowJNI(this.f11364c, f10);
    }

    @Override // com.byazt.bj.da
    public void c(uj ujVar, float f10) {
        YogaNative.jni_YGNodeStyleSetMarginJNI(this.f11364c, ujVar.c(), f10);
    }

    @Override // com.byazt.bj.da
    public void c(sp spVar) {
        this.uj = spVar;
        YogaNative.jni_YGNodeSetHasMeasureFuncJNI(this.f11364c, spVar != null);
    }

    @Override // com.byazt.bj.da
    public void c(boolean z10) {
        YogaNative.jni_YGNodeSetAlwaysFormsContainingBlockJNI(this.f11364c, z10);
    }

    @Override // com.byazt.bj.da
    public void c(Object obj) {
        this.f11363a = obj;
    }
}
