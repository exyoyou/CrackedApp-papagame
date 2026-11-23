package app.mgsim.arena;

/* JADX INFO: loaded from: classes7.dex */
public class AreaInfo {
    private int area;
    private String host;
    private int onLinePeopleCounts;
    private long pingTime;
    private int port;

    public int getArea() {
        return this.area;
    }

    public String getHost() {
        return this.host;
    }

    public int getOnLinePeopleCounts() {
        return this.onLinePeopleCounts;
    }

    public long getPingTime() {
        return this.pingTime;
    }

    public int getPort() {
        return this.port;
    }

    public void setArea(int i10) {
        this.area = i10;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setOnLinePeopleCounts(int i10) {
        this.onLinePeopleCounts = i10;
    }

    public void setPingTime(long j10) {
        this.pingTime = j10;
    }

    public void setPort(int i10) {
        this.port = i10;
    }

    public String toString() {
        return "AreaInfo{pingTime=" + this.pingTime + ", host='" + this.host + "', port=" + this.port + ", onLinePeopleCounts=" + this.onLinePeopleCounts + ", area=" + this.area + '}';
    }
}
