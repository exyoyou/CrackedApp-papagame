.class final enum Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayout5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

.field public static final enum FLING:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

.field public static final enum IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

.field public static final enum TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->FLING:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 2
    .line 3
    const-string v1, "IDLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 12
    .line 13
    const-string v1, "TOUCH_SCROLL"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 20
    .line 21
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 22
    .line 23
    const-string v1, "FLING"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->FLING:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 30
    .line 31
    invoke-static {}, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->$values()[Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->$VALUES:[Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
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
    const-class v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->$VALUES:[Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 8
    .line 9
    return-object v0
.end method
