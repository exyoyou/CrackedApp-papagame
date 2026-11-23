.class public Lcom/haima/hmcp/utils/InputDeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static isExternalKeyboardByDeviceSources(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/InputDevice;->getSources()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    and-int/lit16 v1, v1, 0x101

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_2
    :goto_1
    return v0
.end method

.method public static isMouseOrKeyboardDevice(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2002

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return v3

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x101

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    :goto_1
    if-eqz v0, :cond_3

    .line 29
    .line 30
    return v3

    .line 31
    :cond_3
    const/16 v0, 0x5f

    .line 32
    .line 33
    if-gt p0, v0, :cond_4

    .line 34
    .line 35
    const/16 v0, 0x1d

    .line 36
    .line 37
    if-ge p0, v0, :cond_5

    .line 38
    .line 39
    :cond_4
    const/16 v0, 0xa3

    .line 40
    .line 41
    if-gt p0, v0, :cond_6

    .line 42
    .line 43
    const/16 v0, 0x6f

    .line 44
    .line 45
    if-lt p0, v0, :cond_6

    .line 46
    .line 47
    :cond_5
    const/4 p0, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_6
    const/4 p0, 0x0

    .line 50
    :goto_2
    if-eqz p0, :cond_7

    .line 51
    .line 52
    return v3

    .line 53
    :cond_7
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_8

    .line 58
    .line 59
    return v2

    .line 60
    :cond_8
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_9

    .line 65
    .line 66
    return v2

    .line 67
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v4, "mouse"

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_a

    .line 78
    .line 79
    return v3

    .line 80
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "keyboard"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    and-int/2addr p0, v1

    .line 95
    if-ne p0, v1, :cond_b

    .line 96
    .line 97
    const/4 p0, 0x1

    .line 98
    goto :goto_3

    .line 99
    :cond_b
    const/4 p0, 0x0

    .line 100
    :goto_3
    if-eqz p1, :cond_c

    .line 101
    .line 102
    if-eqz p0, :cond_c

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    :cond_c
    return v2
.end method

.method public static isRemoteControlDevice(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getSources()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x201

    .line 14
    .line 15
    and-int/2addr v1, v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-nez v1, :cond_2

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "mouse"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    return v0

    .line 45
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "keyboard"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    return v0

    .line 58
    :cond_5
    const/16 v1, 0x1d

    .line 59
    .line 60
    if-lt p0, v1, :cond_7

    .line 61
    .line 62
    const/16 v1, 0x52

    .line 63
    .line 64
    if-eq p0, v1, :cond_7

    .line 65
    .line 66
    const/16 v1, 0x87

    .line 67
    .line 68
    if-ne p0, v1, :cond_6

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_6
    const/4 p0, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 74
    :goto_2
    const-string v1, "\u9065\u63a7\u5668"

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p0, :cond_8

    .line 81
    .line 82
    if-eqz p1, :cond_9

    .line 83
    .line 84
    :cond_8
    const/4 v0, 0x1

    .line 85
    :cond_9
    return v0
.end method
