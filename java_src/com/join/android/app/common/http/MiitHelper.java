package com.join.android.app.common.http;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;

/* JADX INFO: loaded from: classes5.dex */
public class MiitHelper implements IIdentifierListener {
    private a _listener;

    public interface a {
        void a(@NonNull String ids);
    }

    public MiitHelper(a callback) {
        this._listener = callback;
    }

    private int CallFromReflect(Context cxt) {
        try {
            return MdidSdkHelper.InitSdk(cxt, true, this);
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // com.bun.miitmdid.interfaces.IIdentifierListener
    public void OnSupport(boolean isSupport, IdSupplier _supplier) {
        if (_supplier == null) {
            return;
        }
        String oaid = _supplier.getOAID();
        a aVar = this._listener;
        if (aVar != null) {
            aVar.a(oaid);
        }
    }

    public void getDeviceIds(Context cxt) {
        CallFromReflect(cxt);
    }
}
