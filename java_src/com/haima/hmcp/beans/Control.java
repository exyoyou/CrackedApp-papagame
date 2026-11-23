package com.haima.hmcp.beans;

import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.Source;

/* JADX INFO: loaded from: classes5.dex */
public class Control {
    public boolean isIPV6;
    public String cid = "";
    public String pinCode = "";
    public String accessKeyID = "";
    public String clientISP = "";
    public String clientProvince = "";
    public String clientCity = "";
    public ScreenOrientation orientation = ScreenOrientation.LANDSCAPE;
    public boolean cameraOpenPermissionCheck = false;
    public String languageConfig = "";
    public Source source = Source.SDK;
    public Boolean enableHighBitRate = null;
    public Boolean enableVirtualKeyboard = null;
}
