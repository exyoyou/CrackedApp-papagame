package app.mgsim.arena;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SocketThread implements Runnable {
    private String getTag() {
        return getClass().getSimpleName();
    }

    protected abstract void execute();

    protected void printMessgae(String str) {
    }

    @Override // java.lang.Runnable
    public void run() {
        printMessgae("Thread name ->  " + getTag() + "  is Running----");
        execute();
    }

    protected void printMessgae(String str, String str2) {
    }
}
