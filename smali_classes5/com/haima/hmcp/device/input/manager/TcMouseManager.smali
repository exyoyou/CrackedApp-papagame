.class public Lcom/haima/hmcp/device/input/manager/TcMouseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;


# static fields
.field public static final KEYCODE_CENTER:I = 0x17

.field public static final KEYCODE_CENTER_DANG_BEI:I = 0x42

.field public static final KEYCODE_DOWN:I = 0x14

.field public static final KEYCODE_LEFT:I = 0x15

.field public static final KEYCODE_RIGHT:I = 0x16

.field public static final KEYCODE_UP:I = 0x13

.field public static final KEY_MOUSE_MOVE_STEP:Ljava/lang/String; = "KEY_MOUSE_MOVE_STEP"

.field public static MOUSE_MOVE_STEP:I = 0x19

.field public static final MOUSE_STARTX:I = 0xfa

.field public static final MOUSE_STARY:I = 0x15e

.field public static final MOUSE_TYPE:I


# instance fields
.field private defMaxSpeed:I

.field private defTimes:I

.field private isKeyEventCousumed:Z

.field private isShowMouse:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentType:I

.field private mIsLongPressDirectionKey:Z

.field private mLastEventCode:J

.field private mLastEventTime:J

.field private mMouseKeyDown:Z

.field private mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

.field private mParentView:Landroid/view/ViewGroup;

.field private mSpeed:I

.field private point:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isShowMouse:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isKeyEventCousumed:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mSpeed:I

    .line 11
    .line 12
    const/16 v0, 0x190

    .line 13
    .line 14
    iput v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->defTimes:I

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    iput v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->defMaxSpeed:I

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseKeyDown:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mIsLongPressDirectionKey:Z

    .line 22
    .line 23
    return-void
.end method

.method private dispatchKeyEventToMouse(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x42

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x60

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mIsLongPressDirectionKey:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const v1, 0x4019999a    # 2.4f

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mSpeed:I

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->moveMouse(Landroid/view/KeyEvent;F)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->onCenterButtonClicked(Landroid/view/KeyEvent;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    return-void
.end method

.method private getMotionEvent(III)Landroid/view/MotionEvent;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v7, 0x0

    .line 10
    int-to-float v5, p1

    .line 11
    int-to-float v6, p2

    .line 12
    move v4, p3

    .line 13
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private isQuickClick(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mLastEventTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->defTimes:I

    .line 9
    .line 10
    int-to-long v2, p1

    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private sendMotionEvent(III)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    if-eq p3, v2, :cond_1

    .line 7
    .line 8
    if-eq p3, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseKeyDown:Z

    .line 12
    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    const/4 p3, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v3, 0x0

    .line 18
    iput-boolean v3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseKeyDown:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iput-boolean v2, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseKeyDown:Z

    .line 22
    .line 23
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->getMotionEvent(III)Landroid/view/MotionEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-ne p3, v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_4
    const/4 v0, 0x0

    .line 39
    if-nez p3, :cond_6

    .line 40
    .line 41
    iget-object p3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 42
    .line 43
    if-eqz p3, :cond_5

    .line 44
    .line 45
    iget v1, p3, Landroid/graphics/Point;->x:I

    .line 46
    .line 47
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    invoke-direct {p0, v1, p3, v2}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->getMotionEvent(III)Landroid/view/MotionEvent;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 54
    .line 55
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 59
    .line 60
    :cond_5
    new-instance p3, Landroid/graphics/Point;

    .line 61
    .line 62
    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iput-object p3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_6
    if-ne p3, v2, :cond_8

    .line 74
    .line 75
    iget-object p3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 76
    .line 77
    if-eqz p3, :cond_7

    .line 78
    .line 79
    iget v1, p3, Landroid/graphics/Point;->x:I

    .line 80
    .line 81
    if-ne v1, p1, :cond_7

    .line 82
    .line 83
    iget p1, p3, Landroid/graphics/Point;->y:I

    .line 84
    .line 85
    if-ne p1, p2, :cond_7

    .line 86
    .line 87
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 88
    .line 89
    :cond_7
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_8
    if-ne p3, v1, :cond_a

    .line 96
    .line 97
    iget-object p3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 98
    .line 99
    if-eqz p3, :cond_9

    .line 100
    .line 101
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 102
    .line 103
    .line 104
    :cond_9
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 105
    .line 106
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    .line 108
    .line 109
    :cond_a
    :goto_1
    return-void
.end method


# virtual methods
.method public clearFPoint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {p0, v1, v0, v2}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->getMotionEvent(III)Landroid/view/MotionEvent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->point:Landroid/graphics/Point;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public dispatchKeyCodeToMouse(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 2
    .line 3
    int-to-float p2, p2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->moveMouse(IF)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getCurrentActivityType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mCurrentType:I

    .line 2
    .line 3
    return v0
.end method

.method public getmMouseView()Lcom/haima/hmcp/device/input/view/TcMouseView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p1, v0, p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;-><init>(Landroid/content/Context;Lcom/haima/hmcp/device/input/manager/TcMouseManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/haima/hmcp/device/input/view/TcMouseView;->setOnMouseListener(Lcom/haima/hmcp/device/input/view/TcMouseView$OnMouseListener;)V

    .line 19
    .line 20
    .line 21
    iput p2, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mCurrentType:I

    .line 22
    .line 23
    return-void
.end method

.method public isShowMouse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isShowMouse:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDpadClicked(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isShowMouse:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x17

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v2, :cond_7

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0x42

    .line 21
    .line 22
    if-eq v0, v2, :cond_7

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v2, 0x60

    .line 29
    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_5

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-lez v0, :cond_2

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mIsLongPressDirectionKey:Z

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mIsLongPressDirectionKey:Z

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isKeyEventCousumed:Z

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isQuickClick(Landroid/view/KeyEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    int-to-long v0, v0

    .line 65
    iget-wide v4, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mLastEventCode:J

    .line 66
    .line 67
    cmp-long v2, v0, v4

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    iget v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mSpeed:I

    .line 72
    .line 73
    add-int/2addr v0, v3

    .line 74
    iput v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mSpeed:I

    .line 75
    .line 76
    iget v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->defMaxSpeed:I

    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, 0x1

    .line 84
    :goto_0
    iput v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mSpeed:I

    .line 85
    .line 86
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iput-wide v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mLastEventTime:J

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-long v0, v0

    .line 97
    iput-wide v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mLastEventCode:J

    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->dispatchKeyEventToMouse(Landroid/view/KeyEvent;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v3, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isKeyEventCousumed:Z

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-ne v0, v3, :cond_8

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isKeyEventCousumed:Z

    .line 112
    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->dispatchKeyEventToMouse(Landroid/view/KeyEvent;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    iput-boolean v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isKeyEventCousumed:Z

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->dispatchKeyEventToMouse(Landroid/view/KeyEvent;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    :goto_3
    return v3
.end method

.method public onclick(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isShowMouse()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->onDpadClicked(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public sendCenterClickEvent(III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->sendMotionEvent(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sendMouseHoverEvent(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->sendMotionEvent(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setMouseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/device/input/view/TcMouseView;->setMouseBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMouseIcon(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->setMouseIcon(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMouseMoveStep(I)V
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 v0, 0xa

    .line 6
    .line 7
    if-le p1, v0, :cond_1

    .line 8
    .line 9
    const/16 p1, 0xa

    .line 10
    .line 11
    :cond_1
    :goto_0
    mul-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x5

    .line 14
    .line 15
    sput p1, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->MOUSE_MOVE_STEP:I

    .line 16
    .line 17
    return-void
.end method

.method public setMouseOffSet(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->setMouseOffSet(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMouseOffSetRatio(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->setMouseOffSetRatio(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMousePoint(FF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-ltz v1, :cond_1

    .line 5
    .line 6
    cmpg-float v0, p2, v0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    mul-float p1, p1, v1

    .line 21
    .line 22
    float-to-int p1, p1

    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    mul-float p2, p2, v1

    .line 31
    .line 32
    float-to-int p2, p2

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/device/input/view/TcMouseView;->setMousePoint(II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public setShowMouse(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isShowMouse:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->isShowMouse:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public showMouseView()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mMouseView:Lcom/haima/hmcp/device/input/view/TcMouseView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/haima/hmcp/device/input/manager/TcMouseManager;->mParentView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
