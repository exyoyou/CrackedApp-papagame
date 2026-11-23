package com.join.kotlin;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.databinding.ej;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.customview.e0;
import com.join.mgps.dto.ExtBean;
import com.psk.kotlin.ext.CommonExtKt;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/EverdayNewGameActivity;", "Lcom/BaseAppCompatActivity;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewActivityBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewActivityBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewActivityBinding;)V", "adapter", "Lcom/join/mgps/customview/NavigationAdapter;", "getAdapter", "()Lcom/join/mgps/customview/NavigationAdapter;", "setAdapter", "(Lcom/join/mgps/customview/NavigationAdapter;)V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EverdayNewGameActivity extends BaseAppCompatActivity {
    public e0 adapter;
    public ej binding;

    @Nullable
    private ExtBean extBean;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(EverdayNewGameActivity everdayNewGameActivity) {
        everdayNewGameActivity.finish();
        return Unit.INSTANCE;
    }

    @NotNull
    public final e0 getAdapter() {
        e0 e0Var = this.adapter;
        if (e0Var != null) {
            return e0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @NotNull
    public final ej getBinding() {
        ej ejVar = this.binding;
        if (ejVar != null) {
            return ejVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        String stringExtra;
        super.onCreate(savedInstanceState);
        ej ejVarInflate = ej.inflate(LayoutInflater.from(this));
        Intrinsics.checkNotNullExpressionValue(ejVarInflate, "inflate(...)");
        setContentView(ejVarInflate.getRoot());
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("title")) == null) {
            stringExtra = "每日上新";
        }
        Intent intent2 = getIntent();
        Serializable serializableExtra = intent2 != null ? intent2.getSerializableExtra("extBean") : null;
        this.extBean = serializableExtra instanceof ExtBean ? (ExtBean) serializableExtra : null;
        ArrayList arrayListArrayListOf = CollectionsKt__CollectionsKt.arrayListOf(LocalGameActivity.ALL, "网游", "单机", "模拟器");
        ArrayList arrayList = new ArrayList();
        Iterator it2 = arrayListArrayListOf.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            Object next = it2.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            EverdayNewFragment everdayNewFragment = new EverdayNewFragment();
            Bundle bundle = new Bundle();
            bundle.putString("title", (String) next);
            bundle.putSerializable("extBean", this.extBean);
            everdayNewFragment.setArguments(bundle);
            arrayList.add(everdayNewFragment);
        }
        setAdapter(new e0(getSupportFragmentManager(), arrayList, arrayListArrayListOf));
        ejVarInflate.f37986e.setAdapter(getAdapter());
        getAdapter().notifyDataSetChanged();
        ejVarInflate.f37984c.setViewPager(ejVarInflate.f37986e);
        ImageView backImage = ejVarInflate.f37985d.f40464c;
        Intrinsics.checkNotNullExpressionValue(backImage, "backImage");
        CommonExtKt.onClick(backImage, new Function0() { // from class: com.join.kotlin.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return EverdayNewGameActivity.onCreate$lambda$0(this.f48613b);
            }
        });
        ejVarInflate.f37985d.f40466e.setText(stringExtra);
        ejVarInflate.f37986e.setOffscreenPageLimit(5);
        ejVarInflate.f37986e.setCurrentItem(getIntent().getIntExtra("default_position", 0));
    }

    public final void setAdapter(@NotNull e0 e0Var) {
        Intrinsics.checkNotNullParameter(e0Var, "<set-?>");
        this.adapter = e0Var;
    }

    public final void setBinding(@NotNull ej ejVar) {
        Intrinsics.checkNotNullParameter(ejVar, "<set-?>");
        this.binding = ejVar;
    }

    public final void setExtBean(@Nullable ExtBean extBean) {
        this.extBean = extBean;
    }
}
