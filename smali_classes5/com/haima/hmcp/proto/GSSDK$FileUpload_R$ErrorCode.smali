.class public final enum Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final enum CHECK_BLOCK_HASH_FAIL:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final CHECK_BLOCK_HASH_FAIL_VALUE:I = 0x1

.field public static final enum CHECK_FILE_HASH_FAIL:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final CHECK_FILE_HASH_FAIL_VALUE:I = 0x2

.field public static final enum DIRECTORY_PATH_INVALID:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final DIRECTORY_PATH_INVALID_VALUE:I = 0x5

.field public static final enum PARSE_MSG_ERROR:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final PARSE_MSG_ERROR_VALUE:I = 0x3

.field public static final enum SAVE_FILE_ERROR:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final SAVE_FILE_ERROR_VALUE:I = 0x6

.field public static final enum SUCCESS:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final SUCCESS_VALUE:I = 0x0

.field public static final enum UPLOAD_PATH_NOT_EXIST:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field public static final UPLOAD_PATH_NOT_EXIST_VALUE:I = 0x4

.field private static final VALUES:[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->SUCCESS:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 10
    .line 11
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 12
    .line 13
    const-string v3, "CHECK_BLOCK_HASH_FAIL"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->CHECK_BLOCK_HASH_FAIL:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 20
    .line 21
    new-instance v3, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 22
    .line 23
    const-string v5, "CHECK_FILE_HASH_FAIL"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->CHECK_FILE_HASH_FAIL:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 30
    .line 31
    new-instance v5, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 32
    .line 33
    const-string v7, "PARSE_MSG_ERROR"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->PARSE_MSG_ERROR:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 40
    .line 41
    new-instance v7, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 42
    .line 43
    const-string v9, "UPLOAD_PATH_NOT_EXIST"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->UPLOAD_PATH_NOT_EXIST:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 50
    .line 51
    new-instance v9, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 52
    .line 53
    const-string v11, "DIRECTORY_PATH_INVALID"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->DIRECTORY_PATH_INVALID:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 60
    .line 61
    new-instance v11, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 62
    .line 63
    const-string v13, "SAVE_FILE_ERROR"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->SAVE_FILE_ERROR:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 70
    .line 71
    const/4 v13, 0x7

    .line 72
    new-array v13, v13, [Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 73
    .line 74
    aput-object v0, v13, v2

    .line 75
    .line 76
    aput-object v1, v13, v4

    .line 77
    .line 78
    aput-object v3, v13, v6

    .line 79
    .line 80
    aput-object v5, v13, v8

    .line 81
    .line 82
    aput-object v7, v13, v10

    .line 83
    .line 84
    aput-object v9, v13, v12

    .line 85
    .line 86
    aput-object v11, v13, v14

    .line 87
    .line 88
    sput-object v13, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 89
    .line 90
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode$1;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode$1;-><init>()V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 96
    .line 97
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->values()[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 102
    .line 103
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
    iput p3, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;
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
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->SAVE_FILE_ERROR:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->DIRECTORY_PATH_INVALID:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->UPLOAD_PATH_NOT_EXIST:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->PARSE_MSG_ERROR:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->CHECK_FILE_HASH_FAIL:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->CHECK_BLOCK_HASH_FAIL:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->SUCCESS:Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$FileUpload_R$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

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
