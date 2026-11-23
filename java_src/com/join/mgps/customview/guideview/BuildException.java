package com.join.mgps.customview.guideview;

/* JADX INFO: loaded from: classes3.dex */
class BuildException extends RuntimeException {
    private static final long serialVersionUID = 6208777692136933357L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f66360b;

    public BuildException() {
        this.f66360b = "General error.";
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Build GuideFragment failed: " + this.f66360b;
    }

    public BuildException(String detailMessage) {
        this.f66360b = detailMessage;
    }
}
