.class public final enum Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean$ForumTabBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_ACTIVITY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_BEST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_FORUM_MEMBER:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_GIFT:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_HELP:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_LAST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_NORMAL:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_STRATEGY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_NORMAL:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_HELP:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_LAST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_BEST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_FORUM_MEMBER:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_ACTIVITY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_GIFT:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_STRATEGY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "normal_posts"

    .line 5
    .line 6
    const-string v3, "TAB_TYPE_NORMAL"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_NORMAL:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "help_posts"

    .line 17
    .line 18
    const-string v3, "TAB_TYPE_HELP"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_HELP:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "last_posts"

    .line 29
    .line 30
    const-string v3, "TAB_TYPE_LAST"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_LAST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "best_posts"

    .line 41
    .line 42
    const-string v3, "TAB_TYPE_BEST"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_BEST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 48
    .line 49
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "forum_members"

    .line 53
    .line 54
    const-string v3, "TAB_TYPE_FORUM_MEMBER"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_FORUM_MEMBER:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "activity_posts"

    .line 65
    .line 66
    const-string v3, "TAB_TYPE_ACTIVITY"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_ACTIVITY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 72
    .line 73
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "gift_posts"

    .line 77
    .line 78
    const-string v3, "TAB_TYPE_GIFT"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_GIFT:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 84
    .line 85
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "strategy_posts"

    .line 89
    .line 90
    const-string v3, "TAB_TYPE_STRATEGY"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_STRATEGY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 96
    .line 97
    invoke-static {}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->$values()[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->$VALUES:[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 102
    .line 103
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
            "name"
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
    iput-object p3, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
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
    const-class v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->$VALUES:[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
