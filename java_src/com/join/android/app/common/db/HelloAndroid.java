package com.join.android.app.common.db;

import android.os.Bundle;
import android.widget.TextView;
import com.j256.ormlite.android.apptools.OrmLiteBaseActivity;

/* JADX INFO: loaded from: classes5.dex */
public class HelloAndroid extends OrmLiteBaseActivity<DatabaseHelper> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34443b = getClass().getSimpleName();

    private void a(String action, TextView tv2) {
    }

    @Override // com.j256.ormlite.android.apptools.OrmLiteBaseActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("creating ");
        sb2.append(getClass());
        sb2.append(" at ");
        sb2.append(System.currentTimeMillis());
        TextView textView = new TextView(this);
        a("onCreate", textView);
        setContentView(textView);
    }
}
