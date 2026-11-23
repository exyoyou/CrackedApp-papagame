.class public Lcom/haima/hmcp/business/SwitchControllerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;,
        Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;,
        Lcom/haima/hmcp/business/SwitchControllerManager$SingletonHelper;
    }
.end annotation


# static fields
.field private static final JOY_CON_L_PRODUCT_ID:I = 0x2006

.field public static final JOY_CON_MODE_COMBINED:I = 0x1

.field public static final JOY_CON_MODE_SEPARATE:I = 0x0

.field private static final JOY_CON_R_PRODUCT_ID:I = 0x2007

.field public static final JOY_CON_TYPE_LEFT:I = 0x1

.field public static final JOY_CON_TYPE_NONE:I = 0x0

.field public static final JOY_CON_TYPE_RIGHT:I = 0x2

.field private static final KEY_JOY_CON_ENABLE:Ljava/lang/String; = "switch_joy_con_enable"

.field private static final KEY_JOY_CON_NAME_KEYWORDS_LIST:Ljava/lang/String; = "switch_joy_con_name_keywords_list"

.field private static final KEY_JOY_CON_WORK_MODE:Ljava/lang/String; = "switch_joy_con_work_mode"

.field private static final KEY_SWITCH_JOY_CON_LEFT_PRODUCT_ID_LIST:Ljava/lang/String; = "switch_joy_con_left_product_id_list"

.field private static final KEY_SWITCH_JOY_CON_RIGHT_PRODUCT_ID_LIST:Ljava/lang/String; = "switch_joy_con_right_product_id_list"

.field private static final KEY_SWITCH_VENDOR_ID_LIST:Ljava/lang/String; = "switch_joy_con_vendor_id_list"

.field private static final NINTENDO_VENDOR_ID:I = 0x57e

.field private static final TAG:Ljava/lang/String; = "SwitchControllerManager"


# instance fields
.field private final combineJoyConList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;",
            ">;"
        }
    .end annotation
.end field

.field private enable:Z

.field private joyConWorkMode:I

.field private final leftJoyConProductIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nameKeywordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rightJoyConProductIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final vendorIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final x86GamePadKeyEventReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final x86GamePadMotionEventReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->enable:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->nameKeywordsList:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->vendorIdList:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->leftJoyConProductIdList:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->rightJoyConProductIdList:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadKeyEventReportList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadMotionEventReportList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/business/SwitchControllerManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/SwitchControllerManager;-><init>()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private checkDeviceNameMatch(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->nameKeywordsList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->nameKeywordsList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "checkDeviceNameMatch--> device name: "

    .line 32
    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/4 v7, 0x1

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 v5, 0x1

    .line 67
    :goto_0
    if-eqz v5, :cond_1

    .line 68
    .line 69
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " matches keywords: "

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v7

    .line 98
    :cond_4
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, " does not match any keywords"

    .line 112
    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_1
    return v1
.end method

.method private combineJoyConData(Lcom/haima/hmcp/beans/JoyStickBean;Lcom/haima/hmcp/beans/JoyStickBean;Lcom/haima/hmcp/beans/JoyStickBean;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_16

    .line 2
    .line 3
    if-eqz p2, :cond_16

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 10
    .line 11
    iget-boolean v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L1:Z

    .line 16
    .line 17
    :cond_1
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 18
    .line 19
    iget-boolean v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L2:Z

    .line 24
    .line 25
    :cond_2
    iget v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 26
    .line 27
    iget v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 28
    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iput v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 34
    .line 35
    :cond_3
    iget v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 36
    .line 37
    iget v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 38
    .line 39
    cmpl-float v0, v0, v1

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iput v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 44
    .line 45
    :cond_4
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 46
    .line 47
    iget-boolean v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 48
    .line 49
    if-eq v0, v1, :cond_5

    .line 50
    .line 51
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->LS:Z

    .line 52
    .line 53
    :cond_5
    iget-object v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 54
    .line 55
    iget-object v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 56
    .line 57
    invoke-direct {p0, v0, v1}, Lcom/haima/hmcp/business/SwitchControllerManager;->equalsObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    iget-object v0, p2, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 64
    .line 65
    iput-object v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->L2AxisValue:Ljava/lang/Float;

    .line 66
    .line 67
    :cond_6
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 68
    .line 69
    iget-boolean v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 70
    .line 71
    if-eq v0, v1, :cond_7

    .line 72
    .line 73
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->UP:Z

    .line 74
    .line 75
    :cond_7
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 76
    .line 77
    iget-boolean v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 78
    .line 79
    if-eq v0, v1, :cond_8

    .line 80
    .line 81
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->DOWN:Z

    .line 82
    .line 83
    :cond_8
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 84
    .line 85
    iget-boolean v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 86
    .line 87
    if-eq v0, v1, :cond_9

    .line 88
    .line 89
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->LEFT:Z

    .line 90
    .line 91
    :cond_9
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 92
    .line 93
    iget-boolean v1, p2, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 94
    .line 95
    if-eq v0, v1, :cond_a

    .line 96
    .line 97
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/JoyStickBean;->RIGHT:Z

    .line 98
    .line 99
    :cond_a
    iget-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 100
    .line 101
    iget-boolean p2, p2, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 102
    .line 103
    if-eq v0, p2, :cond_b

    .line 104
    .line 105
    iput-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->SELECT:Z

    .line 106
    .line 107
    :cond_b
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 108
    .line 109
    iget-boolean v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 110
    .line 111
    if-eq p2, v0, :cond_c

    .line 112
    .line 113
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R1:Z

    .line 114
    .line 115
    :cond_c
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 116
    .line 117
    iget-boolean v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 118
    .line 119
    if-eq p2, v0, :cond_d

    .line 120
    .line 121
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R2:Z

    .line 122
    .line 123
    :cond_d
    iget p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 124
    .line 125
    iget v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 126
    .line 127
    cmpl-float p2, p2, v0

    .line 128
    .line 129
    if-eqz p2, :cond_e

    .line 130
    .line 131
    iput v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 132
    .line 133
    :cond_e
    iget p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 134
    .line 135
    iget v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 136
    .line 137
    cmpl-float p2, p2, v0

    .line 138
    .line 139
    if-eqz p2, :cond_f

    .line 140
    .line 141
    iput v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 142
    .line 143
    :cond_f
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 144
    .line 145
    iget-boolean v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 146
    .line 147
    if-eq p2, v0, :cond_10

    .line 148
    .line 149
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->RS:Z

    .line 150
    .line 151
    :cond_10
    iget-object p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 152
    .line 153
    iget-object v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 154
    .line 155
    invoke-direct {p0, p2, v0}, Lcom/haima/hmcp/business/SwitchControllerManager;->equalsObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-nez p2, :cond_11

    .line 160
    .line 161
    iget-object p2, p3, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 162
    .line 163
    iput-object p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->R2AxisValue:Ljava/lang/Float;

    .line 164
    .line 165
    :cond_11
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 166
    .line 167
    iget-boolean v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 168
    .line 169
    if-eq p2, v0, :cond_12

    .line 170
    .line 171
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->X:Z

    .line 172
    .line 173
    :cond_12
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 174
    .line 175
    iget-boolean v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 176
    .line 177
    if-eq p2, v0, :cond_13

    .line 178
    .line 179
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->Y:Z

    .line 180
    .line 181
    :cond_13
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 182
    .line 183
    iget-boolean v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 184
    .line 185
    if-eq p2, v0, :cond_14

    .line 186
    .line 187
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->A:Z

    .line 188
    .line 189
    :cond_14
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 190
    .line 191
    iget-boolean v0, p3, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 192
    .line 193
    if-eq p2, v0, :cond_15

    .line 194
    .line 195
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/JoyStickBean;->B:Z

    .line 196
    .line 197
    :cond_15
    iget-boolean p2, p1, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 198
    .line 199
    iget-boolean p3, p3, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 200
    .line 201
    if-eq p2, p3, :cond_16

    .line 202
    .line 203
    iput-boolean p3, p1, Lcom/haima/hmcp/beans/JoyStickBean;->START:Z

    .line 204
    .line 205
    :cond_16
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

.method private findLeftJoyConProductId(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->leftJoyConProductIdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private findRightJoyConProductId(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->rightJoyConProductIdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private findVendorId(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->vendorIdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public static getInstance()Lcom/haima/hmcp/business/SwitchControllerManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager$SingletonHelper;->access$100()Lcom/haima/hmcp/business/SwitchControllerManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private getJoyConIndex(Landroid/view/InputEvent;I)I
    .locals 6

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-static {v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ne v2, p1, :cond_3

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const/4 v2, 0x0

    .line 61
    :goto_1
    invoke-static {v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    invoke-static {v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ne v5, p1, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const/4 v3, 0x0

    .line 79
    :goto_2
    if-nez v2, :cond_5

    .line 80
    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    :cond_5
    invoke-virtual {v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->getIndex()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v0, "getJoyConIndex--> found matching device in group "

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$300(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", left match: "

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", right match: "

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ", min index: "

    .line 125
    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    return p1

    .line 144
    :cond_6
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "getJoyConIndex--> no matching device found, return original index: "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return p2

    .line 167
    :cond_7
    :goto_3
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v1, "getJoyConIndex--> event or device is null, return original index: "

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return p2
.end method

.method private getJoyConType(Landroid/view/InputDevice;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "getJoyConType--> device is null"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->isJoyCon(Landroid/view/InputDevice;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "getJoyConType--> is not joy-con device"

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->isLeftJoyConProduct(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->isRightJoyConProduct(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    :cond_3
    :goto_0
    sget-object v1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "getJoyConType--> productId: "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ", type: "

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return v0
.end method

.method private isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.method private isLeftJoyConProduct(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/SwitchControllerManager;->findLeftJoyConProductId(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "product id: "

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " is in left list"

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " is not in left list"

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    if-nez v0, :cond_2

    .line 65
    .line 66
    const/16 v0, 0x2006

    .line 67
    .line 68
    if-ne p1, v0, :cond_1

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    :cond_2
    :goto_1
    return v0
.end method

.method private isNintendoDevice(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/SwitchControllerManager;->findVendorId(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "vendor id: "

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " is in list"

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " is not in list"

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    if-nez v0, :cond_2

    .line 65
    .line 66
    const/16 v0, 0x57e

    .line 67
    .line 68
    if-ne p1, v0, :cond_1

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    :cond_2
    :goto_1
    return v0
.end method

.method private isRightJoyConProduct(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/SwitchControllerManager;->findRightJoyConProductId(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "product id: "

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " is in right list"

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " is not in right list"

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    if-nez v0, :cond_2

    .line 65
    .line 66
    const/16 v0, 0x2007

    .line 67
    .line 68
    if-ne p1, v0, :cond_1

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 p1, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    :cond_2
    :goto_1
    return v0
.end method

.method private parseLeftJoyConProductIdList(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "parseLeftJoyConProductIdList--> configs is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "switch_joy_con_left_product_id_list"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "parseLeftJoyConProductIdList--> left joy-con product id list not set"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "parseLeftJoyConProductIdList--> left joy-con product id list: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->leftJoyConProductIdList:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-ge v1, v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    iget-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->leftJoyConProductIdList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "parseLeftJoyConProductIdList--> parsed left joy-con product id list: "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->leftJoyConProductIdList:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "parseLeftJoyConProductIdList--> parse left joy-con product id list failed: "

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void
.end method

.method private parseNameKeywordsList(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "parseNameKeywordsList--> configs is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "switch_joy_con_name_keywords_list"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "parseNameKeywordsList--> name keywords list not set"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "parseNameKeywordsList--> name keywords list: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->nameKeywordsList:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ge v2, v3, :cond_5

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-ge v5, v6, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-nez v7, :cond_2

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_4

    .line 114
    .line 115
    iget-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->nameKeywordsList:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "parseNameKeywordsList--> parsed name keywords list: "

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->nameKeywordsList:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catch_0
    move-exception v0

    .line 149
    sget-object v1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v3, "parseNameKeywordsList--> parse name keywords list failed: "

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    :goto_2
    return-void
.end method

.method private parseRightJoyConProductIdList(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "parseRightJoyConProductIdList--> configs is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "switch_joy_con_right_product_id_list"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "parseRightJoyConProductIdList--> right joy-con product id list not set"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "parseRightJoyConProductIdList--> right joy-con product id list: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->rightJoyConProductIdList:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-ge v1, v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    iget-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->rightJoyConProductIdList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "parseRightJoyConProductIdList--> parsed right joy-con product id list: "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->rightJoyConProductIdList:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "parseRightJoyConProductIdList--> parse right joy-con product id list failed: "

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void
.end method

.method private parseVendorIdList(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "parseVendorIdList--> configs is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "switch_joy_con_vendor_id_list"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "parseVendorIdList--> vendor id list not set"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "parseVendorIdList--> vendor id list: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->vendorIdList:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-ge v1, v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    iget-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->vendorIdList:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "parseVendorIdList--> parsed vendor id list: "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->vendorIdList:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "parseVendorIdList--> parse vendor id list failed: "

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void
.end method

.method private parseWorkEnable(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "parseWorkEnable--> configs is null, use default "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->enable:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string v0, "switch_joy_con_enable"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "parseWorkEnable--> enable not set, use default "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->enable:Z

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "parseWorkEnable--> enable: "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput-boolean p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->enable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "parseWorkEnable--> parse enable failed, use default "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-boolean v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->enable:Z

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void
.end method

.method private parseWorkModel(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ", use combined mode"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "parseWorkModel--> configs is null, use combined mode"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v2, "switch_joy_con_work_mode"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "parseWorkModel--> work mode not set, use combined mode"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "parseWorkModel--> work mode: "

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    if-eq v3, v1, :cond_2

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v5, "parseWorkModel--> invalid mode: "

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iput v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v5, "parseWorkModel--> mode: "

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    const-string v5, "separate"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const-string v5, "combined"

    .line 108
    .line 109
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iput v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    sget-object v2, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 123
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v4, "parseWorkModel--> parse mode failed: "

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 148
    .line 149
    :goto_1
    return-void
.end method


# virtual methods
.method public addDevice(Landroid/view/InputDevice;I)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string p2, "addDevice--> device is null"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget-object v1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "addDevice--> device = "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", \nindex: "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const-string p1, "addDevice--> is not game-pad device"

    .line 49
    .line 50
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :cond_1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->getJoyConType(Landroid/view/InputDevice;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Landroid/view/InputDevice;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const-string v5, " group right device"

    .line 73
    .line 74
    const-string v6, " group left device"

    .line 75
    .line 76
    const/4 v7, 0x1

    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;

    .line 84
    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const-string v9, " is exist in "

    .line 93
    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v8}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-ne v8, v2, :cond_4

    .line 105
    .line 106
    sget-object v3, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$300(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    const/4 v3, 0x1

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    if-eqz v8, :cond_2

    .line 143
    .line 144
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-ne v8, v2, :cond_2

    .line 153
    .line 154
    sget-object v3, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 155
    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$300(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    const/4 v3, 0x0

    .line 186
    :goto_2
    if-eqz v3, :cond_6

    .line 187
    .line 188
    return v7

    .line 189
    :cond_6
    iget-object v3, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    const/4 v8, 0x2

    .line 200
    if-eqz v4, :cond_a

    .line 201
    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;

    .line 207
    .line 208
    if-nez v4, :cond_8

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    const-string v10, " is add in "

    .line 216
    .line 217
    if-nez v9, :cond_9

    .line 218
    .line 219
    if-ne v1, v7, :cond_9

    .line 220
    .line 221
    new-instance v0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 222
    .line 223
    invoke-direct {v0, p1, p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;-><init>(Landroid/view/InputDevice;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->addLeft(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;)V

    .line 227
    .line 228
    .line 229
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$300(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :goto_4
    const/4 v0, 0x1

    .line 260
    goto :goto_5

    .line 261
    :cond_9
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    if-nez v9, :cond_7

    .line 266
    .line 267
    if-ne v1, v8, :cond_7

    .line 268
    .line 269
    new-instance v0, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 270
    .line 271
    invoke-direct {v0, p1, p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;-><init>(Landroid/view/InputDevice;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->addRight(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 278
    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-static {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$300(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_a
    :goto_5
    if-nez v0, :cond_d

    .line 309
    .line 310
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    new-instance v3, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;

    .line 317
    .line 318
    invoke-direct {v3, v0}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;-><init>(I)V

    .line 319
    .line 320
    .line 321
    const-string v4, " is add in new group "

    .line 322
    .line 323
    if-ne v1, v7, :cond_b

    .line 324
    .line 325
    new-instance v1, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 326
    .line 327
    invoke-direct {v1, p1, p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;-><init>(Landroid/view/InputDevice;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->addLeft(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;)V

    .line 331
    .line 332
    .line 333
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 334
    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v0, " left device"

    .line 350
    .line 351
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_b
    if-ne v1, v8, :cond_c

    .line 363
    .line 364
    new-instance v1, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 365
    .line 366
    invoke-direct {v1, p1, p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;-><init>(Landroid/view/InputDevice;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, v1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->addRight(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;)V

    .line 370
    .line 371
    .line 372
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 373
    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v0, " right device"

    .line 389
    .line 390
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    :cond_d
    return v7
.end method

.method public getDeviceIndex(Landroid/view/InputEvent;I)I
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "getDeviceIndex--> InputEvent = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", index = "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/haima/hmcp/business/SwitchControllerManager;->isEnable()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const-string p1, "getDeviceIndex--> joy-con support disable"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return p2

    .line 43
    :cond_0
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 57
    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "getDeviceIndex--> separate mode, return original index: "

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return p2

    .line 81
    :cond_2
    invoke-direct {p0, v1}, Lcom/haima/hmcp/business/SwitchControllerManager;->getJoyConType(Landroid/view/InputDevice;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    return p2

    .line 88
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/SwitchControllerManager;->getJoyConIndex(Landroid/view/InputEvent;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "getDeviceIndex--> joy-con index: "

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return p1

    .line 113
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v1, "getDeviceIndex--> event or device is null, return original index: "

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return p2
.end method

.method public handleJoyStickBean(Lcom/haima/hmcp/beans/JoyStickBean;Landroid/view/InputEvent;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/SwitchControllerManager;->isEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string p2, "handleJoyStickBean--> joy-con support disable"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/business/SwitchControllerManager;->isCombinedMode()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {p0, v1}, Lcom/haima/hmcp/business/SwitchControllerManager;->getJoyConType(Landroid/view/InputDevice;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    return-void

    .line 43
    :cond_4
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_8

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;

    .line 60
    .line 61
    if-nez v3, :cond_6

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    const/4 v4, 0x1

    .line 65
    if-ne v1, v4, :cond_7

    .line 66
    .line 67
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-ne v4, v5, :cond_5

    .line 86
    .line 87
    invoke-static {v3, p2, p1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$500(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_8

    .line 95
    .line 96
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getDevice()Landroid/view/InputDevice;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-eqz p2, :cond_8

    .line 105
    .line 106
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$600(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/beans/JoyStickBean;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$700(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/beans/JoyStickBean;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConData(Lcom/haima/hmcp/beans/JoyStickBean;Lcom/haima/hmcp/beans/JoyStickBean;Lcom/haima/hmcp/beans/JoyStickBean;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-ne v4, v5, :cond_5

    .line 137
    .line 138
    invoke-static {v3, p2, p1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$800(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;Landroid/view/InputEvent;Lcom/haima/hmcp/beans/JoyStickBean;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    if-eqz p2, :cond_8

    .line 146
    .line 147
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;->getDevice()Landroid/view/InputDevice;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    if-eqz p2, :cond_8

    .line 156
    .line 157
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$600(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/beans/JoyStickBean;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {v3}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$700(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/beans/JoyStickBean;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConData(Lcom/haima/hmcp/beans/JoyStickBean;Lcom/haima/hmcp/beans/JoyStickBean;Lcom/haima/hmcp/beans/JoyStickBean;)V

    .line 166
    .line 167
    .line 168
    :cond_8
    :goto_1
    return-void
.end method

.method public isCombinedMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public isJoyCon(Landroid/view/InputDevice;)Z
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/SwitchControllerManager;->isEnable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "isJoyCon--> joy-con support disable"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "isJoyCon--> device is null"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const v2, 0x1000010

    .line 31
    .line 32
    .line 33
    and-int v3, v0, v2

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eq v3, v2, :cond_3

    .line 37
    .line 38
    and-int/lit16 v2, v0, 0x401

    .line 39
    .line 40
    const/16 v3, 0x401

    .line 41
    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 48
    :goto_1
    if-nez v2, :cond_4

    .line 49
    .line 50
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "isJoyCon--> not a valid game controller device, sources: 0x"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :cond_4
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-direct {p0, v2}, Lcom/haima/hmcp/business/SwitchControllerManager;->checkDeviceNameMatch(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_6

    .line 94
    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const-string v6, "nintendo"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_5

    .line 108
    .line 109
    const-string v6, "joy-con"

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_5

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const/4 v5, 0x0

    .line 120
    :cond_6
    :goto_2
    invoke-direct {p0, v3}, Lcom/haima/hmcp/business/SwitchControllerManager;->isNintendoDevice(I)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->isLeftJoyConProduct(I)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_8

    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->isRightJoyConProduct(I)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_7

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    const/4 v7, 0x0

    .line 138
    goto :goto_4

    .line 139
    :cond_8
    :goto_3
    const/4 v7, 0x1

    .line 140
    :goto_4
    if-eqz v6, :cond_9

    .line 141
    .line 142
    if-eqz v7, :cond_9

    .line 143
    .line 144
    if-eqz v5, :cond_9

    .line 145
    .line 146
    const/4 v1, 0x1

    .line 147
    :cond_9
    sget-object v4, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 148
    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v9, "isJoyCon--> name: "

    .line 155
    .line 156
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v2, ", vendorId: "

    .line 163
    .line 164
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, ", productId: "

    .line 171
    .line 172
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, ", sources: "

    .line 179
    .line 180
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p1, ", isNintendo: "

    .line 187
    .line 188
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p1, ", isJoyConProduct: "

    .line 195
    .line 196
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p1, ", nameMatch: "

    .line 203
    .line 204
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p1, ", isJoyCon: "

    .line 211
    .line 212
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {v4, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return v1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->joyConWorkMode:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->nameKeywordsList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->vendorIdList:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->leftJoyConProductIdList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->rightJoyConProductIdList:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->enable:Z

    .line 30
    .line 31
    return-void
.end method

.method public removeDevice(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v2, p1}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->remove(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {v2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$200(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$400(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)Lcom/haima/hmcp/business/SwitchControllerManager$JoyConDevice;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->combineJoyConList:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/haima/hmcp/business/SwitchControllerManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "removeDevice--> removed empty group "

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;->access$300(Lcom/haima/hmcp/business/SwitchControllerManager$JoyConCombine;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_2
    return v1
.end method

.method public reportGamePadDeviceInfo(Landroid/view/InputEvent;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    instance-of p1, p1, Landroid/view/KeyEvent;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadKeyEventReportList:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadMotionEventReportList:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :goto_0
    if-eqz v2, :cond_3

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadKeyEventReportList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    const-string p1, "onKeyDown"

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    iget-object p1, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadMotionEventReportList:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    const-string p1, "onGenericMotionEvent"

    .line 71
    .line 72
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "source:"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, ",product id:"

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, ",data:"

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/InputDevice;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "13428"

    .line 126
    .line 127
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadKeyEventReportList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/business/SwitchControllerManager;->x86GamePadMotionEventReportList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setConfig(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->parseWorkEnable(Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->parseWorkModel(Ljava/util/HashMap;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->parseNameKeywordsList(Ljava/util/HashMap;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->parseVendorIdList(Ljava/util/HashMap;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->parseLeftJoyConProductIdList(Ljava/util/HashMap;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/SwitchControllerManager;->parseRightJoyConProductIdList(Ljava/util/HashMap;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
