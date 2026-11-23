.class public final enum Lcom/papa91/arc/MenuFrameActivity$MenuType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/MenuFrameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/papa91/arc/MenuFrameActivity$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum slot:Lcom/papa91/arc/MenuFrameActivity$MenuType;

.field public static final enum vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;


# direct methods
.method private static synthetic $values()[Lcom/papa91/arc/MenuFrameActivity$MenuType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/papa91/arc/MenuFrameActivity$MenuType;->slot:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/papa91/arc/MenuFrameActivity$MenuType;->cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/papa91/arc/MenuFrameActivity$MenuType;->performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 2
    .line 3
    const-string v1, "slot"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->slot:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 10
    .line 11
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 12
    .line 13
    const-string v1, "cheating"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->cheating:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 20
    .line 21
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 22
    .line 23
    const-string v1, "performance"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->performance:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 30
    .line 31
    new-instance v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 32
    .line 33
    const-string v1, "vip"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/papa91/arc/MenuFrameActivity$MenuType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->vip:Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 40
    .line 41
    invoke-static {}, Lcom/papa91/arc/MenuFrameActivity$MenuType;->$values()[Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->$VALUES:[Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 46
    .line 47
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

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/papa91/arc/MenuFrameActivity$MenuType;
    .locals 1

    .line 1
    const-class v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/papa91/arc/MenuFrameActivity$MenuType;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/MenuFrameActivity$MenuType;->$VALUES:[Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/papa91/arc/MenuFrameActivity$MenuType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/papa91/arc/MenuFrameActivity$MenuType;

    .line 8
    .line 9
    return-object v0
.end method
