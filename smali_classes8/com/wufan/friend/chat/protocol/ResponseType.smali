.class public final enum Lcom/wufan/friend/chat/protocol/ResponseType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufan/friend/chat/protocol/ResponseType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufan/friend/chat/protocol/ResponseType;

.field public static final enum NOTIFICATION:Lcom/wufan/friend/chat/protocol/ResponseType;

.field public static final NOTIFICATION_VALUE:I = 0x2

.field public static final enum RESPONSE:Lcom/wufan/friend/chat/protocol/ResponseType;

.field public static final RESPONSE_VALUE:I = 0x1

.field public static final enum UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

.field public static final UNDEFINED_CT_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseType;

.field private static final VALUES:[Lcom/wufan/friend/chat/protocol/ResponseType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/wufan/friend/chat/protocol/ResponseType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/wufan/friend/chat/protocol/ResponseType;->UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/wufan/friend/chat/protocol/ResponseType;->RESPONSE:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/wufan/friend/chat/protocol/ResponseType;->NOTIFICATION:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/wufan/friend/chat/protocol/ResponseType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 2
    .line 3
    const-string v1, "UNDEFINED_CT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/ResponseType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 10
    .line 11
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 12
    .line 13
    const-string v1, "RESPONSE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/ResponseType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->RESPONSE:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 20
    .line 21
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 22
    .line 23
    const-string v1, "NOTIFICATION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/wufan/friend/chat/protocol/ResponseType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->NOTIFICATION:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 30
    .line 31
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    const/4 v2, -0x1

    .line 35
    const-string v3, "UNRECOGNIZED"

    .line 36
    .line 37
    invoke-direct {v0, v3, v1, v2}, Lcom/wufan/friend/chat/protocol/ResponseType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 41
    .line 42
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseType;->$values()[Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->$VALUES:[Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 47
    .line 48
    new-instance v0, Lcom/wufan/friend/chat/protocol/ResponseType$a;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/ResponseType$a;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 54
    .line 55
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseType;->values()[Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->VALUES:[Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 60
    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

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
    iput p3, p0, Lcom/wufan/friend/chat/protocol/ResponseType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseType;->NOTIFICATION:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseType;->RESPONSE:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseType;->UNDEFINED_CT:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/a0;->b()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x6

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
            "Lcom/wufan/friend/chat/protocol/ResponseType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/wufan/friend/chat/protocol/ResponseType;->forNumber(I)Lcom/wufan/friend/chat/protocol/ResponseType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/wufan/friend/chat/protocol/ResponseType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseType;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->VALUES:[Lcom/wufan/friend/chat/protocol/ResponseType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/wufan/friend/chat/protocol/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/wufan/friend/chat/protocol/ResponseType;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->$VALUES:[Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/wufan/friend/chat/protocol/ResponseType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/ResponseType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/ResponseType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/wufan/friend/chat/protocol/ResponseType;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ResponseType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
