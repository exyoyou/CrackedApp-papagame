.class public final enum Lcom/haima/hmcp/enums/SwitchStreamTypeError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/enums/SwitchStreamTypeError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/enums/SwitchStreamTypeError;

.field public static final enum ALREADY_IN_TYPE:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

.field public static final enum IN_BACKGROUND:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

.field public static final enum IN_DEVICE_BLACK_LIST:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

.field public static final enum RESPONSE_ERROR:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

.field public static final enum TARGET_TYPE_IS_NULL:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

.field public static final enum UNKNOWN:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

.field public static final enum UN_SUPPORT_ERROR:Lcom/haima/hmcp/enums/SwitchStreamTypeError;


# instance fields
.field private final mErrorCode:I

.field private final mErrorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const-string v2, "Unknown"

    .line 6
    .line 7
    const-string v3, "UNKNOWN"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/haima/hmcp/enums/SwitchStreamTypeError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->UNKNOWN:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 14
    .line 15
    new-instance v1, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 16
    .line 17
    const/16 v2, 0x3e9

    .line 18
    .line 19
    const-string v3, "Already in the type"

    .line 20
    .line 21
    const-string v5, "ALREADY_IN_TYPE"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/haima/hmcp/enums/SwitchStreamTypeError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->ALREADY_IN_TYPE:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 28
    .line 29
    new-instance v2, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 30
    .line 31
    const/16 v3, 0x3ea

    .line 32
    .line 33
    const-string v5, "Target type is null"

    .line 34
    .line 35
    const-string v7, "TARGET_TYPE_IS_NULL"

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    invoke-direct {v2, v7, v8, v3, v5}, Lcom/haima/hmcp/enums/SwitchStreamTypeError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->TARGET_TYPE_IS_NULL:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 42
    .line 43
    new-instance v3, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 44
    .line 45
    const/16 v5, 0x3eb

    .line 46
    .line 47
    const-string v7, "In device black list"

    .line 48
    .line 49
    const-string v9, "IN_DEVICE_BLACK_LIST"

    .line 50
    .line 51
    const/4 v10, 0x3

    .line 52
    invoke-direct {v3, v9, v10, v5, v7}, Lcom/haima/hmcp/enums/SwitchStreamTypeError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->IN_DEVICE_BLACK_LIST:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 56
    .line 57
    new-instance v5, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 58
    .line 59
    const/16 v7, 0x3ec

    .line 60
    .line 61
    const-string v9, "In background"

    .line 62
    .line 63
    const-string v11, "IN_BACKGROUND"

    .line 64
    .line 65
    const/4 v12, 0x4

    .line 66
    invoke-direct {v5, v11, v12, v7, v9}, Lcom/haima/hmcp/enums/SwitchStreamTypeError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->IN_BACKGROUND:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 70
    .line 71
    new-instance v7, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 72
    .line 73
    const/16 v9, 0x3ed

    .line 74
    .line 75
    const-string v11, "Response error"

    .line 76
    .line 77
    const-string v13, "RESPONSE_ERROR"

    .line 78
    .line 79
    const/4 v14, 0x5

    .line 80
    invoke-direct {v7, v13, v14, v9, v11}, Lcom/haima/hmcp/enums/SwitchStreamTypeError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v7, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->RESPONSE_ERROR:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 84
    .line 85
    new-instance v9, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 86
    .line 87
    const/16 v11, 0x3ee

    .line 88
    .line 89
    const-string v13, "UnSupport error"

    .line 90
    .line 91
    const-string v15, "UN_SUPPORT_ERROR"

    .line 92
    .line 93
    const/4 v14, 0x6

    .line 94
    invoke-direct {v9, v15, v14, v11, v13}, Lcom/haima/hmcp/enums/SwitchStreamTypeError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sput-object v9, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->UN_SUPPORT_ERROR:Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 98
    .line 99
    const/4 v11, 0x7

    .line 100
    new-array v11, v11, [Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 101
    .line 102
    aput-object v0, v11, v4

    .line 103
    .line 104
    aput-object v1, v11, v6

    .line 105
    .line 106
    aput-object v2, v11, v8

    .line 107
    .line 108
    aput-object v3, v11, v10

    .line 109
    .line 110
    aput-object v5, v11, v12

    .line 111
    .line 112
    const/4 v0, 0x5

    .line 113
    aput-object v7, v11, v0

    .line 114
    .line 115
    aput-object v9, v11, v14

    .line 116
    .line 117
    sput-object v11, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->$VALUES:[Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 118
    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->mErrorCode:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->mErrorMsg:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/enums/SwitchStreamTypeError;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/enums/SwitchStreamTypeError;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->$VALUES:[Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/enums/SwitchStreamTypeError;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/enums/SwitchStreamTypeError;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->mErrorCode:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/enums/SwitchStreamTypeError;->mErrorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
