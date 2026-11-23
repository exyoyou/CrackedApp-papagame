package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class HmInputMappingContent {
    public static final int DIRECTION_DOWN = 3;
    public static final int DIRECTION_LEFT = 2;
    public static final int DIRECTION_RIGHT = 4;
    public static final int DIRECTION_UP = 1;
    public static final String FIELD_BUTTON_NAME = "buttonName";
    public static final String FIELD_DIRECTION = "direction";
    public static final String FIELD_POS_X = "pos_x";
    public static final String FIELD_POX_Y = "pos_y";
    public static final String FIELD_TYPE = "type";
    public static final String FIELD_VALUE = "value";
    public static final String FIELD_VIEW_STATE = "viewState";
    public static final int TYPE_DIRECTION = 2;
    public static final int TYPE_KEY = 1;
    public static final int TYPE_VIEW = 3;
    public static final int VIEW_STATE_OFF = 2;
    public static final int VIEW_STATE_ON = 1;
    public String buttonName;
    public int direction;
    public double posX;
    public double posY;
    public int type;
    public int value;
    public int viewState;

    public String toString() {
        return "HmInputMappingContent{buttonName='" + this.buttonName + "', value=" + this.value + ", posX=" + this.posX + ", posY=" + this.posY + ", type=" + this.type + ", direction=" + this.direction + ", viewState=" + this.viewState + '}';
    }
}
