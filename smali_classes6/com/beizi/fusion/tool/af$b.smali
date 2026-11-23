.class final enum Lcom/beizi/fusion/tool/af$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/tool/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beizi/fusion/tool/af$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/beizi/fusion/tool/af$b;

.field public static final enum b:Lcom/beizi/fusion/tool/af$b;

.field public static final enum c:Lcom/beizi/fusion/tool/af$b;

.field public static final enum d:Lcom/beizi/fusion/tool/af$b;

.field public static final enum e:Lcom/beizi/fusion/tool/af$b;

.field public static final enum f:Lcom/beizi/fusion/tool/af$b;

.field public static final enum g:Lcom/beizi/fusion/tool/af$b;

.field public static final enum h:Lcom/beizi/fusion/tool/af$b;

.field public static final enum i:Lcom/beizi/fusion/tool/af$b;

.field public static final enum j:Lcom/beizi/fusion/tool/af$b;

.field public static final enum k:Lcom/beizi/fusion/tool/af$b;

.field public static final enum l:Lcom/beizi/fusion/tool/af$b;

.field private static final synthetic o:[Lcom/beizi/fusion/tool/af$b;


# instance fields
.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/beizi/fusion/tool/af$b;

    .line 2
    .line 3
    const-string v1, "REALME"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ColorOS"

    .line 7
    .line 8
    const-string v4, "ro.build.version.oplusrom"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/beizi/fusion/tool/af$b;->a:Lcom/beizi/fusion/tool/af$b;

    .line 14
    .line 15
    new-instance v1, Lcom/beizi/fusion/tool/af$b;

    .line 16
    .line 17
    const-string v5, "OPPO"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    invoke-direct {v1, v5, v6, v3, v4}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/beizi/fusion/tool/af$b;->b:Lcom/beizi/fusion/tool/af$b;

    .line 24
    .line 25
    new-instance v3, Lcom/beizi/fusion/tool/af$b;

    .line 26
    .line 27
    const-string v4, "MIUI"

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    const-string v7, "ro.miui.ui.version.name"

    .line 31
    .line 32
    invoke-direct {v3, v4, v5, v4, v7}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/beizi/fusion/tool/af$b;->c:Lcom/beizi/fusion/tool/af$b;

    .line 36
    .line 37
    new-instance v8, Lcom/beizi/fusion/tool/af$b;

    .line 38
    .line 39
    const-string v9, "HyperOS"

    .line 40
    .line 41
    const-string v10, "ro.mi.os.version.incremental"

    .line 42
    .line 43
    const-string v11, "HYPER"

    .line 44
    .line 45
    const/4 v12, 0x3

    .line 46
    invoke-direct {v8, v11, v12, v9, v10}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lcom/beizi/fusion/tool/af$b;->d:Lcom/beizi/fusion/tool/af$b;

    .line 50
    .line 51
    new-instance v9, Lcom/beizi/fusion/tool/af$b;

    .line 52
    .line 53
    const-string v10, "REDMI"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v9, v10, v11, v4, v7}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/beizi/fusion/tool/af$b;->e:Lcom/beizi/fusion/tool/af$b;

    .line 60
    .line 61
    new-instance v4, Lcom/beizi/fusion/tool/af$b;

    .line 62
    .line 63
    const-string v7, "HarmonyOS"

    .line 64
    .line 65
    const-string v10, "hw_sc.build.platform.version"

    .line 66
    .line 67
    const-string v13, "HARMONY"

    .line 68
    .line 69
    const/4 v14, 0x5

    .line 70
    invoke-direct {v4, v13, v14, v7, v10}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v4, Lcom/beizi/fusion/tool/af$b;->f:Lcom/beizi/fusion/tool/af$b;

    .line 74
    .line 75
    new-instance v7, Lcom/beizi/fusion/tool/af$b;

    .line 76
    .line 77
    const-string v10, "MagicUI"

    .line 78
    .line 79
    const-string v13, "ro.build.version.magic"

    .line 80
    .line 81
    const-string v15, "MAGICUI"

    .line 82
    .line 83
    const/4 v14, 0x6

    .line 84
    invoke-direct {v7, v15, v14, v10, v13}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sput-object v7, Lcom/beizi/fusion/tool/af$b;->g:Lcom/beizi/fusion/tool/af$b;

    .line 88
    .line 89
    new-instance v10, Lcom/beizi/fusion/tool/af$b;

    .line 90
    .line 91
    const-string v13, "ro.build.version.emui"

    .line 92
    .line 93
    const-string v15, "EMUI"

    .line 94
    .line 95
    const/4 v14, 0x7

    .line 96
    invoke-direct {v10, v15, v14, v15, v13}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v10, Lcom/beizi/fusion/tool/af$b;->h:Lcom/beizi/fusion/tool/af$b;

    .line 100
    .line 101
    new-instance v13, Lcom/beizi/fusion/tool/af$b;

    .line 102
    .line 103
    const-string v15, "Flyme"

    .line 104
    .line 105
    const-string v14, "ro.build.display.id"

    .line 106
    .line 107
    const-string v11, "MEIZU"

    .line 108
    .line 109
    const/16 v12, 0x8

    .line 110
    .line 111
    invoke-direct {v13, v11, v12, v15, v14}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sput-object v13, Lcom/beizi/fusion/tool/af$b;->i:Lcom/beizi/fusion/tool/af$b;

    .line 115
    .line 116
    new-instance v11, Lcom/beizi/fusion/tool/af$b;

    .line 117
    .line 118
    const-string v14, "HydrogenOS"

    .line 119
    .line 120
    const-string v15, "ro.rom.version"

    .line 121
    .line 122
    const-string v12, "ONEPLUS"

    .line 123
    .line 124
    const/16 v5, 0x9

    .line 125
    .line 126
    invoke-direct {v11, v12, v5, v14, v15}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sput-object v11, Lcom/beizi/fusion/tool/af$b;->j:Lcom/beizi/fusion/tool/af$b;

    .line 130
    .line 131
    new-instance v12, Lcom/beizi/fusion/tool/af$b;

    .line 132
    .line 133
    const-string v14, "Funtouch"

    .line 134
    .line 135
    const-string v15, "ro.vivo.os.version"

    .line 136
    .line 137
    const-string v5, "VIVO"

    .line 138
    .line 139
    const/16 v6, 0xa

    .line 140
    .line 141
    invoke-direct {v12, v5, v6, v14, v15}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sput-object v12, Lcom/beizi/fusion/tool/af$b;->k:Lcom/beizi/fusion/tool/af$b;

    .line 145
    .line 146
    new-instance v5, Lcom/beizi/fusion/tool/af$b;

    .line 147
    .line 148
    const-string v14, "ro.build.nubia.rom.name"

    .line 149
    .line 150
    const-string v15, "ro.build.nubia.rom.code"

    .line 151
    .line 152
    const-string v6, "NUBIA"

    .line 153
    .line 154
    const/16 v2, 0xb

    .line 155
    .line 156
    invoke-direct {v5, v6, v2, v14, v15}, Lcom/beizi/fusion/tool/af$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sput-object v5, Lcom/beizi/fusion/tool/af$b;->l:Lcom/beizi/fusion/tool/af$b;

    .line 160
    .line 161
    const/16 v6, 0xc

    .line 162
    .line 163
    new-array v6, v6, [Lcom/beizi/fusion/tool/af$b;

    .line 164
    .line 165
    const/4 v14, 0x0

    .line 166
    aput-object v0, v6, v14

    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    aput-object v1, v6, v0

    .line 170
    .line 171
    const/4 v0, 0x2

    .line 172
    aput-object v3, v6, v0

    .line 173
    .line 174
    const/4 v0, 0x3

    .line 175
    aput-object v8, v6, v0

    .line 176
    .line 177
    const/4 v0, 0x4

    .line 178
    aput-object v9, v6, v0

    .line 179
    .line 180
    const/4 v0, 0x5

    .line 181
    aput-object v4, v6, v0

    .line 182
    .line 183
    const/4 v0, 0x6

    .line 184
    aput-object v7, v6, v0

    .line 185
    .line 186
    const/4 v0, 0x7

    .line 187
    aput-object v10, v6, v0

    .line 188
    .line 189
    const/16 v0, 0x8

    .line 190
    .line 191
    aput-object v13, v6, v0

    .line 192
    .line 193
    const/16 v0, 0x9

    .line 194
    .line 195
    aput-object v11, v6, v0

    .line 196
    .line 197
    const/16 v0, 0xa

    .line 198
    .line 199
    aput-object v12, v6, v0

    .line 200
    .line 201
    aput-object v5, v6, v2

    .line 202
    .line 203
    sput-object v6, Lcom/beizi/fusion/tool/af$b;->o:[Lcom/beizi/fusion/tool/af$b;

    .line 204
    .line 205
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/beizi/fusion/tool/af$b;->m:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/beizi/fusion/tool/af$b;->n:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/af$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/tool/af$b;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/beizi/fusion/tool/af$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/tool/af$b;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beizi/fusion/tool/af$b;
    .locals 1

    .line 1
    const-class v0, Lcom/beizi/fusion/tool/af$b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/beizi/fusion/tool/af$b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/beizi/fusion/tool/af$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/tool/af$b;->o:[Lcom/beizi/fusion/tool/af$b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/beizi/fusion/tool/af$b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/beizi/fusion/tool/af$b;

    .line 8
    .line 9
    return-object v0
.end method
