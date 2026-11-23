package com.squareup.wire;

import com.sdk.base.module.manager.SDKManager;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {SDKManager.ALGO_E_SM4_SM3_SM2, "Lcom/squareup/wire/c0;", "forwardWriter", "", "invoke", "(Lcom/squareup/wire/c0;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nProtoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtoAdapter.kt\ncom/squareup/wire/ProtoAdapterKt$delegateEncode$1\n*L\n1#1,1632:1\n*E\n"})
public final class ProtoAdapterKt$delegateEncode$1 extends Lambda implements Function1<c0, Unit> {
    final /* synthetic */ ProtoAdapter<E> $this_delegateEncode;
    final /* synthetic */ E $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProtoAdapterKt$delegateEncode$1(ProtoAdapter<E> protoAdapter, E e10) {
        super(1);
        this.$this_delegateEncode = protoAdapter;
        this.$value = e10;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(c0 c0Var) throws IOException {
        invoke2(c0Var);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull c0 forwardWriter) throws IOException {
        Intrinsics.checkNotNullParameter(forwardWriter, "forwardWriter");
        this.$this_delegateEncode.h(forwardWriter, this.$value);
    }
}
