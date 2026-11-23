package app.mgsim.arena;

/* JADX INFO: loaded from: classes7.dex */
public interface SocketListener {

    public interface NotifyObserver {
        void onError(SocketError socketError);

        void onServerResponse(ArenaResponse arenaResponse);
    }

    void executeRequest(ArenaRequest arenaRequest);

    void onError(SocketError socketError);

    int onServerResponse(Object obj) throws Exception;

    void onSocketConnected();

    void onSocketDisconnected();
}
