.class public final enum Lcom/zyyoona7/picker/ex/WheelHourView$HourType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zyyoona7/picker/ex/WheelHourView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HourType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zyyoona7/picker/ex/WheelHourView$HourType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/zyyoona7/picker/ex/WheelHourView$HourType;",
        "",
        "(Ljava/lang/String;I)V",
        "DEFAULT",
        "AM",
        "PM",
        "picker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

.field public static final enum AM:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

.field public static final enum DEFAULT:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

.field public static final enum PM:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    new-instance v1, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->DEFAULT:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    const-string v2, "AM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->AM:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    const-string v2, "PM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->PM:Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->$VALUES:[Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zyyoona7/picker/ex/WheelHourView$HourType;
    .locals 1

    const-class v0, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    return-object p0
.end method

.method public static values()[Lcom/zyyoona7/picker/ex/WheelHourView$HourType;
    .locals 1

    sget-object v0, Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->$VALUES:[Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    invoke-virtual {v0}, [Lcom/zyyoona7/picker/ex/WheelHourView$HourType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zyyoona7/picker/ex/WheelHourView$HourType;

    return-object v0
.end method
