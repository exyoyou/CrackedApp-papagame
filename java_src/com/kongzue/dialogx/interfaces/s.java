package com.kongzue.dialogx.interfaces;

import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.viewbinding.ViewBinding;
import com.kongzue.dialogx.R;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public abstract class s<D, VB extends ViewBinding> extends r<D> {
    protected VB binding;

    public s(VB vb2) {
        super(vb2.getRoot());
        this.binding = vb2;
    }

    private static View d(ViewBinding viewBinding) {
        if (viewBinding == null) {
            return new View(BaseDialog.getContext());
        }
        View root = viewBinding.getRoot();
        root.setTag(R.id.dialogx_view_binding_tag_key, viewBinding);
        return root;
    }

    private ViewBinding e() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof ParameterizedType) {
            return f((Class) ((ParameterizedType) genericSuperclass).getActualTypeArguments()[1]);
        }
        BaseDialog.r("DialogX: OnBindingView初始化异常，若要使用无参构建，必须指定ViewBinding泛型");
        return null;
    }

    private static ViewBinding f(Class cls) {
        try {
            return (ViewBinding) cls.getMethod("inflate", LayoutInflater.class).invoke(null, LayoutInflater.from(BaseDialog.getContext()));
        } catch (Exception e10) {
            BaseDialog.r("DialogX: OnBindingView初始化异常，未能根据bindingClass找到对应的ViewBinding，请尝试指定ViewBinding实例");
            e10.printStackTrace();
            return null;
        }
    }

    private static ViewBinding g(String str) {
        try {
            return f(Class.forName(str));
        } catch (ClassNotFoundException e10) {
            BaseDialog.r("DialogX: OnBindingView初始化异常，未能根据bindingClassName：" + str + "找到对应的ViewBinding，请尝试指定ViewBinding实例");
            throw new RuntimeException(e10);
        }
    }

    @Override // com.kongzue.dialogx.interfaces.r
    public void onBind(D d10, View view) {
        onBind(d10, view, this.binding);
    }

    public abstract void onBind(D d10, View view, VB vb2);

    public s() {
        super((View) null);
        setCustomView(d(e()));
        this.binding = (VB) getCustomView().getTag(R.id.dialogx_view_binding_tag_key);
    }

    public s(Class cls) {
        super(d(f(cls)));
        this.binding = (VB) getCustomView().getTag(R.id.dialogx_view_binding_tag_key);
    }

    public s(String str) {
        super(d(g(str)));
        this.binding = (VB) getCustomView().getTag(R.id.dialogx_view_binding_tag_key);
    }

    public s(int i10) {
        super(i10);
    }

    public s(int i10, boolean z10) {
        super(i10, z10);
    }

    public s(View view) {
        super(view);
    }

    public s(Fragment fragment) {
        super(fragment);
    }

    public s(android.app.Fragment fragment) {
        super(fragment);
    }
}
