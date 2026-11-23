.class public final enum Lcom/tencent/cos/task/TaskState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/task/TaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/task/TaskState;

.field public static final enum CANCEL:Lcom/tencent/cos/task/TaskState;

.field public static final enum DISABLE:Lcom/tencent/cos/task/TaskState;

.field public static final enum FAILED:Lcom/tencent/cos/task/TaskState;

.field public static final enum FINISH:Lcom/tencent/cos/task/TaskState;

.field public static final enum PAUSE:Lcom/tencent/cos/task/TaskState;

.field public static final enum RETRY:Lcom/tencent/cos/task/TaskState;

.field public static final enum SENDING:Lcom/tencent/cos/task/TaskState;

.field public static final enum SUCCEED:Lcom/tencent/cos/task/TaskState;

.field public static final enum WAITING:Lcom/tencent/cos/task/TaskState;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/cos/task/TaskState;

    .line 2
    .line 3
    const-string v1, "waitting"

    .line 4
    .line 5
    const-string v2, "WAITING"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v3, v1}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    .line 12
    .line 13
    new-instance v1, Lcom/tencent/cos/task/TaskState;

    .line 14
    .line 15
    const-string v2, "sending"

    .line 16
    .line 17
    const-string v4, "SENDING"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v5, v2}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/tencent/cos/task/TaskState;->SENDING:Lcom/tencent/cos/task/TaskState;

    .line 24
    .line 25
    new-instance v2, Lcom/tencent/cos/task/TaskState;

    .line 26
    .line 27
    const-string v4, "finish"

    .line 28
    .line 29
    const-string v6, "FINISH"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v7, v4}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/tencent/cos/task/TaskState;->FINISH:Lcom/tencent/cos/task/TaskState;

    .line 36
    .line 37
    new-instance v4, Lcom/tencent/cos/task/TaskState;

    .line 38
    .line 39
    const-string v6, "succeed"

    .line 40
    .line 41
    const-string v8, "SUCCEED"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v9, v6}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/tencent/cos/task/TaskState;->SUCCEED:Lcom/tencent/cos/task/TaskState;

    .line 48
    .line 49
    new-instance v6, Lcom/tencent/cos/task/TaskState;

    .line 50
    .line 51
    const-string v8, "failed"

    .line 52
    .line 53
    const-string v10, "FAILED"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v11, v8}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    .line 60
    .line 61
    new-instance v8, Lcom/tencent/cos/task/TaskState;

    .line 62
    .line 63
    const-string v10, "pause"

    .line 64
    .line 65
    const-string v12, "PAUSE"

    .line 66
    .line 67
    const/4 v13, 0x5

    .line 68
    invoke-direct {v8, v12, v13, v13, v10}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v8, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    .line 72
    .line 73
    new-instance v10, Lcom/tencent/cos/task/TaskState;

    .line 74
    .line 75
    const-string v12, "cancel"

    .line 76
    .line 77
    const-string v14, "CANCEL"

    .line 78
    .line 79
    const/4 v15, 0x6

    .line 80
    invoke-direct {v10, v14, v15, v15, v12}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v10, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    .line 84
    .line 85
    new-instance v12, Lcom/tencent/cos/task/TaskState;

    .line 86
    .line 87
    const-string v14, "retry"

    .line 88
    .line 89
    const-string v15, "RETRY"

    .line 90
    .line 91
    const/4 v13, 0x7

    .line 92
    invoke-direct {v12, v15, v13, v13, v14}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v12, Lcom/tencent/cos/task/TaskState;->RETRY:Lcom/tencent/cos/task/TaskState;

    .line 96
    .line 97
    new-instance v14, Lcom/tencent/cos/task/TaskState;

    .line 98
    .line 99
    const-string v15, "disable"

    .line 100
    .line 101
    const-string v13, "DISABLE"

    .line 102
    .line 103
    const/16 v11, 0x8

    .line 104
    .line 105
    invoke-direct {v14, v13, v11, v11, v15}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v14, Lcom/tencent/cos/task/TaskState;->DISABLE:Lcom/tencent/cos/task/TaskState;

    .line 109
    .line 110
    const/16 v13, 0x9

    .line 111
    .line 112
    new-array v13, v13, [Lcom/tencent/cos/task/TaskState;

    .line 113
    .line 114
    aput-object v0, v13, v3

    .line 115
    .line 116
    aput-object v1, v13, v5

    .line 117
    .line 118
    aput-object v2, v13, v7

    .line 119
    .line 120
    aput-object v4, v13, v9

    .line 121
    .line 122
    const/4 v0, 0x4

    .line 123
    aput-object v6, v13, v0

    .line 124
    .line 125
    const/4 v0, 0x5

    .line 126
    aput-object v8, v13, v0

    .line 127
    .line 128
    const/4 v0, 0x6

    .line 129
    aput-object v10, v13, v0

    .line 130
    .line 131
    const/4 v0, 0x7

    .line 132
    aput-object v12, v13, v0

    .line 133
    .line 134
    aput-object v14, v13, v11

    .line 135
    .line 136
    sput-object v13, Lcom/tencent/cos/task/TaskState;->$VALUES:[Lcom/tencent/cos/task/TaskState;

    .line 137
    .line 138
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
    iput p3, p0, Lcom/tencent/cos/task/TaskState;->code:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/tencent/cos/task/TaskState;->desc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/task/TaskState;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/cos/task/TaskState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/cos/task/TaskState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/task/TaskState;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/TaskState;->$VALUES:[Lcom/tencent/cos/task/TaskState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tencent/cos/task/TaskState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tencent/cos/task/TaskState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/task/TaskState;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskState;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
