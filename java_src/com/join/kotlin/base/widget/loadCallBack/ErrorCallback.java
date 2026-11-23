package com.join.kotlin.base.widget.loadCallBack;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.kingja.loadsir.callback.Callback;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0014J\u001c\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014¨\u0006\f"}, d2 = {"Lcom/join/kotlin/base/widget/loadCallBack/ErrorCallback;", "Lcom/kingja/loadsir/callback/Callback;", "<init>", "()V", "onCreateView", "", "onViewCreate", "", "context", "Landroid/content/Context;", "view", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ErrorCallback extends Callback {
    @Override // com.kingja.loadsir.callback.Callback
    protected int onCreateView() {
        return R.layout.layout_error;
    }

    @Override // com.kingja.loadsir.callback.Callback
    protected void onViewCreate(@Nullable final Context context, @Nullable View view) {
        Button button;
        super.onViewCreate(context, view);
        if (view == null || (button = (Button) view.findViewById(R.id.setNetwork)) == null) {
            return;
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.base.widget.loadCallBack.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UtilsMy.N3(context);
            }
        });
    }
}
