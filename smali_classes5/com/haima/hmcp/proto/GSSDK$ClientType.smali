.class public final enum Lcom/haima/hmcp/proto/GSSDK$ClientType;
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
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/proto/GSSDK$ClientType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final enum ANDROID:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final enum ANDROID_H5:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final ANDROID_H5_VALUE:I = 0x7

.field public static final ANDROID_VALUE:I = 0x2

.field public static final enum IOS:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final enum IOS_H5:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final IOS_H5_VALUE:I = 0x6

.field public static final IOS_VALUE:I = 0x4

.field public static final enum MAC:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final MAC_VALUE:I = 0x5

.field public static final enum NONE:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final NONE_VALUE:I = 0x0

.field public static final enum PC:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final PC_VALUE:I = 0x1

.field public static final enum TV:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final TV_VALUE:I = 0x8

.field private static final VALUES:[Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final enum WEB:Lcom/haima/hmcp/proto/GSSDK$ClientType;

.field public static final WEB_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$ClientType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->NONE:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 10
    .line 11
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 12
    .line 13
    const-string v3, "PC"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK$ClientType;->PC:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 20
    .line 21
    new-instance v3, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 22
    .line 23
    const-string v5, "ANDROID"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/haima/hmcp/proto/GSSDK$ClientType;->ANDROID:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 30
    .line 31
    new-instance v5, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 32
    .line 33
    const-string v7, "WEB"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK$ClientType;->WEB:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 40
    .line 41
    new-instance v7, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 42
    .line 43
    const-string v9, "IOS"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/haima/hmcp/proto/GSSDK$ClientType;->IOS:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 50
    .line 51
    new-instance v9, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 52
    .line 53
    const-string v11, "MAC"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/haima/hmcp/proto/GSSDK$ClientType;->MAC:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 60
    .line 61
    new-instance v11, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 62
    .line 63
    const-string v13, "IOS_H5"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/haima/hmcp/proto/GSSDK$ClientType;->IOS_H5:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 70
    .line 71
    new-instance v13, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 72
    .line 73
    const-string v15, "ANDROID_H5"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v14}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/haima/hmcp/proto/GSSDK$ClientType;->ANDROID_H5:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 80
    .line 81
    new-instance v15, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 82
    .line 83
    const-string v14, "TV"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12, v12}, Lcom/haima/hmcp/proto/GSSDK$ClientType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/haima/hmcp/proto/GSSDK$ClientType;->TV:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 91
    .line 92
    const/16 v14, 0x9

    .line 93
    .line 94
    new-array v14, v14, [Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 95
    .line 96
    aput-object v0, v14, v2

    .line 97
    .line 98
    aput-object v1, v14, v4

    .line 99
    .line 100
    aput-object v3, v14, v6

    .line 101
    .line 102
    aput-object v5, v14, v8

    .line 103
    .line 104
    aput-object v7, v14, v10

    .line 105
    .line 106
    const/4 v0, 0x5

    .line 107
    aput-object v9, v14, v0

    .line 108
    .line 109
    const/4 v0, 0x6

    .line 110
    aput-object v11, v14, v0

    .line 111
    .line 112
    const/4 v0, 0x7

    .line 113
    aput-object v13, v14, v0

    .line 114
    .line 115
    aput-object v15, v14, v12

    .line 116
    .line 117
    sput-object v14, Lcom/haima/hmcp/proto/GSSDK$ClientType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 118
    .line 119
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$ClientType$1;

    .line 120
    .line 121
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$ClientType$1;-><init>()V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 125
    .line 126
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$ClientType;->values()[Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 131
    .line 132
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
    iput p3, p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/haima/hmcp/proto/GSSDK$ClientType;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->TV:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->ANDROID_H5:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->IOS_H5:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->MAC:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->IOS:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->WEB:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->ANDROID:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->PC:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->NONE:Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    const/4 v1, 0x0

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
            "Lcom/haima/hmcp/proto/GSSDK$ClientType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/haima/hmcp/proto/GSSDK$ClientType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK$ClientType;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$ClientType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/haima/hmcp/proto/GSSDK$ClientType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$ClientType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$ClientType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$ClientType;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;

    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/proto/GSSDK$ClientType;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/proto/GSSDK$ClientType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/proto/GSSDK$ClientType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$ClientType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$ClientType;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$ClientType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
