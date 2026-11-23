package app.mgsim.arena;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CheckThread implements Runnable {
    private volatile boolean isContinue = true;

    public abstract boolean check();

    public abstract void handle();

    public boolean isContinue() {
        return this.isContinue;
    }

    public abstract void next();

    @Override // java.lang.Runnable
    public void run() {
        while (this.isContinue) {
            try {
                if (!isContinue()) {
                    return;
                }
                if (check()) {
                    if (!this.isContinue) {
                        return;
                    } else {
                        handle();
                    }
                }
                next();
            } catch (Exception unused) {
            }
        }
    }

    public void setContinue(boolean z10) {
        this.isContinue = z10;
    }

    public void stop() {
        this.isContinue = false;
    }
}
