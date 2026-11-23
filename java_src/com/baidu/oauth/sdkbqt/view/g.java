package com.baidu.oauth.sdkbqt.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.baidu.oauth.sdkbqt.R;

/* JADX INFO: loaded from: classes6.dex */
public class g extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ListView f8280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f8281b;

    public interface b {
        void a(a aVar);
    }

    public g(Context context) {
        super(context);
        a();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawableResource(R.color.bd_oauth_sdk_transparent);
        setContentView(R.layout.layout_bd_oauth_sdk_dialog_list);
        ListView listView = (ListView) findViewById(R.id.sapi_dialog_list_container);
        this.f8280a = listView;
        listView.setAdapter((ListAdapter) this.f8281b);
        this.f8280a.setOnItemClickListener(new h(this));
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.horizontalMargin = 0.1f;
        attributes.height = -2;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawableResource(R.color.bd_oauth_sdk_transparent);
    }

    private void a() {
        this.f8281b = new i(getContext());
        requestWindowFeature(1);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f8282a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f8283b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public b f8284c;

        public a(String str, b bVar) {
            this.f8282a = str;
            this.f8284c = bVar;
        }

        public Object a() {
            return this.f8283b;
        }

        public a(String str, b bVar, Object obj) {
            this.f8282a = str;
            this.f8284c = bVar;
            this.f8283b = obj;
        }
    }

    public g(Context context, int i10) {
        super(context, i10);
        a();
    }

    public void a(a aVar) {
        this.f8281b.a(aVar);
    }

    protected g(Context context, boolean z10, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z10, onCancelListener);
        a();
    }
}
