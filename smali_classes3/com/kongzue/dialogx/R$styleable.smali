.class public final Lcom/kongzue/dialogx/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DialogXBaseRelativeLayout:[I

.field public static final DialogXBaseRelativeLayout_autoSafeArea:I = 0x0

.field public static final DialogXBaseRelativeLayout_baseFocusable:I = 0x1

.field public static final DialogXBaseRelativeLayout_interceptBack:I = 0x2

.field public static final DialogXMaxLayout:[I

.field public static final DialogXMaxLayout_dialogXSafetyMode:I = 0x0

.field public static final DialogXMaxLayout_interceptTouch:I = 0x1

.field public static final DialogXMaxLayout_lockWidth:I = 0x2

.field public static final DialogXMaxLayout_maxLayoutHeight:I = 0x3

.field public static final DialogXMaxLayout_maxLayoutWidth:I = 0x4

.field public static final DialogXMaxLayout_minLayoutHeight:I = 0x5

.field public static final DialogXMaxLayout_minLayoutWidth:I = 0x6

.field public static final ProgressView:[I

.field public static final ProgressView_progressStrokeColor:I = 0x0

.field public static final ProgressView_progressStrokeWidth:I = 0x1

.field public static final RealtimeBlurView:[I

.field public static final RealtimeBlurView_dialogxDarkMode:I = 0x0

.field public static final RealtimeBlurView_dialogxOverlayColorNoAlpha:I = 0x1

.field public static final RealtimeBlurView_realtimeBlurRadius:I = 0x2

.field public static final RealtimeBlurView_realtimeDownsampleFactor:I = 0x3

.field public static final RealtimeBlurView_realtimeOverlayColor:I = 0x4

.field public static final RealtimeBlurView_realtimeRadius:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f04007c

    const v1, 0x7f040358

    const v2, 0x7f04004e

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/kongzue/dialogx/R$styleable;->DialogXBaseRelativeLayout:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kongzue/dialogx/R$styleable;->DialogXMaxLayout:[I

    const v0, 0x7f0405e1

    const v1, 0x7f0405e2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/kongzue/dialogx/R$styleable;->ProgressView:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kongzue/dialogx/R$styleable;->RealtimeBlurView:[I

    return-void

    :array_0
    .array-data 4
        0x7f0401dc
        0x7f040359
        0x7f04049c
        0x7f040512
        0x7f040513
        0x7f040521
        0x7f040522
    .end array-data

    :array_1
    .array-data 4
        0x7f0401dd
        0x7f0401de
        0x7f04061e
        0x7f04061f
        0x7f040620
        0x7f040621
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
