.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x5

    .line 10
    return v0
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getIntentSender"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    .line 3
    .line 4
    move-object v3, v1

    .line 5
    check-cast v3, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p3}, Lsa/r;->d([Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    const-class v1, [Landroid/content/Intent;

    .line 11
    .line 12
    invoke-static {p3, v1}, Lsa/r;->a([Ljava/lang/Object;Ljava/lang/Class;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-gez v1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;->f()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :cond_0
    aget-object v2, p3, v1

    .line 23
    .line 24
    check-cast v2, [Landroid/content/Intent;

    .line 25
    .line 26
    add-int/lit8 v4, v1, 0x2

    .line 27
    .line 28
    aget-object v5, p3, v4

    .line 29
    .line 30
    check-cast v5, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v6, 0x17

    .line 39
    .line 40
    if-lt v5, v6, :cond_1

    .line 41
    .line 42
    const v5, -0x4000001

    .line 43
    .line 44
    .line 45
    and-int/2addr v5, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v5, v8

    .line 48
    :goto_0
    and-int/lit8 v5, v5, -0x9

    .line 49
    .line 50
    and-int/lit16 v5, v5, -0x81

    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    aput-object v5, p3, v4

    .line 57
    .line 58
    invoke-static {p3}, Lsa/r;->f([Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    aget-object v5, p3, v4

    .line 63
    .line 64
    check-cast v5, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    array-length v5, v2

    .line 71
    const/4 v6, 0x0

    .line 72
    if-lez v5, :cond_3

    .line 73
    .line 74
    array-length v5, v2

    .line 75
    if-ne v5, v0, :cond_2

    .line 76
    .line 77
    aget-object v2, v2, v4

    .line 78
    .line 79
    move-object v7, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    const-string p2, "getIntentSender failed, more than 1 intent in array."

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_3
    move-object v7, v6

    .line 90
    :goto_1
    new-instance v2, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    new-instance v5, Landroid/content/Intent;

    .line 96
    .line 97
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v5}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    if-ne v9, v0, :cond_4

    .line 107
    .line 108
    new-instance v5, Landroid/content/ComponentName;

    .line 109
    .line 110
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    const-class v10, Lcom/xinzhu/overmind/client/stub/StubTrampolineReceiver;

    .line 119
    .line 120
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-direct {v5, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    const/4 v5, 0x2

    .line 132
    if-eq v9, v5, :cond_7

    .line 133
    .line 134
    const/4 v5, 0x3

    .line 135
    if-ne v9, v5, :cond_5

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const/4 v5, 0x5

    .line 139
    if-ne v9, v5, :cond_6

    .line 140
    .line 141
    const/4 v5, 0x4

    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    aput-object v5, p3, v4

    .line 147
    .line 148
    :cond_6
    new-instance v5, Landroid/content/ComponentName;

    .line 149
    .line 150
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const-class v10, Lcom/xinzhu/overmind/client/stub/StubTrampolineService;

    .line 159
    .line 160
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-direct {v5, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_7
    :goto_2
    new-instance v5, Landroid/content/ComponentName;

    .line 172
    .line 173
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6}, Lcom/xinzhu/overmind/Overmind;->getMainPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    const-class v10, Lcom/xinzhu/overmind/client/stub/StubTrampolineActivity;

    .line 182
    .line 183
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-direct {v5, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    :goto_3
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-static {v2, v7, v5}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->saveStub(Landroid/content/Intent;Landroid/content/Intent;I)V

    .line 198
    .line 199
    .line 200
    new-array v0, v0, [Landroid/content/Intent;

    .line 201
    .line 202
    aput-object v2, v0, v4

    .line 203
    .line 204
    aput-object v0, p3, v1

    .line 205
    .line 206
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Landroid/os/IInterface;

    .line 211
    .line 212
    if-eqz p1, :cond_8

    .line 213
    .line 214
    new-instance p2, Lcom/xinzhu/overmind/entity/PendingIntentRecord;

    .line 215
    .line 216
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVUid()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    move-object v2, p2

    .line 229
    invoke-direct/range {v2 .. v9}, Lcom/xinzhu/overmind/entity/PendingIntentRecord;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Landroid/content/Intent;II)V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lma/a;->d()Lma/a;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    invoke-virtual {p3, p2}, Lma/a;->u(Lcom/xinzhu/overmind/entity/PendingIntentRecord;)V

    .line 237
    .line 238
    .line 239
    :cond_8
    return-object p1
.end method
