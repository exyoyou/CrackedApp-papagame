package com.haima.hmcp.widgets;

import android.content.Context;
import com.haima.hmcp.IHmcpVideoView;
import com.haima.hmcp.listeners.IViewFactory;

/* JADX INFO: loaded from: classes5.dex */
abstract class BaseVideoViewFactory implements IViewFactory {
    BaseVideoViewFactory() {
    }

    @Override // com.haima.hmcp.listeners.IViewFactory
    public IHmcpVideoView getHmcpVideoView(Context context, String str, boolean z10) {
        return getVideoView(context, str);
    }

    abstract IHmcpVideoView getVideoView(Context context, String str);
}
