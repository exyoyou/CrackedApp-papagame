package com.efs.sdk.base.integrationtesting;

/* JADX INFO: loaded from: classes9.dex */
public class IntegrationTestingUtil {
    private static boolean sIsInPeriod;

    public static boolean isIntegrationTestingInPeriod() {
        return sIsInPeriod;
    }

    public static void setIntegrationTestingInPeriod(boolean z10) {
        sIsInPeriod = z10;
    }
}
