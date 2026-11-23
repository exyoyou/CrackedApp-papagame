.class final enum Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/CustomCircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DirectionEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum BOTTOM:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum LEFT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum RIGHT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum TOP:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;


# instance fields
.field private final degree:F

.field private final direction:I


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->LEFT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->TOP:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->RIGHT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    sget-object v2, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->BOTTOM:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x43340000    # 180.0f

    .line 5
    .line 6
    const-string v3, "LEFT"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->LEFT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/high16 v2, 0x43870000    # 270.0f

    .line 17
    .line 18
    const-string v3, "TOP"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->TOP:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v3, "RIGHT"

    .line 30
    .line 31
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->RIGHT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 35
    .line 36
    new-instance v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    const/high16 v2, 0x42b40000    # 90.0f

    .line 40
    .line 41
    const-string v3, "BOTTOM"

    .line 42
    .line 43
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->BOTTOM:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 47
    .line 48
    invoke-static {}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->$values()[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->$VALUES:[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "direction",
            "degree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->direction:I

    .line 5
    .line 6
    iput p4, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->degree:F

    .line 7
    .line 8
    return-void
.end method

.method public static getDegree(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->getDirection(I)Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->getDegree()F

    move-result p0

    return p0
.end method

.method public static getDirection(I)Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->values()[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->equalsDescription(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->RIGHT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
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
    const-class v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->$VALUES:[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public equalsDescription(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->direction:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public getDegree()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->degree:F

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->direction:I

    return v0
.end method
