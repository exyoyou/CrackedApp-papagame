package io.netty.handler.ssl;

/* JADX INFO: loaded from: classes.dex */
public final class SniCompletionEvent extends SslCompletionEvent {
    private final String hostname;

    SniCompletionEvent(String str) {
        this.hostname = str;
    }

    public String hostname() {
        return this.hostname;
    }

    @Override // io.netty.handler.ssl.SslCompletionEvent
    public String toString() {
        Throwable thCause = cause();
        if (thCause == null) {
            return SniCompletionEvent.class.getSimpleName() + "(SUCCESS='" + this.hostname + "'\")";
        }
        return SniCompletionEvent.class.getSimpleName() + '(' + thCause + ')';
    }

    SniCompletionEvent(String str, Throwable th) {
        super(th);
        this.hostname = str;
    }

    SniCompletionEvent(Throwable th) {
        this(null, th);
    }
}
