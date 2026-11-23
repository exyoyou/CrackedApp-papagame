package io.socket.parser;

/* JADX INFO: loaded from: classes.dex */
public class Packet<T> {
    public int attachments;
    public T data;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public int f91811id;
    public String nsp;
    public String query;
    public int type;

    public Packet() {
        this.type = -1;
        this.f91811id = -1;
    }

    public Packet(int i10) {
        this.f91811id = -1;
        this.type = i10;
    }

    public Packet(int i10, T t10) {
        this.f91811id = -1;
        this.type = i10;
        this.data = t10;
    }
}
