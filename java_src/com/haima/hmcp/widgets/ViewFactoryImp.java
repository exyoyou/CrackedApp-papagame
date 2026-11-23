package com.haima.hmcp.widgets;

import android.content.Context;
import com.haima.hmcp.IHmcpVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class ViewFactoryImp extends BaseVideoViewFactory {
    @Override // com.haima.hmcp.widgets.BaseVideoViewFactory, com.haima.hmcp.listeners.IViewFactory
    public /* bridge */ /* synthetic */ IHmcpVideoView getHmcpVideoView(Context context, String str, boolean z10) {
        return super.getHmcpVideoView(context, str, z10);
    }

    @Override // com.haima.hmcp.widgets.BaseVideoViewFactory
    IHmcpVideoView getVideoView(Context context, String str) {
        return new HmcpVideoViewImpl(context, str);
    }
}
