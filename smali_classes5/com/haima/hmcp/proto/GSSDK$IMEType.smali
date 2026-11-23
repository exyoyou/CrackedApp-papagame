.class public final enum Lcom/haima/hmcp/proto/GSSDK$IMEType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMEType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/proto/GSSDK$IMEType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/proto/GSSDK$IMEType;

.field public static final enum IME_EMAILADDRESS:Lcom/haima/hmcp/proto/GSSDK$IMEType;

.field public static final IME_EMAILADDRESS_VALUE:I = 0x4

.field public static final enum IME_NUMBER:Lcom/haima/hmcp/proto/GSSDK$IMEType;

.field public static final IME_NUMBER_VALUE:I = 0x2

.field public static final enum IME_PASSWORD:Lcom/haima/hmcp/proto/GSSDK$IMEType;

.field public static final IME_PASSWORD_VALUE:I = 0x1

.field public static final enum IME_PHONE:Lcom/haima/hmcp/proto/GSSDK$IMEType;

.field public static final IME_PHONE_VALUE:I = 0x3

.field public static final enum IME_STANDARD:Lcom/haima/hmcp/proto/GSSDK$IMEType;

.field public static final IME_STANDARD_VALUE:I

.field private static final VALUES:[Lcom/haima/hmcp/proto/GSSDK$IMEType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$IMEType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 2
    .line 3
    const-string v1, "IME_STANDARD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/haima/hmcp/proto/GSSDK$IMEType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_STANDARD:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 10
    .line 11
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 12
    .line 13
    const-string v3, "IME_PASSWORD"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/haima/hmcp/proto/GSSDK$IMEType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_PASSWORD:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 20
    .line 21
    new-instance v3, Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 22
    .line 23
    const-string v5, "IME_NUMBER"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/haima/hmcp/proto/GSSDK$IMEType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_NUMBER:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 30
    .line 31
    new-instance v5, Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 32
    .line 33
    const-string v7, "IME_PHONE"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/haima/hmcp/proto/GSSDK$IMEType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_PHONE:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 40
    .line 41
    new-instance v7, Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 42
    .line 43
    const-string v9, "IME_EMAILADDRESS"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/haima/hmcp/proto/GSSDK$IMEType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_EMAILADDRESS:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 50
    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 53
    .line 54
    aput-object v0, v9, v2

    .line 55
    .line 56
    aput-object v1, v9, v4

    .line 57
    .line 58
    aput-object v3, v9, v6

    .line 59
    .line 60
    aput-object v5, v9, v8

    .line 61
    .line 62
    aput-object v7, v9, v10

    .line 63
    .line 64
    sput-object v9, Lcom/haima/hmcp/proto/GSSDK$IMEType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 65
    .line 66
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$IMEType$1;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$IMEType$1;-><init>()V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 72
    .line 73
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$IMEType;->values()[Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$IMEType;

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
    iput p3, p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/haima/hmcp/proto/GSSDK$IMEType;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_EMAILADDRESS:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_PHONE:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_NUMBER:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_PASSWORD:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_4
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->IME_STANDARD:Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/haima/hmcp/proto/GSSDK$IMEType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/haima/hmcp/proto/GSSDK$IMEType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK$IMEType;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$IMEType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/haima/hmcp/proto/GSSDK$IMEType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$IMEType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$IMEType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$IMEType;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;

    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/proto/GSSDK$IMEType;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/proto/GSSDK$IMEType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/proto/GSSDK$IMEType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$IMEType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$IMEType;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$IMEType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
