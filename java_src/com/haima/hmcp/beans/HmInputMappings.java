package com.haima.hmcp.beans;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class HmInputMappings {
    public static final String FIELD_MAPPING = "mapping";
    public static final String FIELD_MAPPING_NAME = "mappingName";
    public static final String FIELD_VERSION = "version";
    public static final String FIELD_VIEW_MOVE_OFFSET = "view_move_offset";
    public HashMap<Integer, HmInputMappingContent> mapping;
    public String mappingName;
    public String version;
    public double viewMoveOffset;

    public String toString() {
        return "HmInputMappings{version='" + this.version + "', mappingName='" + this.mappingName + "', mapping=" + this.mapping + ", viewMoveOffset=" + this.viewMoveOffset + '}';
    }
}
