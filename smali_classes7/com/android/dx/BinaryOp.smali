.class public abstract enum Lcom/android/dx/BinaryOp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/dx/BinaryOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dx/BinaryOp;

.field public static final enum ADD:Lcom/android/dx/BinaryOp;

.field public static final enum AND:Lcom/android/dx/BinaryOp;

.field public static final enum DIVIDE:Lcom/android/dx/BinaryOp;

.field public static final enum MULTIPLY:Lcom/android/dx/BinaryOp;

.field public static final enum OR:Lcom/android/dx/BinaryOp;

.field public static final enum REMAINDER:Lcom/android/dx/BinaryOp;

.field public static final enum SHIFT_LEFT:Lcom/android/dx/BinaryOp;

.field public static final enum SHIFT_RIGHT:Lcom/android/dx/BinaryOp;

.field public static final enum SUBTRACT:Lcom/android/dx/BinaryOp;

.field public static final enum UNSIGNED_SHIFT_RIGHT:Lcom/android/dx/BinaryOp;

.field public static final enum XOR:Lcom/android/dx/BinaryOp;


# direct methods
.method private static synthetic $values()[Lcom/android/dx/BinaryOp;
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [Lcom/android/dx/BinaryOp;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/android/dx/BinaryOp;->ADD:Lcom/android/dx/BinaryOp;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/android/dx/BinaryOp;->SUBTRACT:Lcom/android/dx/BinaryOp;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/android/dx/BinaryOp;->MULTIPLY:Lcom/android/dx/BinaryOp;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/android/dx/BinaryOp;->DIVIDE:Lcom/android/dx/BinaryOp;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/android/dx/BinaryOp;->REMAINDER:Lcom/android/dx/BinaryOp;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/android/dx/BinaryOp;->AND:Lcom/android/dx/BinaryOp;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/android/dx/BinaryOp;->OR:Lcom/android/dx/BinaryOp;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/android/dx/BinaryOp;->XOR:Lcom/android/dx/BinaryOp;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/android/dx/BinaryOp;->SHIFT_LEFT:Lcom/android/dx/BinaryOp;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/android/dx/BinaryOp;->SHIFT_RIGHT:Lcom/android/dx/BinaryOp;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/android/dx/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/android/dx/BinaryOp;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/dx/BinaryOp$1;

    .line 2
    .line 3
    const-string v1, "ADD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/dx/BinaryOp;->ADD:Lcom/android/dx/BinaryOp;

    .line 10
    .line 11
    new-instance v0, Lcom/android/dx/BinaryOp$2;

    .line 12
    .line 13
    const-string v1, "SUBTRACT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/dx/BinaryOp;->SUBTRACT:Lcom/android/dx/BinaryOp;

    .line 20
    .line 21
    new-instance v0, Lcom/android/dx/BinaryOp$3;

    .line 22
    .line 23
    const-string v1, "MULTIPLY"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/dx/BinaryOp;->MULTIPLY:Lcom/android/dx/BinaryOp;

    .line 30
    .line 31
    new-instance v0, Lcom/android/dx/BinaryOp$4;

    .line 32
    .line 33
    const-string v1, "DIVIDE"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$4;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/dx/BinaryOp;->DIVIDE:Lcom/android/dx/BinaryOp;

    .line 40
    .line 41
    new-instance v0, Lcom/android/dx/BinaryOp$5;

    .line 42
    .line 43
    const-string v1, "REMAINDER"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$5;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/android/dx/BinaryOp;->REMAINDER:Lcom/android/dx/BinaryOp;

    .line 50
    .line 51
    new-instance v0, Lcom/android/dx/BinaryOp$6;

    .line 52
    .line 53
    const-string v1, "AND"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$6;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/android/dx/BinaryOp;->AND:Lcom/android/dx/BinaryOp;

    .line 60
    .line 61
    new-instance v0, Lcom/android/dx/BinaryOp$7;

    .line 62
    .line 63
    const-string v1, "OR"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$7;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/android/dx/BinaryOp;->OR:Lcom/android/dx/BinaryOp;

    .line 70
    .line 71
    new-instance v0, Lcom/android/dx/BinaryOp$8;

    .line 72
    .line 73
    const-string v1, "XOR"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$8;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/android/dx/BinaryOp;->XOR:Lcom/android/dx/BinaryOp;

    .line 80
    .line 81
    new-instance v0, Lcom/android/dx/BinaryOp$9;

    .line 82
    .line 83
    const-string v1, "SHIFT_LEFT"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$9;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/android/dx/BinaryOp;->SHIFT_LEFT:Lcom/android/dx/BinaryOp;

    .line 91
    .line 92
    new-instance v0, Lcom/android/dx/BinaryOp$10;

    .line 93
    .line 94
    const-string v1, "SHIFT_RIGHT"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$10;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/android/dx/BinaryOp;->SHIFT_RIGHT:Lcom/android/dx/BinaryOp;

    .line 102
    .line 103
    new-instance v0, Lcom/android/dx/BinaryOp$11;

    .line 104
    .line 105
    const-string v1, "UNSIGNED_SHIFT_RIGHT"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lcom/android/dx/BinaryOp$11;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/android/dx/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/android/dx/BinaryOp;

    .line 113
    .line 114
    invoke-static {}, Lcom/android/dx/BinaryOp;->$values()[Lcom/android/dx/BinaryOp;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/android/dx/BinaryOp;->$VALUES:[Lcom/android/dx/BinaryOp;

    .line 119
    .line 120
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/dx/BinaryOp$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/dx/BinaryOp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dx/BinaryOp;
    .locals 1

    .line 1
    const-class v0, Lcom/android/dx/BinaryOp;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/dx/BinaryOp;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/dx/BinaryOp;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/dx/BinaryOp;->$VALUES:[Lcom/android/dx/BinaryOp;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/dx/BinaryOp;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/dx/BinaryOp;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;
.end method
