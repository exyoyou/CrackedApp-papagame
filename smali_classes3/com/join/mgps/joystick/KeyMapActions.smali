.class public Lcom/join/mgps/joystick/KeyMapActions;
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

.method private static fillConnectedGamepadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "joyStickConfig"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/papa/controller/core/d;->r(Landroid/content/Context;)Lcom/papa/controller/core/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/papa/controller/core/d;->q()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    move-object v3, v1

    .line 13
    move-object v4, v3

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ge v2, v5, :cond_0

    .line 22
    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/papa/controller/core/ControllerManager$c;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/papa/controller/core/ControllerManager$c;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ";"

    .line 45
    .line 46
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lcom/papa/controller/core/ControllerManager$c;

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/papa/controller/core/ControllerManager$c;->a()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v7, ":"

    .line 72
    .line 73
    const-string v8, "_"

    .line 74
    .line 75
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    move-object v3, v5

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_1

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    add-int/lit8 p0, p0, -0x1

    .line 104
    .line 105
    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_2

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    add-int/lit8 p0, p0, -0x1

    .line 119
    .line 120
    invoke-virtual {v4, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual {p1, v3}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_name(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v4}, Lcom/papa/sim/statistic/JoyStickConfig;->setGamepad_mac(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public static saveStat(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "emuMap",
            "path"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x1f

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    const/16 p1, 0x21

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 21
    .line 22
    if-ne p1, v0, :cond_3

    .line 23
    .line 24
    const/16 p1, 0x2b

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 28
    .line 29
    if-ne p1, v0, :cond_4

    .line 30
    .line 31
    const/16 p1, 0x22

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 35
    .line 36
    if-ne p1, v0, :cond_5

    .line 37
    .line 38
    const/16 p1, 0x23

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_5
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 42
    .line 43
    if-ne p1, v0, :cond_6

    .line 44
    .line 45
    const/16 p1, 0x33

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_6
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 49
    .line 50
    if-ne p1, v0, :cond_7

    .line 51
    .line 52
    const/16 p1, 0x35

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_7
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 56
    .line 57
    if-ne p1, v0, :cond_8

    .line 58
    .line 59
    const/16 p1, 0x36

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_8
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 63
    .line 64
    if-ne p1, v0, :cond_9

    .line 65
    .line 66
    const/16 p1, 0x38

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_9
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->DC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 70
    .line 71
    if-ne p1, v0, :cond_a

    .line 72
    .line 73
    const/16 p1, 0x3c

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_a
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->N64:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 77
    .line 78
    if-ne p1, v0, :cond_b

    .line 79
    .line 80
    const/16 p1, 0x39

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_b
    const/4 p1, -0x1

    .line 84
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const-string v3, ""

    .line 105
    .line 106
    const-string v4, ""

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/papa/sim/statistic/t;->a0(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/papa/sim/statistic/JoyStickConfig;

    .line 113
    .line 114
    invoke-direct {v0}, Lcom/papa/sim/statistic/JoyStickConfig;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_c

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/JoyStickConfig;->setUid(I)V

    .line 132
    .line 133
    .line 134
    :cond_c
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/JoyStickConfig;->setType(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/JoyStickConfig;->setFile(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p0, v0}, Lcom/join/mgps/joystick/KeyMapActions;->fillConnectedGamepadInfo(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V

    .line 141
    .line 142
    .line 143
    new-instance p1, Ljava/util/Date;

    .line 144
    .line 145
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 149
    .line 150
    .line 151
    move-result-wide p1

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/papa/sim/statistic/JoyStickConfig;->setUpdate_time(J)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->nonDefaultMapper()Lcom/join/android/app/common/utils/JsonMapper;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p1, p2, p0}, Lcom/papa/sim/statistic/t;->x1(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method
