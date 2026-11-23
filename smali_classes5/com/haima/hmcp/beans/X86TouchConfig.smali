.class public Lcom/haima/hmcp/beans/X86TouchConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DOWN_MAX_DISTANCE:I = 0x1e

.field public static final DEFAULT_LEFT_DOWN_DURATION:I = 0x7d0

.field public static final DEFAULT_MOUSE_SLIDE_OFFSET:I = 0xa

.field public static final DEFAULT_MOUSE_SLIDE_TOUCH_TIME_MS:I = 0x320

.field public static final DEFAULT_RIGHT_DOWN_DURATION:I = 0x1f4


# instance fields
.field public downMaxDistance:I

.field public isMouseSlideModeRClickModeOn:Z

.field public leftDownDuration:I

.field public mouseSlideOffset:I

.field public mouseSlideTouchTime:J

.field public rightDownDuration:I

.field public screenSlideConfig:Lcom/haima/hmcp/beans/X86ScreenSlideConfig;

.field public touchScreenModeClickDelayTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x320

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/beans/X86TouchConfig;->mouseSlideTouchTime:J

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/beans/X86TouchConfig;->mouseSlideOffset:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/haima/hmcp/beans/X86TouchConfig;->touchScreenModeClickDelayTime:I

    .line 14
    .line 15
    const/16 v1, 0x1f4

    .line 16
    .line 17
    iput v1, p0, Lcom/haima/hmcp/beans/X86TouchConfig;->rightDownDuration:I

    .line 18
    .line 19
    const/16 v1, 0x7d0

    .line 20
    .line 21
    iput v1, p0, Lcom/haima/hmcp/beans/X86TouchConfig;->leftDownDuration:I

    .line 22
    .line 23
    const/16 v1, 0x1e

    .line 24
    .line 25
    iput v1, p0, Lcom/haima/hmcp/beans/X86TouchConfig;->downMaxDistance:I

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/X86TouchConfig;->isMouseSlideModeRClickModeOn:Z

    .line 28
    .line 29
    return-void
.end method
