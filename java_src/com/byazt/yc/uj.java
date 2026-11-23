package com.byazt.yc;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.text.TextUtils;
import com.byazt.cd.x;
import com.byazt.nr.m;
import com.byazt.rb.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1136, 15})
public class uj extends c {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<Keyframe> f22164x;

    /* JADX INFO: renamed from: com.byazt.yc.uj$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 1136, 99})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f22165c;

        static {
            int[] iArr = new int[n.values().length];
            f22165c = iArr;
            try {
                iArr[n.TRANSLATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22165c[n.SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public uj(Context context, com.byazt.xj.ve veVar, String str, Map<Float, String> map) {
        super(context, veVar, str, map);
        this.f22164x = new ArrayList();
    }

    @Override // com.byazt.yc.c
    public TypeEvaluator a() {
        return new FloatEvaluator();
    }

    @Override // com.byazt.yc.c
    public void c(float f10, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() != 2) {
                return;
            }
            float fOptDouble = (float) jSONArray.optDouble(0);
            float fOptDouble2 = (float) jSONArray.optDouble(1);
            if (this.uj == n.TRANSLATE) {
                fOptDouble = x.c(this.f22161c, fOptDouble);
                fOptDouble2 = x.c(this.f22161c, fOptDouble2);
            }
            this.f22162n.add(Keyframe.ofFloat(f10, fOptDouble));
            this.f22164x.add(Keyframe.ofFloat(f10, fOptDouble2));
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.yc.c
    public List<PropertyValuesHolder> n() {
        String strTt = this.uj.tt();
        uj();
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(strTt + "X", (Keyframe[]) this.f22162n.toArray(new Keyframe[0]));
        this.f22160a.add(propertyValuesHolderOfKeyframe);
        PropertyValuesHolder propertyValuesHolderOfKeyframe2 = PropertyValuesHolder.ofKeyframe(strTt + "Y", (Keyframe[]) this.f22164x.toArray(new Keyframe[0]));
        this.f22160a.add(propertyValuesHolderOfKeyframe2);
        TypeEvaluator typeEvaluatorA = a();
        if (typeEvaluatorA != null) {
            propertyValuesHolderOfKeyframe.setEvaluator(typeEvaluatorA);
            propertyValuesHolderOfKeyframe2.setEvaluator(typeEvaluatorA);
        }
        return this.f22160a;
    }

    @Override // com.byazt.yc.c
    public void tt() {
        Keyframe keyframeOfFloat;
        Keyframe keyframeOfFloat2;
        int i10 = AnonymousClass1.f22165c[this.uj.ordinal()];
        if (i10 == 1) {
            keyframeOfFloat = Keyframe.ofFloat(0.0f, this.sp.u());
            keyframeOfFloat2 = Keyframe.ofFloat(0.0f, this.sp.yp());
        } else if (i10 != 2) {
            keyframeOfFloat = null;
            keyframeOfFloat2 = null;
        } else {
            keyframeOfFloat = Keyframe.ofFloat(0.0f, this.sp.z());
            keyframeOfFloat2 = Keyframe.ofFloat(0.0f, this.sp.m());
        }
        if (keyframeOfFloat != null) {
            this.f22162n.add(keyframeOfFloat);
        }
        if (keyframeOfFloat2 != null) {
            this.f22164x.add(keyframeOfFloat2);
        }
    }
}
