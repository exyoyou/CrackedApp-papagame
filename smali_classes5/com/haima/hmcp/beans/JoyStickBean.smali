.class public Lcom/haima/hmcp/beans/JoyStickBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final JOY_KEY_A:I = 0x1000

.field public static final JOY_KEY_B:I = 0x2000

.field public static final JOY_KEY_DOWN:I = 0x2

.field public static final JOY_KEY_L1:I = 0x100

.field public static final JOY_KEY_LEFT:I = 0x4

.field public static final JOY_KEY_LS:I = 0x40

.field public static final JOY_KEY_R1:I = 0x200

.field public static final JOY_KEY_RIGHT:I = 0x8

.field public static final JOY_KEY_RS:I = 0x80

.field public static final JOY_KEY_SELECT:I = 0x20

.field public static final JOY_KEY_START:I = 0x10

.field public static final JOY_KEY_UP:I = 0x1

.field public static final JOY_KEY_X:I = 0x4000

.field public static final JOY_KEY_Y:I = 0x8000

.field private static final MOTION_INVALID_VALUE:F = 0.004921628f

.field private static final STICK_MAX_VALUE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "JoyStickBean"


# instance fields
.field public A:Z

.field public B:Z

.field public DOWN:Z

.field public L1:Z

.field public L2:Z

.field public L2AxisValue:Ljava/lang/Float;

.field public LEFT:Z

.field public LS:Z

.field public LX_LEFT:Z

.field public LX_RIGHT:Z

.field public LY_DOWN:Z

.field public LY_UP:Z

.field public L_X:F

.field public L_Y:F

.field public R1:Z

.field public R2:Z

.field public R2AxisValue:Ljava/lang/Float;

.field public RIGHT:Z

.field public RS:Z

.field public RX_LEFT:Z

.field public RX_RIGHT:Z

.field public RY_DOWN:Z

.field public RY_UP:Z

.field public R_X:F

.field public R_Y:F

.field public SELECT:Z

.field public START:Z

.field public UP:Z

.field public X:Z

.field public Y:Z

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private calcDirection(FF)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "calcDirection "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ";"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "JoyStickBean"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    cmpl-float v1, p1, v0

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    cmpl-float v2, p2, v0

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const/4 v2, 0x1

    .line 51
    cmpg-float v3, p2, v0

    .line 52
    .line 53
    if-gez v3, :cond_1

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    cmpl-float p2, p2, v0

    .line 59
    .line 60
    if-lez p2, :cond_2

    .line 61
    .line 62
    iput-boolean v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 63
    .line 64
    :cond_2
    :goto_0
    cmpg-float p1, p1, v0

    .line 65
    .line 66
    if-gez p1, :cond_3

    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-lez v1, :cond_4

    .line 72
    .line 73
    iput-boolean v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 74
    .line 75
    :cond_4
    :goto_1
    return-void
.end method

.method private computeRockersDirectionLX()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LX_RIGHT:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LX_LEFT:Z

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/beans/JoyStickBean;->computeStickValue(ZZ)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 10
    .line 11
    return-void
.end method

.method private computeRockersDirectionLY()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LY_UP:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LY_DOWN:Z

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/beans/JoyStickBean;->computeStickValue(ZZ)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 10
    .line 11
    return-void
.end method

.method private computeRockersDirectionRX()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RX_RIGHT:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RX_LEFT:Z

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/beans/JoyStickBean;->computeStickValue(ZZ)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 10
    .line 11
    return-void
.end method

.method private computeRockersDirectionRY()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RY_UP:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RY_DOWN:Z

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/beans/JoyStickBean;->computeStickValue(ZZ)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 10
    .line 11
    return-void
.end method

.method private computeStickValue(ZZ)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    if-eqz p2, :cond_2

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    invoke-direct {p0, v0}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method private handleData(F)F
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmpg-double v4, v0, v2

    .line 12
    .line 13
    if-gez v4, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const v0, -0x40b33333    # -0.8f

    .line 18
    .line 19
    .line 20
    cmpg-float v0, p1, v0

    .line 21
    .line 22
    if-gtz v0, :cond_1

    .line 23
    .line 24
    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    .line 26
    return p1

    .line 27
    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    .line 28
    .line 29
    .line 30
    cmpl-float v0, p1, v0

    .line 31
    .line 32
    if-ltz v0, :cond_2

    .line 33
    .line 34
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    :cond_2
    return p1
.end method

.method private reviseMotion(FF)F
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    float-to-double v0, p2

    .line 6
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmpg-double p2, v0, v2

    .line 12
    .line 13
    if-gez p2, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const p2, -0x40b33333    # -0.8f

    .line 18
    .line 19
    .line 20
    cmpg-float p2, p1, p2

    .line 21
    .line 22
    if-gtz p2, :cond_1

    .line 23
    .line 24
    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    .line 26
    return p1

    .line 27
    :cond_1
    const p2, 0x3f4ccccd    # 0.8f

    .line 28
    .line 29
    .line 30
    cmpl-float p2, p1, p2

    .line 31
    .line 32
    if-ltz p2, :cond_2

    .line 33
    .line 34
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    :cond_2
    return p1
.end method


# virtual methods
.method public getBtnValue()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x1000

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    or-int/lit16 v0, v0, 0x2000

    .line 14
    .line 15
    :cond_1
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    or-int/lit16 v0, v0, 0x4000

    .line 20
    .line 21
    :cond_2
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    const v1, 0x8000

    .line 26
    .line 27
    .line 28
    or-int/2addr v0, v1

    .line 29
    :cond_3
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    or-int/lit16 v0, v0, 0x100

    .line 34
    .line 35
    :cond_4
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 36
    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    or-int/lit16 v0, v0, 0x200

    .line 40
    .line 41
    :cond_5
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 42
    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    or-int/lit8 v0, v0, 0x40

    .line 46
    .line 47
    :cond_6
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 48
    .line 49
    if-eqz v1, :cond_7

    .line 50
    .line 51
    or-int/lit16 v0, v0, 0x80

    .line 52
    .line 53
    :cond_7
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 54
    .line 55
    if-eqz v1, :cond_8

    .line 56
    .line 57
    or-int/lit8 v0, v0, 0x10

    .line 58
    .line 59
    :cond_8
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 60
    .line 61
    if-eqz v1, :cond_9

    .line 62
    .line 63
    or-int/lit8 v0, v0, 0x20

    .line 64
    .line 65
    :cond_9
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 66
    .line 67
    if-eqz v1, :cond_a

    .line 68
    .line 69
    or-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    :cond_a
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 72
    .line 73
    if-eqz v1, :cond_b

    .line 74
    .line 75
    or-int/lit8 v0, v0, 0x2

    .line 76
    .line 77
    :cond_b
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 78
    .line 79
    if-eqz v1, :cond_c

    .line 80
    .line 81
    or-int/lit8 v0, v0, 0x4

    .line 82
    .line 83
    :cond_c
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 84
    .line 85
    if-eqz v1, :cond_d

    .line 86
    .line 87
    or-int/lit8 v0, v0, 0x8

    .line 88
    .line 89
    :cond_d
    return v0
.end method

.method public parseKey(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseKey event:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "JoyStickBean"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v0, :cond_14

    .line 30
    .line 31
    const/16 v3, 0x60

    .line 32
    .line 33
    if-eq v0, v3, :cond_12

    .line 34
    .line 35
    const/16 v3, 0x61

    .line 36
    .line 37
    if-eq v0, v3, :cond_10

    .line 38
    .line 39
    const/16 v3, 0x63

    .line 40
    .line 41
    if-eq v0, v3, :cond_e

    .line 42
    .line 43
    const/16 v3, 0x64

    .line 44
    .line 45
    if-eq v0, v3, :cond_c

    .line 46
    .line 47
    packed-switch v0, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    packed-switch v0, :pswitch_data_1

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    :cond_0
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    :cond_1
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    const/4 v1, 0x1

    .line 84
    :cond_2
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_3
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    :cond_4
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    :cond_5
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_6

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    :cond_6
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_7

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    :cond_7
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_8

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    :cond_8
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_9

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    :cond_9
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_a

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    :cond_a
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_b

    .line 180
    .line 181
    const/4 v1, 0x1

    .line 182
    :cond_b
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_d

    .line 190
    .line 191
    const/4 v1, 0x1

    .line 192
    :cond_d
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_f

    .line 200
    .line 201
    const/4 v1, 0x1

    .line 202
    :cond_f
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_11

    .line 210
    .line 211
    const/4 v1, 0x1

    .line 212
    :cond_11
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_13

    .line 220
    .line 221
    const/4 v1, 0x1

    .line 222
    :cond_13
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    packed-switch v0, :pswitch_data_2

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_15

    .line 238
    .line 239
    const/4 v1, 0x1

    .line 240
    :cond_15
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_16

    .line 248
    .line 249
    const/4 v1, 0x1

    .line 250
    :cond_16
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-nez p1, :cond_17

    .line 258
    .line 259
    const/4 v1, 0x1

    .line 260
    :cond_17
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 261
    .line 262
    goto :goto_0

    .line 263
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_18

    .line 268
    .line 269
    const/4 v1, 0x1

    .line 270
    :cond_18
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 271
    .line 272
    :goto_0
    const/4 v1, 0x1

    .line 273
    :goto_1
    return v1

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :pswitch_data_2
    .packed-switch 0x220
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public parseMappingKey(II)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseKey keyCode:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "JoyStickBean"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x60

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq p1, v0, :cond_1a

    .line 28
    .line 29
    const/16 v0, 0x61

    .line 30
    .line 31
    if-eq p1, v0, :cond_18

    .line 32
    .line 33
    const/16 v0, 0x63

    .line 34
    .line 35
    if-eq p1, v0, :cond_16

    .line 36
    .line 37
    const/16 v0, 0x64

    .line 38
    .line 39
    if-eq p1, v0, :cond_14

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    packed-switch p1, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    packed-switch p1, :pswitch_data_2

    .line 48
    .line 49
    .line 50
    packed-switch p1, :pswitch_data_3

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :pswitch_0
    if-nez p2, :cond_0

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_0
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LY_UP:Z

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionLY()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :pswitch_1
    if-nez p2, :cond_1

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    :cond_1
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LY_DOWN:Z

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionLY()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :pswitch_2
    if-nez p2, :cond_2

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    :cond_2
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LX_LEFT:Z

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionLX()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :pswitch_3
    if-nez p2, :cond_3

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    :cond_3
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LX_RIGHT:Z

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionLX()V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_4
    if-nez p2, :cond_4

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    :cond_4
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RX_RIGHT:Z

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionRX()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :pswitch_5
    if-nez p2, :cond_5

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    :cond_5
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RX_LEFT:Z

    .line 109
    .line 110
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionRX()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_6
    if-nez p2, :cond_6

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    :cond_6
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RY_DOWN:Z

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionRY()V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_7
    if-nez p2, :cond_7

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    :cond_7
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RY_UP:Z

    .line 129
    .line 130
    invoke-direct {p0}, Lcom/haima/hmcp/beans/JoyStickBean;->computeRockersDirectionRY()V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :pswitch_8
    if-nez p2, :cond_8

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    :cond_8
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :pswitch_9
    if-nez p2, :cond_9

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    :cond_9
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_a
    if-nez p2, :cond_a

    .line 149
    .line 150
    const/4 v1, 0x1

    .line 151
    :cond_a
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_b
    if-nez p2, :cond_b

    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    :cond_b
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_c
    if-nez p2, :cond_c

    .line 161
    .line 162
    const/4 v1, 0x1

    .line 163
    :cond_c
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_d
    if-nez p2, :cond_d

    .line 167
    .line 168
    const/4 v1, 0x1

    .line 169
    :cond_d
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :pswitch_e
    if-nez p2, :cond_e

    .line 173
    .line 174
    const/4 v1, 0x1

    .line 175
    :cond_e
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :pswitch_f
    if-nez p2, :cond_f

    .line 179
    .line 180
    const/4 v1, 0x1

    .line 181
    :cond_f
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :pswitch_10
    if-nez p2, :cond_10

    .line 185
    .line 186
    const/4 v1, 0x1

    .line 187
    :cond_10
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_11
    if-nez p2, :cond_11

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    :cond_11
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :pswitch_12
    if-nez p2, :cond_12

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    :cond_12
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_13
    if-nez p2, :cond_13

    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    :cond_13
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_14
    if-nez p2, :cond_15

    .line 209
    .line 210
    const/4 v1, 0x1

    .line 211
    :cond_15
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_16
    if-nez p2, :cond_17

    .line 215
    .line 216
    const/4 v1, 0x1

    .line 217
    :cond_17
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_18
    if-nez p2, :cond_19

    .line 221
    .line 222
    const/4 v1, 0x1

    .line 223
    :cond_19
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_1a
    if-nez p2, :cond_1b

    .line 227
    .line 228
    const/4 v1, 0x1

    .line 229
    :cond_1b
    iput-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 230
    .line 231
    :goto_0
    const/4 v1, 0x1

    .line 232
    :goto_1
    return v1

    .line 233
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :pswitch_data_2
    .packed-switch 0x3df
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :pswitch_data_3
    .packed-switch 0x3e4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseMappingMotion(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    neg-float p1, p1

    .line 12
    iput p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 13
    .line 14
    invoke-direct {p0, p3}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 19
    .line 20
    invoke-direct {p0, p4}, Lcom/haima/hmcp/beans/JoyStickBean;->handleData(F)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    neg-float p1, p1

    .line 25
    iput p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 26
    .line 27
    return-void
.end method

.method public parseMotion(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x10

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/16 v3, 0xf

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-virtual {v1, v5}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/16 v7, 0xb

    .line 28
    .line 29
    invoke-virtual {v1, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const/16 v8, 0xe

    .line 34
    .line 35
    invoke-virtual {v1, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const/16 v9, 0xc

    .line 40
    .line 41
    invoke-virtual {v1, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const/16 v10, 0xd

    .line 46
    .line 47
    invoke-virtual {v1, v10}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    const/16 v11, 0x11

    .line 52
    .line 53
    invoke-virtual {v1, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    if-eqz v12, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    const/16 v12, 0x12

    .line 64
    .line 65
    invoke-virtual {v1, v12}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/16 v11, 0x17

    .line 71
    .line 72
    invoke-virtual {v1, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    if-eqz v12, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v11}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    const/16 v12, 0x16

    .line 83
    .line 84
    invoke-virtual {v1, v12}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v11, 0x0

    .line 90
    move-object v1, v11

    .line 91
    :goto_0
    if-eqz v3, :cond_2

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-direct {p0, v3, v2}, Lcom/haima/hmcp/beans/JoyStickBean;->calcDirection(FF)V

    .line 112
    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    const/4 v2, 0x0

    .line 117
    :goto_1
    if-eqz v4, :cond_3

    .line 118
    .line 119
    if-eqz v6, :cond_3

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/beans/JoyStickBean;->reviseMotion(FF)F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    iput v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/beans/JoyStickBean;->reviseMotion(FF)F

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    neg-float v2, v2

    .line 156
    iput v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 157
    .line 158
    const/4 v2, 0x1

    .line 159
    :cond_3
    if-eqz v7, :cond_4

    .line 160
    .line 161
    if-eqz v8, :cond_4

    .line 162
    .line 163
    invoke-virtual {v7}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v7}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/beans/JoyStickBean;->reviseMotion(FF)F

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    iput v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 180
    .line 181
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/beans/JoyStickBean;->reviseMotion(FF)F

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    neg-float v2, v2

    .line 198
    iput v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    if-eqz v9, :cond_5

    .line 202
    .line 203
    if-eqz v10, :cond_5

    .line 204
    .line 205
    invoke-virtual {v9}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-virtual {v9}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/beans/JoyStickBean;->reviseMotion(FF)F

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    iput v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 222
    .line 223
    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-direct {p0, v2, v3}, Lcom/haima/hmcp/beans/JoyStickBean;->reviseMotion(FF)F

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    neg-float v2, v2

    .line 240
    iput v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 241
    .line 242
    :goto_2
    const/4 v2, 0x1

    .line 243
    :cond_5
    if-eqz v11, :cond_8

    .line 244
    .line 245
    if-eqz v1, :cond_8

    .line 246
    .line 247
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    iput-object v2, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iput-object p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 274
    .line 275
    iget-object p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    const/4 v1, 0x0

    .line 282
    cmpl-float p1, p1, v1

    .line 283
    .line 284
    if-lez p1, :cond_6

    .line 285
    .line 286
    const/4 p1, 0x1

    .line 287
    goto :goto_3

    .line 288
    :cond_6
    const/4 p1, 0x0

    .line 289
    :goto_3
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 290
    .line 291
    iget-object p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    cmpl-float p1, p1, v1

    .line 298
    .line 299
    if-lez p1, :cond_7

    .line 300
    .line 301
    const/4 p1, 0x1

    .line 302
    goto :goto_4

    .line 303
    :cond_7
    const/4 p1, 0x0

    .line 304
    :goto_4
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .line 306
    const/4 v0, 0x1

    .line 307
    goto :goto_5

    .line 308
    :cond_8
    move v0, v2

    .line 309
    goto :goto_5

    .line 310
    :catch_0
    move-exception p1

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v2, "parseMotion error:"

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p1, ";"

    .line 329
    .line 330
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget p1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->id:I

    .line 334
    .line 335
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    const-string v1, "JoyStickBean"

    .line 343
    .line 344
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :goto_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "JoyStickBean{id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->id:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", A="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", B="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", X="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", Y="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", LS="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", RS="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", L1="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", R1="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", L2="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", R2="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", START="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", SELECT="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", UP="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", DOWN="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", LEFT="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", RIGHT="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", L_X="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", L_Y="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", R_X="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", R_Y="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", L2AxisValue="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", R2AxisValue="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const/16 v1, 0x7d

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    return-object v0
.end method
