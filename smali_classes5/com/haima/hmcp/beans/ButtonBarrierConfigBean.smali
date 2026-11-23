.class public Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;
    }
.end annotation


# instance fields
.field public buttonBarriers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ButtonBarrier;",
            ">;>;"
        }
    .end annotation
.end field


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

.method private findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->buttonBarriers:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->buttonBarriers:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v0, v2, :cond_2

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget v3, v2, Lcom/haima/hmcp/beans/ButtonBarrier;->keyCode:I

    .line 45
    .line 46
    if-ne v3, p2, :cond_1

    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    return-object v1
.end method

.method private findJoyToMouseOrFallback(I)Lcom/haima/hmcp/beans/ButtonBarrier;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->JOY_TO_MOUSE_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->GLOBAL:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 11
    .line 12
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method


# virtual methods
.method public findButtonBarrier(Landroid/view/KeyEvent;Z)Lcom/haima/hmcp/beans/ButtonBarrier;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->buttonBarriers:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v1, :cond_7

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-direct {p0, p2}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findJoyToMouseOrFallback(I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object p2, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->GLOBAL:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {p0, p2, v1}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    if-eqz p2, :cond_2

    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/InputDeviceUtil;->isRemoteControlDevice(ILandroid/view/KeyEvent;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    sget-object p2, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->DPAD_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-static {p2}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    sget-object p2, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->JOY_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/InputDeviceUtil;->isMouseOrKeyboardDevice(ILandroid/view/KeyEvent;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    const/16 v0, 0x2002

    .line 96
    .line 97
    if-ne p2, v0, :cond_5

    .line 98
    .line 99
    const/4 p2, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    const/4 p2, 0x0

    .line 102
    :goto_1
    if-eqz p2, :cond_6

    .line 103
    .line 104
    sget-object p2, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->MOUSE_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_6
    sget-object p2, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;->KEYBOARD_KEY:Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/beans/ButtonBarrierConfigBean;->findButtonInList(Lcom/haima/hmcp/beans/ButtonBarrierConfigBean$BarrierKeyType;I)Lcom/haima/hmcp/beans/ButtonBarrier;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :cond_7
    :goto_2
    return-object v0
.end method
