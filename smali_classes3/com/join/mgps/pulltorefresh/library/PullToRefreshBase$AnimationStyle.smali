.class public final enum Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 2
    .line 3
    const-string v1, "ROTATE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 12
    .line 13
    const-string v1, "FLIP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 20
    .line 21
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 26
    .line 27
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

.method static getDefault()Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method static mapIntToValue(I)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeInt"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    sget-object p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
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
    const-class v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/join/mgps/pulltorefresh/library/internal/LoadingLayout;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mode",
            "scrollDirection",
            "attrs"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->d:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lcom/join/mgps/pulltorefresh/library/internal/FlipLoadingLayout;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/mgps/pulltorefresh/library/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
