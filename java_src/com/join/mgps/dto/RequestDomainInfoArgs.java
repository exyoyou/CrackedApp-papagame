package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestDomainInfoArgs {
    private String gameId;
    private Integer location;
    private String typeId;

    public String getGameId() {
        return this.gameId;
    }

    public Integer getLocation() {
        return this.location;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setLocation(Integer location) {
        this.location = location;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }
}
