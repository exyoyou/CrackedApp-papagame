.class public final enum Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarrierKeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

.field public static final enum DPAD_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

.field public static final enum GLOBAL:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

.field public static final enum JOY_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

.field public static final enum JOY_TO_MOUSE_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

.field public static final enum KEYBOARD_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

.field public static final enum MOUSE_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 2
    .line 3
    const-string v1, "GLOBAL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->GLOBAL:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 10
    .line 11
    new-instance v1, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 12
    .line 13
    const-string v3, "JOY_TO_MOUSE_KEY"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->JOY_TO_MOUSE_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 20
    .line 21
    new-instance v3, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 22
    .line 23
    const v5, 0x1000010

    .line 24
    .line 25
    .line 26
    const-string v6, "JOY_KEY"

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    invoke-direct {v3, v6, v7, v5}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->JOY_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 33
    .line 34
    new-instance v5, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 35
    .line 36
    const/16 v6, 0x201

    .line 37
    .line 38
    const-string v8, "DPAD_KEY"

    .line 39
    .line 40
    const/4 v9, 0x3

    .line 41
    invoke-direct {v5, v8, v9, v6}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    sput-object v5, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->DPAD_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 45
    .line 46
    new-instance v6, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 47
    .line 48
    const/16 v8, 0x101

    .line 49
    .line 50
    const-string v10, "KEYBOARD_KEY"

    .line 51
    .line 52
    const/4 v11, 0x4

    .line 53
    invoke-direct {v6, v10, v11, v8}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    sput-object v6, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->KEYBOARD_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 57
    .line 58
    new-instance v8, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 59
    .line 60
    const/16 v10, 0x2002

    .line 61
    .line 62
    const-string v12, "MOUSE_KEY"

    .line 63
    .line 64
    const/4 v13, 0x5

    .line 65
    invoke-direct {v8, v12, v13, v10}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;-><init>(Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    sput-object v8, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->MOUSE_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 69
    .line 70
    const/4 v10, 0x6

    .line 71
    new-array v10, v10, [Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 72
    .line 73
    aput-object v0, v10, v2

    .line 74
    .line 75
    aput-object v1, v10, v4

    .line 76
    .line 77
    aput-object v3, v10, v7

    .line 78
    .line 79
    aput-object v5, v10, v9

    .line 80
    .line 81
    aput-object v6, v10, v11

    .line 82
    .line 83
    aput-object v8, v10, v13

    .line 84
    .line 85
    sput-object v10, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->$VALUES:[Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 86
    .line 87
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
    iput p3, p0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->type:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->$VALUES:[Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getSourceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->type:I

    .line 2
    .line 3
    return v0
.end method
