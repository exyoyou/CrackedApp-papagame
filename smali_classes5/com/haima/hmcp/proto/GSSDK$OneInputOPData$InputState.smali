.class public final enum Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

.field public static final enum OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

.field public static final OP_STATE_DEFAULT_VALUE:I = 0x1

.field public static final enum OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

.field public static final OP_STATE_DOWN_VALUE:I = 0x2

.field public static final enum OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

.field public static final OP_STATE_UP_VALUE:I = 0x3

.field public static final enum OP_VK_TOGGLED:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

.field public static final OP_VK_TOGGLED_VALUE:I = 0x5

.field public static final enum OP_VK_UNTOGGLED:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

.field public static final OP_VK_UNTOGGLED_VALUE:I = 0x4

.field private static final VALUES:[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 2
    .line 3
    const-string v1, "OP_STATE_DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 13
    .line 14
    const-string v4, "OP_STATE_DOWN"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 21
    .line 22
    new-instance v4, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 23
    .line 24
    const-string v6, "OP_STATE_UP"

    .line 25
    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 31
    .line 32
    new-instance v6, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 33
    .line 34
    const-string v8, "OP_VK_UNTOGGLED"

    .line 35
    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v7, v9}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v6, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_VK_UNTOGGLED:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 41
    .line 42
    new-instance v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 43
    .line 44
    const-string v10, "OP_VK_TOGGLED"

    .line 45
    .line 46
    const/4 v11, 0x5

    .line 47
    invoke-direct {v8, v10, v9, v11}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v8, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_VK_TOGGLED:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 51
    .line 52
    new-array v10, v11, [Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 53
    .line 54
    aput-object v0, v10, v2

    .line 55
    .line 56
    aput-object v1, v10, v3

    .line 57
    .line 58
    aput-object v4, v10, v5

    .line 59
    .line 60
    aput-object v6, v10, v7

    .line 61
    .line 62
    aput-object v8, v10, v9

    .line 63
    .line 64
    sput-object v10, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 65
    .line 66
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState$1;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState$1;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 72
    .line 73
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->values()[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 78
    .line 79
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
    iput p3, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_VK_TOGGLED:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_VK_UNTOGGLED:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
