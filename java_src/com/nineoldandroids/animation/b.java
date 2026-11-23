package com.nineoldandroids.animation;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.animation.AnimationUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f76186b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f76188d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f76190f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f76191g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f76192h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f76193i = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f76194j = 4;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f76195k = 5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f76196l = 6;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f76197m = 7;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f76198n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f76199o = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f76185a = {R.attr.ordering};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f76187c = {R.attr.propertyName};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f76189e = {R.attr.interpolator, R.attr.duration, R.attr.startOffset, R.attr.repeatCount, R.attr.repeatMode, R.attr.valueFrom, R.attr.valueTo, R.attr.valueType};

    private static a a(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return b(context, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0);
    }

    private static a b(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, d dVar, int i10) throws XmlPullParserException, IOException {
        int i11;
        q qVarD;
        l lVarE;
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = null;
        a aVar = null;
        while (true) {
            int next = xmlPullParser.next();
            i11 = 0;
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("objectAnimator")) {
                    lVarE = e(context, attributeSet);
                } else if (name.equals("animator")) {
                    qVarD = d(context, attributeSet, null);
                } else {
                    if (!name.equals("set")) {
                        throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                    }
                    d dVar2 = new d();
                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f76185a);
                    TypedValue typedValue = new TypedValue();
                    typedArrayObtainStyledAttributes.getValue(0, typedValue);
                    b(context, xmlPullParser, attributeSet, dVar2, typedValue.type == 16 ? typedValue.data : 0);
                    typedArrayObtainStyledAttributes.recycle();
                    aVar = dVar2;
                }
                if (dVar != null) {
                    aVar = qVarD;
                    if (arrayList == null) {
                        aVar = lVarE;
                        arrayList = new ArrayList();
                    }
                    aVar = lVarE;
                    arrayList.add(aVar);
                } else {
                    aVar = qVarD;
                    aVar = lVarE;
                }
            }
        }
        if (dVar != null && arrayList != null) {
            a[] aVarArr = new a[arrayList.size()];
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                aVarArr[i11] = (a) it2.next();
                i11++;
            }
            if (i10 == 0) {
                dVar.D(aVarArr);
            } else {
                dVar.B(aVarArr);
            }
        }
        return aVar;
    }

    public static a c(Context context, int i10) throws Resources.NotFoundException {
        XmlResourceParser animation = null;
        try {
            try {
                animation = context.getResources().getAnimation(i10);
                a aVarA = a(context, animation);
                if (animation != null) {
                    animation.close();
                }
                return aVarA;
            } catch (IOException e10) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException.initCause(e10);
                throw notFoundException;
            } catch (XmlPullParserException e11) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i10));
                notFoundException2.initCause(e11);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (animation != null) {
                animation.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0127  */
    /* JADX WARN: Code duplicated, block: B:82:0x0135  */
    /* JADX WARN: Code duplicated, block: B:85:0x0143  */
    private static q d(Context context, AttributeSet attributeSet, q qVar) throws Resources.NotFoundException {
        int i10;
        int color;
        int dimension;
        int dimension2;
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f76189e);
        long j10 = typedArrayObtainStyledAttributes.getInt(1, 0);
        long j11 = typedArrayObtainStyledAttributes.getInt(2, 0);
        int i11 = typedArrayObtainStyledAttributes.getInt(7, 0);
        q qVar2 = qVar == null ? new q() : qVar;
        boolean z10 = i11 == 0;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(5);
        boolean z11 = typedValuePeekValue != null;
        int i12 = z11 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(6);
        boolean z12 = typedValuePeekValue2 != null;
        int i13 = z12 ? typedValuePeekValue2.type : 0;
        if ((z11 && i12 >= 28 && i12 <= 31) || (z12 && i13 >= 28 && i13 <= 31)) {
            qVar2.e0(new e());
            z10 = false;
        }
        if (z10) {
            if (z11) {
                float dimension3 = i12 == 5 ? typedArrayObtainStyledAttributes.getDimension(5, 0.0f) : typedArrayObtainStyledAttributes.getFloat(5, 0.0f);
                if (z12) {
                    qVar2.f0(dimension3, i13 == 5 ? typedArrayObtainStyledAttributes.getDimension(6, 0.0f) : typedArrayObtainStyledAttributes.getFloat(6, 0.0f));
                } else {
                    qVar2.f0(dimension3);
                }
            } else {
                qVar2.f0(i13 == 5 ? typedArrayObtainStyledAttributes.getDimension(6, 0.0f) : typedArrayObtainStyledAttributes.getFloat(6, 0.0f));
            }
        } else {
            if (!z11) {
                if (z12) {
                    if (i13 == 5) {
                        color = (int) typedArrayObtainStyledAttributes.getDimension(6, 0.0f);
                        i10 = 0;
                    } else if (i13 < 28 || i13 > 31) {
                        i10 = 0;
                        color = typedArrayObtainStyledAttributes.getInt(6, 0);
                    } else {
                        i10 = 0;
                        color = typedArrayObtainStyledAttributes.getColor(6, 0);
                    }
                    qVar2.h0(color);
                }
                qVar2.l(j10);
                qVar2.n(j11);
                if (typedArrayObtainStyledAttributes.hasValue(3)) {
                    qVar2.j0(typedArrayObtainStyledAttributes.getInt(3, i10));
                }
                if (typedArrayObtainStyledAttributes.hasValue(4)) {
                    qVar2.k0(typedArrayObtainStyledAttributes.getInt(4, 1));
                }
                resourceId = typedArrayObtainStyledAttributes.getResourceId(i10, i10);
                if (resourceId > 0) {
                    qVar2.m(AnimationUtils.loadInterpolator(context, resourceId));
                }
                typedArrayObtainStyledAttributes.recycle();
                return qVar2;
            }
            if (i12 == 5) {
                dimension = (int) typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
            } else {
                dimension = (i12 < 28 || i12 > 31) ? typedArrayObtainStyledAttributes.getInt(5, 0) : typedArrayObtainStyledAttributes.getColor(5, 0);
            }
            if (z12) {
                if (i13 == 5) {
                    dimension2 = (int) typedArrayObtainStyledAttributes.getDimension(6, 0.0f);
                } else {
                    dimension2 = (i13 < 28 || i13 > 31) ? typedArrayObtainStyledAttributes.getInt(6, 0) : typedArrayObtainStyledAttributes.getColor(6, 0);
                }
                qVar2.h0(dimension, dimension2);
            } else {
                qVar2.h0(dimension);
            }
        }
        i10 = 0;
        qVar2.l(j10);
        qVar2.n(j11);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            qVar2.j0(typedArrayObtainStyledAttributes.getInt(3, i10));
        }
        if (typedArrayObtainStyledAttributes.hasValue(4)) {
            qVar2.k0(typedArrayObtainStyledAttributes.getInt(4, 1));
        }
        resourceId = typedArrayObtainStyledAttributes.getResourceId(i10, i10);
        if (resourceId > 0) {
            qVar2.m(AnimationUtils.loadInterpolator(context, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
        return qVar2;
    }

    private static l e(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        l lVar = new l();
        d(context, attributeSet, lVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f76187c);
        lVar.A0(typedArrayObtainStyledAttributes.getString(0));
        typedArrayObtainStyledAttributes.recycle();
        return lVar;
    }
}
