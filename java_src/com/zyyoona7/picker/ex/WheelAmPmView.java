package com.zyyoona7.picker.ex;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.zyyoona7.picker.R;
import com.zyyoona7.wheel.WheelView;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0018B'\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004R*\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/zyyoona7/picker/ex/WheelAmPmView;", "Lcom/zyyoona7/wheel/WheelView;", "", "e1", "", "c1", "d1", "Lbb/a;", HmInputMappingContent.FIELD_VALUE, "v3", "Lbb/a;", "getAmPmTextHandler", "()Lbb/a;", "setAmPmTextHandler", "(Lbb/a;)V", "amPmTextHandler", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "a", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class WheelAmPmView extends WheelView {

    /* JADX INFO: renamed from: v3, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private bb.a amPmTextHandler;

    /* JADX INFO: renamed from: w3, reason: collision with root package name */
    private HashMap f90573w3;

    public static final class a implements bb.a {
        @Override // bb.a
        @NotNull
        public String a(@NotNull Context context) {
            String string = context.getString(R.string.time_picker_am);
            Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.time_picker_am)");
            return string;
        }

        @Override // bb.a
        @NotNull
        public String b(@NotNull Context context) {
            String string = context.getString(R.string.time_picker_pm);
            Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.time_picker_pm)");
            return string;
        }
    }

    @JvmOverloads
    public WheelAmPmView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final void e1() {
        ArrayList arrayList = new ArrayList();
        bb.a aVar = this.amPmTextHandler;
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        arrayList.add(aVar.a(context));
        bb.a aVar2 = this.amPmTextHandler;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        arrayList.add(aVar2.b(context2));
        setData(arrayList);
    }

    @Override // com.zyyoona7.wheel.WheelView
    public void b() {
        HashMap map = this.f90573w3;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.zyyoona7.wheel.WheelView
    public View c(int i10) {
        if (this.f90573w3 == null) {
            this.f90573w3 = new HashMap();
        }
        View view = (View) this.f90573w3.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90573w3.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    public final boolean c1() {
        return getSelectedPosition() == 0;
    }

    public final boolean d1() {
        return getSelectedPosition() == 1;
    }

    @NotNull
    public final bb.a getAmPmTextHandler() {
        return this.amPmTextHandler;
    }

    public final void setAmPmTextHandler(@NotNull bb.a aVar) {
        if (Intrinsics.areEqual(aVar, this.amPmTextHandler)) {
            return;
        }
        this.amPmTextHandler = aVar;
        e1();
    }

    @JvmOverloads
    public WheelAmPmView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ WheelAmPmView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public WheelAmPmView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.amPmTextHandler = new a();
        e1();
    }
}
