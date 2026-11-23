package com.bytedance.pangle.fragment;

import android.app.Application;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.byazt.bog.a;
import com.byazt.jna.c;
import com.byazt.jna.tt;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.transform.ZeusTransformUtils;
import com.bytedance.pangle.util.MethodUtils;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class ZeusFragmentV4 extends Fragment {
    public Application.ActivityLifecycleCallbacks callbacks = new tt(this);

    public ZeusFragmentV4() {
        c.c(getClass());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public Context getContext() {
        try {
            return ZeusTransformUtils.wrapperContext(super.getContext(), (String) MethodUtils.invokeStaticMethod(getClass(), "_GET_PLUGIN_PKG", new Object[0]));
        } catch (IllegalAccessException e10) {
            a.c(e10);
            return super.getContext();
        } catch (NoSuchMethodException e11) {
            a.c(e11);
            return super.getContext();
        } catch (InvocationTargetException e12) {
            a.c(e12);
            return super.getContext();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Zeus.getAppApplication().registerActivityLifecycleCallbacks(this.callbacks);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        Zeus.getAppApplication().unregisterActivityLifecycleCallbacks(this.callbacks);
        super.onDetach();
    }
}
