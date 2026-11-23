package org.webrtc.haima;

/* JADX INFO: loaded from: classes10.dex */
public interface HmTransDevice {

    public enum DeviceName {
        HAIMA_TRANS_INPUT("HaimaTransInput");

        private String name;

        DeviceName(String str) {
            this.name = str;
        }

        public String getName() {
            return this.name;
        }
    }

    public interface Observer {
        void onClose();

        void onMessage(byte[] bArr, boolean z10);

        void onOpen();
    }

    boolean sendData(byte[] bArr, int i10);

    boolean sendText(String str, int i10);
}
