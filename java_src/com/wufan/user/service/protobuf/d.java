package com.wufan.user.service.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageV3;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Descriptors.Descriptor f88135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final GeneratedMessageV3.FieldAccessorTable f88136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Descriptors.FileDescriptor f88137c;

    class a implements Descriptors.FileDescriptor.InternalDescriptorAssigner {
        a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner
        public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor root) {
            Descriptors.FileDescriptor unused = d.f88137c = root;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u0018user_login_request.proto\"a\n\u001aUserLoginRequestParameters\u0012\u000f\n\u0007account\u0018\u0001 \u0001(\t\u0012\u0010\n\bpassword\u0018\u0002 \u0001(\t\u0012\f\n\u0004sign\u0018\u0003 \u0001(\t\u0012\u0012\n\nappVersion\u0018\u0004 \u0001(\tB<\n\u001fcom.wufan.user.service.protobufB\u0017MessageUserLoginRequestP\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[0], new a());
        Descriptors.Descriptor descriptor = b().getMessageTypes().get(0);
        f88135a = descriptor;
        f88136b = new GeneratedMessageV3.FieldAccessorTable(descriptor, new String[]{"Account", "Password", "Sign", "AppVersion"});
    }

    private d() {
    }

    public static Descriptors.FileDescriptor b() {
        return f88137c;
    }

    public static void c(ExtensionRegistry registry) {
        d(registry);
    }

    public static void d(ExtensionRegistryLite registry) {
    }
}
