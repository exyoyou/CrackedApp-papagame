.class final enum Lcom/join/mgps/activity/GameInformationActivityV2$GType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/activity/GameInformationActivityV2$GType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum comment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;


# instance fields
.field i:I


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/activity/GameInformationActivityV2$GType;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->comment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 2
    .line 3
    const-string v1, "webview"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 11
    .line 12
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 13
    .line 14
    const-string v1, "card"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 23
    .line 24
    const-string v1, "comment"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->comment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 31
    .line 32
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 33
    .line 34
    const-string v1, "commentTitle"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 43
    .line 44
    const-string v1, "TITLE"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 51
    .line 52
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 53
    .line 54
    const-string v1, "COMMENT"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 61
    .line 62
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 63
    .line 64
    const-string v1, "webtitle"

    .line 65
    .line 66
    const/16 v3, 0x8

    .line 67
    .line 68
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 72
    .line 73
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 74
    .line 75
    const-string v1, "REPLY"

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v0, v1, v2, v2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 82
    .line 83
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 84
    .line 85
    const-string v1, "sendcomment"

    .line 86
    .line 87
    const/16 v2, 0x9

    .line 88
    .line 89
    invoke-direct {v0, v1, v3, v2}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 93
    .line 94
    invoke-static {}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->$values()[Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->$VALUES:[Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 99
    .line 100
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
            "type"
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
    iput p3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->i:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2$GType;
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
    const-class v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/activity/GameInformationActivityV2$GType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->$VALUES:[Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/activity/GameInformationActivityV2$GType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public vaule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->i:I

    .line 2
    .line 3
    return v0
.end method
