.class public final synthetic Lcom/zyyoona7/wheel/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/graphics/Paint$Align;->values()[Landroid/graphics/Paint$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zyyoona7/wheel/b;->$EnumSwitchMapping$0:[I

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/zyyoona7/wheel/WheelView$DividerType;->values()[Lcom/zyyoona7/wheel/WheelView$DividerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zyyoona7/wheel/b;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/zyyoona7/wheel/WheelView$DividerType;->WRAP:Lcom/zyyoona7/wheel/WheelView$DividerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/zyyoona7/wheel/WheelView$DividerType;->WRAP_ALL:Lcom/zyyoona7/wheel/WheelView$DividerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;->values()[Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/zyyoona7/wheel/b;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;->LEFT:Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;->RIGHT:Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
