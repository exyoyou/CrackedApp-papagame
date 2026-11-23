package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88138a;

    /* JADX INFO: renamed from: com.wufan.user.service.protobuf.enumeration.a$a, reason: collision with other inner class name */
    class C1092a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        C1092a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = a.f88138a = root;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001denumeration/enumeration.proto\u0012\u000benumeration*V\n\tLoginType\u0012\u0006\n\u0002QQ\u0010\u0000\u0012\u000b\n\u0007WEI_XIN\u0010\u0001\u0012\n\n\u0006WEI_BO\u0010\u0002\u0012\n\n\u0006MOBILE\u0010\u0003\u0012\u000b\n\u0007ACCOUNT\u0010\u0004\u0012\u000f\n\u000bMIX_ACCOUNT\u0010\u0005*T\n\u0015TheThirdPartLoginType\u0012\n\n\u0006T_PAPA\u0010\u0000\u0012\b\n\u0004T_QQ\u0010\u0001\u0012\r\n\tT_WEI_XIN\u0010\u0002\u0012\f\n\bT_WEI_BO\u0010\u0003\u0012\b\n\u0004T_MG\u0010\u0004*¡\u0001\n\u000bContentType\u0012\u000e\n\nMOBILE_REG\u0010\u0000\u0012\f\n\bFIND_PWD\u0010\u0001\u0012\u000e\n\nRANDOM_PWD\u0010\u0002\u0012\u000f\n\u000bBIND_MOBILE\u0010\u0003\u0012\u0011\n\rUNBIND_MOBILE\u0010\u0004\u0012\u0015\n\u0011CHECK_BIND_MOBILE\u0010\u0005\u0012\u0013\n\u000fMOBILE_FIND_PWD\u0010\u0006\u0012\u0014\n\u0010GENERAL_SMS_CODE\u0010\u0007*a\n\nSourceType\u0012\t\n\u0005WORLD\u0010\u0000\u0012\f\n\bPLATFORM\u0010\u0001\u0012\n\n\u0006BATTLE\u0010\u0002\u0012\u0006\n\u0002PC\u0010\u0003\u0012\n\n\u0006REBATE\u0010\u0004\u0012\u000e\n\nSDK_REBATE\u0010\u0005\u0012\n\n\u0006SWITCH\u0010\u0006*^\n\nVipFeeType\u0012\f\n\bWEEK_VIP\u0010\u0000\u0012\u0014\n\u0010HALF_A_MONTH_VIP\u0010\u0001\u0012\r\n\tMONTH_VIP\u0010\u0002\u0012\u000f\n\u000bQUARTER_VIP\u0010\u0003\u0012\f\n\bYEAR_VIP\u0010\u0004*e\n\u000bServerState\u0012\u0014\n\u0010SERVER_LINE_FULL\u0010\u0000\u0012\u0014\n\u0010SERVER_LINE_BUSY\u0010\u0001\u0012\u0014\n\u0010SERVER_LINE_STOP\u0010\u0002\u0012\u0014\n\u0010SERVER_LINE_IDLE\u0010\u0003*\u0085\u0001\n\fFeedBackType\u0012\u000e\n\nGAME_CRASH\u0010\u0000\u0012\f\n\bGAME_LAG\u0010\u0001\u0012\u0010\n\fBLURRY_SCENE\u0010\u0002\u0012\u0015\n\u0011QUEUE_UP_QUESTION\u0010\u0003\u0012\u001a\n\u0016BLACK_SCREEN_EXCEPTION\u0010\u0004\u0012\u0012\n\u000eOTHER_QUESTION\u0010\u0005*!\n\fPlaytimeType\u0012\u0007\n\u0003VIP\u0010\u0000\u0012\b\n\u0004FREE\u0010\u0001*0\n\u0013ClickStatusPosition\u0012\u0019\n\u0015CLOUD_GAMING_SIGN_WIN\u0010\u0000*9\n\tSceneType\u0012\u0011\n\rAPP_HOME_PAGE\u0010\u0000\u0012\u0019\n\u0015CLOUD_GAMING_SIGN_BTN\u0010\u0001B/\n+com.wufan.user.service.protobuf.enumerationP\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[0], new C1092a());
    }

    private a() {
    }

    public static Descriptors.FileDescriptor b() {
        return f88138a;
    }

    public static void c(ExtensionRegistry registry) {
        d(registry);
    }

    public static void d(ExtensionRegistryLite registry) {
    }
}
