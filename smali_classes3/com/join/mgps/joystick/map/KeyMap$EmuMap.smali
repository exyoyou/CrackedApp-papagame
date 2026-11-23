.class public final enum Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/joystick/map/KeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmuMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/joystick/map/KeyMap$EmuMap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum DC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum N64:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

.field public static final enum WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;


# instance fields
.field public keysKey:[Ljava/lang/String;

.field public map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public section:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->DC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->N64:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    .line 3
    const-string v1, "FBA"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "FBA_KEY_MAP"

    .line 7
    .line 8
    sget-object v4, Lcom/join/mgps/joystick/map/KeyMap;->fbaKeysKey:[Ljava/lang/String;

    .line 9
    .line 10
    sget-object v5, Lcom/join/mgps/joystick/map/KeyMap;->fbaDefKeysValue:[Ljava/lang/String;

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 19
    .line 20
    const-string v8, "FC"

    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    const-string v10, "FC_KEY_MAP"

    .line 24
    .line 25
    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->fcKeysKey:[Ljava/lang/String;

    .line 26
    .line 27
    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->fcDefKeysValue:[Ljava/lang/String;

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 36
    .line 37
    const-string v2, "SFC"

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    const-string v4, "SFC_KEY_MAP"

    .line 41
    .line 42
    sget-object v5, Lcom/join/mgps/joystick/map/KeyMap;->sfcKeysKey:[Ljava/lang/String;

    .line 43
    .line 44
    sget-object v6, Lcom/join/mgps/joystick/map/KeyMap;->sfcDefKeysValue:[Ljava/lang/String;

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->SFC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 51
    .line 52
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 53
    .line 54
    const-string v8, "PSP"

    .line 55
    .line 56
    const/4 v9, 0x3

    .line 57
    const-string v10, "PSP_KEY_MAP"

    .line 58
    .line 59
    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->pspKeysKey:[Ljava/lang/String;

    .line 60
    .line 61
    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->pspDefKeysValue:[Ljava/lang/String;

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PSP:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 68
    .line 69
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 70
    .line 71
    const-string v2, "GBA"

    .line 72
    .line 73
    const/4 v3, 0x4

    .line 74
    const-string v4, "GBA_KEY_MAP"

    .line 75
    .line 76
    sget-object v5, Lcom/join/mgps/joystick/map/KeyMap;->gbaKeysKey:[Ljava/lang/String;

    .line 77
    .line 78
    sget-object v6, Lcom/join/mgps/joystick/map/KeyMap;->gbaDefKeysValue:[Ljava/lang/String;

    .line 79
    .line 80
    move-object v1, v0

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 85
    .line 86
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 87
    .line 88
    const-string v8, "MD"

    .line 89
    .line 90
    const/4 v9, 0x5

    .line 91
    const-string v10, "MD_KEY_MAP"

    .line 92
    .line 93
    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->mdKeysKey:[Ljava/lang/String;

    .line 94
    .line 95
    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->mdDefKeysValue:[Ljava/lang/String;

    .line 96
    .line 97
    move-object v7, v0

    .line 98
    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 102
    .line 103
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 104
    .line 105
    const-string v2, "PS"

    .line 106
    .line 107
    const/4 v3, 0x6

    .line 108
    const-string v4, "PS_KEY_MAP"

    .line 109
    .line 110
    sget-object v5, Lcom/join/mgps/joystick/map/KeyMap;->psKeysKey:[Ljava/lang/String;

    .line 111
    .line 112
    sget-object v6, Lcom/join/mgps/joystick/map/KeyMap;->psDefKeysValue:[Ljava/lang/String;

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->PS:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 119
    .line 120
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 121
    .line 122
    const-string v8, "WSC"

    .line 123
    .line 124
    const/4 v9, 0x7

    .line 125
    const-string v10, "WSC_KEY_MAP"

    .line 126
    .line 127
    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->wscKeysKey:[Ljava/lang/String;

    .line 128
    .line 129
    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->wscDefKeysValue:[Ljava/lang/String;

    .line 130
    .line 131
    move-object v7, v0

    .line 132
    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->WSC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 136
    .line 137
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 138
    .line 139
    const-string v2, "GBC"

    .line 140
    .line 141
    const/16 v3, 0x8

    .line 142
    .line 143
    const-string v4, "GBC_KEY_MAP"

    .line 144
    .line 145
    sget-object v5, Lcom/join/mgps/joystick/map/KeyMap;->gbcKeysKey:[Ljava/lang/String;

    .line 146
    .line 147
    sget-object v6, Lcom/join/mgps/joystick/map/KeyMap;->gbcDefKeysValue:[Ljava/lang/String;

    .line 148
    .line 149
    move-object v1, v0

    .line 150
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->GBC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 154
    .line 155
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 156
    .line 157
    const-string v8, "DC"

    .line 158
    .line 159
    const/16 v9, 0x9

    .line 160
    .line 161
    const-string v10, "DC_KEY_MAP"

    .line 162
    .line 163
    sget-object v11, Lcom/join/mgps/joystick/map/KeyMap;->dcKeysKey:[Ljava/lang/String;

    .line 164
    .line 165
    sget-object v12, Lcom/join/mgps/joystick/map/KeyMap;->dcDefKeysValue:[Ljava/lang/String;

    .line 166
    .line 167
    move-object v7, v0

    .line 168
    invoke-direct/range {v7 .. v12}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->DC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 172
    .line 173
    new-instance v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 174
    .line 175
    const-string v2, "N64"

    .line 176
    .line 177
    const/16 v3, 0xa

    .line 178
    .line 179
    const-string v4, "N64_KEY_MAP"

    .line 180
    .line 181
    sget-object v5, Lcom/join/mgps/joystick/map/KeyMap;->n64KeysKey:[Ljava/lang/String;

    .line 182
    .line 183
    sget-object v6, Lcom/join/mgps/joystick/map/KeyMap;->n64DefKeysValue:[Ljava/lang/String;

    .line 184
    .line 185
    move-object v1, v0

    .line 186
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->N64:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 190
    .line 191
    invoke-static {}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->$values()[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->$VALUES:[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 196
    .line 197
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "section",
            "keysKey",
            "defKeysValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->keysKey:[Ljava/lang/String;

    .line 7
    .line 8
    if-nez p4, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    if-eqz p5, :cond_2

    .line 13
    .line 14
    array-length p2, p5

    .line 15
    array-length p3, p4

    .line 16
    if-eq p2, p3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p2, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 22
    :goto_1
    new-instance p3, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    .line 28
    .line 29
    :goto_2
    array-length p3, p4

    .line 30
    if-ge p1, p3, :cond_4

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    iget-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    .line 35
    .line 36
    aget-object v0, p4, p1

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    iget-object p3, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    .line 45
    .line 46
    aget-object v0, p4, p1

    .line 47
    .line 48
    aget-object v1, p5, p1

    .line 49
    .line 50
    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    return-void
.end method

.method public static getEmuMap(Ljava/lang/String;)Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "section"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->values()[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    iget-object v5, v4, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->section:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    move-object v0, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->$VALUES:[Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public defValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->map:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    return-object p1
.end method
