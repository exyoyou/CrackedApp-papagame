.class public final enum Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$GSNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameQuitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

.field public static final enum OWNER_EXIT:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

.field public static final OWNER_EXIT_VALUE:I = 0x2

.field public static final enum PROCESS_EXIT:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

.field public static final PROCESS_EXIT_VALUE:I = 0x1

.field private static final VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 2
    .line 3
    const-string v1, "PROCESS_EXIT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->PROCESS_EXIT:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 13
    .line 14
    const-string v4, "OWNER_EXIT"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->OWNER_EXIT:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 21
    .line 22
    new-array v4, v5, [Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 23
    .line 24
    aput-object v0, v4, v2

    .line 25
    .line 26
    aput-object v1, v4, v3

    .line 27
    .line 28
    sput-object v4, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 29
    .line 30
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType$1;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType$1;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 36
    .line 37
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->values()[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->OWNER_EXIT:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->PROCESS_EXIT:Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSNotification;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GSNotification$GameQuitType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 18
    .line 19
    return-object v0
.end method
