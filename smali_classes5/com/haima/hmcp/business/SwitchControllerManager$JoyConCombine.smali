.class Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/SwitchControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JoyConCombine"
.end annotation


# instance fields
.field private group:I

.field private joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

.field private joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

.field private left:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

.field private right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 17
    .line 18
    iput p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->group:I

    .line 19
    .line 20
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->left:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->group:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->combineLeft(Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/beans/JoyStickBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/beans/JoyStickBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->combineRight(Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private combineLeft(Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    instance-of p1, p1, Landroid/view/MotionEvent;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 14
    .line 15
    iget v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 16
    .line 17
    cmpl-float v1, p1, v1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 22
    .line 23
    iget v2, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 24
    .line 25
    cmpl-float v1, v1, v2

    .line 26
    .line 27
    if-eqz v1, :cond_b

    .line 28
    .line 29
    :cond_1
    iput p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 30
    .line 31
    iget p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 32
    .line 33
    iput p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 39
    .line 40
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 41
    .line 42
    if-eq p1, v1, :cond_3

    .line 43
    .line 44
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 45
    .line 46
    :cond_3
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 47
    .line 48
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 49
    .line 50
    if-eq p1, v1, :cond_4

    .line 51
    .line 52
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 53
    .line 54
    :cond_4
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 57
    .line 58
    if-eq p1, v1, :cond_5

    .line 59
    .line 60
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 61
    .line 62
    :cond_5
    iget-object p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 65
    .line 66
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->equalsObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 73
    .line 74
    iget-object v0, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 75
    .line 76
    iput-object v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 77
    .line 78
    :cond_6
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 81
    .line 82
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 83
    .line 84
    if-eq p1, v1, :cond_7

    .line 85
    .line 86
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 87
    .line 88
    :cond_7
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 89
    .line 90
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 91
    .line 92
    if-eq p1, v1, :cond_8

    .line 93
    .line 94
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 95
    .line 96
    :cond_8
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 97
    .line 98
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 99
    .line 100
    if-eq p1, v1, :cond_9

    .line 101
    .line 102
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 103
    .line 104
    :cond_9
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 105
    .line 106
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 107
    .line 108
    if-eq p1, v1, :cond_a

    .line 109
    .line 110
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 111
    .line 112
    :cond_a
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 113
    .line 114
    iget-boolean p2, v0, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 115
    .line 116
    if-eq p1, p2, :cond_b

    .line 117
    .line 118
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 119
    .line 120
    :cond_b
    :goto_0
    return-void
.end method

.method private combineRight(Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    instance-of p1, p1, Landroid/view/MotionEvent;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 14
    .line 15
    iget v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 16
    .line 17
    cmpl-float v1, p1, v1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 22
    .line 23
    iget v2, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 24
    .line 25
    cmpl-float v1, v1, v2

    .line 26
    .line 27
    if-eqz v1, :cond_b

    .line 28
    .line 29
    :cond_1
    iput p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 30
    .line 31
    iget p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 32
    .line 33
    iput p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 39
    .line 40
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 41
    .line 42
    if-eq p1, v1, :cond_3

    .line 43
    .line 44
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 45
    .line 46
    :cond_3
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 47
    .line 48
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 49
    .line 50
    if-eq p1, v1, :cond_4

    .line 51
    .line 52
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 53
    .line 54
    :cond_4
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 57
    .line 58
    if-eq p1, v1, :cond_5

    .line 59
    .line 60
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 61
    .line 62
    :cond_5
    iget-object p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 65
    .line 66
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->equalsObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 73
    .line 74
    iget-object v0, p2, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 75
    .line 76
    iput-object v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 77
    .line 78
    :cond_6
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 81
    .line 82
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 83
    .line 84
    if-eq p1, v1, :cond_7

    .line 85
    .line 86
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 87
    .line 88
    :cond_7
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 89
    .line 90
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 91
    .line 92
    if-eq p1, v1, :cond_8

    .line 93
    .line 94
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 95
    .line 96
    :cond_8
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 97
    .line 98
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 99
    .line 100
    if-eq p1, v1, :cond_9

    .line 101
    .line 102
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 103
    .line 104
    :cond_9
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 105
    .line 106
    iget-boolean v1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 107
    .line 108
    if-eq p1, v1, :cond_a

    .line 109
    .line 110
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 111
    .line 112
    :cond_a
    iget-boolean p1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 113
    .line 114
    iget-boolean p2, v0, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 115
    .line 116
    if-eq p1, p2, :cond_b

    .line 117
    .line 118
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 119
    .line 120
    :cond_b
    :goto_0
    return-void
.end method

.method private equalsObjects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p1, p2, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method


# virtual methods
.method public addLeft(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->left:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 2
    .line 3
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->access$900()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "group "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->group:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ": left joy-con added"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public addRight(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 2
    .line 3
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->access$900()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "group "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->group:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ": right joy-con added"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->left:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getIndex()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getIndex()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getIndex()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getIndex()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public remove(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->left:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "group "

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    iput-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->left:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 16
    .line 17
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->access$900()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->group:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ": left joy-con removed"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ne v0, p1, :cond_1

    .line 56
    .line 57
    iput-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 58
    .line 59
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->access$900()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->group:I

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ": right joy-con removed"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_1
    const/4 p1, 0x0

    .line 90
    return p1
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
    const-string v1, "JoyConCombine{left="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->left:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", right="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->right:Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", joyBeanLeft="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanLeft:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", joyBeanRight="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->joyBeanRight:Lcom/haima/hmcp/beans/JoyStickBean;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", group="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->group:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x7d

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
