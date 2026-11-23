.class public final enum Lcom/join/mgps/customview/RewardType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/customview/RewardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/customview/RewardType;

.field public static final enum COMMENT_POST:Lcom/join/mgps/customview/RewardType;

.field public static final enum DAILY_LOGIN:Lcom/join/mgps/customview/RewardType;

.field public static final enum DOWNLOAD:Lcom/join/mgps/customview/RewardType;

.field public static final enum EVERDAYLOGIN:Lcom/join/mgps/customview/RewardType;

.field public static final enum REGISTER:Lcom/join/mgps/customview/RewardType;

.field public static final enum REPLY_POST:Lcom/join/mgps/customview/RewardType;

.field public static final enum SUBMIT_POST:Lcom/join/mgps/customview/RewardType;


# instance fields
.field private val:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/customview/RewardType;
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Lcom/join/mgps/customview/RewardType;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/join/mgps/customview/RewardType;->REGISTER:Lcom/join/mgps/customview/RewardType;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/join/mgps/customview/RewardType;->DOWNLOAD:Lcom/join/mgps/customview/RewardType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/join/mgps/customview/RewardType;->SUBMIT_POST:Lcom/join/mgps/customview/RewardType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/join/mgps/customview/RewardType;->COMMENT_POST:Lcom/join/mgps/customview/RewardType;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/join/mgps/customview/RewardType;->DAILY_LOGIN:Lcom/join/mgps/customview/RewardType;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    sget-object v2, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    sget-object v2, Lcom/join/mgps/customview/RewardType;->EVERDAYLOGIN:Lcom/join/mgps/customview/RewardType;

    .line 36
    .line 37
    aput-object v2, v0, v1

    .line 38
    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "\u5b8c\u6210\u6ce8\u518c"

    .line 5
    .line 6
    const-string v3, "REGISTER"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/join/mgps/customview/RewardType;->REGISTER:Lcom/join/mgps/customview/RewardType;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "\u5b8c\u6210\u4e0b\u8f7d"

    .line 17
    .line 18
    const-string v3, "DOWNLOAD"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/join/mgps/customview/RewardType;->DOWNLOAD:Lcom/join/mgps/customview/RewardType;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "\u5b8c\u6210\u53d1\u5e16"

    .line 29
    .line 30
    const-string v3, "SUBMIT_POST"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/join/mgps/customview/RewardType;->SUBMIT_POST:Lcom/join/mgps/customview/RewardType;

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "\u5b8c\u6210\u8bc4\u8bba"

    .line 41
    .line 42
    const-string v3, "COMMENT_POST"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/join/mgps/customview/RewardType;->COMMENT_POST:Lcom/join/mgps/customview/RewardType;

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "\u6bcf\u65e5\u79ef\u6781\u73a9\u5bb6"

    .line 53
    .line 54
    const-string v3, "DAILY_LOGIN"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/join/mgps/customview/RewardType;->DAILY_LOGIN:Lcom/join/mgps/customview/RewardType;

    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "\u5b8c\u6210\u56de\u590d"

    .line 65
    .line 66
    const-string v3, "REPLY_POST"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    .line 72
    .line 73
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "\u6bcf\u65e5\u767b\u5f55"

    .line 77
    .line 78
    const-string v3, "EVERDAYLOGIN"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/join/mgps/customview/RewardType;->EVERDAYLOGIN:Lcom/join/mgps/customview/RewardType;

    .line 84
    .line 85
    invoke-static {}, Lcom/join/mgps/customview/RewardType;->$values()[Lcom/join/mgps/customview/RewardType;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/join/mgps/customview/RewardType;->$VALUES:[Lcom/join/mgps/customview/RewardType;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/join/mgps/customview/RewardType;->val:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/customview/RewardType;
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
    const-class v0, Lcom/join/mgps/customview/RewardType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/customview/RewardType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/customview/RewardType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/RewardType;->$VALUES:[Lcom/join/mgps/customview/RewardType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/customview/RewardType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/customview/RewardType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getVal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RewardType;->val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
