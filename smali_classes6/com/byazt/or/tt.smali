.class public Lcom/byazt/or/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x243,
        0xd
    }
.end annotation


# direct methods
.method public static c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Lcom/bytedance/component/sdk/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1a

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    if-eqz p1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    const v2, 0x3e4ccccd    # 0.2f

    .line 31
    .line 32
    .line 33
    mul-float v1, v1, v2

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-float v3, v3

    .line 44
    mul-float v3, v3, v2

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-object v0

    .line 71
    :cond_3
    :try_start_1
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 76
    .line 77
    .line 78
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 79
    :try_start_2
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 80
    .line 81
    .line 82
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    :try_start_3
    invoke-static {p0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 84
    .line 85
    .line 86
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    int-to-float p2, p2

    .line 88
    :try_start_4
    invoke-virtual {v2, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->destroy()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :catchall_0
    move-exception p2

    .line 116
    goto :goto_0

    .line 117
    :catchall_1
    move-exception p2

    .line 118
    move-object v3, v0

    .line 119
    :goto_0
    move-object v4, p1

    .line 120
    move-object p1, p0

    .line 121
    move-object p0, p2

    .line 122
    move-object p2, v4

    .line 123
    goto :goto_3

    .line 124
    :catchall_2
    move-exception p1

    .line 125
    move-object p2, v0

    .line 126
    move-object v3, p2

    .line 127
    goto :goto_1

    .line 128
    :catchall_3
    move-exception p1

    .line 129
    move-object p2, v0

    .line 130
    move-object v2, p2

    .line 131
    move-object v3, v2

    .line 132
    :goto_1
    move-object v4, p1

    .line 133
    move-object p1, p0

    .line 134
    move-object p0, v4

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    :goto_2
    return-object v0

    .line 137
    :catchall_4
    move-exception p0

    .line 138
    move-object p1, v0

    .line 139
    move-object p2, p1

    .line 140
    move-object v2, p2

    .line 141
    move-object v3, v2

    .line 142
    :goto_3
    :try_start_5
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 143
    .line 144
    .line 145
    if-eqz p2, :cond_6

    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->destroy()V

    .line 148
    .line 149
    .line 150
    :cond_6
    if-eqz v3, :cond_7

    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 153
    .line 154
    .line 155
    :cond_7
    if-eqz v2, :cond_8

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->destroy()V

    .line 158
    .line 159
    .line 160
    :cond_8
    if-eqz p1, :cond_9

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 163
    .line 164
    .line 165
    :cond_9
    return-object v0

    .line 166
    :catchall_5
    move-exception p0

    .line 167
    if-eqz p2, :cond_a

    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->destroy()V

    .line 170
    .line 171
    .line 172
    :cond_a
    if-eqz v3, :cond_b

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 175
    .line 176
    .line 177
    :cond_b
    if-eqz v2, :cond_c

    .line 178
    .line 179
    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->destroy()V

    .line 180
    .line 181
    .line 182
    :cond_c
    if-eqz p1, :cond_d

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 185
    .line 186
    .line 187
    :cond_d
    throw p0
.end method
