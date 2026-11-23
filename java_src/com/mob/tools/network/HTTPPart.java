package com.mob.tools.network;

import com.mob.tools.proguard.PublicMemberKeeper;
import com.mob.tools.utils.ReflectHelper;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class HTTPPart implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f75507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private OnReadListener f75508b;

    protected abstract InputStream getInputStream() throws Throwable;

    public Object getInputStreamEntity() throws Throwable {
        InputStream inputStream = toInputStream();
        long length = length() - this.f75507a;
        ReflectHelper.importClass("org.apache.http.entity.InputStreamEntity");
        return ReflectHelper.newInstance("InputStreamEntity", inputStream, Long.valueOf(length));
    }

    public OnReadListener getListener() {
        return this.f75508b;
    }

    protected abstract long length() throws Throwable;

    public void setOffset(long j10) {
        this.f75507a = j10;
    }

    public void setOnReadListener(OnReadListener onReadListener) {
        this.f75508b = onReadListener;
    }

    public InputStream toInputStream() throws Throwable {
        return new ByteCounterInputStream(getInputStream());
    }
}
