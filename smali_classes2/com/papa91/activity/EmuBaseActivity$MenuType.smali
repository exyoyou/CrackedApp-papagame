.class final enum Lcom/papa91/activity/EmuBaseActivity$MenuType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/activity/EmuBaseActivity$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum cheating:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum gate:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum oneKey:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum performance:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum slot:Lcom/papa91/activity/EmuBaseActivity$MenuType;

.field public static final enum vip:Lcom/papa91/activity/EmuBaseActivity$MenuType;


# instance fields
.field private mCode:I

.field private mDesc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/papa91/activity/EmuBaseActivity$MenuType;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity$MenuType;->slot:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity$MenuType;->cheating:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity$MenuType;->performance:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity$MenuType;->vip:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity$MenuType;->oneKey:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity$MenuType;->gate:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 2
    .line 3
    const-string v1, "\u5b58\u6863"

    .line 4
    .line 5
    const-string v2, "slot"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->slot:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 13
    .line 14
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 15
    .line 16
    const-string v1, "\u91d1\u624b\u6307"

    .line 17
    .line 18
    const-string v2, "cheating"

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->cheating:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 25
    .line 26
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 27
    .line 28
    const-string v1, "\u8bbe\u7f6e"

    .line 29
    .line 30
    const-string v2, "performance"

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->performance:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 37
    .line 38
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 39
    .line 40
    const-string v1, "\u4f1a\u5458"

    .line 41
    .line 42
    const-string v2, "vip"

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->vip:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 49
    .line 50
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 51
    .line 52
    const-string v1, "\u4e00\u952e\u6280\u80fd"

    .line 53
    .line 54
    const-string v2, "oneKey"

    .line 55
    .line 56
    const/4 v4, 0x5

    .line 57
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->oneKey:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 61
    .line 62
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 63
    .line 64
    const/4 v1, 0x6

    .line 65
    const-string v2, "\u9009\u5173"

    .line 66
    .line 67
    const-string v3, "gate"

    .line 68
    .line 69
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/papa91/activity/EmuBaseActivity$MenuType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->gate:Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 73
    .line 74
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity$MenuType;->$values()[Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->$VALUES:[Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 79
    .line 80
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
    iput p3, p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->mCode:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->mDesc:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/activity/EmuBaseActivity$MenuType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/papa91/activity/EmuBaseActivity$MenuType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->$VALUES:[Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/papa91/activity/EmuBaseActivity$MenuType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/papa91/activity/EmuBaseActivity$MenuType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity$MenuType;->mCode:I

    .line 2
    .line 3
    return v0
.end method
